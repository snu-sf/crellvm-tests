; ModuleID = './_testbuffer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.NDArrayObject = type { %struct._object, i32, %struct.ndbuf, %struct.ndbuf* }
%struct.ndbuf = type { %struct.ndbuf*, %struct.ndbuf*, i64, i64, i8*, i32, i64, %struct.bufferinfo }
%struct.PyPartialStructObject = type { %struct._object, i64, i64 }
%struct.StaticArrayObject = type { %struct._object, i32 }

@structmodule = global %struct._object* null, align 8
@Struct = global %struct._object* null, align 8
@calcsize = global %struct._object* null, align 8
@simple_format = global %struct._object* null, align 8
@_testbuffermodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([8 x %struct.PyMethodDef], [8 x %struct.PyMethodDef]* @_testbuffer_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@PyType_Type = external global %struct._typeobject, align 8
@NDArray_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 168, i64 0, void (%struct._object*)* bitcast (void (%struct.NDArrayObject*)* @ndarray_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* @ndarray_as_sequence, %struct.PyMappingMethods* @ndarray_as_mapping, i64 (%struct._object*)* @ndarray_hash, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* @ndarray_as_buffer, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([7 x %struct.PyMethodDef], [7 x %struct.PyMethodDef]* @ndarray_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([15 x %struct.PyGetSetDef], [15 x %struct.PyGetSetDef]* @ndarray_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @ndarray_init, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @ndarray_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"ndarray\00", align 1
@StaticArray_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct.StaticArrayObject*)* @staticarray_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* @staticarray_as_buffer, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @staticarray_init, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @staticarray_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"staticarray\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Struct\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"calcsize\00", align 1
@simple_fmt = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"ND_MAX_NDIM\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"ND_VAREXPORT\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ND_WRITABLE\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ND_FORTRAN\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ND_SCALAR\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ND_PIL\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"ND_GETBUF_FAIL\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"ND_GETBUF_UNDEFINED\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"ND_REDIRECT\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"PyBUF_SIMPLE\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"PyBUF_WRITABLE\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"PyBUF_FORMAT\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"PyBUF_ND\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"PyBUF_STRIDES\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"PyBUF_INDIRECT\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"PyBUF_C_CONTIGUOUS\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"PyBUF_F_CONTIGUOUS\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"PyBUF_ANY_CONTIGUOUS\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"PyBUF_FULL\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"PyBUF_FULL_RO\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"PyBUF_RECORDS\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"PyBUF_RECORDS_RO\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"PyBUF_STRIDED\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"PyBUF_STRIDED_RO\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"PyBUF_CONTIG\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"PyBUF_CONTIG_RO\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"PyBUF_READ\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"PyBUF_WRITE\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"_testbuffer\00", align 1
@_testbuffer_functions = internal global [8 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @slice_indices, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @get_pointer, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @get_sizeof_void_p to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @get_contiguous, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_buffer_to_contiguous, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @is_contiguous, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @cmp_contig, i32 1, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [14 x i8] c"slice_indices\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"get_pointer\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"get_sizeof_void_p\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"get_contiguous\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"py_buffer_to_contiguous\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"is_contiguous\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"cmp_contig\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.42 = private unnamed_addr constant [38 x i8] c"first argument must be a slice object\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"seq must be a list or a tuple\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.45 = private unnamed_addr constant [25 x i8] c"get_pointer(): ndim > %d\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"get_pointer(): len(indices) != ndim\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"get_pointer(): invalid index %zd at position %zd\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"unpack_from\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"sO\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"OOO\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"buffertype must be PyBUF_READ or PyBUF_WRITE\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"invalid buffer type\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"order must be a string\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"invalid order, must be C, F or A\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"OOi\00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"is_contiguous: object does not implement the buffer protocol\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.58 = private unnamed_addr constant [66 x i8] c"cmp_contig: first argument does not implement the buffer protocol\00", align 1
@.str.59 = private unnamed_addr constant [67 x i8] c"cmp_contig: second argument does not implement the buffer protocol\00", align 1
@ndarray_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null, %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.NDArrayObject*, i64)* @ndarray_item to %struct._object* (%struct._object*, i64)*), i8* null, i32 (%struct._object*, i64, %struct._object*)* null, i8* null, i32 (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@ndarray_as_mapping = internal global %struct.PyMappingMethods { i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.NDArrayObject*, %struct._object*)* @ndarray_subscript to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.NDArrayObject*, %struct._object*, %struct._object*)* @ndarray_ass_subscript to i32 (%struct._object*, %struct._object*, %struct._object*)*) }, align 8
@ndarray_as_buffer = internal global %struct.PyBufferProcs { i32 (%struct._object*, %struct.bufferinfo*, i32)* bitcast (i32 (%struct.NDArrayObject*, %struct.bufferinfo*, i32)* @ndarray_getbuf to i32 (%struct._object*, %struct.bufferinfo*, i32)*), void (%struct._object*, %struct.bufferinfo*)* bitcast (i32 (%struct.NDArrayObject*, %struct.bufferinfo*)* @ndarray_releasebuf to void (%struct._object*, %struct.bufferinfo*)*) }, align 8
@ndarray_methods = internal global [7 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @ndarray_tolist, i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @ndarray_tobytes, i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @ndarray_push to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @ndarray_pop, i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @ndarray_add_suboffsets, i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.81, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @ndarray_memoryview_from_buffer, i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@ndarray_getset = internal global [15 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.NDArrayObject*, i8*)* @ndarray_get_flags to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.NDArrayObject*, i8*)* @ndarray_get_offset to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.NDArrayObject*, i8*)* @ndarray_get_obj to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.118, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.NDArrayObject*, i8*)* @ndarray_get_nbytes to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.119, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.NDArrayObject*, i8*)* @ndarray_get_readonly to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.NDArrayObject*, i8*)* @ndarray_get_itemsize to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.NDArrayObject*, i8*)* @ndarray_get_format to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.NDArrayObject*, i8*)* @ndarray_get_ndim to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.NDArrayObject*, i8*)* @ndarray_get_shape to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.NDArrayObject*, i8*)* @ndarray_get_strides to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.NDArrayObject*, i8*)* @ndarray_get_suboffsets to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.123, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct._object*, %struct._object*)* @ndarray_c_contig to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct._object*, %struct._object*)* @ndarray_fortran_contig to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct._object*, %struct._object*)* @ndarray_contig to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.60 = private unnamed_addr constant [27 x i8] c"invalid indexing of scalar\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.61 = private unnamed_addr constant [20 x i8] c"index out of bounds\00", align 1
@_Py_EllipsisObject = external global %struct._object, align 8
@.str.62 = private unnamed_addr constant [35 x i8] c"cannot index memory using \22%.200s\22\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"ndarray is not writable\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"ndarray data cannot be deleted\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"pack_into\00", align 1
@PyFloat_Type = external global %struct._typeobject, align 8
@.str.66 = private unnamed_addr constant [55 x i8] c"mismatch between initializer element and format string\00", align 1
@.str.67 = private unnamed_addr constant [64 x i8] c"ndarray assignment: lvalue and rvalue have different structures\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"cannot hash writable ndarray object\00", align 1
@PyExc_BufferError = external global %struct._object*, align 8
@.str.69 = private unnamed_addr constant [54 x i8] c"re-exporter does not provide format, shape or strides\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"ND_GETBUF_FAIL: forced test exception\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"ndarray is not C-contiguous\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"ndarray is not Fortran contiguous\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"ndarray is not contiguous\00", align 1
@.str.74 = private unnamed_addr constant [49 x i8] c"ndarray cannot be represented without suboffsets\00", align 1
@.str.75 = private unnamed_addr constant [69 x i8] c"ndarray: cannot cast to unsigned bytes if the format flag is present\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"tolist\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"tobytes\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"add_suboffsets\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c"memoryview_from_buffer\00", align 1
@.str.82 = private unnamed_addr constant [62 x i8] c"ndarray: tolist() does not support format=NULL, use tobytes()\00", align 1
@ndarray_push.kwlist = internal global [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* null], align 16
@.str.83 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"strides\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"OO|OnOi\00", align 1
@.str.90 = private unnamed_addr constant [58 x i8] c"ND_VAREXPORT flag can only be used during object creation\00", align 1
@.str.91 = private unnamed_addr constant [46 x i8] c"structure of re-exporting object is immutable\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"cannot change structure: %zd exported buffer%s\00", align 1
@.str.93 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.95 = private unnamed_addr constant [32 x i8] c"shape must be a list or a tuple\00", align 1
@.str.96 = private unnamed_addr constant [24 x i8] c"ndim must not exceed %d\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"strides must be a list or a tuple\00", align 1
@.str.98 = private unnamed_addr constant [48 x i8] c"ND_FORTRAN cannot be used together with strides\00", align 1
@.str.99 = private unnamed_addr constant [27 x i8] c"len(shape) != len(strides)\00", align 1
@.str.100 = private unnamed_addr constant [26 x i8] c"itemsize must not be zero\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"(O)\00", align 1
@.str.102 = private unnamed_addr constant [32 x i8] c"items must be a list or a tuple\00", align 1
@.str.103 = private unnamed_addr constant [44 x i8] c"initializer list or tuple must not be empty\00", align 1
@.str.104 = private unnamed_addr constant [38 x i8] c"offset must be a multiple of itemsize\00", align 1
@.str.105 = private unnamed_addr constant [21 x i8] c"offset out of bounds\00", align 1
@.str.106 = private unnamed_addr constant [51 x i8] c"ndim = 0 cannot be used in conjunction with ND_PIL\00", align 1
@.str.107 = private unnamed_addr constant [32 x i8] c"elements of %s must be integers\00", align 1
@.str.108 = private unnamed_addr constant [40 x i8] c"elements of shape must be integers >= 0\00", align 1
@.str.109 = private unnamed_addr constant [39 x i8] c"strides must be a multiple of itemsize\00", align 1
@.str.110 = private unnamed_addr constant [49 x i8] c"invalid combination of buffer, shape and strides\00", align 1
@.str.111 = private unnamed_addr constant [28 x i8] c"list only has a single base\00", align 1
@.str.112 = private unnamed_addr constant [41 x i8] c"cannot add suboffsets to PIL-style array\00", align 1
@.str.113 = private unnamed_addr constant [47 x i8] c"cannot add suboffsets to array without strides\00", align 1
@ndarray_memoryview_from_buffer.format = internal global [129 x i8] zeroinitializer, align 16
@ndarray_memoryview_from_buffer.shape = internal global [128 x i64] zeroinitializer, align 16
@ndarray_memoryview_from_buffer.strides = internal global [128 x i64] zeroinitializer, align 16
@ndarray_memoryview_from_buffer.suboffsets = internal global [128 x i64] zeroinitializer, align 16
@ndarray_memoryview_from_buffer.info = internal global %struct.bufferinfo zeroinitializer, align 8
@.str.114 = private unnamed_addr constant [103 x i8] c"memoryview_from_buffer(): ndarray must be original exporter or consumer from ndarray/original exporter\00", align 1
@infobuf = internal global i8* null, align 8
@.str.115 = private unnamed_addr constant [59 x i8] c"memoryview_from_buffer: format is limited to %d characters\00", align 1
@.str.116 = private unnamed_addr constant [46 x i8] c"memoryview_from_buffer: ndim is limited to %d\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"nbytes\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"itemsize\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"ndim\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"suboffsets\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"c_contiguous\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"f_contiguous\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"contiguous\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.126 = private unnamed_addr constant [54 x i8] c"results from PyBuffer_IsContiguous() and flags differ\00", align 1
@ndarray_init.kwlist = internal global [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i8* null], align 16
@.str.127 = private unnamed_addr constant [7 x i8] c"getbuf\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"O|OOnOii\00", align 1
@.str.129 = private unnamed_addr constant [83 x i8] c"construction from exporter object only takes 'obj', 'getbuf' and 'flags' arguments\00", align 1
@.str.130 = private unnamed_addr constant [65 x i8] c"getbuf argument only valid for construction from exporter object\00", align 1
@.str.131 = private unnamed_addr constant [74 x i8] c"shape is a required argument when constructing from list, tuple or scalar\00", align 1
@staticarray_as_buffer = internal global %struct.PyBufferProcs { i32 (%struct._object*, %struct.bufferinfo*, i32)* bitcast (i32 (%struct.StaticArrayObject*, %struct.bufferinfo*, i32)* @staticarray_getbuf to i32 (%struct._object*, %struct.bufferinfo*, i32)*), void (%struct._object*, %struct.bufferinfo*)* null }, align 8
@static_buffer = internal global %struct.bufferinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @static_mem, i32 0, i32 0), %struct._object* null, i64 12, i64 1, i32 1, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i64* getelementptr inbounds ([1 x i64], [1 x i64]* @static_shape, i32 0, i32 0), i64* getelementptr inbounds ([1 x i64], [1 x i64]* @static_strides, i32 0, i32 0), i64* null, i8* null }, align 8
@static_mem = internal global [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@static_shape = internal global [1 x i64] [i64 12], align 8
@static_strides = internal global [1 x i64] [i64 1], align 8
@staticarray_init.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0), i8* null], align 16
@.str.132 = private unnamed_addr constant [12 x i8] c"legacy_mode\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"|O\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__testbuffer() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_testbuffermodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @NDArray_Type, i32 0, i32 0, i32 0, i32 1), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @NDArray_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @NDArray_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @NDArray_Type, i32 0, i32 0, i32 0))
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StaticArray_Type, i32 0, i32 0, i32 0, i32 1), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StaticArray_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc2 = add i64 %3, 1
  store i64 %inc2, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StaticArray_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call3 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StaticArray_Type, i32 0, i32 0, i32 0))
  %call4 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** @structmodule, align 8
  %5 = load %struct._object*, %struct._object** @structmodule, align 8
  %cmp5 = icmp eq %struct._object* %5, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @structmodule, align 8
  %call8 = call %struct._object* @PyObject_GetAttrString(%struct._object* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** @Struct, align 8
  %7 = load %struct._object*, %struct._object** @structmodule, align 8
  %call9 = call %struct._object* @PyObject_GetAttrString(%struct._object* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  store %struct._object* %call9, %struct._object** @calcsize, align 8
  %8 = load %struct._object*, %struct._object** @Struct, align 8
  %cmp10 = icmp eq %struct._object* %8, null
  br i1 %cmp10, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %9 = load %struct._object*, %struct._object** @calcsize, align 8
  %cmp11 = icmp eq %struct._object* %9, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  %10 = load i8*, i8** @simple_fmt, align 8
  %call14 = call %struct._object* @PyUnicode_FromString(i8* %10)
  store %struct._object* %call14, %struct._object** @simple_format, align 8
  %11 = load %struct._object*, %struct._object** @simple_format, align 8
  %cmp15 = icmp eq %struct._object* %11, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %12 = load %struct._object*, %struct._object** %m, align 8
  %call18 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i64 128)
  %13 = load %struct._object*, %struct._object** %m, align 8
  %call19 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i64 1)
  %14 = load %struct._object*, %struct._object** %m, align 8
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i64 2)
  %15 = load %struct._object*, %struct._object** %m, align 8
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i64 4)
  %16 = load %struct._object*, %struct._object** %m, align 8
  %call22 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i64 8)
  %17 = load %struct._object*, %struct._object** %m, align 8
  %call23 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i64 16)
  %18 = load %struct._object*, %struct._object** %m, align 8
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i64 64)
  %19 = load %struct._object*, %struct._object** %m, align 8
  %call25 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i64 128)
  %20 = load %struct._object*, %struct._object** %m, align 8
  %call26 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i64 32)
  %21 = load %struct._object*, %struct._object** %m, align 8
  %call27 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i64 0)
  %22 = load %struct._object*, %struct._object** %m, align 8
  %call28 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i64 1)
  %23 = load %struct._object*, %struct._object** %m, align 8
  %call29 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i64 4)
  %24 = load %struct._object*, %struct._object** %m, align 8
  %call30 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i64 8)
  %25 = load %struct._object*, %struct._object** %m, align 8
  %call31 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i64 24)
  %26 = load %struct._object*, %struct._object** %m, align 8
  %call32 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i64 280)
  %27 = load %struct._object*, %struct._object** %m, align 8
  %call33 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i64 56)
  %28 = load %struct._object*, %struct._object** %m, align 8
  %call34 = call i32 @PyModule_AddIntConstant(%struct._object* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i64 88)
  %29 = load %struct._object*, %struct._object** %m, align 8
  %call35 = call i32 @PyModule_AddIntConstant(%struct._object* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i64 152)
  %30 = load %struct._object*, %struct._object** %m, align 8
  %call36 = call i32 @PyModule_AddIntConstant(%struct._object* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i64 285)
  %31 = load %struct._object*, %struct._object** %m, align 8
  %call37 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i64 284)
  %32 = load %struct._object*, %struct._object** %m, align 8
  %call38 = call i32 @PyModule_AddIntConstant(%struct._object* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i64 29)
  %33 = load %struct._object*, %struct._object** %m, align 8
  %call39 = call i32 @PyModule_AddIntConstant(%struct._object* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i64 28)
  %34 = load %struct._object*, %struct._object** %m, align 8
  %call40 = call i32 @PyModule_AddIntConstant(%struct._object* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i64 25)
  %35 = load %struct._object*, %struct._object** %m, align 8
  %call41 = call i32 @PyModule_AddIntConstant(%struct._object* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i64 24)
  %36 = load %struct._object*, %struct._object** %m, align 8
  %call42 = call i32 @PyModule_AddIntConstant(%struct._object* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i64 9)
  %37 = load %struct._object*, %struct._object** %m, align 8
  %call43 = call i32 @PyModule_AddIntConstant(%struct._object* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i64 8)
  %38 = load %struct._object*, %struct._object** %m, align 8
  %call44 = call i32 @PyModule_AddIntConstant(%struct._object* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i64 256)
  %39 = load %struct._object*, %struct._object** %m, align 8
  %call45 = call i32 @PyModule_AddIntConstant(%struct._object* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i64 512)
  %40 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.12, %if.then.6, %if.then
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyImport_ImportModule(i8*) #1

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_indices(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %s = alloca [4 x i64], align 16
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), %struct._object** %key, i64* %len)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %key, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PySlice_Type
  br i1 %cmp, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %key, align 8
  %5 = load i64, i64* %len, align 8
  %arrayidx = getelementptr [4 x i64], [4 x i64]* %s, i32 0, i64 0
  %arrayidx6 = getelementptr [4 x i64], [4 x i64]* %s, i32 0, i64 1
  %arrayidx7 = getelementptr [4 x i64], [4 x i64]* %s, i32 0, i64 2
  %arrayidx8 = getelementptr [4 x i64], [4 x i64]* %s, i32 0, i64 3
  %call9 = call i32 @PySlice_GetIndicesEx(%struct._object* %4, i64 %5, i64* %arrayidx, i64* %arrayidx6, i64* %arrayidx7, i64* %arrayidx8)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.5
  %call13 = call %struct._object* @PyTuple_New(i64 4)
  store %struct._object* %call13, %struct._object** %ret, align 8
  %6 = load %struct._object*, %struct._object** %ret, align 8
  %cmp14 = icmp eq %struct._object* %6, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %7 = load i64, i64* %i, align 8
  %cmp17 = icmp slt i64 %7, 4
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %arrayidx18 = getelementptr [4 x i64], [4 x i64]* %s, i32 0, i64 %8
  %9 = load i64, i64* %arrayidx18, align 8
  %call19 = call %struct._object* @PyLong_FromSsize_t(i64 %9)
  store %struct._object* %call19, %struct._object** %tmp, align 8
  %10 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp20 = icmp eq %struct._object* %10, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  br label %error

if.end.22:                                        ; preds = %for.body
  %11 = load %struct._object*, %struct._object** %tmp, align 8
  %12 = load i64, i64* %i, align 8
  %13 = load %struct._object*, %struct._object** %ret, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %12
  store %struct._object* %11, %struct._object** %arrayidx23, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.21
  br label %do.body

do.body:                                          ; preds = %error
  %17 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body
  br label %if.end.28

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.26
  br label %do.end

do.end:                                           ; preds = %if.end.28
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %for.end, %if.then.15, %if.then.11, %if.then.4, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_pointer(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %bufobj = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %view = alloca %struct.bufferinfo, align 8
  %indices = alloca [128 x i64], align 16
  %i = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %x = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), %struct._object** %bufobj, %struct._object** %seq)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags2, align 8
  %and3 = and i64 %6, 67108864
  %cmp4 = icmp ne i64 %and3, 0
  br i1 %cmp4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %8 = load %struct._object*, %struct._object** %bufobj, align 8
  %call7 = call i32 @PyObject_GetBuffer(%struct._object* %8, %struct.bufferinfo* %view, i32 284)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 5
  %9 = load i32, i32* %ndim, align 4
  %cmp11 = icmp sgt i32 %9, 128
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i32 0, i32 0), i32 128)
  br label %out

if.end.14:                                        ; preds = %if.end.10
  %11 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_flags16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19
  %13 = load i64, i64* %tp_flags16, align 8
  %and17 = and i64 %13, 33554432
  %cmp18 = icmp ne i64 %and17, 0
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %14 = load %struct._object*, %struct._object** %seq, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1
  %16 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  %17 = load %struct._object*, %struct._object** %seq, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyVarObject*
  %ob_size19 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size19, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %19, %cond.false ]
  %ndim20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 5
  %20 = load i32, i32* %ndim20, align 4
  %conv = sext i32 %20 to i64
  %cmp21 = icmp ne i64 %cond, %conv
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %cond.end
  %21 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0))
  br label %out

if.end.24:                                        ; preds = %cond.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %22 = load i64, i64* %i, align 8
  %ndim25 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 5
  %23 = load i32, i32* %ndim25, align 4
  %conv26 = sext i32 %23 to i64
  %cmp27 = icmp slt i64 %22, %conv26
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_flags30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 19
  %26 = load i64, i64* %tp_flags30, align 8
  %and31 = and i64 %26, 33554432
  %cmp32 = icmp ne i64 %and31, 0
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %for.body
  %27 = load i64, i64* %i, align 8
  %28 = load %struct._object*, %struct._object** %seq, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %29, i32 0, i32 1
  %30 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %30, i64 %27
  %31 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end.38

cond.false.35:                                    ; preds = %for.body
  %32 = load i64, i64* %i, align 8
  %33 = load %struct._object*, %struct._object** %seq, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyTupleObject*
  %ob_item36 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1
  %arrayidx37 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item36, i32 0, i64 %32
  %35 = load %struct._object*, %struct._object** %arrayidx37, align 8
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.35, %cond.true.34
  %cond39 = phi %struct._object* [ %31, %cond.true.34 ], [ %35, %cond.false.35 ]
  store %struct._object* %cond39, %struct._object** %x, align 8
  %36 = load %struct._object*, %struct._object** %x, align 8
  %call40 = call i64 @PyLong_AsSsize_t(%struct._object* %36)
  %37 = load i64, i64* %i, align 8
  %arrayidx41 = getelementptr [128 x i64], [128 x i64]* %indices, i32 0, i64 %37
  store i64 %call40, i64* %arrayidx41, align 8
  %call42 = call %struct._object* @PyErr_Occurred()
  %tobool43 = icmp ne %struct._object* %call42, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %cond.end.38
  br label %out

if.end.45:                                        ; preds = %cond.end.38
  %38 = load i64, i64* %i, align 8
  %arrayidx46 = getelementptr [128 x i64], [128 x i64]* %indices, i32 0, i64 %38
  %39 = load i64, i64* %arrayidx46, align 8
  %cmp47 = icmp slt i64 %39, 0
  br i1 %cmp47, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.45
  %40 = load i64, i64* %i, align 8
  %arrayidx49 = getelementptr [128 x i64], [128 x i64]* %indices, i32 0, i64 %40
  %41 = load i64, i64* %arrayidx49, align 8
  %42 = load i64, i64* %i, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 7
  %43 = load i64*, i64** %shape, align 8
  %arrayidx50 = getelementptr i64, i64* %43, i64 %42
  %44 = load i64, i64* %arrayidx50, align 8
  %cmp51 = icmp sge i64 %41, %44
  br i1 %cmp51, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %lor.lhs.false, %if.end.45
  %45 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %46 = load i64, i64* %i, align 8
  %arrayidx54 = getelementptr [128 x i64], [128 x i64]* %indices, i32 0, i64 %46
  %47 = load i64, i64* %arrayidx54, align 8
  %48 = load i64, i64* %i, align 8
  %call55 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.47, i32 0, i32 0), i64 %47, i64 %48)
  br label %out

if.end.56:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %49 = load i64, i64* %i, align 8
  %inc = add i64 %49, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [128 x i64], [128 x i64]* %indices, i32 0, i32 0
  %call57 = call i8* @PyBuffer_GetPointer(%struct.bufferinfo* %view, i64* %arraydecay)
  store i8* %call57, i8** %ptr, align 8
  %50 = load i8*, i8** %ptr, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 6
  %51 = load i8*, i8** %format, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 3
  %52 = load i64, i64* %itemsize, align 8
  %call58 = call %struct._object* @unpack_single(i8* %50, i8* %51, i64 %52)
  store %struct._object* %call58, %struct._object** %ret, align 8
  br label %out

out:                                              ; preds = %for.end, %if.then.53, %if.then.44, %if.then.23, %if.then.12
  call void @PyBuffer_Release(%struct.bufferinfo* %view)
  %53 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %53, %struct._object** %retval
  br label %return

return:                                           ; preds = %out, %if.then.9, %if.then.5, %if.then
  %54 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %54
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_sizeof_void_p(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyLong_FromSize_t(i64 8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_contiguous(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %buffertype = alloca %struct._object*, align 8
  %order = alloca %struct._object*, align 8
  %type = alloca i64, align 8
  %ord = alloca i8, align 1
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), %struct._object** %obj, %struct._object** %buffertype, %struct._object** %order)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %buffertype, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %buffertype, align 8
  %call3 = call i64 @PyLong_AsLong(%struct._object* %5)
  store i64 %call3, i64* %type, align 8
  %6 = load i64, i64* %type, align 8
  %cmp4 = icmp eq i64 %6, -1
  br i1 %cmp4, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end.2
  %call5 = call %struct._object* @PyErr_Occurred()
  %tobool6 = icmp ne %struct._object* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %if.end.2
  %7 = load i64, i64* %type, align 8
  %cmp9 = icmp ne i64 %7, 256
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.13

land.lhs.true.10:                                 ; preds = %if.end.8
  %8 = load i64, i64* %type, align 8
  %cmp11 = icmp ne i64 %8, 512
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.10
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.10, %if.end.8
  %10 = load %struct._object*, %struct._object** %order, align 8
  %call14 = call signext i8 @get_ascii_order(%struct._object* %10)
  store i8 %call14, i8* %ord, align 1
  %11 = load i8, i8* %ord, align 1
  %conv = sext i8 %11 to i32
  %cmp15 = icmp eq i32 %conv, 127
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.13
  %12 = load %struct._object*, %struct._object** %obj, align 8
  %13 = load i64, i64* %type, align 8
  %conv19 = trunc i64 %13 to i32
  %14 = load i8, i8* %ord, align 1
  %call20 = call %struct._object* @PyMemoryView_GetContiguous(%struct._object* %12, i32 %conv19, i8 signext %14)
  store %struct._object* %call20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.17, %if.then.12, %if.then.7, %if.then.1, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_buffer_to_contiguous(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %order = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %flags = alloca i32, align 4
  %ord = alloca i8, align 1
  %view = alloca %struct.bufferinfo, align 8
  %buf = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  store i8* null, i8** %buf, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), %struct._object** %obj, %struct._object** %order, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %2 = load i32, i32* %flags, align 4
  %call1 = call i32 @PyObject_GetBuffer(%struct._object* %1, %struct.bufferinfo* %view, i32 %2)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %order, align 8
  %call4 = call signext i8 @get_ascii_order(%struct._object* %3)
  store i8 %call4, i8* %ord, align 1
  %4 = load i8, i8* %ord, align 1
  %conv = sext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv, 127
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  br label %out

if.end.8:                                         ; preds = %if.end.3
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %5 = load i64, i64* %len, align 8
  %call9 = call i8* @PyMem_Malloc(i64 %5)
  store i8* %call9, i8** %buf, align 8
  %6 = load i8*, i8** %buf, align 8
  %cmp10 = icmp eq i8* %6, null
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %call13 = call %struct._object* @PyErr_NoMemory()
  br label %out

if.end.14:                                        ; preds = %if.end.8
  %7 = load i8*, i8** %buf, align 8
  %len15 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %8 = load i64, i64* %len15, align 8
  %9 = load i8, i8* %ord, align 1
  %call16 = call i32 @PyBuffer_ToContiguous(i8* %7, %struct.bufferinfo* %view, i64 %8, i8 signext %9)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  br label %out

if.end.20:                                        ; preds = %if.end.14
  %10 = load i8*, i8** %buf, align 8
  %len21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %11 = load i64, i64* %len21, align 8
  %call22 = call %struct._object* @PyBytes_FromStringAndSize(i8* %10, i64 %11)
  store %struct._object* %call22, %struct._object** %ret, align 8
  br label %out

out:                                              ; preds = %if.end.20, %if.then.19, %if.then.12, %if.then.7
  call void @PyBuffer_Release(%struct.bufferinfo* %view)
  br label %do.body

do.body:                                          ; preds = %out
  %12 = load i8*, i8** %buf, align 8
  %tobool23 = icmp ne i8* %12, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %do.body
  %13 = load i8*, i8** %buf, align 8
  call void @PyMem_Free(i8* %13)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.25
  %14 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @is_contiguous(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %order = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %view = alloca %struct.bufferinfo, align 8
  %ord = alloca i8, align 1
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), %struct._object** %obj, %struct._object** %order)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %call1 = call i32 @PyObject_GetBuffer(%struct._object* %1, %struct.bufferinfo* %view, i32 284)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.57, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %order, align 8
  %call4 = call signext i8 @get_ascii_order(%struct._object* %3)
  store i8 %call4, i8* %ord, align 1
  %4 = load i8, i8* %ord, align 1
  %conv = sext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv, 127
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  br label %release

if.end.8:                                         ; preds = %if.end.3
  %5 = load i8, i8* %ord, align 1
  %call9 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %view, i8 signext %5)
  %tobool10 = icmp ne i32 %call9, 0
  %cond = select i1 %tobool10, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %ret, align 8
  %6 = load %struct._object*, %struct._object** %ret, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %release

release:                                          ; preds = %if.end.8, %if.then.7
  call void @PyBuffer_Release(%struct.bufferinfo* %view)
  %8 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

return:                                           ; preds = %release, %if.then.2, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cmp_contig(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %b1 = alloca %struct._object*, align 8
  %b2 = alloca %struct._object*, align 8
  %v1 = alloca %struct.bufferinfo, align 8
  %v2 = alloca %struct.bufferinfo, align 8
  %ret = alloca %struct._object*, align 8
  %equal = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %equal, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), %struct._object** %b1, %struct._object** %b2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %b1, align 8
  %call1 = call i32 @PyObject_GetBuffer(%struct._object* %1, %struct.bufferinfo* %v1, i32 284)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.58, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %b2, align 8
  %call4 = call i32 @PyObject_GetBuffer(%struct._object* %3, %struct.bufferinfo* %v2, i32 284)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.59, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %v1)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %call8 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %v1, i8 signext 67)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true, label %land.lhs.true.12

land.lhs.true:                                    ; preds = %if.end.7
  %call10 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %v2, i8 signext 67)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.19, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.lhs.true, %if.end.7
  %call13 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %v1, i8 signext 70)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.then.18

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %call16 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %v2, i8 signext 70)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.15, %land.lhs.true.12
  br label %result

if.end.19:                                        ; preds = %land.lhs.true.15, %land.lhs.true
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 2
  %5 = load i64, i64* %len, align 8
  %len20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v2, i32 0, i32 2
  %6 = load i64, i64* %len20, align 8
  %cmp21 = icmp ne i64 %5, %6
  br i1 %cmp21, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 3
  %7 = load i64, i64* %itemsize, align 8
  %itemsize22 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v2, i32 0, i32 3
  %8 = load i64, i64* %itemsize22, align 8
  %cmp23 = icmp ne i64 %7, %8
  br i1 %cmp23, label %if.then.67, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 5
  %9 = load i32, i32* %ndim, align 4
  %ndim25 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v2, i32 0, i32 5
  %10 = load i32, i32* %ndim25, align 4
  %cmp26 = icmp ne i32 %9, %10
  br i1 %cmp26, label %if.then.67, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 6
  %11 = load i8*, i8** %format, align 8
  %format28 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v2, i32 0, i32 6
  %12 = load i8*, i8** %format28, align 8
  %call29 = call i32 @fmtcmp(i8* %11, i8* %12)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %lor.lhs.false.31, label %if.then.67

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.27
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 7
  %13 = load i64*, i64** %shape, align 8
  %tobool32 = icmp ne i64* %13, null
  %lnot = xor i1 %tobool32, true
  %lnot33 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot33 to i32
  %shape34 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v2, i32 0, i32 7
  %14 = load i64*, i64** %shape34, align 8
  %tobool35 = icmp ne i64* %14, null
  %lnot36 = xor i1 %tobool35, true
  %lnot38 = xor i1 %lnot36, true
  %lnot.ext39 = zext i1 %lnot38 to i32
  %cmp40 = icmp ne i32 %lnot.ext, %lnot.ext39
  br i1 %cmp40, label %if.then.67, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.31
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 8
  %15 = load i64*, i64** %strides, align 8
  %tobool42 = icmp ne i64* %15, null
  %lnot43 = xor i1 %tobool42, true
  %lnot45 = xor i1 %lnot43, true
  %lnot.ext46 = zext i1 %lnot45 to i32
  %strides47 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v2, i32 0, i32 8
  %16 = load i64*, i64** %strides47, align 8
  %tobool48 = icmp ne i64* %16, null
  %lnot49 = xor i1 %tobool48, true
  %lnot51 = xor i1 %lnot49, true
  %lnot.ext52 = zext i1 %lnot51 to i32
  %cmp53 = icmp ne i32 %lnot.ext46, %lnot.ext52
  br i1 %cmp53, label %if.then.67, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.41
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 9
  %17 = load i64*, i64** %suboffsets, align 8
  %tobool55 = icmp ne i64* %17, null
  %lnot56 = xor i1 %tobool55, true
  %lnot58 = xor i1 %lnot56, true
  %lnot.ext59 = zext i1 %lnot58 to i32
  %suboffsets60 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v2, i32 0, i32 9
  %18 = load i64*, i64** %suboffsets60, align 8
  %tobool61 = icmp ne i64* %18, null
  %lnot62 = xor i1 %tobool61, true
  %lnot64 = xor i1 %lnot62, true
  %lnot.ext65 = zext i1 %lnot64 to i32
  %cmp66 = icmp ne i32 %lnot.ext59, %lnot.ext65
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %lor.lhs.false.54, %lor.lhs.false.41, %lor.lhs.false.31, %lor.lhs.false.27, %lor.lhs.false.24, %lor.lhs.false, %if.end.19
  br label %result

if.end.68:                                        ; preds = %lor.lhs.false.54
  %shape69 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 7
  %19 = load i64*, i64** %shape69, align 8
  %tobool70 = icmp ne i64* %19, null
  br i1 %tobool70, label %land.lhs.true.71, label %lor.lhs.false.77

land.lhs.true.71:                                 ; preds = %if.end.68
  %shape72 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 7
  %20 = load i64*, i64** %shape72, align 8
  %shape73 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v2, i32 0, i32 7
  %21 = load i64*, i64** %shape73, align 8
  %ndim74 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 5
  %22 = load i32, i32* %ndim74, align 4
  %conv = sext i32 %22 to i64
  %call75 = call i32 @arraycmp(i64* %20, i64* %21, i64* null, i64 %conv)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %lor.lhs.false.77, label %if.then.98

lor.lhs.false.77:                                 ; preds = %land.lhs.true.71, %if.end.68
  %strides78 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 8
  %23 = load i64*, i64** %strides78, align 8
  %tobool79 = icmp ne i64* %23, null
  br i1 %tobool79, label %land.lhs.true.80, label %lor.lhs.false.88

land.lhs.true.80:                                 ; preds = %lor.lhs.false.77
  %strides81 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 8
  %24 = load i64*, i64** %strides81, align 8
  %strides82 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v2, i32 0, i32 8
  %25 = load i64*, i64** %strides82, align 8
  %shape83 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 7
  %26 = load i64*, i64** %shape83, align 8
  %ndim84 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 5
  %27 = load i32, i32* %ndim84, align 4
  %conv85 = sext i32 %27 to i64
  %call86 = call i32 @arraycmp(i64* %24, i64* %25, i64* %26, i64 %conv85)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %lor.lhs.false.88, label %if.then.98

lor.lhs.false.88:                                 ; preds = %land.lhs.true.80, %lor.lhs.false.77
  %suboffsets89 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 9
  %28 = load i64*, i64** %suboffsets89, align 8
  %tobool90 = icmp ne i64* %28, null
  br i1 %tobool90, label %land.lhs.true.91, label %if.end.99

land.lhs.true.91:                                 ; preds = %lor.lhs.false.88
  %suboffsets92 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 9
  %29 = load i64*, i64** %suboffsets92, align 8
  %suboffsets93 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v2, i32 0, i32 9
  %30 = load i64*, i64** %suboffsets93, align 8
  %ndim94 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 5
  %31 = load i32, i32* %ndim94, align 4
  %conv95 = sext i32 %31 to i64
  %call96 = call i32 @arraycmp(i64* %29, i64* %30, i64* null, i64 %conv95)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %land.lhs.true.91, %land.lhs.true.80, %land.lhs.true.71
  br label %result

if.end.99:                                        ; preds = %land.lhs.true.91, %lor.lhs.false.88
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 0
  %32 = load i8*, i8** %buf, align 8
  %buf100 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v2, i32 0, i32 0
  %33 = load i8*, i8** %buf100, align 8
  %len101 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %v1, i32 0, i32 2
  %34 = load i64, i64* %len101, align 8
  %call102 = call i32 @memcmp(i8* %32, i8* %33, i64 %34) #5
  %cmp103 = icmp ne i32 %call102, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.99
  br label %result

if.end.106:                                       ; preds = %if.end.99
  store i32 1, i32* %equal, align 4
  br label %result

result:                                           ; preds = %if.end.106, %if.then.105, %if.then.98, %if.then.67, %if.then.18
  call void @PyBuffer_Release(%struct.bufferinfo* %v1)
  call void @PyBuffer_Release(%struct.bufferinfo* %v2)
  %35 = load i32, i32* %equal, align 4
  %tobool107 = icmp ne i32 %35, 0
  %cond = select i1 %tobool107, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %ret, align 8
  %36 = load %struct._object*, %struct._object** %ret, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %37, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %38 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %38, %struct._object** %retval
  br label %return

return:                                           ; preds = %result, %if.then.6, %if.then.2, %if.then
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PySlice_GetIndicesEx(%struct._object*, i64, i64*, i64*, i64*, i64*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i8* @PyBuffer_GetPointer(%struct.bufferinfo*, i64*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @unpack_single(i8* %ptr, i8* %fmt, i64 %itemsize) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %itemsize.addr = alloca i64, align 8
  %x = alloca %struct._object*, align 8
  %unpack_from = alloca %struct._object*, align 8
  %mview = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store i64 %itemsize, i64* %itemsize.addr, align 8
  %0 = load i8*, i8** %fmt.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i8** %fmt.addr, align 8
  store i64 1, i64* %itemsize.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._object*, %struct._object** @structmodule, align 8
  %call = call %struct._object* @PyObject_GetAttrString(%struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %unpack_from, align 8
  %2 = load %struct._object*, %struct._object** %unpack_from, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i8*, i8** %ptr.addr, align 8
  %4 = load i64, i64* %itemsize.addr, align 8
  %call4 = call %struct._object* @PyMemoryView_FromMemory(i8* %3, i64 %4, i32 256)
  store %struct._object* %call4, %struct._object** %mview, align 8
  %5 = load %struct._object*, %struct._object** %mview, align 8
  %cmp5 = icmp eq %struct._object* %5, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %6 = load %struct._object*, %struct._object** %unpack_from, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %13 = load %struct._object*, %struct._object** %unpack_from, align 8
  %14 = load i8*, i8** %fmt.addr, align 8
  %15 = load %struct._object*, %struct._object** %mview, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* %14, %struct._object* %15)
  store %struct._object* %call11, %struct._object** %x, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.10
  %16 = load %struct._object*, %struct._object** %unpack_from, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp13, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %18, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %21(%struct._object* %22)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %23 = load %struct._object*, %struct._object** %mview, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp24, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %25, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %28(%struct._object* %29)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %30 = load %struct._object*, %struct._object** %x, align 8
  %cmp34 = icmp eq %struct._object* %30, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %do.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %do.end.33
  %31 = load %struct._object*, %struct._object** %x, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  %33 = load i64, i64* %ob_size, align 8
  %cmp37 = icmp eq i64 %33, 1
  br i1 %cmp37, label %if.then.38, label %if.end.52

if.then.38:                                       ; preds = %if.end.36
  %34 = load %struct._object*, %struct._object** %x, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %35, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %36 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %36, %struct._object** %tmp, align 8
  %37 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt39, align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* %ob_refcnt39, align 8
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.38
  %39 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp42, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt43, align 8
  %dec44 = add i64 %41, -1
  store i64 %dec44, i64* %ob_refcnt43, align 8
  %cmp45 = icmp ne i64 %dec44, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.40
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.40
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  call void %44(%struct._object* %45)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %46 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %46, %struct._object** %retval
  br label %return

if.end.52:                                        ; preds = %if.end.36
  %47 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %47, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.52, %do.end.51, %if.then.35, %do.end, %if.then.2
  %48 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %48
}

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare %struct._object* @PyMemoryView_FromMemory(i8*, i64, i32) #1

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #1

declare %struct._object* @PyLong_FromSize_t(i64) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal signext i8 @get_ascii_order(%struct._object* %order) #0 {
entry:
  %retval = alloca i8, align 1
  %order.addr = alloca %struct._object*, align 8
  %ascii_order = alloca %struct._object*, align 8
  %ord = alloca i8, align 1
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %order, %struct._object** %order.addr, align 8
  %0 = load %struct._object*, %struct._object** %order.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i32 0, i32 0))
  store i8 127, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %order.addr, align 8
  %call = call %struct._object* @PyUnicode_AsASCIIString(%struct._object* %4)
  store %struct._object* %call, %struct._object** %ascii_order, align 8
  %5 = load %struct._object*, %struct._object** %ascii_order, align 8
  %cmp1 = icmp eq %struct._object* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8 127, i8* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %ascii_order, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %arrayidx = getelementptr i8, i8* %arraydecay, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  store i8 %8, i8* %ord, align 1
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %ascii_order, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %16 = load i8, i8* %ord, align 1
  %conv = sext i8 %16 to i32
  %cmp8 = icmp ne i32 %conv, 67
  br i1 %cmp8, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %do.end
  %17 = load i8, i8* %ord, align 1
  %conv10 = sext i8 %17 to i32
  %cmp11 = icmp ne i32 %conv10, 70
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.18

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %18 = load i8, i8* %ord, align 1
  %conv14 = sext i8 %18 to i32
  %cmp15 = icmp ne i32 %conv14, 65
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true.13
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i32 0, i32 0))
  store i8 127, i8* %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true.13, %land.lhs.true, %do.end
  %20 = load i8, i8* %ord, align 1
  store i8 %20, i8* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.17, %if.then.2, %if.then
  %21 = load i8, i8* %retval
  ret i8 %21
}

declare %struct._object* @PyMemoryView_GetContiguous(%struct._object*, i32, i8 signext) #1

declare %struct._object* @PyUnicode_AsASCIIString(%struct._object*) #1

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare i32 @PyBuffer_ToContiguous(i8*, %struct.bufferinfo*, i64, i8 signext) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare void @PyMem_Free(i8*) #1

declare i32 @PyBuffer_IsContiguous(%struct.bufferinfo*, i8 signext) #1

; Function Attrs: nounwind uwtable
define internal i32 @fmtcmp(i8* %fmt1, i8* %fmt2) #0 {
entry:
  %retval = alloca i32, align 4
  %fmt1.addr = alloca i8*, align 8
  %fmt2.addr = alloca i8*, align 8
  store i8* %fmt1, i8** %fmt1.addr, align 8
  store i8* %fmt2, i8** %fmt2.addr, align 8
  %0 = load i8*, i8** %fmt1.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %fmt2.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %2 = load i8*, i8** %fmt2.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0)) #5
  %cmp2 = icmp eq i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %3 = phi i1 [ true, %if.then ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %fmt2.addr, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.end
  %5 = load i8*, i8** %fmt1.addr, align 8
  %cmp5 = icmp eq i8* %5, null
  br i1 %cmp5, label %lor.end.9, label %lor.rhs.6

lor.rhs.6:                                        ; preds = %if.then.4
  %6 = load i8*, i8** %fmt1.addr, align 8
  %call7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0)) #5
  %cmp8 = icmp eq i32 %call7, 0
  br label %lor.end.9

lor.end.9:                                        ; preds = %lor.rhs.6, %if.then.4
  %7 = phi i1 [ true, %if.then.4 ], [ %cmp8, %lor.rhs.6 ]
  %lor.ext10 = zext i1 %7 to i32
  store i32 %lor.ext10, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %8 = load i8*, i8** %fmt1.addr, align 8
  %9 = load i8*, i8** %fmt2.addr, align 8
  %call12 = call i32 @strcmp(i8* %8, i8* %9) #5
  %cmp13 = icmp eq i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %lor.end.9, %lor.end
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @arraycmp(i64* %a1, i64* %a2, i64* %shape, i64 %ndim) #0 {
entry:
  %retval = alloca i32, align 4
  %a1.addr = alloca i64*, align 8
  %a2.addr = alloca i64*, align 8
  %shape.addr = alloca i64*, align 8
  %ndim.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %a1, i64** %a1.addr, align 8
  store i64* %a2, i64** %a2.addr, align 8
  store i64* %shape, i64** %shape.addr, align 8
  store i64 %ndim, i64* %ndim.addr, align 8
  %0 = load i64, i64* %ndim.addr, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64*, i64** %shape.addr, align 8
  %tobool = icmp ne i64* %1, null
  br i1 %tobool, label %land.lhs.true.1, label %if.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load i64*, i64** %shape.addr, align 8
  %arrayidx = getelementptr i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx, align 8
  %cmp2 = icmp eq i64 %3, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.1
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %ndim.addr, align 8
  %cmp3 = icmp slt i64 %4, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %i, align 8
  %7 = load i64*, i64** %a1.addr, align 8
  %arrayidx4 = getelementptr i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx4, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load i64*, i64** %a2.addr, align 8
  %arrayidx5 = getelementptr i64, i64* %10, i64 %9
  %11 = load i64, i64* %arrayidx5, align 8
  %cmp6 = icmp ne i64 %8, %11
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %12 = load i64, i64* %i, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @ndarray_dealloc(%struct.NDArrayObject* %self) #0 {
entry:
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %tobool = icmp ne %struct.ndbuf* %1, null
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %2 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head1 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %2, i32 0, i32 3
  %3 = load %struct.ndbuf*, %struct.ndbuf** %head1, align 8
  %4 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %staticbuf = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %4, i32 0, i32 2
  %cmp = icmp eq %struct.ndbuf* %3, %staticbuf
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head3 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %5, i32 0, i32 3
  %6 = load %struct.ndbuf*, %struct.ndbuf** %head3, align 8
  %base4 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %6, i32 0, i32 7
  store %struct.bufferinfo* %base4, %struct.bufferinfo** %base, align 8
  %7 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head5 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %7, i32 0, i32 3
  %8 = load %struct.ndbuf*, %struct.ndbuf** %head5, align 8
  %flags = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %8, i32 0, i32 5
  %9 = load i32, i32* %flags, align 4
  %and = and i32 %9, 512
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.23

if.then.7:                                        ; preds = %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 7
  %11 = load i64*, i64** %shape, align 8
  %tobool8 = icmp ne i64* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %do.body
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 7
  %13 = load i64*, i64** %shape10, align 8
  %14 = bitcast i64* %13 to i8*
  call void @PyMem_Free(i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %15, i32 0, i32 8
  %16 = load i64*, i64** %strides, align 8
  %tobool12 = icmp ne i64* %16, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.body.11
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides14 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 8
  %18 = load i64*, i64** %strides14, align 8
  %19 = bitcast i64* %18 to i8*
  call void @PyMem_Free(i8* %19)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.body.11
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 9
  %21 = load i64*, i64** %suboffsets, align 8
  %tobool18 = icmp ne i64* %21, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %do.body.17
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 9
  %23 = load i64*, i64** %suboffsets20, align 8
  %24 = bitcast i64* %23 to i8*
  call void @PyMem_Free(i8* %24)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %do.body.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %if.then.2
  %25 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %25)
  br label %if.end.26

if.else:                                          ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %26 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head24 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %26, i32 0, i32 3
  %27 = load %struct.ndbuf*, %struct.ndbuf** %head24, align 8
  %tobool25 = icmp ne %struct.ndbuf* %27, null
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  call void @ndbuf_pop(%struct.NDArrayObject* %28)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.26

if.end.26:                                        ; preds = %while.end, %if.end.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %entry
  %29 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %30 = bitcast %struct.NDArrayObject* %29 to i8*
  call void @PyObject_Free(i8* %30)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @ndarray_hash(%struct._object* %self) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct._object*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  %view = alloca %struct.bufferinfo*, align 8
  %bytes = alloca %struct._object*, align 8
  %hash = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.NDArrayObject*
  store %struct.NDArrayObject* %1, %struct.NDArrayObject** %nd, align 8
  %2 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %2, i32 0, i32 3
  %3 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %3, i32 0, i32 7
  store %struct.bufferinfo* %base, %struct.bufferinfo** %view, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 4
  %5 = load i32, i32* %readonly, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.68, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %obj, align 8
  %cmp = icmp ne %struct._object* %8, null
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %obj1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %obj1, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %10)
  %cmp2 = icmp eq i64 %call, -1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i64 -1, i64* %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %11 = load %struct._object*, %struct._object** %self.addr, align 8
  %call5 = call %struct._object* @ndarray_tobytes(%struct._object* %11, %struct._object* null)
  store %struct._object* %call5, %struct._object** %bytes, align 8
  %12 = load %struct._object*, %struct._object** %bytes, align 8
  %cmp6 = icmp eq %struct._object* %12, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i64 -1, i64* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %13 = load %struct._object*, %struct._object** %bytes, align 8
  %call9 = call i64 @PyObject_Hash(%struct._object* %13)
  store i64 %call9, i64* %hash, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %14 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %21 = load i64, i64* %hash, align 8
  store i64 %21, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.7, %if.then.3, %if.then
  %22 = load i64, i64* %retval
  ret i64 %22
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ndarray_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  %v = alloca %struct._object*, align 8
  %shape = alloca %struct._object*, align 8
  %strides = alloca %struct._object*, align 8
  %offset = alloca i64, align 8
  %format = alloca %struct._object*, align 8
  %flags = alloca i32, align 4
  %getbuf = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.NDArrayObject*
  store %struct.NDArrayObject* %1, %struct.NDArrayObject** %nd, align 8
  store %struct._object* null, %struct._object** %v, align 8
  store %struct._object* null, %struct._object** %shape, align 8
  store %struct._object* null, %struct._object** %strides, align 8
  store i64 0, i64* %offset, align 8
  %2 = load %struct._object*, %struct._object** @simple_format, align 8
  store %struct._object* %2, %struct._object** %format, align 8
  store i32 0, i32* %flags, align 4
  store i32 65536, i32* %getbuf, align 4
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %3, %struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0), i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @ndarray_init.kwlist, i32 0, i32 0), %struct._object** %v, %struct._object** %shape, %struct._object** %strides, i64* %offset, %struct._object** %format, i32* %flags, i32* %getbuf)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %v, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 18
  %7 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp = icmp ne %struct.PyBufferProcs* %7, null
  br i1 %cmp, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %v, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_buffer2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 18
  %10 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer2, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %10, i32 0, i32 0
  %11 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp3 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %11, null
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.24

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %12 = load %struct._object*, %struct._object** %shape, align 8
  %cmp5 = icmp eq %struct._object* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.24

if.then.6:                                        ; preds = %land.lhs.true.4
  %13 = load %struct._object*, %struct._object** %strides, align 8
  %tobool7 = icmp ne %struct._object* %13, null
  br i1 %tobool7, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.6
  %14 = load i64, i64* %offset, align 8
  %tobool8 = icmp ne i64 %14, 0
  br i1 %tobool8, label %if.then.15, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %15 = load %struct._object*, %struct._object** %format, align 8
  %16 = load %struct._object*, %struct._object** @simple_format, align 8
  %cmp10 = icmp ne %struct._object* %15, %16
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %17 = load i32, i32* %flags, align 4
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.end.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.11
  %18 = load i32, i32* %flags, align 4
  %cmp14 = icmp eq i32 %18, 32
  br i1 %cmp14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.9, %lor.lhs.false, %if.then.6
  %19 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.129, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false.13, %lor.lhs.false.11
  %20 = load i32, i32* %getbuf, align 4
  %cmp17 = icmp eq i32 %20, 65536
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %21 = load i32, i32* %getbuf, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 284, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, i32* %getbuf, align 4
  %22 = load %struct._object*, %struct._object** %v, align 8
  %23 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %24 = load i32, i32* %getbuf, align 4
  %call18 = call i32 @ndarray_init_staticbuf(%struct._object* %22, %struct.NDArrayObject* %23, i32 %24)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %cond.end
  %25 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %25, i32 0, i32 3
  %26 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  call void @init_flags(%struct.ndbuf* %26)
  %27 = load i32, i32* %flags, align 4
  %28 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head22 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %28, i32 0, i32 3
  %29 = load %struct.ndbuf*, %struct.ndbuf** %head22, align 8
  %flags23 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %29, i32 0, i32 5
  %30 = load i32, i32* %flags23, align 4
  %or = or i32 %30, %27
  store i32 %or, i32* %flags23, align 4
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true.4, %land.lhs.true, %if.end
  %31 = load i32, i32* %getbuf, align 4
  %cmp25 = icmp ne i32 %31, 65536
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  %32 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.130, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.24
  %33 = load %struct._object*, %struct._object** %shape, align 8
  %cmp28 = icmp eq %struct._object* %33, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  %34 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %34, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.131, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.27
  %35 = load i32, i32* %flags, align 4
  %and = and i32 %35, 1
  %tobool31 = icmp ne i32 %and, 0
  br i1 %tobool31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.30
  %36 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %flags33 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %36, i32 0, i32 1
  %37 = load i32, i32* %flags33, align 4
  %or34 = or i32 %37, 1
  store i32 %or34, i32* %flags33, align 4
  %38 = load i32, i32* %flags, align 4
  %and35 = and i32 %38, -2
  store i32 %and35, i32* %flags, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end.30
  %39 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %40 = load %struct._object*, %struct._object** %v, align 8
  %41 = load %struct._object*, %struct._object** %shape, align 8
  %42 = load %struct._object*, %struct._object** %strides, align 8
  %43 = load i64, i64* %offset, align 8
  %44 = load %struct._object*, %struct._object** %format, align 8
  %45 = load i32, i32* %flags, align 4
  %call37 = call i32 @ndarray_push_base(%struct.NDArrayObject* %39, %struct._object* %40, %struct._object* %41, %struct._object* %42, i64 %43, %struct._object* %44, i32 %45)
  store i32 %call37, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.29, %if.then.26, %if.end.21, %if.then.20, %if.then.15, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @NDArray_Type)
  %0 = bitcast %struct._object* %call to %struct.NDArrayObject*
  store %struct.NDArrayObject* %0, %struct.NDArrayObject** %nd, align 8
  %1 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %cmp = icmp eq %struct.NDArrayObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %flags = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %2, i32 0, i32 1
  store i32 0, i32* %flags, align 4
  %3 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %3, i32 0, i32 3
  store %struct.ndbuf* null, %struct.ndbuf** %head, align 8
  %4 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %5 = bitcast %struct.NDArrayObject* %4 to %struct._object*
  store %struct._object* %5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal void @ndbuf_pop(%struct.NDArrayObject* %nd) #0 {
entry:
  %nd.addr = alloca %struct.NDArrayObject*, align 8
  store %struct.NDArrayObject* %nd, %struct.NDArrayObject** %nd.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %1 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %1, i32 0, i32 3
  %2 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  call void @ndbuf_delete(%struct.NDArrayObject* %0, %struct.ndbuf* %2)
  ret void
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ndbuf_delete(%struct.NDArrayObject* %nd, %struct.ndbuf* %elt) #0 {
entry:
  %nd.addr = alloca %struct.NDArrayObject*, align 8
  %elt.addr = alloca %struct.ndbuf*, align 8
  store %struct.NDArrayObject* %nd, %struct.NDArrayObject** %nd.addr, align 8
  store %struct.ndbuf* %elt, %struct.ndbuf** %elt.addr, align 8
  %0 = load %struct.ndbuf*, %struct.ndbuf** %elt.addr, align 8
  %prev = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %0, i32 0, i32 1
  %1 = load %struct.ndbuf*, %struct.ndbuf** %prev, align 8
  %tobool = icmp ne %struct.ndbuf* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.ndbuf*, %struct.ndbuf** %elt.addr, align 8
  %next = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %2, i32 0, i32 0
  %3 = load %struct.ndbuf*, %struct.ndbuf** %next, align 8
  %4 = load %struct.ndbuf*, %struct.ndbuf** %elt.addr, align 8
  %prev1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %4, i32 0, i32 1
  %5 = load %struct.ndbuf*, %struct.ndbuf** %prev1, align 8
  %next2 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %5, i32 0, i32 0
  store %struct.ndbuf* %3, %struct.ndbuf** %next2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.ndbuf*, %struct.ndbuf** %elt.addr, align 8
  %next3 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %6, i32 0, i32 0
  %7 = load %struct.ndbuf*, %struct.ndbuf** %next3, align 8
  %8 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %8, i32 0, i32 3
  store %struct.ndbuf* %7, %struct.ndbuf** %head, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.ndbuf*, %struct.ndbuf** %elt.addr, align 8
  %next4 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %9, i32 0, i32 0
  %10 = load %struct.ndbuf*, %struct.ndbuf** %next4, align 8
  %tobool5 = icmp ne %struct.ndbuf* %10, null
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %11 = load %struct.ndbuf*, %struct.ndbuf** %elt.addr, align 8
  %prev7 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %11, i32 0, i32 1
  %12 = load %struct.ndbuf*, %struct.ndbuf** %prev7, align 8
  %13 = load %struct.ndbuf*, %struct.ndbuf** %elt.addr, align 8
  %next8 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %13, i32 0, i32 0
  %14 = load %struct.ndbuf*, %struct.ndbuf** %next8, align 8
  %prev9 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %14, i32 0, i32 1
  store %struct.ndbuf* %12, %struct.ndbuf** %prev9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %15 = load %struct.ndbuf*, %struct.ndbuf** %elt.addr, align 8
  call void @ndbuf_free(%struct.ndbuf* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ndbuf_free(%struct.ndbuf* %ndbuf) #0 {
entry:
  %ndbuf.addr = alloca %struct.ndbuf*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  store %struct.ndbuf* %ndbuf, %struct.ndbuf** %ndbuf.addr, align 8
  %0 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %0, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %data = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 4
  %2 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %data2 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %3, i32 0, i32 4
  %4 = load i8*, i8** %data2, align 8
  call void @PyMem_Free(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.3

do.body.3:                                        ; preds = %do.end
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 6
  %6 = load i8*, i8** %format, align 8
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %do.body.3
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %format6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 6
  %8 = load i8*, i8** %format6, align 8
  call void @PyMem_Free(i8* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %do.body.3
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 7
  %10 = load i64*, i64** %shape, align 8
  %tobool10 = icmp ne i64* %10, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %do.body.9
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 7
  %12 = load i64*, i64** %shape12, align 8
  %13 = bitcast i64* %12 to i8*
  call void @PyMem_Free(i8* %13)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %do.body.9
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 8
  %15 = load i64*, i64** %strides, align 8
  %tobool16 = icmp ne i64* %15, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %do.body.15
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides18 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 8
  %17 = load i64*, i64** %strides18, align 8
  %18 = bitcast i64* %17 to i8*
  call void @PyMem_Free(i8* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %do.body.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.20
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 9
  %20 = load i64*, i64** %suboffsets, align 8
  %tobool22 = icmp ne i64* %20, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %do.body.21
  %21 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets24 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %21, i32 0, i32 9
  %22 = load i64*, i64** %suboffsets24, align 8
  %23 = bitcast i64* %22 to i8*
  call void @PyMem_Free(i8* %23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %do.body.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %24 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %25 = bitcast %struct.ndbuf* %24 to i8*
  call void @PyMem_Free(i8* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_item(%struct.NDArrayObject* %self, i64 %index) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %index.addr = alloca i64, align 8
  %ndbuf = alloca %struct.ndbuf*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  %ptr = alloca i8*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  %subview = alloca %struct.bufferinfo*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  store %struct.ndbuf* %1, %struct.ndbuf** %ndbuf, align 8
  %2 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %2, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 5
  %4 = load i32, i32* %ndim, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %7 = load i64, i64* %index.addr, align 8
  %call = call i8* @ptr_from_index(%struct.bufferinfo* %6, i64 %7)
  store i8* %call, i8** %ptr, align 8
  %8 = load i8*, i8** %ptr, align 8
  %cmp2 = icmp eq i8* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 5
  %10 = load i32, i32* %ndim5, align 4
  %cmp6 = icmp eq i32 %10, 1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.4
  %11 = load i8*, i8** %ptr, align 8
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 6
  %13 = load i8*, i8** %format, align 8
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 3
  %15 = load i64, i64* %itemsize, align 8
  %call8 = call %struct._object* @unpack_single(i8* %11, i8* %13, i64 %15)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.4
  %call9 = call %struct._object* @ndarray_new(%struct._typeobject* @NDArray_Type, %struct._object* null, %struct._object* null)
  %16 = bitcast %struct._object* %call9 to %struct.NDArrayObject*
  store %struct.NDArrayObject* %16, %struct.NDArrayObject** %nd, align 8
  %17 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %cmp10 = icmp eq %struct.NDArrayObject* %17, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  %18 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %19 = bitcast %struct.NDArrayObject* %18 to %struct._object*
  %20 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %call13 = call i32 @ndarray_init_staticbuf(%struct._object* %19, %struct.NDArrayObject* %20, i32 284)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end.12
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %21 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %22 = bitcast %struct.NDArrayObject* %21 to %struct._object*
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body
  br label %if.end.19

if.else.18:                                       ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.12
  %29 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %staticbuf = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %29, i32 0, i32 2
  %base21 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %staticbuf, i32 0, i32 7
  store %struct.bufferinfo* %base21, %struct.bufferinfo** %subview, align 8
  %30 = load i8*, i8** %ptr, align 8
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %subview, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 0
  store i8* %30, i8** %buf, align 8
  %32 = load %struct.bufferinfo*, %struct.bufferinfo** %subview, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %32, i32 0, i32 7
  %33 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %33, i64 0
  %34 = load i64, i64* %arrayidx, align 8
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %subview, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %35, i32 0, i32 2
  %36 = load i64, i64* %len, align 8
  %div = sdiv i64 %36, %34
  store i64 %div, i64* %len, align 8
  %37 = load %struct.bufferinfo*, %struct.bufferinfo** %subview, align 8
  %ndim22 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %37, i32 0, i32 5
  %38 = load i32, i32* %ndim22, align 4
  %dec23 = add i32 %38, -1
  store i32 %dec23, i32* %ndim22, align 4
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %subview, align 8
  %shape24 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %39, i32 0, i32 7
  %40 = load i64*, i64** %shape24, align 8
  %incdec.ptr = getelementptr i64, i64* %40, i32 1
  store i64* %incdec.ptr, i64** %shape24, align 8
  %41 = load %struct.bufferinfo*, %struct.bufferinfo** %subview, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %41, i32 0, i32 8
  %42 = load i64*, i64** %strides, align 8
  %tobool = icmp ne i64* %42, null
  br i1 %tobool, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.20
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %subview, align 8
  %strides26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %43, i32 0, i32 8
  %44 = load i64*, i64** %strides26, align 8
  %incdec.ptr27 = getelementptr i64, i64* %44, i32 1
  store i64* %incdec.ptr27, i64** %strides26, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.20
  %45 = load %struct.bufferinfo*, %struct.bufferinfo** %subview, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %45, i32 0, i32 9
  %46 = load i64*, i64** %suboffsets, align 8
  %tobool29 = icmp ne i64* %46, null
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.28
  %47 = load %struct.bufferinfo*, %struct.bufferinfo** %subview, align 8
  %suboffsets31 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %47, i32 0, i32 9
  %48 = load i64*, i64** %suboffsets31, align 8
  %incdec.ptr32 = getelementptr i64, i64* %48, i32 1
  store i64* %incdec.ptr32, i64** %suboffsets31, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.28
  %49 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %staticbuf34 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %49, i32 0, i32 2
  call void @init_flags(%struct.ndbuf* %staticbuf34)
  %50 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %51 = bitcast %struct.NDArrayObject* %50 to %struct._object*
  store %struct._object* %51, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.33, %do.end, %if.then.11, %if.then.7, %if.then.3, %if.then
  %52 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %52
}

; Function Attrs: nounwind uwtable
define internal i8* @ptr_from_index(%struct.bufferinfo* %base, i64 %index) #0 {
entry:
  %retval = alloca i8*, align 8
  %base.addr = alloca %struct.bufferinfo*, align 8
  %index.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %nitems = alloca i64, align 8
  store %struct.bufferinfo* %base, %struct.bufferinfo** %base.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 7
  %1 = load i64*, i64** %shape, align 8
  %tobool = icmp ne i64* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %shape1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 7
  %3 = load i64*, i64** %shape1, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx, align 8
  store i64 %4, i64* %nitems, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 2
  %6 = load i64, i64* %len, align 8
  store i64 %6, i64* %nitems, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i64, i64* %index.addr, align 8
  %cmp = icmp slt i64 %7, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load i64, i64* %nitems, align 8
  %9 = load i64, i64* %index.addr, align 8
  %add = add i64 %9, %8
  store i64 %add, i64* %index.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %10 = load i64, i64* %index.addr, align 8
  %cmp4 = icmp slt i64 %10, 0
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %11 = load i64, i64* %index.addr, align 8
  %12 = load i64, i64* %nitems, align 8
  %cmp5 = icmp sge i64 %11, %12
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.3
  %13 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 0
  %15 = load i8*, i8** %buf, align 8
  store i8* %15, i8** %ptr, align 8
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 8
  %17 = load i64*, i64** %strides, align 8
  %cmp8 = icmp eq i64* %17, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 3
  %19 = load i64, i64* %itemsize, align 8
  %20 = load i64, i64* %index.addr, align 8
  %mul = mul i64 %19, %20
  %21 = load i8*, i8** %ptr, align 8
  %add.ptr = getelementptr i8, i8* %21, i64 %mul
  store i8* %add.ptr, i8** %ptr, align 8
  br label %if.end.15

if.else.10:                                       ; preds = %if.end.7
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %strides11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 8
  %23 = load i64*, i64** %strides11, align 8
  %arrayidx12 = getelementptr i64, i64* %23, i64 0
  %24 = load i64, i64* %arrayidx12, align 8
  %25 = load i64, i64* %index.addr, align 8
  %mul13 = mul i64 %24, %25
  %26 = load i8*, i8** %ptr, align 8
  %add.ptr14 = getelementptr i8, i8* %26, i64 %mul13
  store i8* %add.ptr14, i8** %ptr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.10, %if.then.9
  %27 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %27, i32 0, i32 9
  %28 = load i64*, i64** %suboffsets, align 8
  %tobool16 = icmp ne i64* %28, null
  br i1 %tobool16, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.15
  %29 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %29, i32 0, i32 9
  %30 = load i64*, i64** %suboffsets17, align 8
  %arrayidx18 = getelementptr i64, i64* %30, i64 0
  %31 = load i64, i64* %arrayidx18, align 8
  %cmp19 = icmp sge i64 %31, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %32 = load i8*, i8** %ptr, align 8
  %33 = bitcast i8* %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %35, i32 0, i32 9
  %36 = load i64*, i64** %suboffsets20, align 8
  %arrayidx21 = getelementptr i64, i64* %36, i64 0
  %37 = load i64, i64* %arrayidx21, align 8
  %add.ptr22 = getelementptr i8, i8* %34, i64 %37
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.15
  %38 = load i8*, i8** %ptr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr22, %cond.true ], [ %38, %cond.false ]
  store i8* %cond, i8** %ptr, align 8
  %39 = load i8*, i8** %ptr, align 8
  store i8* %39, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.6
  %40 = load i8*, i8** %retval
  ret i8* %40
}

; Function Attrs: nounwind uwtable
define internal i32 @ndarray_init_staticbuf(%struct._object* %exporter, %struct.NDArrayObject* %nd, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %exporter.addr = alloca %struct._object*, align 8
  %nd.addr = alloca %struct.NDArrayObject*, align 8
  %flags.addr = alloca i32, align 4
  %base = alloca %struct.bufferinfo*, align 8
  store %struct._object* %exporter, %struct._object** %exporter.addr, align 8
  store %struct.NDArrayObject* %nd, %struct.NDArrayObject** %nd.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %staticbuf = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 2
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %staticbuf, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %1 = load %struct._object*, %struct._object** %exporter.addr, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call = call i32 @PyObject_GetBuffer(%struct._object* %1, %struct.bufferinfo* %2, i32 %3)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %staticbuf2 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %4, i32 0, i32 2
  %5 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %5, i32 0, i32 3
  store %struct.ndbuf* %staticbuf2, %struct.ndbuf** %head, align 8
  %6 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head3 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %6, i32 0, i32 3
  %7 = load %struct.ndbuf*, %struct.ndbuf** %head3, align 8
  %next = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %7, i32 0, i32 0
  store %struct.ndbuf* null, %struct.ndbuf** %next, align 8
  %8 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head4 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %8, i32 0, i32 3
  %9 = load %struct.ndbuf*, %struct.ndbuf** %head4, align 8
  %prev = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %9, i32 0, i32 1
  store %struct.ndbuf* null, %struct.ndbuf** %prev, align 8
  %10 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head5 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %10, i32 0, i32 3
  %11 = load %struct.ndbuf*, %struct.ndbuf** %head5, align 8
  %len = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %11, i32 0, i32 2
  store i64 -1, i64* %len, align 8
  %12 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head6 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %12, i32 0, i32 3
  %13 = load %struct.ndbuf*, %struct.ndbuf** %head6, align 8
  %offset = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %13, i32 0, i32 3
  store i64 -1, i64* %offset, align 8
  %14 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head7 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %14, i32 0, i32 3
  %15 = load %struct.ndbuf*, %struct.ndbuf** %head7, align 8
  %data = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %15, i32 0, i32 4
  store i8* null, i8** %data, align 8
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 4
  %17 = load i32, i32* %readonly, align 4
  %tobool = icmp ne i32 %17, 0
  %cond = select i1 %tobool, i32 0, i32 2
  %18 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head8 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %18, i32 0, i32 3
  %19 = load %struct.ndbuf*, %struct.ndbuf** %head8, align 8
  %flags9 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %19, i32 0, i32 5
  store i32 %cond, i32* %flags9, align 4
  %20 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head10 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %20, i32 0, i32 3
  %21 = load %struct.ndbuf*, %struct.ndbuf** %head10, align 8
  %exports = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %21, i32 0, i32 6
  store i64 0, i64* %exports, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal void @init_flags(%struct.ndbuf* %ndbuf) #0 {
entry:
  %ndbuf.addr = alloca %struct.ndbuf*, align 8
  store %struct.ndbuf* %ndbuf, %struct.ndbuf** %ndbuf.addr, align 8
  %0 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %base = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %0, i32 0, i32 7
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %base, i32 0, i32 5
  %1 = load i32, i32* %ndim, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %flags = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %2, i32 0, i32 5
  %3 = load i32, i32* %flags, align 4
  %or = or i32 %3, 8
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %4, i32 0, i32 7
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %base1, i32 0, i32 9
  %5 = load i64*, i64** %suboffsets, align 8
  %tobool = icmp ne i64* %5, null
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %flags3 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %6, i32 0, i32 5
  %7 = load i32, i32* %flags3, align 4
  %or4 = or i32 %7, 16
  store i32 %or4, i32* %flags3, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %8 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %base6 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %8, i32 0, i32 7
  %call = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %base6, i8 signext 67)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  %9 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %flags9 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %9, i32 0, i32 5
  %10 = load i32, i32* %flags9, align 4
  %or10 = or i32 %10, 256
  store i32 %or10, i32* %flags9, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.5
  %11 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %base12 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %11, i32 0, i32 7
  %call13 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %base12, i8 signext 70)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.11
  %12 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %flags16 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %12, i32 0, i32 5
  %13 = load i32, i32* %flags16, align 4
  %or17 = or i32 %13, 4
  store i32 %or17, i32* %flags16, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_subscript(%struct.NDArrayObject* %self, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  %ndbuf = alloca %struct.ndbuf*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  %index = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 5
  %3 = load i32, i32* %ndim, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 67108864
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %key.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %cmp3 = icmp eq i64 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 0
  %11 = load i8*, i8** %buf, align 8
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 6
  %13 = load i8*, i8** %format, align 8
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 3
  %15 = load i64, i64* %itemsize, align 8
  %call = call %struct._object* @unpack_single(i8* %11, i8* %13, i64 %15)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  %16 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp5 = icmp eq %struct._object* %16, @_Py_EllipsisObject
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %17 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %18 = bitcast %struct.NDArrayObject* %17 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %20 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %21 = bitcast %struct.NDArrayObject* %20 to %struct._object*
  store %struct._object* %21, %struct._object** %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %22 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %23 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 10
  %25 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp9 = icmp ne %struct.PyNumberMethods* %25, null
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.22

land.lhs.true.10:                                 ; preds = %if.end
  %26 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_as_number12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 10
  %28 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number12, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %28, i32 0, i32 33
  %29 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp13 = icmp ne %struct._object* (%struct._object*)* %29, null
  br i1 %cmp13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %land.lhs.true.10
  %30 = load %struct._object*, %struct._object** %key.addr, align 8
  %call15 = call i64 @PyLong_AsSsize_t(%struct._object* %30)
  store i64 %call15, i64* %index, align 8
  %31 = load i64, i64* %index, align 8
  %cmp16 = icmp eq i64 %31, -1
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.20

land.lhs.true.17:                                 ; preds = %if.then.14
  %call18 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call18, null
  br i1 %tobool, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.17, %if.then.14
  %32 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %33 = load i64, i64* %index, align 8
  %call21 = call %struct._object* @ndarray_item(%struct.NDArrayObject* %32, i64 %33)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.10, %if.end
  %call23 = call %struct._object* @ndarray_new(%struct._typeobject* @NDArray_Type, %struct._object* null, %struct._object* null)
  %34 = bitcast %struct._object* %call23 to %struct.NDArrayObject*
  store %struct.NDArrayObject* %34, %struct.NDArrayObject** %nd, align 8
  %35 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %cmp24 = icmp eq %struct.NDArrayObject* %35, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %36 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %37 = bitcast %struct.NDArrayObject* %36 to %struct._object*
  %38 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %call27 = call i32 @ndarray_init_staticbuf(%struct._object* %37, %struct.NDArrayObject* %38, i32 284)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %if.end.26
  br label %do.body

do.body:                                          ; preds = %if.then.29
  %39 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %40 = bitcast %struct.NDArrayObject* %39 to %struct._object*
  store %struct._object* %40, %struct._object** %_py_decref_tmp, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt30, align 8
  %dec = add i64 %42, -1
  store i64 %dec, i64* %ob_refcnt30, align 8
  %cmp31 = icmp ne i64 %dec, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body
  br label %if.end.35

if.else.33:                                       ; preds = %do.body
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %45(%struct._object* %46)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end

do.end:                                           ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %if.end.26
  %47 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head37 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %47, i32 0, i32 3
  %48 = load %struct.ndbuf*, %struct.ndbuf** %head37, align 8
  store %struct.ndbuf* %48, %struct.ndbuf** %ndbuf, align 8
  %49 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %base38 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %49, i32 0, i32 7
  store %struct.bufferinfo* %base38, %struct.bufferinfo** %base, align 8
  %50 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %call39 = call i32 @copy_structure(%struct.bufferinfo* %50)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.end.53

if.then.41:                                       ; preds = %if.end.36
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  %51 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %52 = bitcast %struct.NDArrayObject* %51 to %struct._object*
  store %struct._object* %52, %struct._object** %_py_decref_tmp43, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %54, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %57(%struct._object* %58)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.36
  %59 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %flags = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %59, i32 0, i32 5
  %60 = load i32, i32* %flags, align 4
  %or = or i32 %60, 512
  store i32 %or, i32* %flags, align 4
  %61 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %cmp55 = icmp eq %struct._typeobject* %62, @PySlice_Type
  br i1 %cmp55, label %if.then.56, label %if.else.61

if.then.56:                                       ; preds = %if.end.53
  %63 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %64 = load %struct._object*, %struct._object** %key.addr, align 8
  %call57 = call i32 @init_slice(%struct.bufferinfo* %63, %struct._object* %64, i32 0)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.56
  br label %err_occurred

if.end.60:                                        ; preds = %if.then.56
  br label %if.end.81

if.else.61:                                       ; preds = %if.end.53
  %65 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_flags63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 19
  %67 = load i64, i64* %tp_flags63, align 8
  %and64 = and i64 %67, 67108864
  %cmp65 = icmp ne i64 %and64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.79

if.then.66:                                       ; preds = %if.else.61
  %68 = load %struct._object*, %struct._object** %key.addr, align 8
  store %struct._object* %68, %struct._object** %tuple, align 8
  %69 = load %struct._object*, %struct._object** %tuple, align 8
  %70 = bitcast %struct._object* %69 to %struct.PyVarObject*
  %ob_size67 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %70, i32 0, i32 1
  %71 = load i64, i64* %ob_size67, align 8
  store i64 %71, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.66
  %72 = load i64, i64* %i, align 8
  %73 = load i64, i64* %n, align 8
  %cmp68 = icmp slt i64 %72, %73
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load i64, i64* %i, align 8
  %75 = load %struct._object*, %struct._object** %tuple, align 8
  %76 = bitcast %struct._object* %75 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %76, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %74
  %77 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %77, %struct._object** %key.addr, align 8
  %78 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %cmp70 = icmp eq %struct._typeobject* %79, @PySlice_Type
  br i1 %cmp70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %for.body
  br label %type_error

if.end.72:                                        ; preds = %for.body
  %80 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %81 = load %struct._object*, %struct._object** %key.addr, align 8
  %82 = load i64, i64* %i, align 8
  %conv = trunc i64 %82 to i32
  %call73 = call i32 @init_slice(%struct.bufferinfo* %80, %struct._object* %81, i32 %conv)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.72
  br label %err_occurred

if.end.77:                                        ; preds = %if.end.72
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %83 = load i64, i64* %i, align 8
  %inc78 = add i64 %83, 1
  store i64 %inc78, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.80

if.else.79:                                       ; preds = %if.else.61
  br label %type_error

if.end.80:                                        ; preds = %for.end
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.60
  %84 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  call void @init_len(%struct.bufferinfo* %84)
  %85 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  call void @init_flags(%struct.ndbuf* %85)
  %86 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %87 = bitcast %struct.NDArrayObject* %86 to %struct._object*
  store %struct._object* %87, %struct._object** %retval
  br label %return

type_error:                                       ; preds = %if.else.79, %if.then.71
  %88 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %89 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 1
  %91 = load i8*, i8** %tp_name, align 8
  %call83 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0), i8* %91)
  br label %err_occurred

err_occurred:                                     ; preds = %type_error, %if.then.76, %if.then.59
  br label %do.body.84

do.body.84:                                       ; preds = %err_occurred
  %92 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %93 = bitcast %struct.NDArrayObject* %92 to %struct._object*
  store %struct._object* %93, %struct._object** %_py_decref_tmp85, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %95, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %do.body.84
  br label %if.end.94

if.else.91:                                       ; preds = %do.body.84
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %98(%struct._object* %99)
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.95, %if.end.81, %do.end.52, %do.end, %if.then.25, %if.end.20, %if.then.19, %if.else.7, %if.then.6, %if.then.4
  %100 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %100
}

; Function Attrs: nounwind uwtable
define internal i32 @ndarray_ass_subscript(%struct.NDArrayObject* %self, %struct._object* %key, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  %dest = alloca %struct.bufferinfo*, align 8
  %src = alloca %struct.bufferinfo, align 8
  %ptr = alloca i8*, align 8
  %index = alloca i64, align 8
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 7
  store %struct.bufferinfo* %base, %struct.bufferinfo** %dest, align 8
  store i32 -1, i32* %ret, align 4
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 4
  %3 = load i32, i32* %readonly, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 5
  %8 = load i32, i32* %ndim, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end.2
  %9 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp5 = icmp eq %struct._object* %9, @_Py_EllipsisObject
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.4
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19
  %12 = load i64, i64* %tp_flags, align 8
  %and = and i64 %12, 67108864
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %key.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size, align 8
  %cmp7 = icmp eq i64 %15, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true, %if.then.4
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 0
  %17 = load i8*, i8** %buf, align 8
  store i8* %17, i8** %ptr, align 8
  %18 = load i8*, i8** %ptr, align 8
  %19 = load %struct._object*, %struct._object** %value.addr, align 8
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 6
  %21 = load i8*, i8** %format, align 8
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 3
  %23 = load i64, i64* %itemsize, align 8
  %call = call i32 @pack_single(i8* %18, %struct._object* %19, i8* %21, i64 %23)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %24 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.2
  %25 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %ndim10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %25, i32 0, i32 5
  %26 = load i32, i32* %ndim10, align 4
  %cmp11 = icmp eq i32 %26, 1
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.35

land.lhs.true.12:                                 ; preds = %if.end.9
  %27 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 10
  %29 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp14 = icmp ne %struct.PyNumberMethods* %29, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.35

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %30 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_as_number17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 10
  %32 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number17, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %32, i32 0, i32 33
  %33 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp18 = icmp ne %struct._object* (%struct._object*)* %33, null
  br i1 %cmp18, label %if.then.19, label %if.end.35

if.then.19:                                       ; preds = %land.lhs.true.15
  %34 = load %struct._object*, %struct._object** %key.addr, align 8
  %call20 = call i64 @PyLong_AsSsize_t(%struct._object* %34)
  store i64 %call20, i64* %index, align 8
  %35 = load i64, i64* %index, align 8
  %cmp21 = icmp eq i64 %35, -1
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.26

land.lhs.true.22:                                 ; preds = %if.then.19
  %call23 = call %struct._object* @PyErr_Occurred()
  %tobool24 = icmp ne %struct._object* %call23, null
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true.22
  store i32 -1, i32* %retval
  br label %return

if.else.26:                                       ; preds = %land.lhs.true.22, %if.then.19
  %36 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %37 = load i64, i64* %index, align 8
  %call27 = call i8* @ptr_from_index(%struct.bufferinfo* %36, i64 %37)
  store i8* %call27, i8** %ptr, align 8
  %38 = load i8*, i8** %ptr, align 8
  %cmp28 = icmp eq i8* %38, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.26
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.else.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  %39 = load i8*, i8** %ptr, align 8
  %40 = load %struct._object*, %struct._object** %value.addr, align 8
  %41 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %format32 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %41, i32 0, i32 6
  %42 = load i8*, i8** %format32, align 8
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %itemsize33 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %43, i32 0, i32 3
  %44 = load i64, i64* %itemsize33, align 8
  %call34 = call i32 @pack_single(i8* %39, %struct._object* %40, i8* %42, i64 %44)
  store i32 %call34, i32* %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true.15, %land.lhs.true.12, %if.end.9
  %45 = load %struct._object*, %struct._object** %value.addr, align 8
  %call36 = call i32 @PyObject_GetBuffer(%struct._object* %45, %struct.bufferinfo* %src, i32 284)
  %cmp37 = icmp eq i32 %call36, -1
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  %46 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %47 = load %struct._object*, %struct._object** %key.addr, align 8
  %call40 = call %struct._object* @ndarray_subscript(%struct.NDArrayObject* %46, %struct._object* %47)
  %48 = bitcast %struct._object* %call40 to %struct.NDArrayObject*
  store %struct.NDArrayObject* %48, %struct.NDArrayObject** %nd, align 8
  %49 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %cmp41 = icmp ne %struct.NDArrayObject* %49, null
  br i1 %cmp41, label %if.then.42, label %if.end.51

if.then.42:                                       ; preds = %if.end.39
  %50 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head43 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %50, i32 0, i32 3
  %51 = load %struct.ndbuf*, %struct.ndbuf** %head43, align 8
  %base44 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %51, i32 0, i32 7
  store %struct.bufferinfo* %base44, %struct.bufferinfo** %dest, align 8
  %52 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %call45 = call i32 @copy_buffer(%struct.bufferinfo* %52, %struct.bufferinfo* %src)
  store i32 %call45, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.42
  %53 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %54 = bitcast %struct.NDArrayObject* %53 to %struct._object*
  store %struct._object* %54, %struct._object** %_py_decref_tmp, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %56, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp46 = icmp ne i64 %dec, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body
  br label %if.end.50

if.else.48:                                       ; preds = %do.body
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %59(%struct._object* %60)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end

do.end:                                           ; preds = %if.end.50
  br label %if.end.51

if.end.51:                                        ; preds = %do.end, %if.end.39
  call void @PyBuffer_Release(%struct.bufferinfo* %src)
  %61 = load i32, i32* %ret, align 4
  store i32 %61, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.38, %if.end.31, %if.then.29, %if.then.25, %if.else, %if.then.8, %if.then.1, %if.then
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_structure(%struct.bufferinfo* %base) #0 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca %struct.bufferinfo*, align 8
  %shape = alloca i64*, align 8
  %strides = alloca i64*, align 8
  %suboffsets = alloca i64*, align 8
  %i = alloca i64, align 8
  store %struct.bufferinfo* %base, %struct.bufferinfo** %base.addr, align 8
  store i64* null, i64** %shape, align 8
  store i64* null, i64** %strides, align 8
  store i64* null, i64** %suboffsets, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 5
  %1 = load i32, i32* %ndim, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @PyMem_Malloc(i64 %mul)
  %2 = bitcast i8* %call to i64*
  store i64* %2, i64** %shape, align 8
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %ndim1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 5
  %4 = load i32, i32* %ndim1, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 %conv2, 8
  %call4 = call i8* @PyMem_Malloc(i64 %mul3)
  %5 = bitcast i8* %call4 to i64*
  store i64* %5, i64** %strides, align 8
  %6 = load i64*, i64** %shape, align 8
  %cmp = icmp eq i64* %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i64*, i64** %strides, align 8
  %cmp6 = icmp eq i64* %7, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %err_nomem

if.end:                                           ; preds = %lor.lhs.false
  store i64* null, i64** %suboffsets, align 8
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 9
  %9 = load i64*, i64** %suboffsets8, align 8
  %tobool = icmp ne i64* %9, null
  br i1 %tobool, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.end
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %ndim10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 5
  %11 = load i32, i32* %ndim10, align 4
  %conv11 = sext i32 %11 to i64
  %mul12 = mul i64 %conv11, 8
  %call13 = call i8* @PyMem_Malloc(i64 %mul12)
  %12 = bitcast i8* %call13 to i64*
  store i64* %12, i64** %suboffsets, align 8
  %13 = load i64*, i64** %suboffsets, align 8
  %cmp14 = icmp eq i64* %13, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.9
  br label %err_nomem

if.end.17:                                        ; preds = %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %ndim19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %15, i32 0, i32 5
  %16 = load i32, i32* %ndim19, align 4
  %conv20 = sext i32 %16 to i64
  %cmp21 = icmp slt i64 %14, %conv20
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %shape23 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 7
  %19 = load i64*, i64** %shape23, align 8
  %arrayidx = getelementptr i64, i64* %19, i64 %17
  %20 = load i64, i64* %arrayidx, align 8
  %21 = load i64, i64* %i, align 8
  %22 = load i64*, i64** %shape, align 8
  %arrayidx24 = getelementptr i64, i64* %22, i64 %21
  store i64 %20, i64* %arrayidx24, align 8
  %23 = load i64, i64* %i, align 8
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %strides25 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 8
  %25 = load i64*, i64** %strides25, align 8
  %arrayidx26 = getelementptr i64, i64* %25, i64 %23
  %26 = load i64, i64* %arrayidx26, align 8
  %27 = load i64, i64* %i, align 8
  %28 = load i64*, i64** %strides, align 8
  %arrayidx27 = getelementptr i64, i64* %28, i64 %27
  store i64 %26, i64* %arrayidx27, align 8
  %29 = load i64*, i64** %suboffsets, align 8
  %tobool28 = icmp ne i64* %29, null
  br i1 %tobool28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %for.body
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets30 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 9
  %32 = load i64*, i64** %suboffsets30, align 8
  %arrayidx31 = getelementptr i64, i64* %32, i64 %30
  %33 = load i64, i64* %arrayidx31, align 8
  %34 = load i64, i64* %i, align 8
  %35 = load i64*, i64** %suboffsets, align 8
  %arrayidx32 = getelementptr i64, i64* %35, i64 %34
  store i64 %33, i64* %arrayidx32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %36 = load i64, i64* %i, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i64*, i64** %shape, align 8
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %shape34 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 7
  store i64* %37, i64** %shape34, align 8
  %39 = load i64*, i64** %strides, align 8
  %40 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %strides35 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %40, i32 0, i32 8
  store i64* %39, i64** %strides35, align 8
  %41 = load i64*, i64** %suboffsets, align 8
  %42 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets36 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %42, i32 0, i32 9
  store i64* %41, i64** %suboffsets36, align 8
  store i32 0, i32* %retval
  br label %return

err_nomem:                                        ; preds = %if.then.16, %if.then
  %call37 = call %struct._object* @PyErr_NoMemory()
  br label %do.body

do.body:                                          ; preds = %err_nomem
  %43 = load i64*, i64** %shape, align 8
  %tobool38 = icmp ne i64* %43, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %do.body
  %44 = load i64*, i64** %shape, align 8
  %45 = bitcast i64* %44 to i8*
  call void @PyMem_Free(i8* %45)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.40
  br label %do.body.41

do.body.41:                                       ; preds = %do.end
  %46 = load i64*, i64** %strides, align 8
  %tobool42 = icmp ne i64* %46, null
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %do.body.41
  %47 = load i64*, i64** %strides, align 8
  %48 = bitcast i64* %47 to i8*
  call void @PyMem_Free(i8* %48)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %do.body.41
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %49 = load i64*, i64** %suboffsets, align 8
  %tobool47 = icmp ne i64* %49, null
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.body.46
  %50 = load i64*, i64** %suboffsets, align 8
  %51 = bitcast i64* %50 to i8*
  call void @PyMem_Free(i8* %51)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %do.body.46
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.50, %for.end
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @init_slice(%struct.bufferinfo* %base, %struct._object* %key, i32 %dim) #0 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca %struct.bufferinfo*, align 8
  %key.addr = alloca %struct._object*, align 8
  %dim.addr = alloca i32, align 4
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelength = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.bufferinfo* %base, %struct.bufferinfo** %base.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i32 %dim, i32* %dim.addr, align 4
  %0 = load %struct._object*, %struct._object** %key.addr, align 8
  %1 = load i32, i32* %dim.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 7
  %3 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %call = call i32 @PySlice_GetIndicesEx(%struct._object* %0, i64 %4, i64* %start, i64* %stop, i64* %step, i64* %slicelength)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 9
  %6 = load i64*, i64** %suboffsets, align 8
  %cmp1 = icmp eq i64* %6, null
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %dim.addr, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  br label %adjust_buf

adjust_buf:                                       ; preds = %if.then.15, %if.then.3
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 0
  %9 = load i8*, i8** %buf, align 8
  %10 = load i32, i32* %dim.addr, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 8
  %12 = load i64*, i64** %strides, align 8
  %arrayidx5 = getelementptr i64, i64* %12, i64 %idxprom4
  %13 = load i64, i64* %arrayidx5, align 8
  %14 = load i64, i64* %start, align 8
  %mul = mul i64 %13, %14
  %add.ptr = getelementptr i8, i8* %9, i64 %mul
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %buf6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %15, i32 0, i32 0
  store i8* %add.ptr, i8** %buf6, align 8
  br label %if.end.25

if.else:                                          ; preds = %lor.lhs.false
  %16 = load i32, i32* %dim.addr, align 4
  %sub = sub i32 %16, 1
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %17 = load i64, i64* %n, align 8
  %cmp7 = icmp sge i64 %17, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i64, i64* %n, align 8
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 9
  %20 = load i64*, i64** %suboffsets9, align 8
  %arrayidx10 = getelementptr i64, i64* %20, i64 %18
  %21 = load i64, i64* %arrayidx10, align 8
  %cmp11 = icmp slt i64 %21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load i64, i64* %n, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %n, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load i64, i64* %n, align 8
  %cmp13 = icmp slt i64 %24, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.end
  br label %adjust_buf

if.end.16:                                        ; preds = %while.end
  %25 = load i64, i64* %n, align 8
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 9
  %27 = load i64*, i64** %suboffsets17, align 8
  %arrayidx18 = getelementptr i64, i64* %27, i64 %25
  %28 = load i64, i64* %arrayidx18, align 8
  %29 = load i32, i32* %dim.addr, align 4
  %idxprom19 = sext i32 %29 to i64
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %strides20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 8
  %31 = load i64*, i64** %strides20, align 8
  %arrayidx21 = getelementptr i64, i64* %31, i64 %idxprom19
  %32 = load i64, i64* %arrayidx21, align 8
  %33 = load i64, i64* %start, align 8
  %mul22 = mul i64 %32, %33
  %add = add i64 %28, %mul22
  %34 = load i64, i64* %n, align 8
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets23 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %35, i32 0, i32 9
  %36 = load i64*, i64** %suboffsets23, align 8
  %arrayidx24 = getelementptr i64, i64* %36, i64 %34
  store i64 %add, i64* %arrayidx24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.16, %adjust_buf
  %37 = load i64, i64* %slicelength, align 8
  %38 = load i32, i32* %dim.addr, align 4
  %idxprom26 = sext i32 %38 to i64
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %shape27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %39, i32 0, i32 7
  %40 = load i64*, i64** %shape27, align 8
  %arrayidx28 = getelementptr i64, i64* %40, i64 %idxprom26
  store i64 %37, i64* %arrayidx28, align 8
  %41 = load i32, i32* %dim.addr, align 4
  %idxprom29 = sext i32 %41 to i64
  %42 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %strides30 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %42, i32 0, i32 8
  %43 = load i64*, i64** %strides30, align 8
  %arrayidx31 = getelementptr i64, i64* %43, i64 %idxprom29
  %44 = load i64, i64* %arrayidx31, align 8
  %45 = load i64, i64* %step, align 8
  %mul32 = mul i64 %44, %45
  %46 = load i32, i32* %dim.addr, align 4
  %idxprom33 = sext i32 %46 to i64
  %47 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %strides34 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %47, i32 0, i32 8
  %48 = load i64*, i64** %strides34, align 8
  %arrayidx35 = getelementptr i64, i64* %48, i64 %idxprom33
  store i64 %mul32, i64* %arrayidx35, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal void @init_len(%struct.bufferinfo* %base) #0 {
entry:
  %base.addr = alloca %struct.bufferinfo*, align 8
  %i = alloca i64, align 8
  store %struct.bufferinfo* %base, %struct.bufferinfo** %base.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  store i64 1, i64* %len, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 5
  %3 = load i32, i32* %ndim, align 4
  %conv = sext i32 %3 to i64
  %cmp = icmp slt i64 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 7
  %6 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %6, i64 %4
  %7 = load i64, i64* %arrayidx, align 8
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2
  %9 = load i64, i64* %len2, align 8
  %mul = mul i64 %9, %7
  store i64 %mul, i64* %len2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 3
  %12 = load i64, i64* %itemsize, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %len3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 2
  %14 = load i64, i64* %len3, align 8
  %mul4 = mul i64 %14, %12
  store i64 %mul4, i64* %len3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_single(i8* %ptr, %struct._object* %item, i8* %fmt, i64 %itemsize) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %item.addr = alloca %struct._object*, align 8
  %fmt.addr = alloca i8*, align 8
  %itemsize.addr = alloca i64, align 8
  %structobj = alloca %struct._object*, align 8
  %pack_into = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %format = alloca %struct._object*, align 8
  %mview = alloca %struct._object*, align 8
  %zero = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %nmemb = alloca i64, align 8
  %ret = alloca i32, align 4
  %x = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp99 = alloca %struct._object*, align 8
  %_py_xdecref_tmp112 = alloca %struct._object*, align 8
  %_py_decref_tmp116 = alloca %struct._object*, align 8
  %_py_xdecref_tmp129 = alloca %struct._object*, align 8
  %_py_decref_tmp133 = alloca %struct._object*, align 8
  %_py_xdecref_tmp146 = alloca %struct._object*, align 8
  %_py_decref_tmp150 = alloca %struct._object*, align 8
  %_py_xdecref_tmp163 = alloca %struct._object*, align 8
  %_py_decref_tmp167 = alloca %struct._object*, align 8
  %_py_xdecref_tmp180 = alloca %struct._object*, align 8
  %_py_decref_tmp184 = alloca %struct._object*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store i64 %itemsize, i64* %itemsize.addr, align 8
  store %struct._object* null, %struct._object** %structobj, align 8
  store %struct._object* null, %struct._object** %pack_into, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %format, align 8
  store %struct._object* null, %struct._object** %mview, align 8
  store %struct._object* null, %struct._object** %zero, align 8
  store i32 -1, i32* %ret, align 4
  %0 = load i8*, i8** %fmt.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i8** %fmt.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %fmt.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %1)
  store %struct._object* %call, %struct._object** %format, align 8
  %2 = load %struct._object*, %struct._object** %format, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %out

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @Struct, align 8
  %4 = load %struct._object*, %struct._object** %format, align 8
  %call4 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %3, %struct._object* %4, i8* null)
  store %struct._object* %call4, %struct._object** %structobj, align 8
  %5 = load %struct._object*, %struct._object** %structobj, align 8
  %cmp5 = icmp eq %struct._object* %5, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %out

if.end.7:                                         ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %structobj, align 8
  %call8 = call i64 @get_nmemb(%struct._object* %6)
  store i64 %call8, i64* %nmemb, align 8
  %7 = load i8*, i8** %ptr.addr, align 8
  %8 = load i64, i64* %itemsize.addr, align 8
  %call9 = call %struct._object* @PyMemoryView_FromMemory(i8* %7, i64 %8, i32 512)
  store %struct._object* %call9, %struct._object** %mview, align 8
  %9 = load %struct._object*, %struct._object** %mview, align 8
  %cmp10 = icmp eq %struct._object* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  br label %out

if.end.12:                                        ; preds = %if.end.7
  %call13 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call13, %struct._object** %zero, align 8
  %10 = load %struct._object*, %struct._object** %zero, align 8
  %cmp14 = icmp eq %struct._object* %10, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %out

if.end.16:                                        ; preds = %if.end.12
  %11 = load %struct._object*, %struct._object** %structobj, align 8
  %call17 = call %struct._object* @PyObject_GetAttrString(%struct._object* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0))
  store %struct._object* %call17, %struct._object** %pack_into, align 8
  %12 = load %struct._object*, %struct._object** %pack_into, align 8
  %cmp18 = icmp eq %struct._object* %12, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  br label %out

if.end.20:                                        ; preds = %if.end.16
  %13 = load i64, i64* %nmemb, align 8
  %add = add i64 2, %13
  %call21 = call %struct._object* @PyTuple_New(i64 %add)
  store %struct._object* %call21, %struct._object** %args, align 8
  %14 = load %struct._object*, %struct._object** %args, align 8
  %cmp22 = icmp eq %struct._object* %14, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  br label %out

if.end.24:                                        ; preds = %if.end.20
  %15 = load %struct._object*, %struct._object** %mview, align 8
  %16 = load %struct._object*, %struct._object** %args, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %15, %struct._object** %arrayidx, align 8
  %18 = load %struct._object*, %struct._object** %zero, align 8
  %19 = load %struct._object*, %struct._object** %args, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*
  %ob_item25 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1
  %arrayidx26 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item25, i32 0, i64 1
  store %struct._object* %18, %struct._object** %arrayidx26, align 8
  %21 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 19
  %23 = load i64, i64* %tp_flags, align 8
  %and = and i64 %23, 134217728
  %cmp27 = icmp ne i64 %and, 0
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %24 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_flags29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 19
  %26 = load i64, i64* %tp_flags29, align 8
  %and30 = and i64 %26, 16777216
  %cmp31 = icmp ne i64 %and30, 0
  br i1 %cmp31, label %land.lhs.true, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false
  %27 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %cmp34 = icmp eq %struct._typeobject* %28, @PyFloat_Type
  br i1 %cmp34, label %land.lhs.true, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.32
  %29 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %call37 = call i32 @PyType_IsSubtype(%struct._typeobject* %30, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call37, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.35, %lor.lhs.false.32, %lor.lhs.false, %if.end.24
  %31 = load i64, i64* %nmemb, align 8
  %cmp38 = icmp eq i64 %31, 1
  br i1 %cmp38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %land.lhs.true
  %32 = load %struct._object*, %struct._object** %item.addr, align 8
  %33 = load %struct._object*, %struct._object** %args, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyTupleObject*
  %ob_item40 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1
  %arrayidx41 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item40, i32 0, i64 2
  store %struct._object* %32, %struct._object** %arrayidx41, align 8
  br label %if.end.69

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.35
  %35 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_flags43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 19
  %37 = load i64, i64* %tp_flags43, align 8
  %and44 = and i64 %37, 33554432
  %cmp45 = icmp ne i64 %and44, 0
  br i1 %cmp45, label %land.lhs.true.51, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.else
  %38 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_flags48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 19
  %40 = load i64, i64* %tp_flags48, align 8
  %and49 = and i64 %40, 67108864
  %cmp50 = icmp ne i64 %and49, 0
  br i1 %cmp50, label %land.lhs.true.51, label %if.else.67

land.lhs.true.51:                                 ; preds = %lor.lhs.false.46, %if.else
  %41 = load %struct._object*, %struct._object** %item.addr, align 8
  %call52 = call i64 @PySequence_Size(%struct._object* %41)
  %42 = load i64, i64* %nmemb, align 8
  %cmp53 = icmp eq i64 %call52, %42
  br i1 %cmp53, label %if.then.54, label %if.else.67

if.then.54:                                       ; preds = %land.lhs.true.51
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.54
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* %nmemb, align 8
  %cmp55 = icmp slt i64 %43, %44
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_flags57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 19
  %47 = load i64, i64* %tp_flags57, align 8
  %and58 = and i64 %47, 33554432
  %cmp59 = icmp ne i64 %and58, 0
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %48 = load i64, i64* %i, align 8
  %49 = load %struct._object*, %struct._object** %item.addr, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyListObject*
  %ob_item60 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %50, i32 0, i32 1
  %51 = load %struct._object**, %struct._object*** %ob_item60, align 8
  %arrayidx61 = getelementptr %struct._object*, %struct._object** %51, i64 %48
  %52 = load %struct._object*, %struct._object** %arrayidx61, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %53 = load i64, i64* %i, align 8
  %54 = load %struct._object*, %struct._object** %item.addr, align 8
  %55 = bitcast %struct._object* %54 to %struct.PyTupleObject*
  %ob_item62 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %55, i32 0, i32 1
  %arrayidx63 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item62, i32 0, i64 %53
  %56 = load %struct._object*, %struct._object** %arrayidx63, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %52, %cond.true ], [ %56, %cond.false ]
  store %struct._object* %cond, %struct._object** %x, align 8
  %57 = load %struct._object*, %struct._object** %x, align 8
  %58 = load i64, i64* %i, align 8
  %add64 = add i64 2, %58
  %59 = load %struct._object*, %struct._object** %args, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyTupleObject*
  %ob_item65 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %60, i32 0, i32 1
  %arrayidx66 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item65, i32 0, i64 %add64
  store %struct._object* %57, %struct._object** %arrayidx66, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %61 = load i64, i64* %i, align 8
  %inc = add i64 %61, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.68

if.else.67:                                       ; preds = %land.lhs.true.51, %lor.lhs.false.46
  %62 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %62, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.66, i32 0, i32 0))
  br label %args_out

if.end.68:                                        ; preds = %for.end
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.39
  %63 = load %struct._object*, %struct._object** %pack_into, align 8
  %64 = load %struct._object*, %struct._object** %args, align 8
  %call70 = call %struct._object* @PyObject_CallObject(%struct._object* %63, %struct._object* %64)
  store %struct._object* %call70, %struct._object** %x, align 8
  %65 = load %struct._object*, %struct._object** %x, align 8
  %cmp71 = icmp ne %struct._object* %65, null
  br i1 %cmp71, label %if.then.72, label %if.end.78

if.then.72:                                       ; preds = %if.end.69
  br label %do.body

do.body:                                          ; preds = %if.then.72
  %66 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %68, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp73 = icmp ne i64 %dec, 0
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body
  br label %if.end.77

if.else.75:                                       ; preds = %do.body
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %71(%struct._object* %72)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.74
  br label %do.end

do.end:                                           ; preds = %if.end.77
  store i32 0, i32* %ret, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %do.end, %if.end.69
  br label %args_out

args_out:                                         ; preds = %if.end.78, %if.else.67
  store i64 0, i64* %i, align 8
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.92, %args_out
  %73 = load i64, i64* %i, align 8
  %74 = load i64, i64* %nmemb, align 8
  %add80 = add i64 2, %74
  %cmp81 = icmp slt i64 %73, %add80
  br i1 %cmp81, label %for.body.82, label %for.end.94

for.body.82:                                      ; preds = %for.cond.79
  br label %do.body.83

do.body.83:                                       ; preds = %for.body.82
  %75 = load i64, i64* %i, align 8
  %76 = load %struct._object*, %struct._object** %args, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyTupleObject*
  %ob_item84 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %77, i32 0, i32 1
  %arrayidx85 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item84, i32 0, i64 %75
  %78 = load %struct._object*, %struct._object** %arrayidx85, align 8
  store %struct._object* %78, %struct._object** %_py_xincref_tmp, align 8
  %79 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp86 = icmp ne %struct._object* %79, null
  br i1 %cmp86, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %do.body.83
  %80 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt88, align 8
  %inc89 = add i64 %81, 1
  store i64 %inc89, i64* %ob_refcnt88, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %do.body.83
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  br label %for.inc.92

for.inc.92:                                       ; preds = %do.end.91
  %82 = load i64, i64* %i, align 8
  %inc93 = add i64 %82, 1
  store i64 %inc93, i64* %i, align 8
  br label %for.cond.79

for.end.94:                                       ; preds = %for.cond.79
  br label %do.body.95

do.body.95:                                       ; preds = %for.end.94
  %83 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %83, %struct._object** %_py_xdecref_tmp, align 8
  %84 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp96 = icmp ne %struct._object* %84, null
  br i1 %cmp96, label %if.then.97, label %if.end.109

if.then.97:                                       ; preds = %do.body.95
  br label %do.body.98

do.body.98:                                       ; preds = %if.then.97
  %85 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %85, %struct._object** %_py_decref_tmp99, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0
  %87 = load i64, i64* %ob_refcnt100, align 8
  %dec101 = add i64 %87, -1
  store i64 %dec101, i64* %ob_refcnt100, align 8
  %cmp102 = icmp ne i64 %dec101, 0
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.98
  br label %if.end.107

if.else.104:                                      ; preds = %do.body.98
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc106, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  call void %90(%struct._object* %91)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %do.body.95
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  br label %out

out:                                              ; preds = %do.end.110, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.6, %if.then.2
  br label %do.body.111

do.body.111:                                      ; preds = %out
  %92 = load %struct._object*, %struct._object** %pack_into, align 8
  store %struct._object* %92, %struct._object** %_py_xdecref_tmp112, align 8
  %93 = load %struct._object*, %struct._object** %_py_xdecref_tmp112, align 8
  %cmp113 = icmp ne %struct._object* %93, null
  br i1 %cmp113, label %if.then.114, label %if.end.126

if.then.114:                                      ; preds = %do.body.111
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %94 = load %struct._object*, %struct._object** %_py_xdecref_tmp112, align 8
  store %struct._object* %94, %struct._object** %_py_decref_tmp116, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_refcnt117 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0
  %96 = load i64, i64* %ob_refcnt117, align 8
  %dec118 = add i64 %96, -1
  store i64 %dec118, i64* %ob_refcnt117, align 8
  %cmp119 = icmp ne i64 %dec118, 0
  br i1 %cmp119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %do.body.115
  br label %if.end.124

if.else.121:                                      ; preds = %do.body.115
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 4
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  call void %99(%struct._object* %100)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  br label %if.end.126

if.end.126:                                       ; preds = %do.end.125, %do.body.111
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  br label %do.body.128

do.body.128:                                      ; preds = %do.end.127
  %101 = load %struct._object*, %struct._object** %zero, align 8
  store %struct._object* %101, %struct._object** %_py_xdecref_tmp129, align 8
  %102 = load %struct._object*, %struct._object** %_py_xdecref_tmp129, align 8
  %cmp130 = icmp ne %struct._object* %102, null
  br i1 %cmp130, label %if.then.131, label %if.end.143

if.then.131:                                      ; preds = %do.body.128
  br label %do.body.132

do.body.132:                                      ; preds = %if.then.131
  %103 = load %struct._object*, %struct._object** %_py_xdecref_tmp129, align 8
  store %struct._object* %103, %struct._object** %_py_decref_tmp133, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_refcnt134 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0
  %105 = load i64, i64* %ob_refcnt134, align 8
  %dec135 = add i64 %105, -1
  store i64 %dec135, i64* %ob_refcnt134, align 8
  %cmp136 = icmp ne i64 %dec135, 0
  br i1 %cmp136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %do.body.132
  br label %if.end.141

if.else.138:                                      ; preds = %do.body.132
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  call void %108(%struct._object* %109)
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.137
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  br label %if.end.143

if.end.143:                                       ; preds = %do.end.142, %do.body.128
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  br label %do.body.145

do.body.145:                                      ; preds = %do.end.144
  %110 = load %struct._object*, %struct._object** %mview, align 8
  store %struct._object* %110, %struct._object** %_py_xdecref_tmp146, align 8
  %111 = load %struct._object*, %struct._object** %_py_xdecref_tmp146, align 8
  %cmp147 = icmp ne %struct._object* %111, null
  br i1 %cmp147, label %if.then.148, label %if.end.160

if.then.148:                                      ; preds = %do.body.145
  br label %do.body.149

do.body.149:                                      ; preds = %if.then.148
  %112 = load %struct._object*, %struct._object** %_py_xdecref_tmp146, align 8
  store %struct._object* %112, %struct._object** %_py_decref_tmp150, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_refcnt151 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0
  %114 = load i64, i64* %ob_refcnt151, align 8
  %dec152 = add i64 %114, -1
  store i64 %dec152, i64* %ob_refcnt151, align 8
  %cmp153 = icmp ne i64 %dec152, 0
  br i1 %cmp153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %do.body.149
  br label %if.end.158

if.else.155:                                      ; preds = %do.body.149
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_type156 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 1
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type156, align 8
  %tp_dealloc157 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i32 0, i32 4
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc157, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  call void %117(%struct._object* %118)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.154
  br label %do.end.159

do.end.159:                                       ; preds = %if.end.158
  br label %if.end.160

if.end.160:                                       ; preds = %do.end.159, %do.body.145
  br label %do.end.161

do.end.161:                                       ; preds = %if.end.160
  br label %do.body.162

do.body.162:                                      ; preds = %do.end.161
  %119 = load %struct._object*, %struct._object** %structobj, align 8
  store %struct._object* %119, %struct._object** %_py_xdecref_tmp163, align 8
  %120 = load %struct._object*, %struct._object** %_py_xdecref_tmp163, align 8
  %cmp164 = icmp ne %struct._object* %120, null
  br i1 %cmp164, label %if.then.165, label %if.end.177

if.then.165:                                      ; preds = %do.body.162
  br label %do.body.166

do.body.166:                                      ; preds = %if.then.165
  %121 = load %struct._object*, %struct._object** %_py_xdecref_tmp163, align 8
  store %struct._object* %121, %struct._object** %_py_decref_tmp167, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8
  %ob_refcnt168 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 0
  %123 = load i64, i64* %ob_refcnt168, align 8
  %dec169 = add i64 %123, -1
  store i64 %dec169, i64* %ob_refcnt168, align 8
  %cmp170 = icmp ne i64 %dec169, 0
  br i1 %cmp170, label %if.then.171, label %if.else.172

if.then.171:                                      ; preds = %do.body.166
  br label %if.end.175

if.else.172:                                      ; preds = %do.body.166
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8
  %ob_type173 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 1
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type173, align 8
  %tp_dealloc174 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i32 0, i32 4
  %126 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc174, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8
  call void %126(%struct._object* %127)
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.172, %if.then.171
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.175
  br label %if.end.177

if.end.177:                                       ; preds = %do.end.176, %do.body.162
  br label %do.end.178

do.end.178:                                       ; preds = %if.end.177
  br label %do.body.179

do.body.179:                                      ; preds = %do.end.178
  %128 = load %struct._object*, %struct._object** %format, align 8
  store %struct._object* %128, %struct._object** %_py_xdecref_tmp180, align 8
  %129 = load %struct._object*, %struct._object** %_py_xdecref_tmp180, align 8
  %cmp181 = icmp ne %struct._object* %129, null
  br i1 %cmp181, label %if.then.182, label %if.end.194

if.then.182:                                      ; preds = %do.body.179
  br label %do.body.183

do.body.183:                                      ; preds = %if.then.182
  %130 = load %struct._object*, %struct._object** %_py_xdecref_tmp180, align 8
  store %struct._object* %130, %struct._object** %_py_decref_tmp184, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp184, align 8
  %ob_refcnt185 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0
  %132 = load i64, i64* %ob_refcnt185, align 8
  %dec186 = add i64 %132, -1
  store i64 %dec186, i64* %ob_refcnt185, align 8
  %cmp187 = icmp ne i64 %dec186, 0
  br i1 %cmp187, label %if.then.188, label %if.else.189

if.then.188:                                      ; preds = %do.body.183
  br label %if.end.192

if.else.189:                                      ; preds = %do.body.183
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp184, align 8
  %ob_type190 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 1
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type190, align 8
  %tp_dealloc191 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i32 0, i32 4
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc191, align 8
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp184, align 8
  call void %135(%struct._object* %136)
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.189, %if.then.188
  br label %do.end.193

do.end.193:                                       ; preds = %if.end.192
  br label %if.end.194

if.end.194:                                       ; preds = %do.end.193, %do.body.179
  br label %do.end.195

do.end.195:                                       ; preds = %if.end.194
  %137 = load i32, i32* %ret, align 4
  ret i32 %137
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_buffer(%struct.bufferinfo* %dest, %struct.bufferinfo* %src) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca %struct.bufferinfo*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %mem = alloca i8*, align 8
  store %struct.bufferinfo* %dest, %struct.bufferinfo** %dest.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  store i8* null, i8** %mem, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %call = call i32 @cmp_structure(%struct.bufferinfo* %0, %struct.bufferinfo* %1)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.67, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 9
  %4 = load i64*, i64** %suboffsets, align 8
  %tobool = icmp ne i64* %4, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 5
  %6 = load i32, i32* %ndim, align 4
  %sub = sub i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %suboffsets1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 9
  %8 = load i64*, i64** %suboffsets1, align 8
  %arrayidx = getelementptr i64, i64* %8, i64 %idxprom
  %9 = load i64, i64* %arrayidx, align 8
  %cmp2 = icmp sge i64 %9, 0
  br i1 %cmp2, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %suboffsets3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 9
  %11 = load i64*, i64** %suboffsets3, align 8
  %tobool4 = icmp ne i64* %11, null
  br i1 %tobool4, label %land.lhs.true.5, label %lor.lhs.false.12

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 5
  %13 = load i32, i32* %ndim6, align 4
  %sub7 = sub i32 %13, 1
  %idxprom8 = sext i32 %sub7 to i64
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %suboffsets9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 9
  %15 = load i64*, i64** %suboffsets9, align 8
  %arrayidx10 = getelementptr i64, i64* %15, i64 %idxprom8
  %16 = load i64, i64* %arrayidx10, align 8
  %cmp11 = icmp sge i64 %16, 0
  br i1 %cmp11, label %if.then.26, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true.5, %lor.lhs.false
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 5
  %18 = load i32, i32* %ndim13, align 4
  %sub14 = sub i32 %18, 1
  %idxprom15 = sext i32 %sub14 to i64
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 8
  %20 = load i64*, i64** %strides, align 8
  %arrayidx16 = getelementptr i64, i64* %20, i64 %idxprom15
  %21 = load i64, i64* %arrayidx16, align 8
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 3
  %23 = load i64, i64* %itemsize, align 8
  %cmp17 = icmp ne i64 %21, %23
  br i1 %cmp17, label %if.then.26, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.12
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 5
  %25 = load i32, i32* %ndim19, align 4
  %sub20 = sub i32 %25, 1
  %idxprom21 = sext i32 %sub20 to i64
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %strides22 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 8
  %27 = load i64*, i64** %strides22, align 8
  %arrayidx23 = getelementptr i64, i64* %27, i64 %idxprom21
  %28 = load i64, i64* %arrayidx23, align 8
  %29 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %itemsize24 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %29, i32 0, i32 3
  %30 = load i64, i64* %itemsize24, align 8
  %cmp25 = icmp ne i64 %28, %30
  br i1 %cmp25, label %if.then.26, label %if.end.37

if.then.26:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false.12, %land.lhs.true.5, %land.lhs.true
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 5
  %32 = load i32, i32* %ndim27, align 4
  %sub28 = sub i32 %32, 1
  %idxprom29 = sext i32 %sub28 to i64
  %33 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %33, i32 0, i32 7
  %34 = load i64*, i64** %shape, align 8
  %arrayidx30 = getelementptr i64, i64* %34, i64 %idxprom29
  %35 = load i64, i64* %arrayidx30, align 8
  %36 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %itemsize31 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %36, i32 0, i32 3
  %37 = load i64, i64* %itemsize31, align 8
  %mul = mul i64 %35, %37
  %call32 = call i8* @PyMem_Malloc(i64 %mul)
  store i8* %call32, i8** %mem, align 8
  %38 = load i8*, i8** %mem, align 8
  %cmp33 = icmp eq i8* %38, null
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.then.26
  %call35 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.26
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %lor.lhs.false.18
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape38 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %39, i32 0, i32 7
  %40 = load i64*, i64** %shape38, align 8
  %41 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim39 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %41, i32 0, i32 5
  %42 = load i32, i32* %ndim39, align 4
  %conv = sext i32 %42 to i64
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %itemsize40 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %43, i32 0, i32 3
  %44 = load i64, i64* %itemsize40, align 8
  %45 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %45, i32 0, i32 0
  %46 = load i8*, i8** %buf, align 8
  %47 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %strides41 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %47, i32 0, i32 8
  %48 = load i64*, i64** %strides41, align 8
  %49 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %suboffsets42 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %49, i32 0, i32 9
  %50 = load i64*, i64** %suboffsets42, align 8
  %51 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %buf43 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %51, i32 0, i32 0
  %52 = load i8*, i8** %buf43, align 8
  %53 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %strides44 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %53, i32 0, i32 8
  %54 = load i64*, i64** %strides44, align 8
  %55 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %suboffsets45 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %55, i32 0, i32 9
  %56 = load i64*, i64** %suboffsets45, align 8
  %57 = load i8*, i8** %mem, align 8
  call void @copy_rec(i64* %40, i64 %conv, i64 %44, i8* %46, i64* %48, i64* %50, i8* %52, i64* %54, i64* %56, i8* %57)
  br label %do.body

do.body:                                          ; preds = %if.end.37
  %58 = load i8*, i8** %mem, align 8
  %tobool46 = icmp ne i8* %58, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.body
  %59 = load i8*, i8** %mem, align 8
  call void @PyMem_Free(i8* %59)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.48
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.34, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_nmemb(%struct._object* %s) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  %0 = load %struct._object*, %struct._object** %s.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyPartialStructObject*
  %s_len = getelementptr inbounds %struct.PyPartialStructObject, %struct.PyPartialStructObject* %1, i32 0, i32 2
  %2 = load i64, i64* %s_len, align 8
  ret i64 %2
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare i64 @PySequence_Size(%struct._object*) #1

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cmp_structure(%struct.bufferinfo* %dest, %struct.bufferinfo* %src) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca %struct.bufferinfo*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %i = alloca i64, align 8
  store %struct.bufferinfo* %dest, %struct.bufferinfo** %dest.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 6
  %1 = load i8*, i8** %format, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %format1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 6
  %3 = load i8*, i8** %format1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), %cond.true ], [ %3, %cond.false ]
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %format2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 6
  %5 = load i8*, i8** %format2, align 8
  %cmp3 = icmp eq i8* %5, null
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  br label %cond.end.7

cond.false.5:                                     ; preds = %cond.end
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %format6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 6
  %7 = load i8*, i8** %format6, align 8
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.5, %cond.true.4
  %cond8 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), %cond.true.4 ], [ %7, %cond.false.5 ]
  %call = call i32 @strcmp(i8* %cond, i8* %cond8) #5
  %cmp9 = icmp ne i32 %call, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.7
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 3
  %9 = load i64, i64* %itemsize, align 8
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %itemsize10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 3
  %11 = load i64, i64* %itemsize10, align 8
  %cmp11 = icmp ne i64 %9, %11
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 5
  %13 = load i32, i32* %ndim, align 4
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 5
  %15 = load i32, i32* %ndim13, align 4
  %cmp14 = icmp ne i32 %13, %15
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false, %cond.end.7
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.12
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim15 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 5
  %18 = load i32, i32* %ndim15, align 4
  %conv = sext i32 %18 to i64
  %cmp16 = icmp slt i64 %16, %conv
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 7
  %21 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %21, i64 %19
  %22 = load i64, i64* %arrayidx, align 8
  %23 = load i64, i64* %i, align 8
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %shape18 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 7
  %25 = load i64*, i64** %shape18, align 8
  %arrayidx19 = getelementptr i64, i64* %25, i64 %23
  %26 = load i64, i64* %arrayidx19, align 8
  %cmp20 = icmp ne i64 %22, %26
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %for.body
  %27 = load i64, i64* %i, align 8
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape24 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %28, i32 0, i32 7
  %29 = load i64*, i64** %shape24, align 8
  %arrayidx25 = getelementptr i64, i64* %29, i64 %27
  %30 = load i64, i64* %arrayidx25, align 8
  %cmp26 = icmp eq i64 %30, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  br label %for.end

if.end.29:                                        ; preds = %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %31 = load i64, i64* %i, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.28, %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.22, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal void @copy_rec(i64* %shape, i64 %ndim, i64 %itemsize, i8* %dptr, i64* %dstrides, i64* %dsuboffsets, i8* %sptr, i64* %sstrides, i64* %ssuboffsets, i8* %mem) #0 {
entry:
  %shape.addr = alloca i64*, align 8
  %ndim.addr = alloca i64, align 8
  %itemsize.addr = alloca i64, align 8
  %dptr.addr = alloca i8*, align 8
  %dstrides.addr = alloca i64*, align 8
  %dsuboffsets.addr = alloca i64*, align 8
  %sptr.addr = alloca i8*, align 8
  %sstrides.addr = alloca i64*, align 8
  %ssuboffsets.addr = alloca i64*, align 8
  %mem.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %p = alloca i8*, align 8
  %xsptr = alloca i8*, align 8
  %xdptr = alloca i8*, align 8
  %xdptr50 = alloca i8*, align 8
  %xsptr61 = alloca i8*, align 8
  store i64* %shape, i64** %shape.addr, align 8
  store i64 %ndim, i64* %ndim.addr, align 8
  store i64 %itemsize, i64* %itemsize.addr, align 8
  store i8* %dptr, i8** %dptr.addr, align 8
  store i64* %dstrides, i64** %dstrides.addr, align 8
  store i64* %dsuboffsets, i64** %dsuboffsets.addr, align 8
  store i8* %sptr, i8** %sptr.addr, align 8
  store i64* %sstrides, i64** %sstrides.addr, align 8
  store i64* %ssuboffsets, i64** %ssuboffsets.addr, align 8
  store i8* %mem, i8** %mem.addr, align 8
  %0 = load i64, i64* %ndim.addr, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end.45

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %dsuboffsets.addr, align 8
  %tobool = icmp ne i64* %1, null
  br i1 %tobool, label %land.lhs.true, label %land.lhs.true.2

land.lhs.true:                                    ; preds = %if.then
  %2 = load i64*, i64** %dsuboffsets.addr, align 8
  %arrayidx = getelementptr i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx, align 8
  %cmp1 = icmp sge i64 %3, 0
  br i1 %cmp1, label %if.else, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true, %if.then
  %4 = load i64*, i64** %ssuboffsets.addr, align 8
  %tobool3 = icmp ne i64* %4, null
  br i1 %tobool3, label %land.lhs.true.4, label %land.lhs.true.7

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %5 = load i64*, i64** %ssuboffsets.addr, align 8
  %arrayidx5 = getelementptr i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx5, align 8
  %cmp6 = icmp sge i64 %6, 0
  br i1 %cmp6, label %if.else, label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %land.lhs.true.4, %land.lhs.true.2
  %7 = load i64*, i64** %dstrides.addr, align 8
  %arrayidx8 = getelementptr i64, i64* %7, i64 0
  %8 = load i64, i64* %arrayidx8, align 8
  %9 = load i64, i64* %itemsize.addr, align 8
  %cmp9 = icmp eq i64 %8, %9
  br i1 %cmp9, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %10 = load i64*, i64** %sstrides.addr, align 8
  %arrayidx11 = getelementptr i64, i64* %10, i64 0
  %11 = load i64, i64* %arrayidx11, align 8
  %12 = load i64, i64* %itemsize.addr, align 8
  %cmp12 = icmp eq i64 %11, %12
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true.10
  %13 = load i8*, i8** %dptr.addr, align 8
  %14 = load i8*, i8** %sptr.addr, align 8
  %15 = load i64*, i64** %shape.addr, align 8
  %arrayidx14 = getelementptr i64, i64* %15, i64 0
  %16 = load i64, i64* %arrayidx14, align 8
  %17 = load i64, i64* %itemsize.addr, align 8
  %mul = mul i64 %16, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %mul, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.10, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true
  store i64 0, i64* %i, align 8
  %18 = load i8*, i8** %mem.addr, align 8
  store i8* %18, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %19 = load i64, i64* %i, align 8
  %20 = load i64*, i64** %shape.addr, align 8
  %arrayidx15 = getelementptr i64, i64* %20, i64 0
  %21 = load i64, i64* %arrayidx15, align 8
  %cmp16 = icmp slt i64 %19, %21
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i64*, i64** %ssuboffsets.addr, align 8
  %tobool17 = icmp ne i64* %22, null
  br i1 %tobool17, label %land.lhs.true.18, label %cond.false

land.lhs.true.18:                                 ; preds = %for.body
  %23 = load i64*, i64** %ssuboffsets.addr, align 8
  %arrayidx19 = getelementptr i64, i64* %23, i64 0
  %24 = load i64, i64* %arrayidx19, align 8
  %cmp20 = icmp sge i64 %24, 0
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.18
  %25 = load i8*, i8** %sptr.addr, align 8
  %26 = bitcast i8* %25 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = load i64*, i64** %ssuboffsets.addr, align 8
  %arrayidx21 = getelementptr i64, i64* %28, i64 0
  %29 = load i64, i64* %arrayidx21, align 8
  %add.ptr = getelementptr i8, i8* %27, i64 %29
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.18, %for.body
  %30 = load i8*, i8** %sptr.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %30, %cond.false ]
  store i8* %cond, i8** %xsptr, align 8
  %31 = load i8*, i8** %p, align 8
  %32 = load i8*, i8** %xsptr, align 8
  %33 = load i64, i64* %itemsize.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 %33, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %34 = load i64, i64* %itemsize.addr, align 8
  %35 = load i8*, i8** %p, align 8
  %add.ptr22 = getelementptr i8, i8* %35, i64 %34
  store i8* %add.ptr22, i8** %p, align 8
  %36 = load i64*, i64** %sstrides.addr, align 8
  %arrayidx23 = getelementptr i64, i64* %36, i64 0
  %37 = load i64, i64* %arrayidx23, align 8
  %38 = load i8*, i8** %sptr.addr, align 8
  %add.ptr24 = getelementptr i8, i8* %38, i64 %37
  store i8* %add.ptr24, i8** %sptr.addr, align 8
  %39 = load i64, i64* %i, align 8
  %inc = add i64 %39, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  %40 = load i8*, i8** %mem.addr, align 8
  store i8* %40, i8** %p, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.39, %for.end
  %41 = load i64, i64* %i, align 8
  %42 = load i64*, i64** %shape.addr, align 8
  %arrayidx26 = getelementptr i64, i64* %42, i64 0
  %43 = load i64, i64* %arrayidx26, align 8
  %cmp27 = icmp slt i64 %41, %43
  br i1 %cmp27, label %for.body.28, label %for.end.44

for.body.28:                                      ; preds = %for.cond.25
  %44 = load i64*, i64** %dsuboffsets.addr, align 8
  %tobool29 = icmp ne i64* %44, null
  br i1 %tobool29, label %land.lhs.true.30, label %cond.false.36

land.lhs.true.30:                                 ; preds = %for.body.28
  %45 = load i64*, i64** %dsuboffsets.addr, align 8
  %arrayidx31 = getelementptr i64, i64* %45, i64 0
  %46 = load i64, i64* %arrayidx31, align 8
  %cmp32 = icmp sge i64 %46, 0
  br i1 %cmp32, label %cond.true.33, label %cond.false.36

cond.true.33:                                     ; preds = %land.lhs.true.30
  %47 = load i8*, i8** %dptr.addr, align 8
  %48 = bitcast i8* %47 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = load i64*, i64** %dsuboffsets.addr, align 8
  %arrayidx34 = getelementptr i64, i64* %50, i64 0
  %51 = load i64, i64* %arrayidx34, align 8
  %add.ptr35 = getelementptr i8, i8* %49, i64 %51
  br label %cond.end.37

cond.false.36:                                    ; preds = %land.lhs.true.30, %for.body.28
  %52 = load i8*, i8** %dptr.addr, align 8
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.33
  %cond38 = phi i8* [ %add.ptr35, %cond.true.33 ], [ %52, %cond.false.36 ]
  store i8* %cond38, i8** %xdptr, align 8
  %53 = load i8*, i8** %xdptr, align 8
  %54 = load i8*, i8** %p, align 8
  %55 = load i64, i64* %itemsize.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 %55, i32 1, i1 false)
  br label %for.inc.39

for.inc.39:                                       ; preds = %cond.end.37
  %56 = load i64, i64* %itemsize.addr, align 8
  %57 = load i8*, i8** %p, align 8
  %add.ptr40 = getelementptr i8, i8* %57, i64 %56
  store i8* %add.ptr40, i8** %p, align 8
  %58 = load i64*, i64** %dstrides.addr, align 8
  %arrayidx41 = getelementptr i64, i64* %58, i64 0
  %59 = load i64, i64* %arrayidx41, align 8
  %60 = load i8*, i8** %dptr.addr, align 8
  %add.ptr42 = getelementptr i8, i8* %60, i64 %59
  store i8* %add.ptr42, i8** %dptr.addr, align 8
  %61 = load i64, i64* %i, align 8
  %inc43 = add i64 %61, 1
  store i64 %inc43, i64* %i, align 8
  br label %for.cond.25

for.end.44:                                       ; preds = %for.cond.25
  br label %if.end

if.end:                                           ; preds = %for.end.44, %if.then.13
  br label %for.end.93

if.end.45:                                        ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.87, %if.end.45
  %62 = load i64, i64* %i, align 8
  %63 = load i64*, i64** %shape.addr, align 8
  %arrayidx47 = getelementptr i64, i64* %63, i64 0
  %64 = load i64, i64* %arrayidx47, align 8
  %cmp48 = icmp slt i64 %62, %64
  br i1 %cmp48, label %for.body.49, label %for.end.93

for.body.49:                                      ; preds = %for.cond.46
  %65 = load i64*, i64** %dsuboffsets.addr, align 8
  %tobool51 = icmp ne i64* %65, null
  br i1 %tobool51, label %land.lhs.true.52, label %cond.false.58

land.lhs.true.52:                                 ; preds = %for.body.49
  %66 = load i64*, i64** %dsuboffsets.addr, align 8
  %arrayidx53 = getelementptr i64, i64* %66, i64 0
  %67 = load i64, i64* %arrayidx53, align 8
  %cmp54 = icmp sge i64 %67, 0
  br i1 %cmp54, label %cond.true.55, label %cond.false.58

cond.true.55:                                     ; preds = %land.lhs.true.52
  %68 = load i8*, i8** %dptr.addr, align 8
  %69 = bitcast i8* %68 to i8**
  %70 = load i8*, i8** %69, align 8
  %71 = load i64*, i64** %dsuboffsets.addr, align 8
  %arrayidx56 = getelementptr i64, i64* %71, i64 0
  %72 = load i64, i64* %arrayidx56, align 8
  %add.ptr57 = getelementptr i8, i8* %70, i64 %72
  br label %cond.end.59

cond.false.58:                                    ; preds = %land.lhs.true.52, %for.body.49
  %73 = load i8*, i8** %dptr.addr, align 8
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.55
  %cond60 = phi i8* [ %add.ptr57, %cond.true.55 ], [ %73, %cond.false.58 ]
  store i8* %cond60, i8** %xdptr50, align 8
  %74 = load i64*, i64** %ssuboffsets.addr, align 8
  %tobool62 = icmp ne i64* %74, null
  br i1 %tobool62, label %land.lhs.true.63, label %cond.false.69

land.lhs.true.63:                                 ; preds = %cond.end.59
  %75 = load i64*, i64** %ssuboffsets.addr, align 8
  %arrayidx64 = getelementptr i64, i64* %75, i64 0
  %76 = load i64, i64* %arrayidx64, align 8
  %cmp65 = icmp sge i64 %76, 0
  br i1 %cmp65, label %cond.true.66, label %cond.false.69

cond.true.66:                                     ; preds = %land.lhs.true.63
  %77 = load i8*, i8** %sptr.addr, align 8
  %78 = bitcast i8* %77 to i8**
  %79 = load i8*, i8** %78, align 8
  %80 = load i64*, i64** %ssuboffsets.addr, align 8
  %arrayidx67 = getelementptr i64, i64* %80, i64 0
  %81 = load i64, i64* %arrayidx67, align 8
  %add.ptr68 = getelementptr i8, i8* %79, i64 %81
  br label %cond.end.70

cond.false.69:                                    ; preds = %land.lhs.true.63, %cond.end.59
  %82 = load i8*, i8** %sptr.addr, align 8
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.66
  %cond71 = phi i8* [ %add.ptr68, %cond.true.66 ], [ %82, %cond.false.69 ]
  store i8* %cond71, i8** %xsptr61, align 8
  %83 = load i64*, i64** %shape.addr, align 8
  %add.ptr72 = getelementptr i64, i64* %83, i64 1
  %84 = load i64, i64* %ndim.addr, align 8
  %sub = sub i64 %84, 1
  %85 = load i64, i64* %itemsize.addr, align 8
  %86 = load i8*, i8** %xdptr50, align 8
  %87 = load i64*, i64** %dstrides.addr, align 8
  %add.ptr73 = getelementptr i64, i64* %87, i64 1
  %88 = load i64*, i64** %dsuboffsets.addr, align 8
  %tobool74 = icmp ne i64* %88, null
  br i1 %tobool74, label %cond.true.75, label %cond.false.77

cond.true.75:                                     ; preds = %cond.end.70
  %89 = load i64*, i64** %dsuboffsets.addr, align 8
  %add.ptr76 = getelementptr i64, i64* %89, i64 1
  br label %cond.end.78

cond.false.77:                                    ; preds = %cond.end.70
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.75
  %cond79 = phi i64* [ %add.ptr76, %cond.true.75 ], [ null, %cond.false.77 ]
  %90 = load i8*, i8** %xsptr61, align 8
  %91 = load i64*, i64** %sstrides.addr, align 8
  %add.ptr80 = getelementptr i64, i64* %91, i64 1
  %92 = load i64*, i64** %ssuboffsets.addr, align 8
  %tobool81 = icmp ne i64* %92, null
  br i1 %tobool81, label %cond.true.82, label %cond.false.84

cond.true.82:                                     ; preds = %cond.end.78
  %93 = load i64*, i64** %ssuboffsets.addr, align 8
  %add.ptr83 = getelementptr i64, i64* %93, i64 1
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end.78
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.82
  %cond86 = phi i64* [ %add.ptr83, %cond.true.82 ], [ null, %cond.false.84 ]
  %94 = load i8*, i8** %mem.addr, align 8
  call void @copy_rec(i64* %add.ptr72, i64 %sub, i64 %85, i8* %86, i64* %add.ptr73, i64* %cond79, i8* %90, i64* %add.ptr80, i64* %cond86, i8* %94)
  br label %for.inc.87

for.inc.87:                                       ; preds = %cond.end.85
  %95 = load i64*, i64** %dstrides.addr, align 8
  %arrayidx88 = getelementptr i64, i64* %95, i64 0
  %96 = load i64, i64* %arrayidx88, align 8
  %97 = load i8*, i8** %dptr.addr, align 8
  %add.ptr89 = getelementptr i8, i8* %97, i64 %96
  store i8* %add.ptr89, i8** %dptr.addr, align 8
  %98 = load i64*, i64** %sstrides.addr, align 8
  %arrayidx90 = getelementptr i64, i64* %98, i64 0
  %99 = load i64, i64* %arrayidx90, align 8
  %100 = load i8*, i8** %sptr.addr, align 8
  %add.ptr91 = getelementptr i8, i8* %100, i64 %99
  store i8* %add.ptr91, i8** %sptr.addr, align 8
  %101 = load i64, i64* %i, align 8
  %inc92 = add i64 %101, 1
  store i64 %inc92, i64* %i, align 8
  br label %for.cond.46

for.end.93:                                       ; preds = %if.end, %for.cond.46
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i64 @PyObject_Hash(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_tobytes(%struct._object* %self, %struct._object* %dummy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %dummy.addr = alloca %struct._object*, align 8
  %ndbuf = alloca %struct.ndbuf*, align 8
  %src = alloca %struct.bufferinfo*, align 8
  %dest = alloca %struct.bufferinfo, align 8
  %ret = alloca %struct._object*, align 8
  %mem = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %dummy, %struct._object** %dummy.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.NDArrayObject*
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %1, i32 0, i32 3
  %2 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  store %struct.ndbuf* %2, %struct.ndbuf** %ndbuf, align 8
  %3 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %base = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %3, i32 0, i32 7
  store %struct.bufferinfo* %base, %struct.bufferinfo** %src, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  %4 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %flags = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %4, i32 0, i32 5
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 264
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %src, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 0
  %7 = load i8*, i8** %buf, align 8
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %src, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2
  %9 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %7, i64 %9)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %src, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 2
  %11 = load i64, i64* %len1, align 8
  %call2 = call i8* @PyMem_Malloc(i64 %11)
  store i8* %call2, i8** %mem, align 8
  %12 = load i8*, i8** %mem, align 8
  %cmp = icmp eq i8* %12, null
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %src, align 8
  %14 = bitcast %struct.bufferinfo* %dest to i8*
  %15 = bitcast %struct.bufferinfo* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 80, i32 8, i1 false)
  %16 = load i8*, i8** %mem, align 8
  %buf6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 0
  store i8* %16, i8** %buf6, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 9
  store i64* null, i64** %suboffsets, align 8
  %17 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %call7 = call i64* @strides_from_shape(%struct.ndbuf* %17, i32 0)
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 8
  store i64* %call7, i64** %strides, align 8
  %strides8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 8
  %18 = load i64*, i64** %strides8, align 8
  %cmp9 = icmp eq i64* %18, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  br label %out

if.end.11:                                        ; preds = %if.end.5
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %src, align 8
  %call12 = call i32 @copy_buffer(%struct.bufferinfo* %dest, %struct.bufferinfo* %19)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  br label %out

if.end.15:                                        ; preds = %if.end.11
  %20 = load i8*, i8** %mem, align 8
  %21 = load %struct.bufferinfo*, %struct.bufferinfo** %src, align 8
  %len16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %21, i32 0, i32 2
  %22 = load i64, i64* %len16, align 8
  %call17 = call %struct._object* @PyBytes_FromStringAndSize(i8* %20, i64 %22)
  store %struct._object* %call17, %struct._object** %ret, align 8
  br label %out

out:                                              ; preds = %if.end.15, %if.then.14, %if.then.10
  br label %do.body

do.body:                                          ; preds = %out
  %strides18 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 8
  %23 = load i64*, i64** %strides18, align 8
  %tobool19 = icmp ne i64* %23, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.body
  %strides21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 8
  %24 = load i64*, i64** %strides21, align 8
  %25 = bitcast i64* %24 to i8*
  call void @PyMem_Free(i8* %25)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %26 = load i8*, i8** %mem, align 8
  call void @PyMem_Free(i8* %26)
  %27 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal i64* @strides_from_shape(%struct.ndbuf* %ndbuf, i32 %flags) #0 {
entry:
  %retval = alloca i64*, align 8
  %ndbuf.addr = alloca %struct.ndbuf*, align 8
  %flags.addr = alloca i32, align 4
  %base = alloca %struct.bufferinfo*, align 8
  %s = alloca i64*, align 8
  %i = alloca i64, align 8
  store %struct.ndbuf* %ndbuf, %struct.ndbuf** %ndbuf.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %0, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %1, i32 0, i32 5
  %2 = load i32, i32* %ndim, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @PyMem_Malloc(i64 %mul)
  %3 = bitcast i8* %call to i64*
  store i64* %3, i64** %s, align 8
  %4 = load i64*, i64** %s, align 8
  %cmp = icmp eq i64* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call %struct._object* @PyErr_NoMemory()
  store i64* null, i64** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %flags.addr, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 3
  %7 = load i64, i64* %itemsize, align 8
  %8 = load i64*, i64** %s, align 8
  %arrayidx = getelementptr i64, i64* %8, i64 0
  store i64 %7, i64* %arrayidx, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 5
  %11 = load i32, i32* %ndim5, align 4
  %conv6 = sext i32 %11 to i64
  %cmp7 = icmp slt i64 %9, %conv6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %i, align 8
  %sub = sub i64 %12, 1
  %13 = load i64*, i64** %s, align 8
  %arrayidx9 = getelementptr i64, i64* %13, i64 %sub
  %14 = load i64, i64* %arrayidx9, align 8
  %15 = load i64, i64* %i, align 8
  %sub10 = sub i64 %15, 1
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 7
  %17 = load i64*, i64** %shape, align 8
  %arrayidx11 = getelementptr i64, i64* %17, i64 %sub10
  %18 = load i64, i64* %arrayidx11, align 8
  %mul12 = mul i64 %14, %18
  %19 = load i64, i64* %i, align 8
  %20 = load i64*, i64** %s, align 8
  %arrayidx13 = getelementptr i64, i64* %20, i64 %19
  store i64 %mul12, i64* %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i64, i64* %i, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %itemsize14 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 3
  %23 = load i64, i64* %itemsize14, align 8
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim15 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 5
  %25 = load i32, i32* %ndim15, align 4
  %sub16 = sub i32 %25, 1
  %idxprom = sext i32 %sub16 to i64
  %26 = load i64*, i64** %s, align 8
  %arrayidx17 = getelementptr i64, i64* %26, i64 %idxprom
  store i64 %23, i64* %arrayidx17, align 8
  %27 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim18 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %27, i32 0, i32 5
  %28 = load i32, i32* %ndim18, align 4
  %sub19 = sub i32 %28, 2
  %conv20 = sext i32 %sub19 to i64
  store i64 %conv20, i64* %i, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.31, %if.else
  %29 = load i64, i64* %i, align 8
  %cmp22 = icmp sge i64 %29, 0
  br i1 %cmp22, label %for.body.24, label %for.end.32

for.body.24:                                      ; preds = %for.cond.21
  %30 = load i64, i64* %i, align 8
  %add = add i64 %30, 1
  %31 = load i64*, i64** %s, align 8
  %arrayidx25 = getelementptr i64, i64* %31, i64 %add
  %32 = load i64, i64* %arrayidx25, align 8
  %33 = load i64, i64* %i, align 8
  %add26 = add i64 %33, 1
  %34 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %34, i32 0, i32 7
  %35 = load i64*, i64** %shape27, align 8
  %arrayidx28 = getelementptr i64, i64* %35, i64 %add26
  %36 = load i64, i64* %arrayidx28, align 8
  %mul29 = mul i64 %32, %36
  %37 = load i64, i64* %i, align 8
  %38 = load i64*, i64** %s, align 8
  %arrayidx30 = getelementptr i64, i64* %38, i64 %37
  store i64 %mul29, i64* %arrayidx30, align 8
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.24
  %39 = load i64, i64* %i, align 8
  %dec = add i64 %39, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond.21

for.end.32:                                       ; preds = %for.cond.21
  br label %if.end.33

if.end.33:                                        ; preds = %for.end.32, %for.end
  %40 = load i64*, i64** %s, align 8
  store i64* %40, i64** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then
  %41 = load i64*, i64** %retval
  ret i64* %41
}

; Function Attrs: nounwind uwtable
define internal i32 @ndarray_getbuf(%struct.NDArrayObject* %self, %struct.bufferinfo* %view, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %flags.addr = alloca i32, align 4
  %ndbuf = alloca %struct.ndbuf*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  %baseflags = alloca i32, align 4
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  store %struct.ndbuf* %1, %struct.ndbuf** %ndbuf, align 8
  %2 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %2, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %3 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %flags2 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %3, i32 0, i32 5
  %4 = load i32, i32* %flags2, align 4
  store i32 %4, i32* %baseflags, align 4
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %obj, align 8
  %cmp = icmp ne %struct._object* %6, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %baseflags, align 4
  %and = and i32 %7, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %obj3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %obj3, align 8
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %11 = load i32, i32* %flags.addr, align 4
  %call = call i32 @PyObject_GetBuffer(%struct._object* %9, %struct.bufferinfo* %10, i32 %11)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %14 = bitcast %struct.bufferinfo* %12 to i8*
  %15 = bitcast %struct.bufferinfo* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 80, i32 8, i1 false)
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 1
  store %struct._object* null, %struct._object** %obj4, align 8
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 6
  %18 = load i8*, i8** %format, align 8
  %cmp5 = icmp eq i8* %18, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format7 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 6
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i8** %format7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 5
  %21 = load i32, i32* %ndim, align 4
  %cmp9 = icmp ne i32 %21, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.20

land.lhs.true.10:                                 ; preds = %if.end.8
  %22 = load i32, i32* %flags.addr, align 4
  %and11 = and i32 %22, 8
  %cmp12 = icmp eq i32 %and11, 8
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false

land.lhs.true.13:                                 ; preds = %land.lhs.true.10
  %23 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %23, i32 0, i32 7
  %24 = load i64*, i64** %shape, align 8
  %cmp14 = icmp eq i64* %24, null
  br i1 %cmp14, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.13, %land.lhs.true.10
  %25 = load i32, i32* %flags.addr, align 4
  %and15 = and i32 %25, 24
  %cmp16 = icmp eq i32 %and15, 24
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.20

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 8
  %27 = load i64*, i64** %strides, align 8
  %cmp18 = icmp eq i64* %27, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.17, %land.lhs.true.13
  %28 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.69, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.17, %lor.lhs.false, %if.end.8
  %29 = load i32, i32* %baseflags, align 4
  %and21 = and i32 %29, 64
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.end.20
  %30 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.70, i32 0, i32 0))
  %31 = load i32, i32* %baseflags, align 4
  %and24 = and i32 %31, 128
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.23
  %32 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %32, i32 0, i32 1
  store %struct._object* inttoptr (i64 1 to %struct._object*), %struct._object** %obj27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.23
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.20
  %33 = load i32, i32* %flags.addr, align 4
  %and30 = and i32 %33, 1
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.35

land.lhs.true.32:                                 ; preds = %if.end.29
  %34 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %34, i32 0, i32 4
  %35 = load i32, i32* %readonly, align 4
  %tobool33 = icmp ne i32 %35, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true.32
  %36 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true.32, %if.end.29
  %37 = load i32, i32* %flags.addr, align 4
  %and36 = and i32 %37, 4
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %if.end.35
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format39 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 6
  store i8* null, i8** %format39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.35
  %39 = load i32, i32* %flags.addr, align 4
  %and41 = and i32 %39, 56
  %cmp42 = icmp eq i32 %and41, 56
  br i1 %cmp42, label %land.lhs.true.43, label %if.end.47

land.lhs.true.43:                                 ; preds = %if.end.40
  %40 = load i32, i32* %baseflags, align 4
  %and44 = and i32 %40, 264
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true.43
  %41 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true.43, %if.end.40
  %42 = load i32, i32* %flags.addr, align 4
  %and48 = and i32 %42, 88
  %cmp49 = icmp eq i32 %and48, 88
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.54

land.lhs.true.50:                                 ; preds = %if.end.47
  %43 = load i32, i32* %baseflags, align 4
  %and51 = and i32 %43, 12
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.50
  %44 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.72, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %land.lhs.true.50, %if.end.47
  %45 = load i32, i32* %flags.addr, align 4
  %and55 = and i32 %45, 152
  %cmp56 = icmp eq i32 %and55, 152
  br i1 %cmp56, label %land.lhs.true.57, label %if.end.61

land.lhs.true.57:                                 ; preds = %if.end.54
  %46 = load i32, i32* %baseflags, align 4
  %and58 = and i32 %46, 268
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true.57
  %47 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %land.lhs.true.57, %if.end.54
  %48 = load i32, i32* %flags.addr, align 4
  %and62 = and i32 %48, 280
  %cmp63 = icmp eq i32 %and62, 280
  br i1 %cmp63, label %if.end.68, label %land.lhs.true.64

land.lhs.true.64:                                 ; preds = %if.end.61
  %49 = load i32, i32* %baseflags, align 4
  %and65 = and i32 %49, 16
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.64
  %50 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.74, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.68:                                        ; preds = %land.lhs.true.64, %if.end.61
  %51 = load i32, i32* %flags.addr, align 4
  %and69 = and i32 %51, 24
  %cmp70 = icmp eq i32 %and69, 24
  br i1 %cmp70, label %if.end.77, label %if.then.71

if.then.71:                                       ; preds = %if.end.68
  %52 = load i32, i32* %baseflags, align 4
  %and72 = and i32 %52, 264
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %if.then.71
  %53 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.then.71
  %54 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides76 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %54, i32 0, i32 8
  store i64* null, i64** %strides76, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.75, %if.end.68
  %55 = load i32, i32* %flags.addr, align 4
  %and78 = and i32 %55, 8
  %cmp79 = icmp eq i32 %and78, 8
  br i1 %cmp79, label %if.end.88, label %if.then.80

if.then.80:                                       ; preds = %if.end.77
  %56 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format81 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %56, i32 0, i32 6
  %57 = load i8*, i8** %format81, align 8
  %cmp82 = icmp ne i8* %57, null
  br i1 %cmp82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.then.80
  %58 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  %call84 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %58, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.75, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.then.80
  %59 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim86 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %59, i32 0, i32 5
  store i32 1, i32* %ndim86, align 4
  %60 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape87 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %60, i32 0, i32 7
  store i64* null, i64** %shape87, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.85, %if.end.77
  %61 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %62 = bitcast %struct.NDArrayObject* %61 to %struct._object*
  %63 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj89 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %63, i32 0, i32 1
  store %struct._object* %62, %struct._object** %obj89, align 8
  %64 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj90 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %64, i32 0, i32 1
  %65 = load %struct._object*, %struct._object** %obj90, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %66, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %67 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head91 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %67, i32 0, i32 3
  %68 = load %struct.ndbuf*, %struct.ndbuf** %head91, align 8
  %exports = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %68, i32 0, i32 6
  %69 = load i64, i64* %exports, align 8
  %inc92 = add i64 %69, 1
  store i64 %inc92, i64* %exports, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then.83, %if.then.74, %if.then.67, %if.then.60, %if.then.53, %if.then.46, %if.then.34, %if.end.28, %if.then.19, %if.then
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @ndarray_releasebuf(%struct.NDArrayObject* %self, %struct.bufferinfo* %view) #0 {
entry:
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %ndbuf = alloca %struct.ndbuf*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %2 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %staticbuf = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %2, i32 0, i32 2
  %cmp = icmp eq %struct.ndbuf* %1, %staticbuf
  br i1 %cmp, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %internal = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 10
  %4 = load i8*, i8** %internal, align 8
  %5 = bitcast i8* %4 to %struct.ndbuf*
  store %struct.ndbuf* %5, %struct.ndbuf** %ndbuf, align 8
  %6 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %exports = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %6, i32 0, i32 6
  %7 = load i64, i64* %exports, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %exports, align 8
  %cmp1 = icmp eq i64 %dec, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %9 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head2 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %9, i32 0, i32 3
  %10 = load %struct.ndbuf*, %struct.ndbuf** %head2, align 8
  %cmp3 = icmp ne %struct.ndbuf* %8, %10
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %11 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %12 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  call void @ndbuf_delete(%struct.NDArrayObject* %11, %struct.ndbuf* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_tolist(%struct._object* %self, %struct._object* %dummy) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %dummy.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %dummy, %struct._object** %dummy.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.NDArrayObject*
  %call = call %struct._object* @ndarray_as_list(%struct.NDArrayObject* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_push(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  %items = alloca %struct._object*, align 8
  %shape = alloca %struct._object*, align 8
  %strides = alloca %struct._object*, align 8
  %format = alloca %struct._object*, align 8
  %offset = alloca i64, align 8
  %flags = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.NDArrayObject*
  store %struct.NDArrayObject* %1, %struct.NDArrayObject** %nd, align 8
  store %struct._object* null, %struct._object** %items, align 8
  store %struct._object* null, %struct._object** %shape, align 8
  store %struct._object* null, %struct._object** %strides, align 8
  %2 = load %struct._object*, %struct._object** @simple_format, align 8
  store %struct._object* %2, %struct._object** %format, align 8
  store i64 0, i64* %offset, align 8
  store i32 0, i32* %flags, align 4
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %3, %struct._object* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @ndarray_push.kwlist, i32 0, i32 0), %struct._object** %items, %struct._object** %shape, %struct._object** %strides, i64* %offset, %struct._object** %format, i32* %flags)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.90, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %7, i32 0, i32 3
  %8 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %9 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %staticbuf = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %9, i32 0, i32 2
  %cmp = icmp eq %struct.ndbuf* %8, %staticbuf
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.91, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.3
  %11 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %flags6 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %11, i32 0, i32 1
  %12 = load i32, i32* %flags6, align 4
  %and7 = and i32 %12, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end.18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.5
  %13 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head9 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %13, i32 0, i32 3
  %14 = load %struct.ndbuf*, %struct.ndbuf** %head9, align 8
  %exports = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %14, i32 0, i32 6
  %15 = load i64, i64* %exports, align 8
  %cmp10 = icmp sgt i64 %15, 0
  br i1 %cmp10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %land.lhs.true
  %16 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  %17 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head12 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %17, i32 0, i32 3
  %18 = load %struct.ndbuf*, %struct.ndbuf** %head12, align 8
  %exports13 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %18, i32 0, i32 6
  %19 = load i64, i64* %exports13, align 8
  %20 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head14 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %20, i32 0, i32 3
  %21 = load %struct.ndbuf*, %struct.ndbuf** %head14, align 8
  %exports15 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %21, i32 0, i32 6
  %22 = load i64, i64* %exports15, align 8
  %cmp16 = icmp eq i64 %22, 1
  %cond = select i1 %cmp16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0)
  %call17 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.92, i32 0, i32 0), i64 %19, i8* %cond)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true, %if.end.5
  %23 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %24 = load %struct._object*, %struct._object** %items, align 8
  %25 = load %struct._object*, %struct._object** %shape, align 8
  %26 = load %struct._object*, %struct._object** %strides, align 8
  %27 = load i64, i64* %offset, align 8
  %28 = load %struct._object*, %struct._object** %format, align 8
  %29 = load i32, i32* %flags, align 4
  %call19 = call i32 @ndarray_push_base(%struct.NDArrayObject* %23, %struct._object* %24, %struct._object* %25, %struct._object* %26, i64 %27, %struct._object* %28, i32 %29)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %30 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.then.11, %if.then.4, %if.then.2, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_pop(%struct._object* %self, %struct._object* %dummy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %dummy.addr = alloca %struct._object*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %dummy, %struct._object** %dummy.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.NDArrayObject*
  store %struct.NDArrayObject* %1, %struct.NDArrayObject** %nd, align 8
  %2 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %2, i32 0, i32 3
  %3 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %4 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %staticbuf = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %4, i32 0, i32 2
  %cmp = icmp eq %struct.ndbuf* %3, %staticbuf
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.91, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head1 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %6, i32 0, i32 3
  %7 = load %struct.ndbuf*, %struct.ndbuf** %head1, align 8
  %exports = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %7, i32 0, i32 6
  %8 = load i64, i64* %exports, align 8
  %cmp2 = icmp sgt i64 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  %10 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head4 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %10, i32 0, i32 3
  %11 = load %struct.ndbuf*, %struct.ndbuf** %head4, align 8
  %exports5 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %11, i32 0, i32 6
  %12 = load i64, i64* %exports5, align 8
  %13 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head6 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %13, i32 0, i32 3
  %14 = load %struct.ndbuf*, %struct.ndbuf** %head6, align 8
  %exports7 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %14, i32 0, i32 6
  %15 = load i64, i64* %exports7, align 8
  %cmp8 = icmp eq i64 %15, 1
  %cond = select i1 %cmp8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0)
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.92, i32 0, i32 0), i64 %12, i8* %cond)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %16 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head10 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %16, i32 0, i32 3
  %17 = load %struct.ndbuf*, %struct.ndbuf** %head10, align 8
  %next = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %17, i32 0, i32 0
  %18 = load %struct.ndbuf*, %struct.ndbuf** %next, align 8
  %cmp11 = icmp eq %struct.ndbuf* %18, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %19 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.111, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %20 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  call void @ndbuf_pop(%struct.NDArrayObject* %20)
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.3, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_add_suboffsets(%struct._object* %self, %struct._object* %dummy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %dummy.addr = alloca %struct._object*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  %i = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %dummy, %struct._object** %dummy.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.NDArrayObject*
  store %struct.NDArrayObject* %1, %struct.NDArrayObject** %nd, align 8
  %2 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %2, i32 0, i32 3
  %3 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %3, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 9
  %5 = load i64*, i64** %suboffsets, align 8
  %cmp = icmp ne i64* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.112, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 8
  %8 = load i64*, i64** %strides, align 8
  %cmp2 = icmp eq i64* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.113, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 5
  %11 = load i32, i32* %ndim, align 4
  %conv = sext i32 %11 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @PyMem_Malloc(i64 %mul)
  %12 = bitcast i8* %call to i64*
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 9
  store i64* %12, i64** %suboffsets5, align 8
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 9
  %15 = load i64*, i64** %suboffsets6, align 8
  %cmp7 = icmp eq i64* %15, null
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.4
  %call10 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 5
  %18 = load i32, i32* %ndim12, align 4
  %conv13 = sext i32 %18 to i64
  %cmp14 = icmp slt i64 %16, %conv13
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 9
  %21 = load i64*, i64** %suboffsets16, align 8
  %arrayidx = getelementptr i64, i64* %21, i64 %19
  store i64 -1, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i64, i64* %i, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc17 = add i64 %23, 1
  store i64 %inc17, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then.3, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_memoryview_from_buffer(%struct._object* %self, %struct._object* %dummy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %dummy.addr = alloca %struct._object*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  %view = alloca %struct.bufferinfo*, align 8
  %ndbuf = alloca %struct.ndbuf*, align 8
  %p = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %dummy, %struct._object** %dummy.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.NDArrayObject*
  store %struct.NDArrayObject* %1, %struct.NDArrayObject** %nd, align 8
  %2 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %2, i32 0, i32 3
  %3 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %3, i32 0, i32 7
  store %struct.bufferinfo* %base, %struct.bufferinfo** %view, align 8
  %4 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head1 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %4, i32 0, i32 3
  %5 = load %struct.ndbuf*, %struct.ndbuf** %head1, align 8
  %6 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %staticbuf = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %6, i32 0, i32 2
  %cmp = icmp eq %struct.ndbuf* %5, %staticbuf
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head2 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %7, i32 0, i32 3
  %8 = load %struct.ndbuf*, %struct.ndbuf** %head2, align 8
  store %struct.ndbuf* %8, %struct.ndbuf** %ndbuf, align 8
  br label %if.end.13

if.else:                                          ; preds = %entry
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp3 = icmp eq %struct._typeobject* %11, @NDArray_Type
  br i1 %cmp3, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %obj4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %obj4, align 8
  %14 = bitcast %struct._object* %13 to %struct.NDArrayObject*
  %head5 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %14, i32 0, i32 3
  %15 = load %struct.ndbuf*, %struct.ndbuf** %head5, align 8
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %obj6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 1
  %17 = load %struct._object*, %struct._object** %obj6, align 8
  %18 = bitcast %struct._object* %17 to %struct.NDArrayObject*
  %staticbuf7 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %18, i32 0, i32 2
  %cmp8 = icmp eq %struct.ndbuf* %15, %staticbuf7
  br i1 %cmp8, label %if.else.12, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %obj10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 1
  %20 = load %struct._object*, %struct._object** %obj10, align 8
  %21 = bitcast %struct._object* %20 to %struct.NDArrayObject*
  %head11 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %21, i32 0, i32 3
  %22 = load %struct.ndbuf*, %struct.ndbuf** %head11, align 8
  store %struct.ndbuf* %22, %struct.ndbuf** %ndbuf, align 8
  br label %if.end

if.else.12:                                       ; preds = %land.lhs.true, %if.else
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.114, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %25 = bitcast %struct.bufferinfo* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.bufferinfo* @ndarray_memoryview_from_buffer.info to i8*), i8* %25, i64 80, i32 8, i1 false)
  %26 = load i8*, i8** @infobuf, align 8
  %27 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %len = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %27, i32 0, i32 2
  %28 = load i64, i64* %len, align 8
  %call = call i8* @PyMem_Realloc(i8* %26, i64 %28)
  store i8* %call, i8** %p, align 8
  %29 = load i8*, i8** %p, align 8
  %cmp14 = icmp eq i8* %29, null
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.end.13
  %30 = load i8*, i8** @infobuf, align 8
  call void @PyMem_Free(i8* %30)
  %call16 = call %struct._object* @PyErr_NoMemory()
  store i8* null, i8** @infobuf, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.17:                                       ; preds = %if.end.13
  %31 = load i8*, i8** %p, align 8
  store i8* %31, i8** @infobuf, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17
  %32 = load i8*, i8** @infobuf, align 8
  %33 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %data = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %33, i32 0, i32 4
  %34 = load i8*, i8** %data, align 8
  %35 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %len19 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %35, i32 0, i32 2
  %36 = load i64, i64* %len19, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %34, i64 %36, i32 1, i1 false)
  %37 = load i8*, i8** @infobuf, align 8
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 0
  %39 = load i8*, i8** %buf, align 8
  %40 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %data20 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %40, i32 0, i32 4
  %41 = load i8*, i8** %data20, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr i8, i8* %37, i64 %sub.ptr.sub
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.bufferinfo, %struct.bufferinfo* @ndarray_memoryview_from_buffer.info, i32 0, i32 0), align 8
  %42 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %42, i32 0, i32 6
  %43 = load i8*, i8** %format, align 8
  %tobool = icmp ne i8* %43, null
  br i1 %tobool, label %if.then.21, label %if.end.30

if.then.21:                                       ; preds = %if.end.18
  %44 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %format22 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %44, i32 0, i32 6
  %45 = load i8*, i8** %format22, align 8
  %call23 = call i64 @strlen(i8* %45) #5
  %cmp24 = icmp ugt i64 %call23, 128
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.21
  %46 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call26 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %46, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.115, i32 0, i32 0), i32 128)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.21
  %47 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %format28 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %47, i32 0, i32 6
  %48 = load i8*, i8** %format28, align 8
  %call29 = call i8* @strcpy(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @ndarray_memoryview_from_buffer.format, i32 0, i32 0), i8* %48) #3
  store i8* getelementptr inbounds ([129 x i8], [129 x i8]* @ndarray_memoryview_from_buffer.format, i32 0, i32 0), i8** getelementptr inbounds (%struct.bufferinfo, %struct.bufferinfo* @ndarray_memoryview_from_buffer.info, i32 0, i32 6), align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.27, %if.end.18
  %49 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %49, i32 0, i32 5
  %50 = load i32, i32* %ndim, align 4
  %cmp31 = icmp sgt i32 %50, 128
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %51 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call33 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.116, i32 0, i32 0), i32 128)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %if.end.30
  %52 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %52, i32 0, i32 7
  %53 = load i64*, i64** %shape, align 8
  %tobool35 = icmp ne i64* %53, null
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.34
  %54 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %shape37 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %54, i32 0, i32 7
  %55 = load i64*, i64** %shape37, align 8
  %56 = bitcast i64* %55 to i8*
  %57 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim38 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %57, i32 0, i32 5
  %58 = load i32, i32* %ndim38, align 4
  %conv = sext i32 %58 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([128 x i64]* @ndarray_memoryview_from_buffer.shape to i8*), i8* %56, i64 %mul, i32 8, i1 false)
  store i64* getelementptr inbounds ([128 x i64], [128 x i64]* @ndarray_memoryview_from_buffer.shape, i32 0, i32 0), i64** getelementptr inbounds (%struct.bufferinfo, %struct.bufferinfo* @ndarray_memoryview_from_buffer.info, i32 0, i32 7), align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.34
  %59 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %59, i32 0, i32 8
  %60 = load i64*, i64** %strides, align 8
  %tobool40 = icmp ne i64* %60, null
  br i1 %tobool40, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %if.end.39
  %61 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %strides42 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %61, i32 0, i32 8
  %62 = load i64*, i64** %strides42, align 8
  %63 = bitcast i64* %62 to i8*
  %64 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim43 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %64, i32 0, i32 5
  %65 = load i32, i32* %ndim43, align 4
  %conv44 = sext i32 %65 to i64
  %mul45 = mul i64 %conv44, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([128 x i64]* @ndarray_memoryview_from_buffer.strides to i8*), i8* %63, i64 %mul45, i32 8, i1 false)
  store i64* getelementptr inbounds ([128 x i64], [128 x i64]* @ndarray_memoryview_from_buffer.strides, i32 0, i32 0), i64** getelementptr inbounds (%struct.bufferinfo, %struct.bufferinfo* @ndarray_memoryview_from_buffer.info, i32 0, i32 8), align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.41, %if.end.39
  %66 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %66, i32 0, i32 9
  %67 = load i64*, i64** %suboffsets, align 8
  %tobool47 = icmp ne i64* %67, null
  br i1 %tobool47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.end.46
  %68 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %suboffsets49 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %68, i32 0, i32 9
  %69 = load i64*, i64** %suboffsets49, align 8
  %70 = bitcast i64* %69 to i8*
  %71 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim50 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %71, i32 0, i32 5
  %72 = load i32, i32* %ndim50, align 4
  %conv51 = sext i32 %72 to i64
  %mul52 = mul i64 %conv51, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([128 x i64]* @ndarray_memoryview_from_buffer.suboffsets to i8*), i8* %70, i64 %mul52, i32 8, i1 false)
  store i64* getelementptr inbounds ([128 x i64], [128 x i64]* @ndarray_memoryview_from_buffer.suboffsets, i32 0, i32 0), i64** getelementptr inbounds (%struct.bufferinfo, %struct.bufferinfo* @ndarray_memoryview_from_buffer.info, i32 0, i32 9), align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %if.end.46
  %call54 = call %struct._object* @PyMemoryView_FromBuffer(%struct.bufferinfo* @ndarray_memoryview_from_buffer.info)
  store %struct._object* %call54, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.32, %if.then.25, %if.then.15, %if.else.12
  %73 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %73
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_as_list(%struct.NDArrayObject* %nd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %nd.addr = alloca %struct.NDArrayObject*, align 8
  %structobj = alloca %struct._object*, align 8
  %unpack_from = alloca %struct._object*, align 8
  %lst = alloca %struct._object*, align 8
  %mview = alloca %struct._object*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  %shape = alloca i64*, align 8
  %strides = alloca i64*, align 8
  %simple_shape = alloca [1 x i64], align 8
  %simple_strides = alloca [1 x i64], align 8
  %item = alloca i8*, align 8
  %format = alloca %struct._object*, align 8
  %fmt = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_xdecref_tmp71 = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  %_py_xdecref_tmp90 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  store %struct.NDArrayObject* %nd, %struct.NDArrayObject** %nd.addr, align 8
  store %struct._object* null, %struct._object** %structobj, align 8
  store %struct._object* null, %struct._object** %unpack_from, align 8
  store %struct._object* null, %struct._object** %lst, align 8
  store %struct._object* null, %struct._object** %mview, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 7
  %3 = load i64*, i64** %shape2, align 8
  store i64* %3, i64** %shape, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 8
  %5 = load i64*, i64** %strides3, align 8
  store i64* %5, i64** %strides, align 8
  store i8* null, i8** %item, align 8
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %format4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 6
  %7 = load i8*, i8** %format4, align 8
  store i8* %7, i8** %fmt, align 8
  %8 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head5 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %8, i32 0, i32 3
  %9 = load %struct.ndbuf*, %struct.ndbuf** %head5, align 8
  %base6 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %9, i32 0, i32 7
  store %struct.bufferinfo* %base6, %struct.bufferinfo** %base, align 8
  %10 = load i8*, i8** %fmt, align 8
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.82, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load i64*, i64** %shape, align 8
  %cmp7 = icmp eq i64* %12, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %simple_shape, i32 0, i32 0
  store i64* %arraydecay, i64** %shape, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 2
  %14 = load i64, i64* %len, align 8
  %15 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %15, i64 0
  store i64 %14, i64* %arrayidx, align 8
  %arraydecay9 = getelementptr inbounds [1 x i64], [1 x i64]* %simple_strides, i32 0, i32 0
  store i64* %arraydecay9, i64** %strides, align 8
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 3
  %17 = load i64, i64* %itemsize, align 8
  %18 = load i64*, i64** %strides, align 8
  %arrayidx10 = getelementptr i64, i64* %18, i64 0
  store i64 %17, i64* %arrayidx10, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %19 = load i64*, i64** %strides, align 8
  %cmp11 = icmp eq i64* %19, null
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.else
  %20 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head13 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %20, i32 0, i32 3
  %21 = load %struct.ndbuf*, %struct.ndbuf** %head13, align 8
  %call = call i64* @strides_from_shape(%struct.ndbuf* %21, i32 0)
  store i64* %call, i64** %strides, align 8
  %22 = load i64*, i64** %strides, align 8
  %cmp14 = icmp eq i64* %22, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.8
  %23 = load i8*, i8** %fmt, align 8
  %call19 = call %struct._object* @PyUnicode_FromString(i8* %23)
  store %struct._object* %call19, %struct._object** %format, align 8
  %24 = load %struct._object*, %struct._object** %format, align 8
  %cmp20 = icmp eq %struct._object* %24, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  br label %out

if.end.22:                                        ; preds = %if.end.18
  %25 = load %struct._object*, %struct._object** @Struct, align 8
  %26 = load %struct._object*, %struct._object** %format, align 8
  %call23 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %25, %struct._object* %26, i8* null)
  store %struct._object* %call23, %struct._object** %structobj, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.22
  %27 = load %struct._object*, %struct._object** %format, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body
  br label %if.end.27

if.else.26:                                       ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.27
  %34 = load %struct._object*, %struct._object** %structobj, align 8
  %cmp28 = icmp eq %struct._object* %34, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.end
  br label %out

if.end.30:                                        ; preds = %do.end
  %35 = load %struct._object*, %struct._object** %structobj, align 8
  %call31 = call %struct._object* @PyObject_GetAttrString(%struct._object* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0))
  store %struct._object* %call31, %struct._object** %unpack_from, align 8
  %36 = load %struct._object*, %struct._object** %unpack_from, align 8
  %cmp32 = icmp eq %struct._object* %36, null
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  br label %out

if.end.34:                                        ; preds = %if.end.30
  %37 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %itemsize35 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %37, i32 0, i32 3
  %38 = load i64, i64* %itemsize35, align 8
  %call36 = call i8* @PyMem_Malloc(i64 %38)
  store i8* %call36, i8** %item, align 8
  %39 = load i8*, i8** %item, align 8
  %cmp37 = icmp eq i8* %39, null
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.34
  %call39 = call %struct._object* @PyErr_NoMemory()
  br label %out

if.end.40:                                        ; preds = %if.end.34
  %40 = load i8*, i8** %item, align 8
  %41 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %itemsize41 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %41, i32 0, i32 3
  %42 = load i64, i64* %itemsize41, align 8
  %call42 = call %struct._object* @PyMemoryView_FromMemory(i8* %40, i64 %42, i32 512)
  store %struct._object* %call42, %struct._object** %mview, align 8
  %43 = load %struct._object*, %struct._object** %mview, align 8
  %cmp43 = icmp eq %struct._object* %43, null
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.40
  br label %out

if.end.45:                                        ; preds = %if.end.40
  %44 = load %struct._object*, %struct._object** %unpack_from, align 8
  %45 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %45, i32 0, i32 0
  %46 = load i8*, i8** %buf, align 8
  %47 = load %struct._object*, %struct._object** %mview, align 8
  %48 = load i8*, i8** %item, align 8
  %49 = load i64*, i64** %shape, align 8
  %50 = load i64*, i64** %strides, align 8
  %51 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %51, i32 0, i32 9
  %52 = load i64*, i64** %suboffsets, align 8
  %53 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %53, i32 0, i32 5
  %54 = load i32, i32* %ndim, align 4
  %conv = sext i32 %54 to i64
  %55 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %itemsize46 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %55, i32 0, i32 3
  %56 = load i64, i64* %itemsize46, align 8
  %call47 = call %struct._object* @unpack_rec(%struct._object* %44, i8* %46, %struct._object* %47, i8* %48, i64* %49, i64* %50, i64* %52, i64 %conv, i64 %56)
  store %struct._object* %call47, %struct._object** %lst, align 8
  br label %out

out:                                              ; preds = %if.end.45, %if.then.44, %if.then.38, %if.then.33, %if.then.29, %if.then.21
  br label %do.body.48

do.body.48:                                       ; preds = %out
  %57 = load %struct._object*, %struct._object** %mview, align 8
  store %struct._object* %57, %struct._object** %_py_xdecref_tmp, align 8
  %58 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp49 = icmp ne %struct._object* %58, null
  br i1 %cmp49, label %if.then.51, label %if.end.64

if.then.51:                                       ; preds = %do.body.48
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %59 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp53, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %61, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.52
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.52
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %64(%struct._object* %65)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.63, %do.body.48
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.65
  %66 = load i8*, i8** %item, align 8
  %tobool = icmp ne i8* %66, null
  br i1 %tobool, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %do.body.66
  %67 = load i8*, i8** %item, align 8
  call void @PyMem_Free(i8* %67)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %do.body.66
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  br label %do.body.70

do.body.70:                                       ; preds = %do.end.69
  %68 = load %struct._object*, %struct._object** %unpack_from, align 8
  store %struct._object* %68, %struct._object** %_py_xdecref_tmp71, align 8
  %69 = load %struct._object*, %struct._object** %_py_xdecref_tmp71, align 8
  %cmp72 = icmp ne %struct._object* %69, null
  br i1 %cmp72, label %if.then.74, label %if.end.87

if.then.74:                                       ; preds = %do.body.70
  br label %do.body.75

do.body.75:                                       ; preds = %if.then.74
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp71, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp76, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt77, align 8
  %dec78 = add i64 %72, -1
  store i64 %dec78, i64* %ob_refcnt77, align 8
  %cmp79 = icmp ne i64 %dec78, 0
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.75
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.75
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  call void %75(%struct._object* %76)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %if.end.87

if.end.87:                                        ; preds = %do.end.86, %do.body.70
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  br label %do.body.89

do.body.89:                                       ; preds = %do.end.88
  %77 = load %struct._object*, %struct._object** %structobj, align 8
  store %struct._object* %77, %struct._object** %_py_xdecref_tmp90, align 8
  %78 = load %struct._object*, %struct._object** %_py_xdecref_tmp90, align 8
  %cmp91 = icmp ne %struct._object* %78, null
  br i1 %cmp91, label %if.then.93, label %if.end.106

if.then.93:                                       ; preds = %do.body.89
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp90, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp95, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt96, align 8
  %dec97 = add i64 %81, -1
  store i64 %dec97, i64* %ob_refcnt96, align 8
  %cmp98 = icmp ne i64 %dec97, 0
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %do.body.94
  br label %if.end.104

if.else.101:                                      ; preds = %do.body.94
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  call void %84(%struct._object* %85)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %if.end.106

if.end.106:                                       ; preds = %do.end.105, %do.body.89
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  %86 = load i64*, i64** %strides, align 8
  %87 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides108 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %87, i32 0, i32 8
  %88 = load i64*, i64** %strides108, align 8
  %cmp109 = icmp ne i64* %86, %88
  br i1 %cmp109, label %land.lhs.true, label %if.end.120

land.lhs.true:                                    ; preds = %do.end.107
  %89 = load i64*, i64** %strides, align 8
  %arraydecay111 = getelementptr inbounds [1 x i64], [1 x i64]* %simple_strides, i32 0, i32 0
  %cmp112 = icmp ne i64* %89, %arraydecay111
  br i1 %cmp112, label %if.then.114, label %if.end.120

if.then.114:                                      ; preds = %land.lhs.true
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %90 = load i64*, i64** %strides, align 8
  %tobool116 = icmp ne i64* %90, null
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %do.body.115
  %91 = load i64*, i64** %strides, align 8
  %92 = bitcast i64* %91 to i8*
  call void @PyMem_Free(i8* %92)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %do.body.115
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  br label %if.end.120

if.end.120:                                       ; preds = %do.end.119, %land.lhs.true, %do.end.107
  %93 = load %struct._object*, %struct._object** %lst, align 8
  store %struct._object* %93, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.120, %if.then.15, %if.then
  %94 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %94
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unpack_rec(%struct._object* %unpack_from, i8* %ptr, %struct._object* %mview, i8* %item, i64* %shape, i64* %strides, i64* %suboffsets, i64 %ndim, i64 %itemsize) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %unpack_from.addr = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %mview.addr = alloca %struct._object*, align 8
  %item.addr = alloca i8*, align 8
  %shape.addr = alloca i64*, align 8
  %strides.addr = alloca i64*, align 8
  %suboffsets.addr = alloca i64*, align 8
  %ndim.addr = alloca i64, align 8
  %itemsize.addr = alloca i64, align 8
  %lst = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %nextptr = alloca i8*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  store %struct._object* %unpack_from, %struct._object** %unpack_from.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %mview, %struct._object** %mview.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  store i64* %shape, i64** %shape.addr, align 8
  store i64* %strides, i64** %strides.addr, align 8
  store i64* %suboffsets, i64** %suboffsets.addr, align 8
  store i64 %ndim, i64* %ndim.addr, align 8
  store i64 %itemsize, i64* %itemsize.addr, align 8
  %0 = load i64, i64* %ndim.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %item.addr, align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load i64, i64* %itemsize.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 %3, i32 1, i1 false)
  %4 = load %struct._object*, %struct._object** %unpack_from.addr, align 8
  %5 = load %struct._object*, %struct._object** %mview.addr, align 8
  %call = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %4, %struct._object* %5, i8* null)
  store %struct._object* %call, %struct._object** %x, align 8
  %6 = load %struct._object*, %struct._object** %x, align 8
  %cmp1 = icmp eq %struct._object* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %x, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %cmp3 = icmp eq i64 %9, 1
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %x, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %12, %struct._object** %tmp, align 8
  %13 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %15 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt6, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt6, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %22 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %22, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %23 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %entry
  %24 = load i64*, i64** %shape.addr, align 8
  %arrayidx12 = getelementptr i64, i64* %24, i64 0
  %25 = load i64, i64* %arrayidx12, align 8
  %call13 = call %struct._object* @PyList_New(i64 %25)
  store %struct._object* %call13, %struct._object** %lst, align 8
  %26 = load %struct._object*, %struct._object** %lst, align 8
  %cmp14 = icmp eq %struct._object* %26, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %27 = load i64, i64* %i, align 8
  %28 = load i64*, i64** %shape.addr, align 8
  %arrayidx17 = getelementptr i64, i64* %28, i64 0
  %29 = load i64, i64* %arrayidx17, align 8
  %cmp18 = icmp slt i64 %27, %29
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i64*, i64** %suboffsets.addr, align 8
  %tobool = icmp ne i64* %30, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %31 = load i64*, i64** %suboffsets.addr, align 8
  %arrayidx20 = getelementptr i64, i64* %31, i64 0
  %32 = load i64, i64* %arrayidx20, align 8
  %cmp21 = icmp sge i64 %32, 0
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %33 = load i8*, i8** %ptr.addr, align 8
  %34 = bitcast i8* %33 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = load i64*, i64** %suboffsets.addr, align 8
  %arrayidx22 = getelementptr i64, i64* %36, i64 0
  %37 = load i64, i64* %arrayidx22, align 8
  %add.ptr = getelementptr i8, i8* %35, i64 %37
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %38 = load i8*, i8** %ptr.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %38, %cond.false ]
  store i8* %cond, i8** %nextptr, align 8
  %39 = load %struct._object*, %struct._object** %unpack_from.addr, align 8
  %40 = load i8*, i8** %nextptr, align 8
  %41 = load %struct._object*, %struct._object** %mview.addr, align 8
  %42 = load i8*, i8** %item.addr, align 8
  %43 = load i64*, i64** %shape.addr, align 8
  %add.ptr23 = getelementptr i64, i64* %43, i64 1
  %44 = load i64*, i64** %strides.addr, align 8
  %add.ptr24 = getelementptr i64, i64* %44, i64 1
  %45 = load i64*, i64** %suboffsets.addr, align 8
  %tobool25 = icmp ne i64* %45, null
  br i1 %tobool25, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %cond.end
  %46 = load i64*, i64** %suboffsets.addr, align 8
  %add.ptr27 = getelementptr i64, i64* %46, i64 1
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.end
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.26
  %cond30 = phi i64* [ %add.ptr27, %cond.true.26 ], [ null, %cond.false.28 ]
  %47 = load i64, i64* %ndim.addr, align 8
  %sub = sub i64 %47, 1
  %48 = load i64, i64* %itemsize.addr, align 8
  %call31 = call %struct._object* @unpack_rec(%struct._object* %39, i8* %40, %struct._object* %41, i8* %42, i64* %add.ptr23, i64* %add.ptr24, i64* %cond30, i64 %sub, i64 %48)
  store %struct._object* %call31, %struct._object** %x, align 8
  %49 = load %struct._object*, %struct._object** %x, align 8
  %cmp32 = icmp eq %struct._object* %49, null
  br i1 %cmp32, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %cond.end.29
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %50 = load %struct._object*, %struct._object** %lst, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp36, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %52, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.34
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.34
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %55(%struct._object* %56)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %cond.end.29
  %57 = load %struct._object*, %struct._object** %x, align 8
  %58 = load i64, i64* %i, align 8
  %59 = load %struct._object*, %struct._object** %lst, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyListObject*
  %ob_item47 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %60, i32 0, i32 1
  %61 = load %struct._object**, %struct._object*** %ob_item47, align 8
  %arrayidx48 = getelementptr %struct._object*, %struct._object** %61, i64 %58
  store %struct._object* %57, %struct._object** %arrayidx48, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %62 = load i64*, i64** %strides.addr, align 8
  %arrayidx49 = getelementptr i64, i64* %62, i64 0
  %63 = load i64, i64* %arrayidx49, align 8
  %64 = load i8*, i8** %ptr.addr, align 8
  %add.ptr50 = getelementptr i8, i8* %64, i64 %63
  store i8* %add.ptr50, i8** %ptr.addr, align 8
  %65 = load i64, i64* %i, align 8
  %inc51 = add i64 %65, 1
  store i64 %inc51, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load %struct._object*, %struct._object** %lst, align 8
  store %struct._object* %66, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end.45, %if.then.15, %if.end.10, %do.end, %if.then.2
  %67 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %67
}

declare %struct._object* @PyList_New(i64) #1

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @ndarray_push_base(%struct.NDArrayObject* %nd, %struct._object* %items, %struct._object* %shape, %struct._object* %strides, i64 %offset, %struct._object* %format, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %nd.addr = alloca %struct.NDArrayObject*, align 8
  %items.addr = alloca %struct._object*, align 8
  %shape.addr = alloca %struct._object*, align 8
  %strides.addr = alloca %struct._object*, align 8
  %offset.addr = alloca i64, align 8
  %format.addr = alloca %struct._object*, align 8
  %flags.addr = alloca i32, align 4
  %ndbuf = alloca %struct.ndbuf*, align 8
  store %struct.NDArrayObject* %nd, %struct.NDArrayObject** %nd.addr, align 8
  store %struct._object* %items, %struct._object** %items.addr, align 8
  store %struct._object* %shape, %struct._object** %shape.addr, align 8
  store %struct._object* %strides, %struct._object** %strides.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store %struct._object* %format, %struct._object** %format.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._object*, %struct._object** %items.addr, align 8
  %1 = load %struct._object*, %struct._object** %shape.addr, align 8
  %2 = load %struct._object*, %struct._object** %strides.addr, align 8
  %3 = load i64, i64* %offset.addr, align 8
  %4 = load %struct._object*, %struct._object** %format.addr, align 8
  %5 = load i32, i32* %flags.addr, align 4
  %call = call %struct.ndbuf* @init_ndbuf(%struct._object* %0, %struct._object* %1, %struct._object* %2, i64 %3, %struct._object* %4, i32 %5)
  store %struct.ndbuf* %call, %struct.ndbuf** %ndbuf, align 8
  %6 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %cmp = icmp eq %struct.ndbuf* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %8 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  call void @ndbuf_push(%struct.NDArrayObject* %7, %struct.ndbuf* %8)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal %struct.ndbuf* @init_ndbuf(%struct._object* %items, %struct._object* %shape, %struct._object* %strides, i64 %offset, %struct._object* %format, i32 %flags) #0 {
entry:
  %retval = alloca %struct.ndbuf*, align 8
  %items.addr = alloca %struct._object*, align 8
  %shape.addr = alloca %struct._object*, align 8
  %strides.addr = alloca %struct._object*, align 8
  %offset.addr = alloca i64, align 8
  %format.addr = alloca %struct._object*, align 8
  %flags.addr = alloca i32, align 4
  %ndbuf = alloca %struct.ndbuf*, align 8
  %ndim = alloca i64, align 8
  %nitems = alloca i64, align 8
  %itemsize = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp106 = alloca %struct._object*, align 8
  %_py_decref_tmp126 = alloca %struct._object*, align 8
  %_py_decref_tmp137 = alloca %struct._object*, align 8
  store %struct._object* %items, %struct._object** %items.addr, align 8
  store %struct._object* %shape, %struct._object** %shape.addr, align 8
  store %struct._object* %strides, %struct._object** %strides.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store %struct._object* %format, %struct._object** %format.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._object*, %struct._object** %shape.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %shape.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags2, align 8
  %and3 = and i64 %5, 67108864
  %cmp4 = icmp ne i64 %and3, 0
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.95, i32 0, i32 0))
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct._object*, %struct._object** %shape.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags6, align 8
  %and7 = and i64 %9, 33554432
  %cmp8 = icmp ne i64 %and7, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %shape.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %shape.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size9, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %15, %cond.false ]
  store i64 %cond, i64* %ndim, align 8
  %16 = load i64, i64* %ndim, align 8
  %cmp10 = icmp sgt i64 %16, 128
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %cond.end
  %17 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.96, i32 0, i32 0), i32 128)
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end.12:                                        ; preds = %cond.end
  %18 = load %struct._object*, %struct._object** %strides.addr, align 8
  %tobool = icmp ne %struct._object* %18, null
  br i1 %tobool, label %if.then.13, label %if.end.56

if.then.13:                                       ; preds = %if.end.12
  %19 = load %struct._object*, %struct._object** %strides.addr, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_flags15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 19
  %21 = load i64, i64* %tp_flags15, align 8
  %and16 = and i64 %21, 33554432
  %cmp17 = icmp ne i64 %and16, 0
  br i1 %cmp17, label %if.end.24, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %if.then.13
  %22 = load %struct._object*, %struct._object** %strides.addr, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_flags20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 19
  %24 = load i64, i64* %tp_flags20, align 8
  %and21 = and i64 %24, 67108864
  %cmp22 = icmp ne i64 %and21, 0
  br i1 %cmp22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.18
  %25 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.97, i32 0, i32 0))
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true.18, %if.then.13
  %26 = load %struct._object*, %struct._object** %strides.addr, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_flags26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 19
  %28 = load i64, i64* %tp_flags26, align 8
  %and27 = and i64 %28, 33554432
  %cmp28 = icmp ne i64 %and27, 0
  br i1 %cmp28, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %if.end.24
  %29 = load %struct._object*, %struct._object** %strides.addr, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyVarObject*
  %ob_size30 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %30, i32 0, i32 1
  %31 = load i64, i64* %ob_size30, align 8
  br label %cond.end.33

cond.false.31:                                    ; preds = %if.end.24
  %32 = load %struct._object*, %struct._object** %strides.addr, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyVarObject*
  %ob_size32 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %33, i32 0, i32 1
  %34 = load i64, i64* %ob_size32, align 8
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.31, %cond.true.29
  %cond34 = phi i64 [ %31, %cond.true.29 ], [ %34, %cond.false.31 ]
  %cmp35 = icmp eq i64 %cond34, 0
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %cond.end.33
  store %struct._object* null, %struct._object** %strides.addr, align 8
  br label %if.end.55

if.else:                                          ; preds = %cond.end.33
  %35 = load i32, i32* %flags.addr, align 4
  %and37 = and i32 %35, 4
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else
  %36 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.98, i32 0, i32 0))
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.else.40:                                       ; preds = %if.else
  %37 = load %struct._object*, %struct._object** %strides.addr, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_flags42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 19
  %39 = load i64, i64* %tp_flags42, align 8
  %and43 = and i64 %39, 33554432
  %cmp44 = icmp ne i64 %and43, 0
  br i1 %cmp44, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %if.else.40
  %40 = load %struct._object*, %struct._object** %strides.addr, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyVarObject*
  %ob_size46 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %41, i32 0, i32 1
  %42 = load i64, i64* %ob_size46, align 8
  br label %cond.end.49

cond.false.47:                                    ; preds = %if.else.40
  %43 = load %struct._object*, %struct._object** %strides.addr, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyVarObject*
  %ob_size48 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %44, i32 0, i32 1
  %45 = load i64, i64* %ob_size48, align 8
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.45
  %cond50 = phi i64 [ %42, %cond.true.45 ], [ %45, %cond.false.47 ]
  %46 = load i64, i64* %ndim, align 8
  %cmp51 = icmp ne i64 %cond50, %46
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %cond.end.49
  %47 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.99, i32 0, i32 0))
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end.53:                                        ; preds = %cond.end.49
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.36
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.12
  %48 = load %struct._object*, %struct._object** %format.addr, align 8
  %call57 = call i64 @get_itemsize(%struct._object* %48)
  store i64 %call57, i64* %itemsize, align 8
  %49 = load i64, i64* %itemsize, align 8
  %cmp58 = icmp sle i64 %49, 0
  br i1 %cmp58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.end.56
  %50 = load i64, i64* %itemsize, align 8
  %cmp60 = icmp eq i64 %50, 0
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.59
  %51 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.100, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.then.59
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end.63:                                        ; preds = %if.end.56
  %52 = load i64, i64* %ndim, align 8
  %cmp64 = icmp eq i64 %52, 0
  br i1 %cmp64, label %if.then.65, label %if.else.70

if.then.65:                                       ; preds = %if.end.63
  %53 = load %struct._object*, %struct._object** %items.addr, align 8
  %call66 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), %struct._object* %53)
  store %struct._object* %call66, %struct._object** %items.addr, align 8
  %54 = load %struct._object*, %struct._object** %items.addr, align 8
  %cmp67 = icmp eq %struct._object* %54, null
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.65
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end.69:                                        ; preds = %if.then.65
  br label %if.end.82

if.else.70:                                       ; preds = %if.end.63
  %55 = load %struct._object*, %struct._object** %items.addr, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_flags72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 19
  %57 = load i64, i64* %tp_flags72, align 8
  %and73 = and i64 %57, 33554432
  %cmp74 = icmp ne i64 %and73, 0
  br i1 %cmp74, label %if.end.81, label %land.lhs.true.75

land.lhs.true.75:                                 ; preds = %if.else.70
  %58 = load %struct._object*, %struct._object** %items.addr, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_flags77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 19
  %60 = load i64, i64* %tp_flags77, align 8
  %and78 = and i64 %60, 67108864
  %cmp79 = icmp ne i64 %and78, 0
  br i1 %cmp79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.75
  %61 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.102, i32 0, i32 0))
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end.81:                                        ; preds = %land.lhs.true.75, %if.else.70
  %62 = load %struct._object*, %struct._object** %items.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %63, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.69
  %64 = load %struct._object*, %struct._object** %items.addr, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_flags84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 19
  %66 = load i64, i64* %tp_flags84, align 8
  %and85 = and i64 %66, 33554432
  %cmp86 = icmp ne i64 %and85, 0
  br i1 %cmp86, label %cond.true.87, label %cond.false.89

cond.true.87:                                     ; preds = %if.end.82
  %67 = load %struct._object*, %struct._object** %items.addr, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyVarObject*
  %ob_size88 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %68, i32 0, i32 1
  %69 = load i64, i64* %ob_size88, align 8
  br label %cond.end.91

cond.false.89:                                    ; preds = %if.end.82
  %70 = load %struct._object*, %struct._object** %items.addr, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyVarObject*
  %ob_size90 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %71, i32 0, i32 1
  %72 = load i64, i64* %ob_size90, align 8
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.89, %cond.true.87
  %cond92 = phi i64 [ %69, %cond.true.87 ], [ %72, %cond.false.89 ]
  store i64 %cond92, i64* %nitems, align 8
  %73 = load i64, i64* %nitems, align 8
  %cmp93 = icmp eq i64 %73, 0
  br i1 %cmp93, label %if.then.94, label %if.end.101

if.then.94:                                       ; preds = %cond.end.91
  %74 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.103, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.94
  %75 = load %struct._object*, %struct._object** %items.addr, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt95, align 8
  %dec = add i64 %77, -1
  store i64 %dec, i64* %ob_refcnt95, align 8
  %cmp96 = icmp ne i64 %dec, 0
  br i1 %cmp96, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %do.body
  br label %if.end.100

if.else.98:                                       ; preds = %do.body
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type99 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type99, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %80(%struct._object* %81)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.98, %if.then.97
  br label %do.end

do.end:                                           ; preds = %if.end.100
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end.101:                                       ; preds = %cond.end.91
  %82 = load i64, i64* %nitems, align 8
  %83 = load i64, i64* %itemsize, align 8
  %84 = load i64, i64* %offset.addr, align 8
  %85 = load i32, i32* %flags.addr, align 4
  %call102 = call %struct.ndbuf* @ndbuf_new(i64 %82, i64 %83, i64 %84, i32 %85)
  store %struct.ndbuf* %call102, %struct.ndbuf** %ndbuf, align 8
  %86 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %cmp103 = icmp eq %struct.ndbuf* %86, null
  br i1 %cmp103, label %if.then.104, label %if.end.116

if.then.104:                                      ; preds = %if.end.101
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.104
  %87 = load %struct._object*, %struct._object** %items.addr, align 8
  store %struct._object* %87, %struct._object** %_py_decref_tmp106, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp106, align 8
  %ob_refcnt107 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0
  %89 = load i64, i64* %ob_refcnt107, align 8
  %dec108 = add i64 %89, -1
  store i64 %dec108, i64* %ob_refcnt107, align 8
  %cmp109 = icmp ne i64 %dec108, 0
  br i1 %cmp109, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %do.body.105
  br label %if.end.114

if.else.111:                                      ; preds = %do.body.105
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp106, align 8
  %ob_type112 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type112, align 8
  %tp_dealloc113 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc113, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp106, align 8
  call void %92(%struct._object* %93)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.110
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end.116:                                       ; preds = %if.end.101
  %94 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %95 = load %struct._object*, %struct._object** %items.addr, align 8
  %96 = load %struct._object*, %struct._object** %format.addr, align 8
  %97 = load i64, i64* %itemsize, align 8
  %call117 = call i32 @init_simple(%struct.ndbuf* %94, %struct._object* %95, %struct._object* %96, i64 %97)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.116
  br label %error

if.end.120:                                       ; preds = %if.end.116
  %98 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %99 = load %struct._object*, %struct._object** %shape.addr, align 8
  %100 = load %struct._object*, %struct._object** %strides.addr, align 8
  %101 = load i64, i64* %ndim, align 8
  %call121 = call i32 @init_structure(%struct.ndbuf* %98, %struct._object* %99, %struct._object* %100, i64 %101)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.120
  br label %error

if.end.124:                                       ; preds = %if.end.120
  br label %do.body.125

do.body.125:                                      ; preds = %if.end.124
  %102 = load %struct._object*, %struct._object** %items.addr, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp126, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_refcnt127 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt127, align 8
  %dec128 = add i64 %104, -1
  store i64 %dec128, i64* %ob_refcnt127, align 8
  %cmp129 = icmp ne i64 %dec128, 0
  br i1 %cmp129, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %do.body.125
  br label %if.end.134

if.else.131:                                      ; preds = %do.body.125
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  call void %107(%struct._object* %108)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  br label %do.end.135

do.end.135:                                       ; preds = %if.end.134
  %109 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  store %struct.ndbuf* %109, %struct.ndbuf** %retval
  br label %return

error:                                            ; preds = %if.then.123, %if.then.119
  br label %do.body.136

do.body.136:                                      ; preds = %error
  %110 = load %struct._object*, %struct._object** %items.addr, align 8
  store %struct._object* %110, %struct._object** %_py_decref_tmp137, align 8
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_refcnt138 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 0
  %112 = load i64, i64* %ob_refcnt138, align 8
  %dec139 = add i64 %112, -1
  store i64 %dec139, i64* %ob_refcnt138, align 8
  %cmp140 = icmp ne i64 %dec139, 0
  br i1 %cmp140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %do.body.136
  br label %if.end.145

if.else.142:                                      ; preds = %do.body.136
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_type143 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 1
  %114 = load %struct._typeobject*, %struct._typeobject** %ob_type143, align 8
  %tp_dealloc144 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %114, i32 0, i32 4
  %115 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc144, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  call void %115(%struct._object* %116)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  %117 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  call void @ndbuf_free(%struct.ndbuf* %117)
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

return:                                           ; preds = %do.end.146, %do.end.135, %do.end.115, %do.end, %if.then.80, %if.then.68, %if.end.62, %if.then.52, %if.then.39, %if.then.23, %if.then.11, %if.then
  %118 = load %struct.ndbuf*, %struct.ndbuf** %retval
  ret %struct.ndbuf* %118
}

; Function Attrs: nounwind uwtable
define internal void @ndbuf_push(%struct.NDArrayObject* %nd, %struct.ndbuf* %elt) #0 {
entry:
  %nd.addr = alloca %struct.NDArrayObject*, align 8
  %elt.addr = alloca %struct.ndbuf*, align 8
  store %struct.NDArrayObject* %nd, %struct.NDArrayObject** %nd.addr, align 8
  store %struct.ndbuf* %elt, %struct.ndbuf** %elt.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %2 = load %struct.ndbuf*, %struct.ndbuf** %elt.addr, align 8
  %next = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %2, i32 0, i32 0
  store %struct.ndbuf* %1, %struct.ndbuf** %next, align 8
  %3 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head1 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %3, i32 0, i32 3
  %4 = load %struct.ndbuf*, %struct.ndbuf** %head1, align 8
  %tobool = icmp ne %struct.ndbuf* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.ndbuf*, %struct.ndbuf** %elt.addr, align 8
  %6 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head2 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %6, i32 0, i32 3
  %7 = load %struct.ndbuf*, %struct.ndbuf** %head2, align 8
  %prev = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %7, i32 0, i32 1
  store %struct.ndbuf* %5, %struct.ndbuf** %prev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.ndbuf*, %struct.ndbuf** %elt.addr, align 8
  %9 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd.addr, align 8
  %head3 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %9, i32 0, i32 3
  store %struct.ndbuf* %8, %struct.ndbuf** %head3, align 8
  %10 = load %struct.ndbuf*, %struct.ndbuf** %elt.addr, align 8
  %prev4 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %10, i32 0, i32 1
  store %struct.ndbuf* null, %struct.ndbuf** %prev4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @get_itemsize(%struct._object* %format) #0 {
entry:
  %retval = alloca i64, align 8
  %format.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %itemsize = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %format, %struct._object** %format.addr, align 8
  %0 = load %struct._object*, %struct._object** @calcsize, align 8
  %1 = load %struct._object*, %struct._object** %format.addr, align 8
  %call = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %0, %struct._object* %1, i8* null)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %tmp, align 8
  %call2 = call i64 @PyLong_AsSsize_t(%struct._object* %3)
  store i64 %call2, i64* %itemsize, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %11 = load i64, i64* %itemsize, align 8
  store i64 %11, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load i64, i64* %retval
  ret i64 %12
}

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct.ndbuf* @ndbuf_new(i64 %nitems, i64 %itemsize, i64 %offset, i32 %flags) #0 {
entry:
  %retval = alloca %struct.ndbuf*, align 8
  %nitems.addr = alloca i64, align 8
  %itemsize.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %ndbuf = alloca %struct.ndbuf*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  %len = alloca i64, align 8
  store i64 %nitems, i64* %nitems.addr, align 8
  store i64 %itemsize, i64* %itemsize.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i64, i64* %nitems.addr, align 8
  %1 = load i64, i64* %itemsize.addr, align 8
  %mul = mul i64 %0, %1
  store i64 %mul, i64* %len, align 8
  %2 = load i64, i64* %offset.addr, align 8
  %3 = load i64, i64* %itemsize.addr, align 8
  %rem = srem i64 %2, %3
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.104, i32 0, i32 0))
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %offset.addr, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, i64* %offset.addr, align 8
  %7 = load i64, i64* %itemsize.addr, align 8
  %add = add i64 %6, %7
  %8 = load i64, i64* %len, align 8
  %cmp1 = icmp sgt i64 %add, %8
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.105, i32 0, i32 0))
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end.3:                                         ; preds = %lor.lhs.false
  %call = call i8* @PyMem_Malloc(i64 136)
  %10 = bitcast i8* %call to %struct.ndbuf*
  store %struct.ndbuf* %10, %struct.ndbuf** %ndbuf, align 8
  %11 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %cmp4 = icmp eq %struct.ndbuf* %11, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @PyErr_NoMemory()
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %12 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %next = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %12, i32 0, i32 0
  store %struct.ndbuf* null, %struct.ndbuf** %next, align 8
  %13 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %prev = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %13, i32 0, i32 1
  store %struct.ndbuf* null, %struct.ndbuf** %prev, align 8
  %14 = load i64, i64* %len, align 8
  %15 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %len8 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %15, i32 0, i32 2
  store i64 %14, i64* %len8, align 8
  %16 = load i64, i64* %offset.addr, align 8
  %17 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %offset9 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %17, i32 0, i32 3
  store i64 %16, i64* %offset9, align 8
  %18 = load i64, i64* %len, align 8
  %call10 = call i8* @PyMem_Malloc(i64 %18)
  %19 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %data = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %19, i32 0, i32 4
  store i8* %call10, i8** %data, align 8
  %20 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %data11 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %20, i32 0, i32 4
  %21 = load i8*, i8** %data11, align 8
  %cmp12 = icmp eq i8* %21, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.7
  %call14 = call %struct._object* @PyErr_NoMemory()
  %22 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %23 = bitcast %struct.ndbuf* %22 to i8*
  call void @PyMem_Free(i8* %23)
  store %struct.ndbuf* null, %struct.ndbuf** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.7
  %24 = load i32, i32* %flags.addr, align 4
  %25 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %flags16 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %25, i32 0, i32 5
  store i32 %24, i32* %flags16, align 4
  %26 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %exports = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %26, i32 0, i32 6
  store i64 0, i64* %exports, align 8
  %27 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %base17 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %27, i32 0, i32 7
  store %struct.bufferinfo* %base17, %struct.bufferinfo** %base, align 8
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %28, i32 0, i32 1
  store %struct._object* null, %struct._object** %obj, align 8
  %29 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %data18 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %29, i32 0, i32 4
  %30 = load i8*, i8** %data18, align 8
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 0
  store i8* %30, i8** %buf, align 8
  %32 = load i64, i64* %len, align 8
  %33 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %len19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %33, i32 0, i32 2
  store i64 %32, i64* %len19, align 8
  %34 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %itemsize20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %34, i32 0, i32 3
  store i64 1, i64* %itemsize20, align 8
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %35, i32 0, i32 4
  store i32 0, i32* %readonly, align 4
  %36 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %36, i32 0, i32 6
  store i8* null, i8** %format, align 8
  %37 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %37, i32 0, i32 5
  store i32 1, i32* %ndim, align 4
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 7
  store i64* null, i64** %shape, align 8
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %39, i32 0, i32 8
  store i64* null, i64** %strides, align 8
  %40 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %40, i32 0, i32 9
  store i64* null, i64** %suboffsets, align 8
  %41 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %42 = bitcast %struct.ndbuf* %41 to i8*
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %internal = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %43, i32 0, i32 10
  store i8* %42, i8** %internal, align 8
  %44 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  store %struct.ndbuf* %44, %struct.ndbuf** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13, %if.then.5, %if.then.2, %if.then
  %45 = load %struct.ndbuf*, %struct.ndbuf** %retval
  ret %struct.ndbuf* %45
}

; Function Attrs: nounwind uwtable
define internal i32 @init_simple(%struct.ndbuf* %ndbuf, %struct._object* %items, %struct._object* %format, i64 %itemsize) #0 {
entry:
  %retval = alloca i32, align 4
  %ndbuf.addr = alloca %struct.ndbuf*, align 8
  %items.addr = alloca %struct._object*, align 8
  %format.addr = alloca %struct._object*, align 8
  %itemsize.addr = alloca i64, align 8
  %mview = alloca %struct._object*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ndbuf* %ndbuf, %struct.ndbuf** %ndbuf.addr, align 8
  store %struct._object* %items, %struct._object** %items.addr, align 8
  store %struct._object* %format, %struct._object** %format.addr, align 8
  store i64 %itemsize, i64* %itemsize.addr, align 8
  %0 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %0, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %call = call %struct._object* @PyMemoryView_FromBuffer(%struct.bufferinfo* %1)
  store %struct._object* %call, %struct._object** %mview, align 8
  %2 = load %struct._object*, %struct._object** %mview, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %mview, align 8
  %4 = load %struct._object*, %struct._object** %items.addr, align 8
  %5 = load %struct._object*, %struct._object** %format.addr, align 8
  %6 = load i64, i64* %itemsize.addr, align 8
  %call2 = call i32 @pack_from_list(%struct._object* %3, %struct._object* %4, %struct._object* %5, i64 %6)
  store i32 %call2, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %mview, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %14 = load i32, i32* %ret, align 4
  %cmp6 = icmp slt i32 %14, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %do.end
  %15 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %flags = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %15, i32 0, i32 5
  %16 = load i32, i32* %flags, align 4
  %and = and i32 %16, 2
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 4
  store i32 %lnot.ext, i32* %readonly, align 4
  %18 = load i64, i64* %itemsize.addr, align 8
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %itemsize9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 3
  store i64 %18, i64* %itemsize9, align 8
  %20 = load %struct._object*, %struct._object** %format.addr, align 8
  %call10 = call i8* @get_format(%struct._object* %20)
  %21 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %format11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %21, i32 0, i32 6
  store i8* %call10, i8** %format11, align 8
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %format12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 6
  %23 = load i8*, i8** %format12, align 8
  %cmp13 = icmp eq i8* %23, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.7, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @init_structure(%struct.ndbuf* %ndbuf, %struct._object* %shape, %struct._object* %strides, i64 %ndim) #0 {
entry:
  %retval = alloca i32, align 4
  %ndbuf.addr = alloca %struct.ndbuf*, align 8
  %shape.addr = alloca %struct._object*, align 8
  %strides.addr = alloca %struct._object*, align 8
  %ndim.addr = alloca i64, align 8
  %base = alloca %struct.bufferinfo*, align 8
  store %struct.ndbuf* %ndbuf, %struct.ndbuf** %ndbuf.addr, align 8
  store %struct._object* %shape, %struct._object** %shape.addr, align 8
  store %struct._object* %strides, %struct._object** %strides.addr, align 8
  store i64 %ndim, i64* %ndim.addr, align 8
  %0 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %0, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %1 = load i64, i64* %ndim.addr, align 8
  %conv = trunc i64 %1 to i32
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 5
  store i32 %conv, i32* %ndim2, align 4
  %3 = load i64, i64* %ndim.addr, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %flags = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %4, i32 0, i32 5
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.106, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %flags5 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %7, i32 0, i32 5
  %8 = load i32, i32* %flags5, align 4
  %or = or i32 %8, 268
  store i32 %or, i32* %flags5, align 4
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %entry
  %9 = load %struct._object*, %struct._object** %shape.addr, align 8
  %10 = load i64, i64* %ndim.addr, align 8
  %call = call i64* @seq_as_ssize_array(%struct._object* %9, i64 %10, i32 1)
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape7 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 7
  store i64* %call, i64** %shape7, align 8
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 7
  %13 = load i64*, i64** %shape8, align 8
  %cmp9 = icmp eq i64* %13, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %14 = load %struct._object*, %struct._object** %strides.addr, align 8
  %tobool13 = icmp ne %struct._object* %14, null
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.12
  %15 = load %struct._object*, %struct._object** %strides.addr, align 8
  %16 = load i64, i64* %ndim.addr, align 8
  %call15 = call i64* @seq_as_ssize_array(%struct._object* %15, i64 %16, i32 0)
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 8
  store i64* %call15, i64** %strides16, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.end.12
  %18 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %19 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %flags17 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %19, i32 0, i32 5
  %20 = load i32, i32* %flags17, align 4
  %call18 = call i64* @strides_from_shape(%struct.ndbuf* %18, i32 %20)
  %21 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %21, i32 0, i32 8
  store i64* %call18, i64** %strides19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.14
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 8
  %23 = load i64*, i64** %strides21, align 8
  %cmp22 = icmp eq i64* %23, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.20
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 2
  %25 = load i64, i64* %len, align 8
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 3
  %27 = load i64, i64* %itemsize, align 8
  %28 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %offset = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %28, i32 0, i32 3
  %29 = load i64, i64* %offset, align 8
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 7
  %31 = load i64*, i64** %shape26, align 8
  %32 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %32, i32 0, i32 8
  %33 = load i64*, i64** %strides27, align 8
  %34 = load i64, i64* %ndim.addr, align 8
  %call28 = call i32 @verify_structure(i64 %25, i64 %27, i64 %29, i64* %31, i64* %33, i64 %34)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.25
  store i32 -1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.25
  %35 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %data = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %35, i32 0, i32 4
  %36 = load i8*, i8** %data, align 8
  %37 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %offset33 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %37, i32 0, i32 3
  %38 = load i64, i64* %offset33, align 8
  %add.ptr = getelementptr i8, i8* %36, i64 %38
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %39, i32 0, i32 0
  store i8* %add.ptr, i8** %buf, align 8
  %40 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  call void @init_len(%struct.bufferinfo* %40)
  %41 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %call34 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %41, i8 signext 67)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.32
  %42 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %flags37 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %42, i32 0, i32 5
  %43 = load i32, i32* %flags37, align 4
  %or38 = or i32 %43, 256
  store i32 %or38, i32* %flags37, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.32
  %44 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %call40 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %44, i8 signext 70)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.end.39
  %45 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %flags43 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %45, i32 0, i32 5
  %46 = load i32, i32* %flags43, align 4
  %or44 = or i32 %46, 4
  store i32 %or44, i32* %flags43, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.end.39
  %47 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %flags46 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %47, i32 0, i32 5
  %48 = load i32, i32* %flags46, align 4
  %and47 = and i32 %48, 16
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.45
  %49 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %call50 = call i32 @init_suboffsets(%struct.ndbuf* %49)
  store i32 %call50, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.end.45
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.49, %if.then.31, %if.then.24, %if.then.11, %if.end, %if.then.4
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare %struct._object* @PyMemoryView_FromBuffer(%struct.bufferinfo*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pack_from_list(%struct._object* %obj, %struct._object* %items, %struct._object* %format, i64 %itemsize) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %items.addr = alloca %struct._object*, align 8
  %format.addr = alloca %struct._object*, align 8
  %itemsize.addr = alloca i64, align 8
  %structobj = alloca %struct._object*, align 8
  %pack_into = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %offset = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %nitems = alloca i64, align 8
  %nmemb = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp151 = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp185 = alloca %struct._object*, align 8
  %_py_decref_tmp197 = alloca %struct._object*, align 8
  %_py_decref_tmp209 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %items, %struct._object** %items.addr, align 8
  store %struct._object* %format, %struct._object** %format.addr, align 8
  store i64 %itemsize, i64* %itemsize.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct._object*, %struct._object** @Struct, align 8
  %1 = load %struct._object*, %struct._object** %format.addr, align 8
  %call = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %0, %struct._object* %1, i8* null)
  store %struct._object* %call, %struct._object** %structobj, align 8
  %2 = load %struct._object*, %struct._object** %structobj, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %items.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 33554432
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %items.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %items.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %11, %cond.false ]
  store i64 %cond, i64* %nitems, align 8
  %12 = load %struct._object*, %struct._object** %structobj, align 8
  %call8 = call i64 @get_nmemb(%struct._object* %12)
  store i64 %call8, i64* %nmemb, align 8
  %13 = load %struct._object*, %struct._object** %structobj, align 8
  %call9 = call %struct._object* @PyObject_GetAttrString(%struct._object* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0))
  store %struct._object* %call9, %struct._object** %pack_into, align 8
  %14 = load %struct._object*, %struct._object** %pack_into, align 8
  %cmp10 = icmp eq %struct._object* %14, null
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %15 = load %struct._object*, %struct._object** %structobj, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %cond.end
  %22 = load i64, i64* %nmemb, align 8
  %add = add i64 2, %22
  %call18 = call %struct._object* @PyTuple_New(i64 %add)
  store %struct._object* %call18, %struct._object** %args, align 8
  %23 = load %struct._object*, %struct._object** %args, align 8
  %cmp19 = icmp eq %struct._object* %23, null
  br i1 %cmp19, label %if.then.20, label %if.end.45

if.then.20:                                       ; preds = %if.end.17
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %24 = load %struct._object*, %struct._object** %pack_into, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp23, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %26, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.21
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.21
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %29(%struct._object* %30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.32
  %31 = load %struct._object*, %struct._object** %structobj, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp35, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %33, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.33
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.33
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %36(%struct._object* %37)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  store i32 -1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.17
  store %struct._object* null, %struct._object** %offset, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.161, %if.end.45
  %38 = load i64, i64* %i, align 8
  %39 = load i64, i64* %nitems, align 8
  %cmp46 = icmp slt i64 %38, %39
  br i1 %cmp46, label %for.body, label %for.end.163

for.body:                                         ; preds = %for.cond
  %40 = load %struct._object*, %struct._object** %obj.addr, align 8
  %41 = load %struct._object*, %struct._object** %args, align 8
  %42 = bitcast %struct._object* %41 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %42, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %40, %struct._object** %arrayidx, align 8
  store i64 1, i64* %j, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc, %for.body
  %43 = load i64, i64* %j, align 8
  %44 = load i64, i64* %nmemb, align 8
  %add48 = add i64 2, %44
  %cmp49 = icmp slt i64 %43, %add48
  br i1 %cmp49, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.47
  %45 = load i64, i64* %j, align 8
  %46 = load %struct._object*, %struct._object** %args, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyTupleObject*
  %ob_item51 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %47, i32 0, i32 1
  %arrayidx52 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item51, i32 0, i64 %45
  store %struct._object* null, %struct._object** %arrayidx52, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.50
  %48 = load i64, i64* %j, align 8
  %inc = add i64 %48, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.47

for.end:                                          ; preds = %for.cond.47
  br label %do.body.53

do.body.53:                                       ; preds = %for.end
  %49 = load %struct._object*, %struct._object** %offset, align 8
  store %struct._object* %49, %struct._object** %_py_xdecref_tmp, align 8
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp55 = icmp ne %struct._object* %50, null
  br i1 %cmp55, label %if.then.56, label %if.end.69

if.then.56:                                       ; preds = %do.body.53
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp59, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %53, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.57
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.57
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  call void %56(%struct._object* %57)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %if.end.69

if.end.69:                                        ; preds = %do.end.68, %do.body.53
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  %58 = load i64, i64* %i, align 8
  %59 = load i64, i64* %itemsize.addr, align 8
  %mul = mul i64 %58, %59
  %call71 = call %struct._object* @PyLong_FromSsize_t(i64 %mul)
  store %struct._object* %call71, %struct._object** %offset, align 8
  %60 = load %struct._object*, %struct._object** %offset, align 8
  %cmp72 = icmp eq %struct._object* %60, null
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %do.end.70
  store i32 -1, i32* %ret, align 4
  br label %for.end.163

if.end.74:                                        ; preds = %do.end.70
  %61 = load %struct._object*, %struct._object** %offset, align 8
  %62 = load %struct._object*, %struct._object** %args, align 8
  %63 = bitcast %struct._object* %62 to %struct.PyTupleObject*
  %ob_item75 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %63, i32 0, i32 1
  %arrayidx76 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item75, i32 0, i64 1
  store %struct._object* %61, %struct._object** %arrayidx76, align 8
  %64 = load %struct._object*, %struct._object** %items.addr, align 8
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8
  %tp_flags78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 19
  %66 = load i64, i64* %tp_flags78, align 8
  %and79 = and i64 %66, 33554432
  %cmp80 = icmp ne i64 %and79, 0
  br i1 %cmp80, label %cond.true.81, label %cond.false.84

cond.true.81:                                     ; preds = %if.end.74
  %67 = load i64, i64* %i, align 8
  %68 = load %struct._object*, %struct._object** %items.addr, align 8
  %69 = bitcast %struct._object* %68 to %struct.PyListObject*
  %ob_item82 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %69, i32 0, i32 1
  %70 = load %struct._object**, %struct._object*** %ob_item82, align 8
  %arrayidx83 = getelementptr %struct._object*, %struct._object** %70, i64 %67
  %71 = load %struct._object*, %struct._object** %arrayidx83, align 8
  br label %cond.end.87

cond.false.84:                                    ; preds = %if.end.74
  %72 = load i64, i64* %i, align 8
  %73 = load %struct._object*, %struct._object** %items.addr, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyTupleObject*
  %ob_item85 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %74, i32 0, i32 1
  %arrayidx86 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item85, i32 0, i64 %72
  %75 = load %struct._object*, %struct._object** %arrayidx86, align 8
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.84, %cond.true.81
  %cond88 = phi %struct._object* [ %71, %cond.true.81 ], [ %75, %cond.false.84 ]
  store %struct._object* %cond88, %struct._object** %item, align 8
  %76 = load %struct._object*, %struct._object** %item, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_flags90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 19
  %78 = load i64, i64* %tp_flags90, align 8
  %and91 = and i64 %78, 134217728
  %cmp92 = icmp ne i64 %and91, 0
  br i1 %cmp92, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.87
  %79 = load %struct._object*, %struct._object** %item, align 8
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8
  %tp_flags94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 19
  %81 = load i64, i64* %tp_flags94, align 8
  %and95 = and i64 %81, 16777216
  %cmp96 = icmp ne i64 %and95, 0
  br i1 %cmp96, label %land.lhs.true, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false
  %82 = load %struct._object*, %struct._object** %item, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %cmp99 = icmp eq %struct._typeobject* %83, @PyFloat_Type
  br i1 %cmp99, label %land.lhs.true, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %lor.lhs.false.97
  %84 = load %struct._object*, %struct._object** %item, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %call102 = call i32 @PyType_IsSubtype(%struct._typeobject* %85, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call102, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.107

land.lhs.true:                                    ; preds = %lor.lhs.false.100, %lor.lhs.false.97, %lor.lhs.false, %cond.end.87
  %86 = load i64, i64* %nmemb, align 8
  %cmp103 = icmp eq i64 %86, 1
  br i1 %cmp103, label %if.then.104, label %if.else.107

if.then.104:                                      ; preds = %land.lhs.true
  %87 = load %struct._object*, %struct._object** %item, align 8
  %88 = load %struct._object*, %struct._object** %args, align 8
  %89 = bitcast %struct._object* %88 to %struct.PyTupleObject*
  %ob_item105 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %89, i32 0, i32 1
  %arrayidx106 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item105, i32 0, i64 2
  store %struct._object* %87, %struct._object** %arrayidx106, align 8
  br label %if.end.144

if.else.107:                                      ; preds = %land.lhs.true, %lor.lhs.false.100
  %90 = load %struct._object*, %struct._object** %item, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_flags109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 19
  %92 = load i64, i64* %tp_flags109, align 8
  %and110 = and i64 %92, 33554432
  %cmp111 = icmp ne i64 %and110, 0
  br i1 %cmp111, label %land.lhs.true.117, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %if.else.107
  %93 = load %struct._object*, %struct._object** %item, align 8
  %ob_type113 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type113, align 8
  %tp_flags114 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 19
  %95 = load i64, i64* %tp_flags114, align 8
  %and115 = and i64 %95, 67108864
  %cmp116 = icmp ne i64 %and115, 0
  br i1 %cmp116, label %land.lhs.true.117, label %if.else.142

land.lhs.true.117:                                ; preds = %lor.lhs.false.112, %if.else.107
  %96 = load %struct._object*, %struct._object** %item, align 8
  %call118 = call i64 @PySequence_Size(%struct._object* %96)
  %97 = load i64, i64* %nmemb, align 8
  %cmp119 = icmp eq i64 %call118, %97
  br i1 %cmp119, label %if.then.120, label %if.else.142

if.then.120:                                      ; preds = %land.lhs.true.117
  store i64 0, i64* %j, align 8
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.139, %if.then.120
  %98 = load i64, i64* %j, align 8
  %99 = load i64, i64* %nmemb, align 8
  %cmp122 = icmp slt i64 %98, %99
  br i1 %cmp122, label %for.body.123, label %for.end.141

for.body.123:                                     ; preds = %for.cond.121
  %100 = load %struct._object*, %struct._object** %item, align 8
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8
  %tp_flags125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 19
  %102 = load i64, i64* %tp_flags125, align 8
  %and126 = and i64 %102, 33554432
  %cmp127 = icmp ne i64 %and126, 0
  br i1 %cmp127, label %cond.true.128, label %cond.false.131

cond.true.128:                                    ; preds = %for.body.123
  %103 = load i64, i64* %j, align 8
  %104 = load %struct._object*, %struct._object** %item, align 8
  %105 = bitcast %struct._object* %104 to %struct.PyListObject*
  %ob_item129 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %105, i32 0, i32 1
  %106 = load %struct._object**, %struct._object*** %ob_item129, align 8
  %arrayidx130 = getelementptr %struct._object*, %struct._object** %106, i64 %103
  %107 = load %struct._object*, %struct._object** %arrayidx130, align 8
  br label %cond.end.134

cond.false.131:                                   ; preds = %for.body.123
  %108 = load i64, i64* %j, align 8
  %109 = load %struct._object*, %struct._object** %item, align 8
  %110 = bitcast %struct._object* %109 to %struct.PyTupleObject*
  %ob_item132 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %110, i32 0, i32 1
  %arrayidx133 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item132, i32 0, i64 %108
  %111 = load %struct._object*, %struct._object** %arrayidx133, align 8
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.131, %cond.true.128
  %cond135 = phi %struct._object* [ %107, %cond.true.128 ], [ %111, %cond.false.131 ]
  store %struct._object* %cond135, %struct._object** %tmp, align 8
  %112 = load %struct._object*, %struct._object** %tmp, align 8
  %113 = load i64, i64* %j, align 8
  %add136 = add i64 2, %113
  %114 = load %struct._object*, %struct._object** %args, align 8
  %115 = bitcast %struct._object* %114 to %struct.PyTupleObject*
  %ob_item137 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %115, i32 0, i32 1
  %arrayidx138 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item137, i32 0, i64 %add136
  store %struct._object* %112, %struct._object** %arrayidx138, align 8
  br label %for.inc.139

for.inc.139:                                      ; preds = %cond.end.134
  %116 = load i64, i64* %j, align 8
  %inc140 = add i64 %116, 1
  store i64 %inc140, i64* %j, align 8
  br label %for.cond.121

for.end.141:                                      ; preds = %for.cond.121
  br label %if.end.143

if.else.142:                                      ; preds = %land.lhs.true.117, %lor.lhs.false.112
  %117 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %117, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.66, i32 0, i32 0))
  store i32 -1, i32* %ret, align 4
  br label %for.end.163

if.end.143:                                       ; preds = %for.end.141
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.104
  %118 = load %struct._object*, %struct._object** %pack_into, align 8
  %119 = load %struct._object*, %struct._object** %args, align 8
  %call145 = call %struct._object* @PyObject_CallObject(%struct._object* %118, %struct._object* %119)
  store %struct._object* %call145, %struct._object** %tmp, align 8
  %120 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp146 = icmp eq %struct._object* %120, null
  br i1 %cmp146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.144
  store i32 -1, i32* %ret, align 4
  br label %for.end.163

if.end.148:                                       ; preds = %if.end.144
  br label %do.body.149

do.body.149:                                      ; preds = %if.end.148
  %121 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %121, %struct._object** %_py_decref_tmp151, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  %ob_refcnt152 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 0
  %123 = load i64, i64* %ob_refcnt152, align 8
  %dec153 = add i64 %123, -1
  store i64 %dec153, i64* %ob_refcnt152, align 8
  %cmp154 = icmp ne i64 %dec153, 0
  br i1 %cmp154, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %do.body.149
  br label %if.end.159

if.else.156:                                      ; preds = %do.body.149
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  %ob_type157 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 1
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type157, align 8
  %tp_dealloc158 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i32 0, i32 4
  %126 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc158, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  call void %126(%struct._object* %127)
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.156, %if.then.155
  br label %do.end.160

do.end.160:                                       ; preds = %if.end.159
  br label %for.inc.161

for.inc.161:                                      ; preds = %do.end.160
  %128 = load i64, i64* %i, align 8
  %inc162 = add i64 %128, 1
  store i64 %inc162, i64* %i, align 8
  br label %for.cond

for.end.163:                                      ; preds = %if.then.147, %if.else.142, %if.then.73, %for.cond
  %129 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_refcnt164 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 0
  %130 = load i64, i64* %ob_refcnt164, align 8
  %inc165 = add i64 %130, 1
  store i64 %inc165, i64* %ob_refcnt164, align 8
  store i64 2, i64* %i, align 8
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.180, %for.end.163
  %131 = load i64, i64* %i, align 8
  %132 = load i64, i64* %nmemb, align 8
  %add167 = add i64 2, %132
  %cmp168 = icmp slt i64 %131, %add167
  br i1 %cmp168, label %for.body.169, label %for.end.182

for.body.169:                                     ; preds = %for.cond.166
  %133 = load i64, i64* %i, align 8
  %134 = load %struct._object*, %struct._object** %args, align 8
  %135 = bitcast %struct._object* %134 to %struct.PyTupleObject*
  %ob_item170 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %135, i32 0, i32 1
  %arrayidx171 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item170, i32 0, i64 %133
  %136 = load %struct._object*, %struct._object** %arrayidx171, align 8
  store %struct._object* %136, %struct._object** %tmp, align 8
  br label %do.body.172

do.body.172:                                      ; preds = %for.body.169
  %137 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %137, %struct._object** %_py_xincref_tmp, align 8
  %138 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp174 = icmp ne %struct._object* %138, null
  br i1 %cmp174, label %if.then.175, label %if.end.178

if.then.175:                                      ; preds = %do.body.172
  %139 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt176 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 0
  %140 = load i64, i64* %ob_refcnt176, align 8
  %inc177 = add i64 %140, 1
  store i64 %inc177, i64* %ob_refcnt176, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.175, %do.body.172
  br label %do.end.179

do.end.179:                                       ; preds = %if.end.178
  br label %for.inc.180

for.inc.180:                                      ; preds = %do.end.179
  %141 = load i64, i64* %i, align 8
  %inc181 = add i64 %141, 1
  store i64 %inc181, i64* %i, align 8
  br label %for.cond.166

for.end.182:                                      ; preds = %for.cond.166
  br label %do.body.183

do.body.183:                                      ; preds = %for.end.182
  %142 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %142, %struct._object** %_py_decref_tmp185, align 8
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8
  %ob_refcnt186 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 0
  %144 = load i64, i64* %ob_refcnt186, align 8
  %dec187 = add i64 %144, -1
  store i64 %dec187, i64* %ob_refcnt186, align 8
  %cmp188 = icmp ne i64 %dec187, 0
  br i1 %cmp188, label %if.then.189, label %if.else.190

if.then.189:                                      ; preds = %do.body.183
  br label %if.end.193

if.else.190:                                      ; preds = %do.body.183
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8
  %ob_type191 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 1
  %146 = load %struct._typeobject*, %struct._typeobject** %ob_type191, align 8
  %tp_dealloc192 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %146, i32 0, i32 4
  %147 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc192, align 8
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8
  call void %147(%struct._object* %148)
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.190, %if.then.189
  br label %do.end.194

do.end.194:                                       ; preds = %if.end.193
  br label %do.body.195

do.body.195:                                      ; preds = %do.end.194
  %149 = load %struct._object*, %struct._object** %pack_into, align 8
  store %struct._object* %149, %struct._object** %_py_decref_tmp197, align 8
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8
  %ob_refcnt198 = getelementptr inbounds %struct._object, %struct._object* %150, i32 0, i32 0
  %151 = load i64, i64* %ob_refcnt198, align 8
  %dec199 = add i64 %151, -1
  store i64 %dec199, i64* %ob_refcnt198, align 8
  %cmp200 = icmp ne i64 %dec199, 0
  br i1 %cmp200, label %if.then.201, label %if.else.202

if.then.201:                                      ; preds = %do.body.195
  br label %if.end.205

if.else.202:                                      ; preds = %do.body.195
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8
  %ob_type203 = getelementptr inbounds %struct._object, %struct._object* %152, i32 0, i32 1
  %153 = load %struct._typeobject*, %struct._typeobject** %ob_type203, align 8
  %tp_dealloc204 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %153, i32 0, i32 4
  %154 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc204, align 8
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8
  call void %154(%struct._object* %155)
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.202, %if.then.201
  br label %do.end.206

do.end.206:                                       ; preds = %if.end.205
  br label %do.body.207

do.body.207:                                      ; preds = %do.end.206
  %156 = load %struct._object*, %struct._object** %structobj, align 8
  store %struct._object* %156, %struct._object** %_py_decref_tmp209, align 8
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  %ob_refcnt210 = getelementptr inbounds %struct._object, %struct._object* %157, i32 0, i32 0
  %158 = load i64, i64* %ob_refcnt210, align 8
  %dec211 = add i64 %158, -1
  store i64 %dec211, i64* %ob_refcnt210, align 8
  %cmp212 = icmp ne i64 %dec211, 0
  br i1 %cmp212, label %if.then.213, label %if.else.214

if.then.213:                                      ; preds = %do.body.207
  br label %if.end.217

if.else.214:                                      ; preds = %do.body.207
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  %ob_type215 = getelementptr inbounds %struct._object, %struct._object* %159, i32 0, i32 1
  %160 = load %struct._typeobject*, %struct._typeobject** %ob_type215, align 8
  %tp_dealloc216 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %160, i32 0, i32 4
  %161 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc216, align 8
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  call void %161(%struct._object* %162)
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.214, %if.then.213
  br label %do.end.218

do.end.218:                                       ; preds = %if.end.217
  %163 = load i32, i32* %ret, align 4
  store i32 %163, i32* %retval
  br label %return

return:                                           ; preds = %do.end.218, %do.end.44, %do.end, %if.then
  %164 = load i32, i32* %retval
  ret i32 %164
}

; Function Attrs: nounwind uwtable
define internal i8* @get_format(%struct._object* %format) #0 {
entry:
  %retval = alloca i8*, align 8
  %format.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %fmt = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct._object* %format, %struct._object** %format.addr, align 8
  %0 = load %struct._object*, %struct._object** %format.addr, align 8
  %call = call %struct._object* @PyUnicode_AsASCIIString(%struct._object* %0)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %1 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %add = add i64 %4, 1
  %call2 = call i8* @PyMem_Malloc(i64 %add)
  store i8* %call2, i8** %fmt, align 8
  %5 = load i8*, i8** %fmt, align 8
  %cmp3 = icmp eq i8* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %call5 = call %struct._object* @PyErr_NoMemory()
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %6 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %13 = load i8*, i8** %fmt, align 8
  %14 = load %struct._object*, %struct._object** %tmp, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %15, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call11 = call i8* @strcpy(i8* %13, i8* %arraydecay) #3
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.10
  %16 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp14, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %18, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.12
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.12
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %21(%struct._object* %22)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %23 = load i8*, i8** %fmt, align 8
  store i8* %23, i8** %retval
  br label %return

return:                                           ; preds = %do.end.23, %do.end, %if.then
  %24 = load i8*, i8** %retval
  ret i8* %24
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i64* @seq_as_ssize_array(%struct._object* %seq, i64 %len, i32 %is_shape) #0 {
entry:
  %retval = alloca i64*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %len.addr = alloca i64, align 8
  %is_shape.addr = alloca i32, align 4
  %dest = alloca i64*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %tmp = alloca %struct._object*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %is_shape, i32* %is_shape.addr, align 4
  %0 = load i64, i64* %len.addr, align 8
  %mul = mul i64 %0, 8
  %call = call i8* @PyMem_Malloc(i64 %mul)
  %1 = bitcast i8* %call to i64*
  store i64* %1, i64** %dest, align 8
  %2 = load i64*, i64** %dest, align 8
  %cmp = icmp eq i64* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  store i64* null, i64** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %len.addr, align 8
  %cmp2 = icmp slt i64 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 33554432
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %9 = load %struct._object*, %struct._object** %seq.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %10, i32 0, i32 1
  %11 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %11, i64 %8
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %14 = load %struct._object*, %struct._object** %seq.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item4 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx5 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item4, i32 0, i64 %13
  %16 = load %struct._object*, %struct._object** %arrayidx5, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %12, %cond.true ], [ %16, %cond.false ]
  store %struct._object* %cond, %struct._object** %tmp, align 8
  %17 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_flags7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 19
  %19 = load i64, i64* %tp_flags7, align 8
  %and8 = and i64 %19, 16777216
  %cmp9 = icmp ne i64 %and8, 0
  br i1 %cmp9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %cond.end
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %21 = load i32, i32* %is_shape.addr, align 4
  %tobool = icmp ne i32 %21, 0
  %cond11 = select i1 %tobool, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0)
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.107, i32 0, i32 0), i8* %cond11)
  %22 = load i64*, i64** %dest, align 8
  %23 = bitcast i64* %22 to i8*
  call void @PyMem_Free(i8* %23)
  store i64* null, i64** %retval
  br label %return

if.end.13:                                        ; preds = %cond.end
  %24 = load %struct._object*, %struct._object** %tmp, align 8
  %call14 = call i64 @PyLong_AsSsize_t(%struct._object* %24)
  store i64 %call14, i64* %x, align 8
  %call15 = call %struct._object* @PyErr_Occurred()
  %tobool16 = icmp ne %struct._object* %call15, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  %25 = load i64*, i64** %dest, align 8
  %26 = bitcast i64* %25 to i8*
  call void @PyMem_Free(i8* %26)
  store i64* null, i64** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.13
  %27 = load i32, i32* %is_shape.addr, align 4
  %tobool19 = icmp ne i32 %27, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.18
  %28 = load i64, i64* %x, align 8
  %cmp20 = icmp slt i64 %28, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true
  %29 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call22 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.108, i32 0, i32 0))
  %30 = load i64*, i64** %dest, align 8
  %31 = bitcast i64* %30 to i8*
  call void @PyMem_Free(i8* %31)
  store i64* null, i64** %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true, %if.end.18
  %32 = load i64, i64* %x, align 8
  %33 = load i64, i64* %i, align 8
  %34 = load i64*, i64** %dest, align 8
  %arrayidx24 = getelementptr i64, i64* %34, i64 %33
  store i64 %32, i64* %arrayidx24, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %35 = load i64, i64* %i, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i64*, i64** %dest, align 8
  store i64* %36, i64** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.21, %if.then.17, %if.then.10, %if.then
  %37 = load i64*, i64** %retval
  ret i64* %37
}

; Function Attrs: nounwind uwtable
define internal i32 @verify_structure(i64 %len, i64 %itemsize, i64 %offset, i64* %shape, i64* %strides, i64 %ndim) #0 {
entry:
  %retval = alloca i32, align 4
  %len.addr = alloca i64, align 8
  %itemsize.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %shape.addr = alloca i64*, align 8
  %strides.addr = alloca i64*, align 8
  %ndim.addr = alloca i64, align 8
  %imin = alloca i64, align 8
  %imax = alloca i64, align 8
  %n = alloca i64, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %itemsize, i64* %itemsize.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64* %shape, i64** %shape.addr, align 8
  store i64* %strides, i64** %strides.addr, align 8
  store i64 %ndim, i64* %ndim.addr, align 8
  %0 = load i64, i64* %ndim.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %offset.addr, align 8
  %cmp1 = icmp slt i64 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i64, i64* %offset.addr, align 8
  %3 = load i64, i64* %itemsize.addr, align 8
  %add = add i64 %2, %3
  %4 = load i64, i64* %len.addr, align 8
  %cmp2 = icmp sgt i64 %add, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %invalid_combination

if.end:                                           ; preds = %lor.lhs.false, %entry
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %n, align 8
  %6 = load i64, i64* %ndim.addr, align 8
  %cmp3 = icmp slt i64 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %n, align 8
  %8 = load i64*, i64** %strides.addr, align 8
  %arrayidx = getelementptr i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx, align 8
  %10 = load i64, i64* %itemsize.addr, align 8
  %rem = srem i64 %9, %10
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.109, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %12 = load i64, i64* %n, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %n, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.13, %for.end
  %13 = load i64, i64* %n, align 8
  %14 = load i64, i64* %ndim.addr, align 8
  %cmp7 = icmp slt i64 %13, %14
  br i1 %cmp7, label %for.body.8, label %for.end.15

for.body.8:                                       ; preds = %for.cond.6
  %15 = load i64, i64* %n, align 8
  %16 = load i64*, i64** %shape.addr, align 8
  %arrayidx9 = getelementptr i64, i64* %16, i64 %15
  %17 = load i64, i64* %arrayidx9, align 8
  %cmp10 = icmp eq i64 %17, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body.8
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %for.body.8
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end.12
  %18 = load i64, i64* %n, align 8
  %inc14 = add i64 %18, 1
  store i64 %inc14, i64* %n, align 8
  br label %for.cond.6

for.end.15:                                       ; preds = %for.cond.6
  store i64 0, i64* %imax, align 8
  store i64 0, i64* %imin, align 8
  store i64 0, i64* %n, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.31, %for.end.15
  %19 = load i64, i64* %n, align 8
  %20 = load i64, i64* %ndim.addr, align 8
  %cmp17 = icmp slt i64 %19, %20
  br i1 %cmp17, label %for.body.18, label %for.end.33

for.body.18:                                      ; preds = %for.cond.16
  %21 = load i64, i64* %n, align 8
  %22 = load i64*, i64** %strides.addr, align 8
  %arrayidx19 = getelementptr i64, i64* %22, i64 %21
  %23 = load i64, i64* %arrayidx19, align 8
  %cmp20 = icmp sle i64 %23, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.body.18
  %24 = load i64, i64* %n, align 8
  %25 = load i64*, i64** %shape.addr, align 8
  %arrayidx22 = getelementptr i64, i64* %25, i64 %24
  %26 = load i64, i64* %arrayidx22, align 8
  %sub = sub i64 %26, 1
  %27 = load i64, i64* %n, align 8
  %28 = load i64*, i64** %strides.addr, align 8
  %arrayidx23 = getelementptr i64, i64* %28, i64 %27
  %29 = load i64, i64* %arrayidx23, align 8
  %mul = mul i64 %sub, %29
  %30 = load i64, i64* %imin, align 8
  %add24 = add i64 %30, %mul
  store i64 %add24, i64* %imin, align 8
  br label %if.end.30

if.else:                                          ; preds = %for.body.18
  %31 = load i64, i64* %n, align 8
  %32 = load i64*, i64** %shape.addr, align 8
  %arrayidx25 = getelementptr i64, i64* %32, i64 %31
  %33 = load i64, i64* %arrayidx25, align 8
  %sub26 = sub i64 %33, 1
  %34 = load i64, i64* %n, align 8
  %35 = load i64*, i64** %strides.addr, align 8
  %arrayidx27 = getelementptr i64, i64* %35, i64 %34
  %36 = load i64, i64* %arrayidx27, align 8
  %mul28 = mul i64 %sub26, %36
  %37 = load i64, i64* %imax, align 8
  %add29 = add i64 %37, %mul28
  store i64 %add29, i64* %imax, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.21
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %38 = load i64, i64* %n, align 8
  %inc32 = add i64 %38, 1
  store i64 %inc32, i64* %n, align 8
  br label %for.cond.16

for.end.33:                                       ; preds = %for.cond.16
  %39 = load i64, i64* %imin, align 8
  %40 = load i64, i64* %offset.addr, align 8
  %add34 = add i64 %39, %40
  %cmp35 = icmp slt i64 %add34, 0
  br i1 %cmp35, label %if.then.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %for.end.33
  %41 = load i64, i64* %imax, align 8
  %42 = load i64, i64* %offset.addr, align 8
  %add37 = add i64 %41, %42
  %43 = load i64, i64* %itemsize.addr, align 8
  %add38 = add i64 %add37, %43
  %44 = load i64, i64* %len.addr, align 8
  %cmp39 = icmp sgt i64 %add38, %44
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.36, %for.end.33
  br label %invalid_combination

if.end.41:                                        ; preds = %lor.lhs.false.36
  store i32 0, i32* %retval
  br label %return

invalid_combination:                              ; preds = %if.then.40, %if.then
  %45 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.110, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %invalid_combination, %if.end.41, %if.then.11, %if.then.4
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @init_suboffsets(%struct.ndbuf* %ndbuf) #0 {
entry:
  %retval = alloca i32, align 4
  %ndbuf.addr = alloca %struct.ndbuf*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  %start = alloca i64, align 8
  %step = alloca i64, align 8
  %imin = alloca i64, align 8
  %suboffset0 = alloca i64, align 8
  %addsize = alloca i64, align 8
  %n = alloca i64, align 8
  %data = alloca i8*, align 8
  %x = alloca i64, align 8
  store %struct.ndbuf* %ndbuf, %struct.ndbuf** %ndbuf.addr, align 8
  %0 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %0, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %1, i32 0, i32 7
  %2 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx, align 8
  %mul = mul i64 %3, 8
  store i64 %mul, i64* %addsize, align 8
  %4 = load i64, i64* %addsize, align 8
  %add = add i64 %4, 7
  %div = sdiv i64 %add, 8
  %mul2 = mul i64 8, %div
  store i64 %mul2, i64* %addsize, align 8
  %5 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %len = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %5, i32 0, i32 2
  %6 = load i64, i64* %len, align 8
  %7 = load i64, i64* %addsize, align 8
  %add3 = add i64 %6, %7
  %call = call i8* @PyMem_Malloc(i64 %add3)
  store i8* %call, i8** %data, align 8
  %8 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %data, align 8
  %10 = load i64, i64* %addsize, align 8
  %add.ptr = getelementptr i8, i8* %9, i64 %10
  %11 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %data5 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %11, i32 0, i32 4
  %12 = load i8*, i8** %data5, align 8
  %13 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %len6 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %13, i32 0, i32 2
  %14 = load i64, i64* %len6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %12, i64 %14, i32 1, i1 false)
  %15 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %data7 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %15, i32 0, i32 4
  %16 = load i8*, i8** %data7, align 8
  call void @PyMem_Free(i8* %16)
  %17 = load i8*, i8** %data, align 8
  %18 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %data8 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %18, i32 0, i32 4
  store i8* %17, i8** %data8, align 8
  %19 = load i64, i64* %addsize, align 8
  %20 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %len9 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %20, i32 0, i32 2
  %21 = load i64, i64* %len9, align 8
  %add10 = add i64 %21, %19
  store i64 %add10, i64* %len9, align 8
  %22 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %data11 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %22, i32 0, i32 4
  %23 = load i8*, i8** %data11, align 8
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 0
  store i8* %23, i8** %buf, align 8
  store i64 0, i64* %suboffset0, align 8
  store i64 0, i64* %imin, align 8
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i64, i64* %n, align 8
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 5
  %27 = load i32, i32* %ndim, align 4
  %conv = sext i32 %27 to i64
  %cmp12 = icmp slt i64 %25, %conv
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i64, i64* %n, align 8
  %29 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape14 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %29, i32 0, i32 7
  %30 = load i64*, i64** %shape14, align 8
  %arrayidx15 = getelementptr i64, i64* %30, i64 %28
  %31 = load i64, i64* %arrayidx15, align 8
  %cmp16 = icmp eq i64 %31, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  br label %for.end

if.end.19:                                        ; preds = %for.body
  %32 = load i64, i64* %n, align 8
  %33 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %33, i32 0, i32 8
  %34 = load i64*, i64** %strides, align 8
  %arrayidx20 = getelementptr i64, i64* %34, i64 %32
  %35 = load i64, i64* %arrayidx20, align 8
  %cmp21 = icmp sle i64 %35, 0
  br i1 %cmp21, label %if.then.23, label %if.end.34

if.then.23:                                       ; preds = %if.end.19
  %36 = load i64, i64* %n, align 8
  %37 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape24 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %37, i32 0, i32 7
  %38 = load i64*, i64** %shape24, align 8
  %arrayidx25 = getelementptr i64, i64* %38, i64 %36
  %39 = load i64, i64* %arrayidx25, align 8
  %sub = sub i64 %39, 1
  %40 = load i64, i64* %n, align 8
  %41 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %41, i32 0, i32 8
  %42 = load i64*, i64** %strides26, align 8
  %arrayidx27 = getelementptr i64, i64* %42, i64 %40
  %43 = load i64, i64* %arrayidx27, align 8
  %mul28 = mul i64 %sub, %43
  store i64 %mul28, i64* %x, align 8
  %44 = load i64, i64* %x, align 8
  %45 = load i64, i64* %imin, align 8
  %add29 = add i64 %45, %44
  store i64 %add29, i64* %imin, align 8
  %46 = load i64, i64* %n, align 8
  %cmp30 = icmp sge i64 %46, 1
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.23
  %47 = load i64, i64* %x, align 8
  %sub32 = sub i64 0, %47
  br label %cond.end

cond.false:                                       ; preds = %if.then.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub32, %cond.true ], [ 0, %cond.false ]
  %48 = load i64, i64* %suboffset0, align 8
  %add33 = add i64 %48, %cond
  store i64 %add33, i64* %suboffset0, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end, %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %49 = load i64, i64* %n, align 8
  %inc = add i64 %49, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.18, %for.cond
  %50 = load i64, i64* %addsize, align 8
  %51 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %offset = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %51, i32 0, i32 3
  %52 = load i64, i64* %offset, align 8
  %add35 = add i64 %50, %52
  %53 = load i64, i64* %imin, align 8
  %add36 = add i64 %add35, %53
  store i64 %add36, i64* %start, align 8
  %54 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides37 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %54, i32 0, i32 8
  %55 = load i64*, i64** %strides37, align 8
  %arrayidx38 = getelementptr i64, i64* %55, i64 0
  %56 = load i64, i64* %arrayidx38, align 8
  %cmp39 = icmp slt i64 %56, 0
  br i1 %cmp39, label %cond.true.41, label %cond.false.45

cond.true.41:                                     ; preds = %for.end
  %57 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides42 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %57, i32 0, i32 8
  %58 = load i64*, i64** %strides42, align 8
  %arrayidx43 = getelementptr i64, i64* %58, i64 0
  %59 = load i64, i64* %arrayidx43, align 8
  %sub44 = sub i64 0, %59
  br label %cond.end.48

cond.false.45:                                    ; preds = %for.end
  %60 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides46 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %60, i32 0, i32 8
  %61 = load i64*, i64** %strides46, align 8
  %arrayidx47 = getelementptr i64, i64* %61, i64 0
  %62 = load i64, i64* %arrayidx47, align 8
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.41
  %cond49 = phi i64 [ %sub44, %cond.true.41 ], [ %62, %cond.false.45 ]
  store i64 %cond49, i64* %step, align 8
  store i64 0, i64* %n, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.62, %cond.end.48
  %63 = load i64, i64* %n, align 8
  %64 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape51 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %64, i32 0, i32 7
  %65 = load i64*, i64** %shape51, align 8
  %arrayidx52 = getelementptr i64, i64* %65, i64 0
  %66 = load i64, i64* %arrayidx52, align 8
  %cmp53 = icmp slt i64 %63, %66
  br i1 %cmp53, label %for.body.55, label %for.end.64

for.body.55:                                      ; preds = %for.cond.50
  %67 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %buf56 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %67, i32 0, i32 0
  %68 = load i8*, i8** %buf56, align 8
  %69 = load i64, i64* %start, align 8
  %add.ptr57 = getelementptr i8, i8* %68, i64 %69
  %70 = load i64, i64* %n, align 8
  %71 = load i64, i64* %step, align 8
  %mul58 = mul i64 %70, %71
  %add.ptr59 = getelementptr i8, i8* %add.ptr57, i64 %mul58
  %72 = load i64, i64* %n, align 8
  %73 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %buf60 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %73, i32 0, i32 0
  %74 = load i8*, i8** %buf60, align 8
  %75 = bitcast i8* %74 to i8**
  %arrayidx61 = getelementptr i8*, i8** %75, i64 %72
  store i8* %add.ptr59, i8** %arrayidx61, align 8
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.55
  %76 = load i64, i64* %n, align 8
  %inc63 = add i64 %76, 1
  store i64 %inc63, i64* %n, align 8
  br label %for.cond.50

for.end.64:                                       ; preds = %for.cond.50
  %77 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim65 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %77, i32 0, i32 5
  %78 = load i32, i32* %ndim65, align 4
  %conv66 = sext i32 %78 to i64
  %mul67 = mul i64 %conv66, 8
  %call68 = call i8* @PyMem_Malloc(i64 %mul67)
  %79 = bitcast i8* %call68 to i64*
  %80 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %80, i32 0, i32 9
  store i64* %79, i64** %suboffsets, align 8
  %81 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets69 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %81, i32 0, i32 9
  %82 = load i64*, i64** %suboffsets69, align 8
  %cmp70 = icmp eq i64* %82, null
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %for.end.64
  %call73 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %for.end.64
  %83 = load i64, i64* %suboffset0, align 8
  %84 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets75 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %84, i32 0, i32 9
  %85 = load i64*, i64** %suboffsets75, align 8
  %arrayidx76 = getelementptr i64, i64* %85, i64 0
  store i64 %83, i64* %arrayidx76, align 8
  store i64 1, i64* %n, align 8
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.85, %if.end.74
  %86 = load i64, i64* %n, align 8
  %87 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim78 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %87, i32 0, i32 5
  %88 = load i32, i32* %ndim78, align 4
  %conv79 = sext i32 %88 to i64
  %cmp80 = icmp slt i64 %86, %conv79
  br i1 %cmp80, label %for.body.82, label %for.end.87

for.body.82:                                      ; preds = %for.cond.77
  %89 = load i64, i64* %n, align 8
  %90 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets83 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %90, i32 0, i32 9
  %91 = load i64*, i64** %suboffsets83, align 8
  %arrayidx84 = getelementptr i64, i64* %91, i64 %89
  store i64 -1, i64* %arrayidx84, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.82
  %92 = load i64, i64* %n, align 8
  %inc86 = add i64 %92, 1
  store i64 %inc86, i64* %n, align 8
  br label %for.cond.77

for.end.87:                                       ; preds = %for.cond.77
  %93 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides88 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %93, i32 0, i32 8
  %94 = load i64*, i64** %strides88, align 8
  %arrayidx89 = getelementptr i64, i64* %94, i64 0
  %95 = load i64, i64* %arrayidx89, align 8
  %cmp90 = icmp sge i64 %95, 0
  br i1 %cmp90, label %if.then.92, label %if.else

if.then.92:                                       ; preds = %for.end.87
  %96 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides93 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %96, i32 0, i32 8
  %97 = load i64*, i64** %strides93, align 8
  %arrayidx94 = getelementptr i64, i64* %97, i64 0
  store i64 8, i64* %arrayidx94, align 8
  br label %if.end.110

if.else:                                          ; preds = %for.end.87
  %98 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides95 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %98, i32 0, i32 8
  %99 = load i64*, i64** %strides95, align 8
  %arrayidx96 = getelementptr i64, i64* %99, i64 0
  store i64 -8, i64* %arrayidx96, align 8
  %100 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape97 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %100, i32 0, i32 7
  %101 = load i64*, i64** %shape97, align 8
  %arrayidx98 = getelementptr i64, i64* %101, i64 0
  %102 = load i64, i64* %arrayidx98, align 8
  %cmp99 = icmp sgt i64 %102, 0
  br i1 %cmp99, label %if.then.101, label %if.end.109

if.then.101:                                      ; preds = %if.else
  %103 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %buf102 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %103, i32 0, i32 0
  %104 = load i8*, i8** %buf102, align 8
  %105 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape103 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %105, i32 0, i32 7
  %106 = load i64*, i64** %shape103, align 8
  %arrayidx104 = getelementptr i64, i64* %106, i64 0
  %107 = load i64, i64* %arrayidx104, align 8
  %sub105 = sub i64 %107, 1
  %mul106 = mul i64 %sub105, 8
  %add.ptr107 = getelementptr i8, i8* %104, i64 %mul106
  %108 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %buf108 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %108, i32 0, i32 0
  store i8* %add.ptr107, i8** %buf108, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.101, %if.else
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.92
  %109 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %flags = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %109, i32 0, i32 5
  %110 = load i32, i32* %flags, align 4
  %and = and i32 %110, -261
  store i32 %and, i32* %flags, align 4
  %111 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf.addr, align 8
  %offset111 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %111, i32 0, i32 3
  store i64 0, i64* %offset111, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.110, %if.then.72, %if.then
  %112 = load i32, i32* %retval
  ret i32 %112
}

declare i8* @PyMem_Realloc(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_get_flags(%struct.NDArrayObject* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %flags = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 5
  %2 = load i32, i32* %flags, align 4
  %conv = sext i32 %2 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_get_offset(%struct.NDArrayObject* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %closure.addr = alloca i8*, align 8
  %ndbuf = alloca %struct.ndbuf*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  store %struct.ndbuf* %1, %struct.ndbuf** %ndbuf, align 8
  %2 = load %struct.ndbuf*, %struct.ndbuf** %ndbuf, align 8
  %offset = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %2, i32 0, i32 3
  %3 = load i64, i64* %offset, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_get_obj(%struct.NDArrayObject* %self, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %closure.addr = alloca i8*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %obj2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %obj2, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc3 = add i64 %7, 1
  store i64 %inc3, i64* %ob_refcnt, align 8
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %obj4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %obj4, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_get_nbytes(%struct.NDArrayObject* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %closure.addr = alloca i8*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_get_readonly(%struct.NDArrayObject* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %closure.addr = alloca i8*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 4
  %3 = load i32, i32* %readonly, align 4
  %conv = sext i32 %3 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_get_itemsize(%struct.NDArrayObject* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %closure.addr = alloca i8*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 3
  %3 = load i64, i64* %itemsize, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_get_format(%struct.NDArrayObject* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %closure.addr = alloca i8*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  %fmt = alloca i8*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 6
  %3 = load i8*, i8** %format, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %format2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 6
  %5 = load i8*, i8** %format2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.93, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %fmt, align 8
  %6 = load i8*, i8** %fmt, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %6)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_get_ndim(%struct.NDArrayObject* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %closure.addr = alloca i8*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 5
  %3 = load i32, i32* %ndim, align 4
  %conv = sext i32 %3 to i64
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_get_shape(%struct.NDArrayObject* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %closure.addr = alloca i8*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 7
  %3 = load i64*, i64** %shape, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 5
  %5 = load i32, i32* %ndim, align 4
  %conv = sext i32 %5 to i64
  %call = call %struct._object* @ssize_array_as_tuple(i64* %3, i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_get_strides(%struct.NDArrayObject* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %closure.addr = alloca i8*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 8
  %3 = load i64*, i64** %strides, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 5
  %5 = load i32, i32* %ndim, align 4
  %conv = sext i32 %5 to i64
  %call = call %struct._object* @ssize_array_as_tuple(i64* %3, i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_get_suboffsets(%struct.NDArrayObject* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.NDArrayObject*, align 8
  %closure.addr = alloca i8*, align 8
  %base = alloca %struct.bufferinfo*, align 8
  store %struct.NDArrayObject* %self, %struct.NDArrayObject** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.NDArrayObject*, %struct.NDArrayObject** %self.addr, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %0, i32 0, i32 3
  %1 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base1 = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %1, i32 0, i32 7
  store %struct.bufferinfo* %base1, %struct.bufferinfo** %base, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 9
  %3 = load i64*, i64** %suboffsets, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 5
  %5 = load i32, i32* %ndim, align 4
  %conv = sext i32 %5 to i64
  %call = call %struct._object* @ssize_array_as_tuple(i64* %3, i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_c_contig(%struct._object* %self, %struct._object* %dummy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %dummy.addr = alloca %struct._object*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  %ret = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %dummy, %struct._object** %dummy.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.NDArrayObject*
  store %struct.NDArrayObject* %1, %struct.NDArrayObject** %nd, align 8
  %2 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %2, i32 0, i32 3
  %3 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %3, i32 0, i32 7
  %call = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %base, i8 signext 67)
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %5 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head1 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %5, i32 0, i32 3
  %6 = load %struct.ndbuf*, %struct.ndbuf** %head1, align 8
  %flags = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %6, i32 0, i32 5
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 264
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %cmp = icmp ne i32 %4, %lnot.ext
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.126, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %ret, align 4
  %conv = sext i32 %9 to i64
  %call3 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_fortran_contig(%struct._object* %self, %struct._object* %dummy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %dummy.addr = alloca %struct._object*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  %ret = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %dummy, %struct._object** %dummy.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.NDArrayObject*
  store %struct.NDArrayObject* %1, %struct.NDArrayObject** %nd, align 8
  %2 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %2, i32 0, i32 3
  %3 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %3, i32 0, i32 7
  %call = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %base, i8 signext 70)
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %5 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head1 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %5, i32 0, i32 3
  %6 = load %struct.ndbuf*, %struct.ndbuf** %head1, align 8
  %flags = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %6, i32 0, i32 5
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 12
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %cmp = icmp ne i32 %4, %lnot.ext
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.126, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %ret, align 4
  %conv = sext i32 %9 to i64
  %call3 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ndarray_contig(%struct._object* %self, %struct._object* %dummy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %dummy.addr = alloca %struct._object*, align 8
  %nd = alloca %struct.NDArrayObject*, align 8
  %ret = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %dummy, %struct._object** %dummy.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.NDArrayObject*
  store %struct.NDArrayObject* %1, %struct.NDArrayObject** %nd, align 8
  %2 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %2, i32 0, i32 3
  %3 = load %struct.ndbuf*, %struct.ndbuf** %head, align 8
  %base = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %3, i32 0, i32 7
  %call = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %base, i8 signext 65)
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %5 = load %struct.NDArrayObject*, %struct.NDArrayObject** %nd, align 8
  %head1 = getelementptr inbounds %struct.NDArrayObject, %struct.NDArrayObject* %5, i32 0, i32 3
  %6 = load %struct.ndbuf*, %struct.ndbuf** %head1, align 8
  %flags = getelementptr inbounds %struct.ndbuf, %struct.ndbuf* %6, i32 0, i32 5
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 268
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %cmp = icmp ne i32 %4, %lnot.ext
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.126, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %ret, align 4
  %conv = sext i32 %9 to i64
  %call3 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ssize_array_as_tuple(i64* %array, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %array.addr = alloca i64*, align 8
  %len.addr = alloca i64, align 8
  %tuple = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i64* %array, i64** %array.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64*, i64** %array.addr, align 8
  %cmp = icmp eq i64* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8
  %call1 = call %struct._object* @PyTuple_New(i64 %1)
  store %struct._object* %call1, %struct._object** %tuple, align 8
  %2 = load %struct._object*, %struct._object** %tuple, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %len.addr, align 8
  %cmp5 = icmp slt i64 %3, %4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %6 = load i64*, i64** %array.addr, align 8
  %arrayidx = getelementptr i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._object* @PyLong_FromSsize_t(i64 %7)
  store %struct._object* %call6, %struct._object** %x, align 8
  %8 = load %struct._object*, %struct._object** %x, align 8
  %cmp7 = icmp eq %struct._object* %8, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %9 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %for.body
  %16 = load %struct._object*, %struct._object** %x, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load %struct._object*, %struct._object** %tuple, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %17
  store %struct._object* %16, %struct._object** %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then.3, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare %struct._object* @PyBool_FromLong(i64) #1

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal void @staticarray_dealloc(%struct.StaticArrayObject* %self) #0 {
entry:
  %self.addr = alloca %struct.StaticArrayObject*, align 8
  store %struct.StaticArrayObject* %self, %struct.StaticArrayObject** %self.addr, align 8
  %0 = load %struct.StaticArrayObject*, %struct.StaticArrayObject** %self.addr, align 8
  %1 = bitcast %struct.StaticArrayObject* %0 to i8*
  call void @PyObject_Free(i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @staticarray_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %a = alloca %struct.StaticArrayObject*, align 8
  %legacy_mode = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.StaticArrayObject*
  store %struct.StaticArrayObject* %1, %struct.StaticArrayObject** %a, align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %legacy_mode, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @staticarray_init.kwlist, i32 0, i32 0), %struct._object** %legacy_mode)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %legacy_mode, align 8
  %cmp = icmp ne %struct._object* %4, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  %conv = zext i1 %cmp to i32
  %5 = load %struct.StaticArrayObject*, %struct.StaticArrayObject** %a, align 8
  %legacy_mode1 = getelementptr inbounds %struct.StaticArrayObject, %struct.StaticArrayObject* %5, i32 0, i32 1
  store i32 %conv, i32* %legacy_mode1, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @staticarray_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @StaticArray_Type)
  %0 = bitcast %struct._object* %call to %struct.StaticArrayObject*
  %1 = bitcast %struct.StaticArrayObject* %0 to %struct._object*
  ret %struct._object* %1
}

; Function Attrs: nounwind uwtable
define internal i32 @staticarray_getbuf(%struct.StaticArrayObject* %self, %struct.bufferinfo* %view, i32 %flags) #0 {
entry:
  %self.addr = alloca %struct.StaticArrayObject*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.StaticArrayObject* %self, %struct.StaticArrayObject** %self.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %1 = bitcast %struct.bufferinfo* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.bufferinfo* @static_buffer to i8*), i64 80, i32 8, i1 false)
  %2 = load %struct.StaticArrayObject*, %struct.StaticArrayObject** %self.addr, align 8
  %legacy_mode = getelementptr inbounds %struct.StaticArrayObject, %struct.StaticArrayObject* %2, i32 0, i32 1
  %3 = load i32, i32* %legacy_mode, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 1
  store %struct._object* null, %struct._object** %obj, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.StaticArrayObject*, %struct.StaticArrayObject** %self.addr, align 8
  %6 = bitcast %struct.StaticArrayObject* %5 to %struct._object*
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 1
  store %struct._object* %6, %struct._object** %obj1, align 8
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %obj2, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

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
