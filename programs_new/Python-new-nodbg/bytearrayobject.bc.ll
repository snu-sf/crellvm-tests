; ModuleID = './bytearrayobject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, {}*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, {}*, {}*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, {}*, {}*, i32 (%struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}*, i8*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%union._gc_head = type { %struct.anon.0 }
%struct.anon.0 = type { %union._gc_head*, %union._gc_head*, i64 }
%struct.PyByteArrayObject = type { %struct.PyVarObject, i64, i8*, i8*, i32 }
%struct.bytesiterobject = type { %struct._object, i64, %struct.PyByteArrayObject* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@_PyByteArray_empty_string = global [1 x i8] zeroinitializer, align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [54 x i8] c"Negative size passed to PyByteArray_FromStringAndSize\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"can't concat %.100s to %.100s\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"bytearray\00", align 1
@bytearray_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct.PyByteArrayObject*)* @bytearray_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* @PyByteArray_Concat, %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.PyByteArrayObject*, i64)* @bytearray_repeat to %struct._object* (%struct._object*, i64)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.PyByteArrayObject*, i64)* @bytearray_getitem to %struct._object* (%struct._object*, i64)*), i8* null, i32 (%struct._object*, i64, %struct._object*)* bitcast (i32 (%struct.PyByteArrayObject*, i64, %struct._object*)* @bytearray_setitem to i32 (%struct._object*, i64, %struct._object*)*), i8* null, i32 (%struct._object*, %struct._object*)* @bytearray_contains, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_iconcat to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.PyByteArrayObject*, i64)* @bytearray_irepeat to %struct._object* (%struct._object*, i64)*) }, align 8
@bytearray_as_mapping = internal global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct.PyByteArrayObject*)* @bytearray_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_subscript to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyByteArrayObject*, %struct._object*, %struct._object*)* @bytearray_ass_subscript to i32 (%struct._object*, %struct._object*, %struct._object*)*) }, align 8
@bytearray_as_buffer = internal global %struct.PyBufferProcs { i32 (%struct._object*, %struct.bufferinfo*, i32)* bitcast (i32 (%struct.PyByteArrayObject*, %struct.bufferinfo*, i32)* @bytearray_getbuffer to i32 (%struct._object*, %struct.bufferinfo*, i32)*), void (%struct._object*, %struct.bufferinfo*)* bitcast (void (%struct.PyByteArrayObject*, %struct.bufferinfo*)* @bytearray_releasebuffer to void (%struct._object*, %struct.bufferinfo*)*) }, align 8
@bytearray_doc = internal global [514 x i8] c"bytearray(iterable_of_ints) -> bytearray\0Abytearray(string, encoding[, errors]) -> bytearray\0Abytearray(bytes_or_buffer) -> mutable copy of bytes_or_buffer\0Abytearray(int) -> bytes array of size given by the parameter initialized with null bytes\0Abytearray() -> empty bytes array\0A\0AConstruct an mutable bytearray object from:\0A  - an iterable yielding integers in range(256)\0A  - a text string encoded using the specified encoding\0A  - a bytes or a buffer object\0A  - any object implementing the buffer API.\0A  - an integer\00", align 16
@bytearray_methods = internal global [51 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*)* @bytearray_alloc to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @alloc_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*)* @bytearray_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_reduce_ex to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_ex_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*)* @bytearray_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @sizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_append to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @append__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_capitalize to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_capitalize__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stringlib_center, i32 1, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @center__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*)* @bytearray_clear to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @clear__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*)* @bytearray_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @copy__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_count to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([199 x i8], [199 x i8]* @count__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @bytearray_decode to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([429 x i8], [429 x i8]* @decode_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_endswith to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([264 x i8], [264 x i8]* @endswith__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @stringlib_expandtabs to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @expandtabs__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_extend to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @extend__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_find to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([239 x i8], [239 x i8]* @find__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @bytearray_fromhex, i32 17, i8* getelementptr inbounds ([230 x i8], [230 x i8]* @fromhex_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_index to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @index__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_insert to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @insert__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_isalnum to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_isalnum__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_isalpha to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_isalpha__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_isdigit to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_isdigit__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_islower to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_islower__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_isspace to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_isspace__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_istitle to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_istitle__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_isupper to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_isupper__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @bytearray_join, i32 8, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @join_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stringlib_ljust, i32 1, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @ljust__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_lower to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_lower__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_lstrip to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([180 x i8], [180 x i8]* @lstrip__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @bytearray_maketrans, i32 33, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_maketrans__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_partition to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @partition__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_pop to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @pop__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_remove to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @remove__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_replace to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @replace__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_reverse to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @reverse__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_rfind to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([241 x i8], [241 x i8]* @rfind__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_rindex to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @rindex__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stringlib_rjust, i32 1, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @rjust__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_rpartition to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([252 x i8], [252 x i8]* @rpartition__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*, %struct._object*)* @bytearray_rsplit to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([344 x i8], [344 x i8]* @rsplit__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_rstrip to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([182 x i8], [182 x i8]* @rstrip__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*, %struct._object*)* @bytearray_split to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([292 x i8], [292 x i8]* @split__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @bytearray_splitlines to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @splitlines__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_startswith to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @startswith__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_strip to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @strip__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_swapcase to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_swapcase__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_title to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_title__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*, %struct._object*)* @bytearray_translate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([276 x i8], [276 x i8]* @translate__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_upper to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_upper__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stringlib_zfill, i32 1, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @zfill__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyByteArray_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.PyByteArrayObject*)* @bytearray_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyByteArrayObject*)* @bytearray_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* @bytearray_as_sequence, %struct.PyMappingMethods* @bytearray_as_mapping, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* @bytearray_str, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* @bytearray_as_buffer, i64 263168, i8* getelementptr inbounds ([514 x i8], [514 x i8]* @bytearray_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @bytearray_richcompare, i64 0, %struct._object* (%struct._object*)* @bytearray_iter, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([51 x %struct.PyMethodDef], [51 x %struct.PyMethodDef]* @bytearray_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyByteArrayObject*, %struct._object*, %struct._object*)* @bytearray_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* @PyObject_Free, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"bytearray_iterator\00", align 1
@bytearrayiter_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.124, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesiterobject*)* @bytearrayiter_length_hint to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesiterobject*)* @bytearrayiter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.125, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.bytesiterobject*, %struct._object*)* @bytearrayiter_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyByteArrayIter_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.bytesiterobject*)* @bytearrayiter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.bytesiterobject*, i32 (%struct._object*, i8*)*, i8*)* @bytearrayiter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.bytesiterobject*)* @bytearrayiter_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @bytearrayiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_BufferError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"Existing exports of data: object cannot be re-sized\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Type %.100s doesn't support the buffer API\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"deallocated bytearray object has exported buffers\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"bytearray(b\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.9 = private unnamed_addr constant [43 x i8] c"bytearray object is too large to make repr\00", align 1
@Py_hexdigits = external global i8*, align 8
@PyExc_IndexError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"bytearray index out of range\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"can't set bytearray slice from %.100s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"an integer is required\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c"byte must be in range(0, 256)\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"bytearray indices must be integers\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"bytearray indices must be integer\00", align 1
@.str.17 = private unnamed_addr constant [70 x i8] c"can assign only bytes, buffers, or iterables of ints in range(0, 256)\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"attempt to assign bytes of size %zd to extended slice of size %zd\00", align 1
@Py_BytesWarningFlag = external global i32, align 4
@PyExc_BytesWarning = external global %struct._object*, align 8
@.str.19 = private unnamed_addr constant [30 x i8] c"str() on a bytearray instance\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.20 = private unnamed_addr constant [40 x i8] c"Comparison between bytearray and string\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.21 = private unnamed_addr constant [10 x i8] c"__alloc__\00", align 1
@alloc_doc = internal global [69 x i8] c"B.__alloc__() -> int\0A\0AReturn the number of bytes actually allocated.\00", align 16
@.str.22 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.23 = private unnamed_addr constant [14 x i8] c"__reduce_ex__\00", align 1
@reduce_ex_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.24 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@sizeof_doc = internal global [66 x i8] c"B.__sizeof__() -> int\0A \0AReturns the size of B in memory, in bytes\00", align 16
@.str.25 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@append__doc__ = internal global [61 x i8] c"B.append(int) -> None\0A\0AAppend a single item to the end of B.\00", align 16
@.str.26 = private unnamed_addr constant [11 x i8] c"capitalize\00", align 1
@_Py_capitalize__doc__ = external constant [0 x i8], align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@center__doc__ = internal global [163 x i8] c"B.center(width[, fillchar]) -> copy of B\0A\0AReturn B centered in a string of length width.  Padding is\0Adone using the specified fill character (default is a space).\00", align 16
@.str.28 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@clear__doc__ = internal global [44 x i8] c"B.clear() -> None\0A\0ARemove all items from B.\00", align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@copy__doc__ = internal global [43 x i8] c"B.copy() -> bytearray\0A\0AReturn a copy of B.\00", align 16
@.str.30 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@count__doc__ = internal global [199 x i8] c"B.count(sub[, start[, end]]) -> int\0A\0AReturn the number of non-overlapping occurrences of subsection sub in\0Abytes B[start:end].  Optional arguments start and end are interpreted\0Aas in slice notation.\00", align 16
@.str.31 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@decode_doc = internal global [429 x i8] c"B.decode(encoding='utf-8', errors='strict') -> str\0A\0ADecode B using the codec registered for encoding. Default encoding\0Ais 'utf-8'. errors may be given to set a different error\0Ahandling scheme.  Default is 'strict' meaning that encoding errors raise\0Aa UnicodeDecodeError.  Other possible values are 'ignore' and 'replace'\0Aas well as any other name registered with codecs.register_error that is\0Aable to handle UnicodeDecodeErrors.\00", align 16
@.str.32 = private unnamed_addr constant [9 x i8] c"endswith\00", align 1
@endswith__doc__ = internal global [264 x i8] c"B.endswith(suffix[, start[, end]]) -> bool\0A\0AReturn True if B ends with the specified suffix, False otherwise.\0AWith optional start, test B beginning at that position.\0AWith optional end, stop comparing B at that position.\0Asuffix can also be a tuple of bytes to try.\00", align 16
@.str.33 = private unnamed_addr constant [11 x i8] c"expandtabs\00", align 1
@expandtabs__doc__ = internal global [173 x i8] c"B.expandtabs(tabsize=8) -> copy of B\0A\0AReturn a copy of B where all tab characters are expanded using spaces.\0AIf tabsize is not given, a tab size of 8 characters is assumed.\00", align 16
@.str.34 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@extend__doc__ = internal global [107 x i8] c"B.extend(iterable_of_ints) -> None\0A\0AAppend all the elements from the iterator or sequence to the\0Aend of B.\00", align 16
@.str.35 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@find__doc__ = internal global [239 x i8] c"B.find(sub[, start[, end]]) -> int\0A\0AReturn the lowest index in B where subsection sub is found,\0Asuch that sub is contained within B[start,end].  Optional\0Aarguments start and end are interpreted as in slice notation.\0A\0AReturn -1 on failure.\00", align 16
@.str.36 = private unnamed_addr constant [8 x i8] c"fromhex\00", align 1
@fromhex_doc = internal global [230 x i8] c"bytearray.fromhex(string) -> bytearray (static method)\0A\0ACreate a bytearray object from a string of hexadecimal numbers.\0ASpaces between two numbers are accepted.\0AExample: bytearray.fromhex('B9 01EF') -> bytearray(b'\5Cxb9\5Cx01\5Cxef').\00", align 16
@.str.37 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@index__doc__ = internal global [106 x i8] c"B.index(sub[, start[, end]]) -> int\0A\0ALike B.find() but raise ValueError when the subsection is not found.\00", align 16
@.str.38 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@insert__doc__ = internal global [94 x i8] c"B.insert(index, int) -> None\0A\0AInsert a single item into the bytearray before the given index.\00", align 16
@.str.39 = private unnamed_addr constant [8 x i8] c"isalnum\00", align 1
@_Py_isalnum__doc__ = external constant [0 x i8], align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"isalpha\00", align 1
@_Py_isalpha__doc__ = external constant [0 x i8], align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"isdigit\00", align 1
@_Py_isdigit__doc__ = external constant [0 x i8], align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"islower\00", align 1
@_Py_islower__doc__ = external constant [0 x i8], align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"isspace\00", align 1
@_Py_isspace__doc__ = external constant [0 x i8], align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"istitle\00", align 1
@_Py_istitle__doc__ = external constant [0 x i8], align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"isupper\00", align 1
@_Py_isupper__doc__ = external constant [0 x i8], align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@join_doc = internal global [162 x i8] c"B.join(iterable_of_bytes) -> bytearray\0A\0AConcatenate any number of bytes/bytearray objects, with B\0Ain between each pair, and return the result as a new bytearray.\00", align 16
@.str.47 = private unnamed_addr constant [6 x i8] c"ljust\00", align 1
@ljust__doc__ = internal global [167 x i8] c"B.ljust(width[, fillchar]) -> copy of B\0A\0AReturn B left justified in a string of length width. Padding is\0Adone using the specified fill character (default is a space).\00", align 16
@.str.48 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@_Py_lower__doc__ = external constant [0 x i8], align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"lstrip\00", align 1
@lstrip__doc__ = internal global [180 x i8] c"B.lstrip([bytes]) -> bytearray\0A\0AStrip leading bytes contained in the argument\0Aand return the result as a new bytearray.\0AIf the argument is omitted, strip leading ASCII whitespace.\00", align 16
@.str.50 = private unnamed_addr constant [10 x i8] c"maketrans\00", align 1
@_Py_maketrans__doc__ = external constant [0 x i8], align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"partition\00", align 1
@partition__doc__ = internal global [225 x i8] c"B.partition(sep) -> (head, sep, tail)\0A\0ASearch for the separator sep in B, and return the part before it,\0Athe separator itself, and the part after it.  If the separator is not\0Afound, returns B and two empty bytearray objects.\00", align 16
@.str.52 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@pop__doc__ = internal global [119 x i8] c"B.pop([index]) -> int\0A\0ARemove and return a single item from B. If no index\0Aargument is given, will pop the last value.\00", align 16
@.str.53 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@remove__doc__ = internal global [68 x i8] c"B.remove(int) -> None\0A\0ARemove the first occurrence of a value in B.\00", align 16
@.str.54 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@replace__doc__ = internal global [207 x i8] c"B.replace(old, new[, count]) -> bytearray\0A\0AReturn a copy of B with all occurrences of subsection\0Aold replaced by new.  If the optional argument count is\0Agiven, only the first count occurrences are replaced.\00", align 16
@.str.55 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@reverse__doc__ = internal global [68 x i8] c"B.reverse() -> None\0A\0AReverse the order of the values in B in place.\00", align 16
@.str.56 = private unnamed_addr constant [6 x i8] c"rfind\00", align 1
@rfind__doc__ = internal global [241 x i8] c"B.rfind(sub[, start[, end]]) -> int\0A\0AReturn the highest index in B where subsection sub is found,\0Asuch that sub is contained within B[start,end].  Optional\0Aarguments start and end are interpreted as in slice notation.\0A\0AReturn -1 on failure.\00", align 16
@.str.57 = private unnamed_addr constant [7 x i8] c"rindex\00", align 1
@rindex__doc__ = internal global [108 x i8] c"B.rindex(sub[, start[, end]]) -> int\0A\0ALike B.rfind() but raise ValueError when the subsection is not found.\00", align 16
@.str.58 = private unnamed_addr constant [6 x i8] c"rjust\00", align 1
@rjust__doc__ = internal global [167 x i8] c"B.rjust(width[, fillchar]) -> copy of B\0A\0AReturn B right justified in a string of length width. Padding is\0Adone using the specified fill character (default is a space)\00", align 16
@.str.59 = private unnamed_addr constant [11 x i8] c"rpartition\00", align 1
@rpartition__doc__ = internal global [252 x i8] c"B.rpartition(sep) -> (head, sep, tail)\0A\0ASearch for the separator sep in B, starting at the end of B,\0Aand return the part before it, the separator itself, and the\0Apart after it.  If the separator is not found, returns two empty\0Abytearray objects and B.\00", align 16
@.str.60 = private unnamed_addr constant [7 x i8] c"rsplit\00", align 1
@rsplit__doc__ = internal global [344 x i8] c"B.rsplit(sep=None, maxsplit=-1) -> list of bytearrays\0A\0AReturn a list of the sections in B, using sep as the delimiter,\0Astarting at the end of B and working to the front.\0AIf sep is not given, B is split on ASCII whitespace characters\0A(space, tab, return, newline, formfeed, vertical tab).\0AIf maxsplit is given, at most maxsplit splits are done.\00", align 16
@.str.61 = private unnamed_addr constant [7 x i8] c"rstrip\00", align 1
@rstrip__doc__ = internal global [182 x i8] c"B.rstrip([bytes]) -> bytearray\0A\0AStrip trailing bytes contained in the argument\0Aand return the result as a new bytearray.\0AIf the argument is omitted, strip trailing ASCII whitespace.\00", align 16
@.str.62 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@split__doc__ = internal global [292 x i8] c"B.split(sep=None, maxsplit=-1) -> list of bytearrays\0A\0AReturn a list of the sections in B, using sep as the delimiter.\0AIf sep is not given, B is split on ASCII whitespace characters\0A(space, tab, return, newline, formfeed, vertical tab).\0AIf maxsplit is given, at most maxsplit splits are done.\00", align 16
@.str.63 = private unnamed_addr constant [11 x i8] c"splitlines\00", align 1
@splitlines__doc__ = internal global [191 x i8] c"B.splitlines([keepends]) -> list of lines\0A\0AReturn a list of the lines in B, breaking at line boundaries.\0ALine breaks are not included in the resulting list unless keepends\0Ais given and true.\00", align 16
@.str.64 = private unnamed_addr constant [11 x i8] c"startswith\00", align 1
@startswith__doc__ = internal global [268 x i8] c"B.startswith(prefix[, start[, end]]) -> bool\0A\0AReturn True if B starts with the specified prefix, False otherwise.\0AWith optional start, test B beginning at that position.\0AWith optional end, stop comparing B at that position.\0Aprefix can also be a tuple of bytes to try.\00", align 16
@.str.65 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@strip__doc__ = internal global [184 x i8] c"B.strip([bytes]) -> bytearray\0A\0AStrip leading and trailing bytes contained in the argument\0Aand return the result as a new bytearray.\0AIf the argument is omitted, strip ASCII whitespace.\00", align 16
@.str.66 = private unnamed_addr constant [9 x i8] c"swapcase\00", align 1
@_Py_swapcase__doc__ = external constant [0 x i8], align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@_Py_title__doc__ = external constant [0 x i8], align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"translate\00", align 1
@translate__doc__ = internal global [276 x i8] c"B.translate(table[, deletechars]) -> bytearray\0A\0AReturn a copy of B, where all characters occurring in the\0Aoptional argument deletechars are removed, and the remaining\0Acharacters have been mapped through the given translation\0Atable, which must be a bytes object of length 256.\00", align 16
@.str.69 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@_Py_upper__doc__ = external constant [0 x i8], align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"zfill\00", align 1
@zfill__doc__ = internal global [139 x i8] c"B.zfill(width) -> copy of B\0A\0APad a numeric string B with zeros on the left, to fill a field\0Aof the specified width.  B is never truncated.\00", align 16
@_common_reduce.PyId___dict__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), %struct._object* null }, align 8
@.str.71 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.72 = private unnamed_addr constant [9 x i8] c"(O(Ns)N)\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"latin-1\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"(O(y#)N)\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"(O()N)\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"|i:__reduce_ex__\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"cannot add more objects to bytearray\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"n|c:center\00", align 1
@bytearray_decode.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* null], align 16
@.str.79 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"|ss:decode\00", align 1
@.str.82 = private unnamed_addr constant [61 x i8] c"endswith first arg must be bytes or a tuple of bytes, not %s\00", align 1
@stringlib_expandtabs.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* null], align 16
@.str.83 = private unnamed_addr constant [8 x i8] c"tabsize\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"|i:expandtabs\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"result too long\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"find/rfind/index/rindex\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"U:fromhex\00", align 1
@.str.88 = private unnamed_addr constant [62 x i8] c"non-hexadecimal number found in fromhex() arg at position %zd\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@_Py_ctype_tolower = external constant [256 x i8], align 16
@.str.89 = private unnamed_addr constant [21 x i8] c"subsection not found\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"nO:insert\00", align 1
@.str.91 = private unnamed_addr constant [26 x i8] c"can only join an iterable\00", align 1
@.str.92 = private unnamed_addr constant [98 x i8] c"sequence item %zd: expected bytes, bytearray, or an object with the buffer interface, %.80s found\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"join() result is too long\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.94 = private unnamed_addr constant [39 x i8] c"sequence changed size during iteration\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"n|c:ljust\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"|O:lstrip\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"\09\0A\0D\0C\0B \00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"empty separator\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"|n:pop\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"pop from empty bytearray\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"pop index out of range\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"value not found in bytearray\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"OO|n:replace\00", align 1
@.str.104 = private unnamed_addr constant [27 x i8] c"replace string is too long\00", align 1
@.str.105 = private unnamed_addr constant [26 x i8] c"replace bytes is too long\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"n|c:rjust\00", align 1
@bytearray_rsplit.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0), i8* null], align 16
@.str.107 = private unnamed_addr constant [4 x i8] c"sep\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"maxsplit\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"|On:rsplit\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"|O:rstrip\00", align 1
@bytearray_split.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0), i8* null], align 16
@.str.111 = private unnamed_addr constant [10 x i8] c"|On:split\00", align 1
@bytearray_splitlines.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i32 0, i32 0), i8* null], align 16
@.str.112 = private unnamed_addr constant [9 x i8] c"keepends\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"|i:splitlines\00", align 1
@.str.114 = private unnamed_addr constant [63 x i8] c"startswith first arg must be bytes or a tuple of bytes, not %s\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"|O:strip\00", align 1
@.str.116 = private unnamed_addr constant [46 x i8] c"translation table must be 256 characters long\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"n:zfill\00", align 1
@bytearray_init.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* null], align 16
@.str.118 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"|Oss:bytearray\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c"encoding or errors without sequence argument\00", align 1
@.str.121 = private unnamed_addr constant [36 x i8] c"string argument without an encoding\00", align 1
@.str.122 = private unnamed_addr constant [45 x i8] c"encoding or errors without a string argument\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"negative count\00", align 1
@PyExc_StopIteration = external global %struct._object*, align 8
@.str.124 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal global [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@.str.125 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@setstate_doc = internal global [38 x i8] c"Set state information for unpickling.\00", align 16
@.str.126 = private unnamed_addr constant [6 x i8] c"N(O)n\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"N(N)\00", align 1
@.str.129 = private unnamed_addr constant [26 x i8] c"Objects/bytearrayobject.c\00", align 1
@.str.130 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8

; Function Attrs: nounwind uwtable
define void @PyByteArray_Fini() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PyByteArray_Init() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyByteArray_FromObject(%struct._object* %input) #0 {
entry:
  %input.addr = alloca %struct._object*, align 8
  store %struct._object* %input, %struct._object** %input.addr, align 8
  %0 = load %struct._object*, %struct._object** %input.addr, align 8
  %call = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyByteArray_Type to %struct._typeobject*), i32 0, i32 0, i32 0), %struct._object* %0, i8* null)
  ret %struct._object* %call
}

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyByteArray_FromStringAndSize(i8* %bytes, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %bytes.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %new = alloca %struct.PyByteArrayObject*, align 8
  %alloc = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp eq i64 %2, 9223372036854775807
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @_PyObject_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyByteArray_Type to %struct._typeobject*))
  %3 = bitcast %struct._object* %call4 to %struct.PyByteArrayObject*
  store %struct.PyByteArrayObject* %3, %struct.PyByteArrayObject** %new, align 8
  %4 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %cmp5 = icmp eq %struct.PyByteArrayObject* %4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %5 = load i64, i64* %size.addr, align 8
  %cmp8 = icmp eq i64 %5, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  %6 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %ob_bytes = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %6, i32 0, i32 2
  store i8* null, i8** %ob_bytes, align 8
  store i64 0, i64* %alloc, align 8
  br label %if.end.27

if.else:                                          ; preds = %if.end.7
  %7 = load i64, i64* %size.addr, align 8
  %add = add i64 %7, 1
  store i64 %add, i64* %alloc, align 8
  %8 = load i64, i64* %alloc, align 8
  %call10 = call i8* @PyObject_Malloc(i64 %8)
  %9 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %ob_bytes11 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %9, i32 0, i32 2
  store i8* %call10, i8** %ob_bytes11, align 8
  %10 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %ob_bytes12 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %10, i32 0, i32 2
  %11 = load i8*, i8** %ob_bytes12, align 8
  %cmp13 = icmp eq i8* %11, null
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.14
  %12 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %13 = bitcast %struct.PyByteArrayObject* %12 to %struct._object*
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body
  br label %if.end.18

if.else.17:                                       ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %call19 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call19, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.else
  %20 = load i8*, i8** %bytes.addr, align 8
  %cmp21 = icmp ne i8* %20, null
  br i1 %cmp21, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.20
  %21 = load i64, i64* %size.addr, align 8
  %cmp22 = icmp sgt i64 %21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %land.lhs.true
  %22 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %ob_bytes24 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %22, i32 0, i32 2
  %23 = load i8*, i8** %ob_bytes24, align 8
  %24 = load i8*, i8** %bytes.addr, align 8
  %25 = load i64, i64* %size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 %25, i32 1, i1 false)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %land.lhs.true, %if.end.20
  %26 = load i64, i64* %size.addr, align 8
  %27 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %ob_bytes26 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %27, i32 0, i32 2
  %28 = load i8*, i8** %ob_bytes26, align 8
  %arrayidx = getelementptr i8, i8* %28, i64 %26
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.25, %if.then.9
  %29 = load i64, i64* %size.addr, align 8
  %30 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %31 = bitcast %struct.PyByteArrayObject* %30 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %31, i32 0, i32 1
  store i64 %29, i64* %ob_size, align 8
  %32 = load i64, i64* %alloc, align 8
  %33 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %ob_alloc = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %33, i32 0, i32 1
  store i64 %32, i64* %ob_alloc, align 8
  %34 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %ob_bytes28 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %34, i32 0, i32 2
  %35 = load i8*, i8** %ob_bytes28, align 8
  %36 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %36, i32 0, i32 3
  store i8* %35, i8** %ob_start, align 8
  %37 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %ob_exports = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %37, i32 0, i32 4
  store i32 0, i32* %ob_exports, align 4
  %38 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %new, align 8
  %39 = bitcast %struct.PyByteArrayObject* %38 to %struct._object*
  store %struct._object* %39, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.27, %do.end, %if.then.6, %if.then.2, %if.then
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyErr_NoMemory() #1

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i64 @PyByteArray_Size(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i8* @PyByteArray_AsString(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %4, i32 0, i32 3
  %5 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define i32 @PyByteArray_Resize(%struct._object* %self, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %sval = alloca i8*, align 8
  %obj = alloca %struct.PyByteArrayObject*, align 8
  %alloc = alloca i64, align 8
  %logical_offset = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyByteArrayObject*
  store %struct.PyByteArrayObject* %1, %struct.PyByteArrayObject** %obj, align 8
  %2 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj, align 8
  %ob_alloc = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_alloc, align 8
  store i64 %3, i64* %alloc, align 8
  %4 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %4, i32 0, i32 3
  %5 = load i8*, i8** %ob_start, align 8
  %6 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj, align 8
  %ob_bytes = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %6, i32 0, i32 2
  %7 = load i8*, i8** %ob_bytes, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %logical_offset, align 8
  %8 = load i64, i64* %size.addr, align 8
  %9 = load %struct._object*, %struct._object** %self.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %8, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj, align 8
  %call = call i32 @_canresize(%struct.PyByteArrayObject* %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %13 = load i64, i64* %size.addr, align 8
  %14 = load i64, i64* %logical_offset, align 8
  %add = add i64 %13, %14
  %add3 = add i64 %add, 1
  %15 = load i64, i64* %alloc, align 8
  %cmp4 = icmp slt i64 %add3, %15
  br i1 %cmp4, label %if.then.5, label %if.else.14

if.then.5:                                        ; preds = %if.end.2
  %16 = load i64, i64* %size.addr, align 8
  %17 = load i64, i64* %alloc, align 8
  %div = sdiv i64 %17, 2
  %cmp6 = icmp slt i64 %16, %div
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  %18 = load i64, i64* %size.addr, align 8
  %add8 = add i64 %18, 1
  store i64 %add8, i64* %alloc, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.then.5
  %19 = load i64, i64* %size.addr, align 8
  %20 = load %struct._object*, %struct._object** %self.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  store i64 %19, i64* %ob_size9, align 8
  %22 = load i64, i64* %size.addr, align 8
  %23 = load %struct._object*, %struct._object** %self.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %24, i32 0, i32 1
  %25 = load i64, i64* %ob_size10, align 8
  %tobool11 = icmp ne i64 %25, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %26 = load %struct._object*, %struct._object** %self.addr, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyByteArrayObject*
  %ob_start12 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %27, i32 0, i32 3
  %28 = load i8*, i8** %ob_start12, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %28, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %arrayidx = getelementptr i8, i8* %cond, i64 %22
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.28

if.else.14:                                       ; preds = %if.end.2
  %29 = load i64, i64* %size.addr, align 8
  %conv = sitofp i64 %29 to double
  %30 = load i64, i64* %alloc, align 8
  %conv15 = sitofp i64 %30 to double
  %mul = fmul double %conv15, 1.125000e+00
  %cmp16 = fcmp ole double %conv, %mul
  br i1 %cmp16, label %if.then.18, label %if.else.25

if.then.18:                                       ; preds = %if.else.14
  %31 = load i64, i64* %size.addr, align 8
  %32 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %32, 3
  %add19 = add i64 %31, %shr
  %33 = load i64, i64* %size.addr, align 8
  %cmp20 = icmp slt i64 %33, 9
  %cond22 = select i1 %cmp20, i32 3, i32 6
  %conv23 = sext i32 %cond22 to i64
  %add24 = add i64 %add19, %conv23
  store i64 %add24, i64* %alloc, align 8
  br label %if.end.27

if.else.25:                                       ; preds = %if.else.14
  %34 = load i64, i64* %size.addr, align 8
  %add26 = add i64 %34, 1
  store i64 %add26, i64* %alloc, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.18
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.13
  %35 = load i64, i64* %logical_offset, align 8
  %cmp29 = icmp sgt i64 %35, 0
  br i1 %cmp29, label %if.then.31, label %if.else.54

if.then.31:                                       ; preds = %if.end.28
  %36 = load i64, i64* %alloc, align 8
  %call32 = call i8* @PyObject_Malloc(i64 %36)
  store i8* %call32, i8** %sval, align 8
  %37 = load i8*, i8** %sval, align 8
  %cmp33 = icmp eq i8* %37, null
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.then.31
  %call36 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.31
  %38 = load i8*, i8** %sval, align 8
  %39 = load %struct._object*, %struct._object** %self.addr, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyVarObject*
  %ob_size38 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %40, i32 0, i32 1
  %41 = load i64, i64* %ob_size38, align 8
  %tobool39 = icmp ne i64 %41, 0
  br i1 %tobool39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %if.end.37
  %42 = load %struct._object*, %struct._object** %self.addr, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyByteArrayObject*
  %ob_start41 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %43, i32 0, i32 3
  %44 = load i8*, i8** %ob_start41, align 8
  br label %cond.end.43

cond.false.42:                                    ; preds = %if.end.37
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.40
  %cond44 = phi i8* [ %44, %cond.true.40 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.42 ]
  %45 = load i64, i64* %size.addr, align 8
  %46 = load %struct._object*, %struct._object** %self.addr, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyVarObject*
  %ob_size45 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %47, i32 0, i32 1
  %48 = load i64, i64* %ob_size45, align 8
  %cmp46 = icmp sgt i64 %45, %48
  br i1 %cmp46, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %cond.end.43
  %49 = load %struct._object*, %struct._object** %self.addr, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyVarObject*
  %ob_size49 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %50, i32 0, i32 1
  %51 = load i64, i64* %ob_size49, align 8
  br label %cond.end.51

cond.false.50:                                    ; preds = %cond.end.43
  %52 = load i64, i64* %size.addr, align 8
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.48
  %cond52 = phi i64 [ %51, %cond.true.48 ], [ %52, %cond.false.50 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %cond44, i64 %cond52, i32 1, i1 false)
  %53 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj, align 8
  %ob_bytes53 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %53, i32 0, i32 2
  %54 = load i8*, i8** %ob_bytes53, align 8
  call void @PyObject_Free(i8* %54)
  br label %if.end.62

if.else.54:                                       ; preds = %if.end.28
  %55 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj, align 8
  %ob_bytes55 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %55, i32 0, i32 2
  %56 = load i8*, i8** %ob_bytes55, align 8
  %57 = load i64, i64* %alloc, align 8
  %call56 = call i8* @PyObject_Realloc(i8* %56, i64 %57)
  store i8* %call56, i8** %sval, align 8
  %58 = load i8*, i8** %sval, align 8
  %cmp57 = icmp eq i8* %58, null
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.else.54
  %call60 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.else.54
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %cond.end.51
  %59 = load i8*, i8** %sval, align 8
  %60 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj, align 8
  %ob_start63 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %60, i32 0, i32 3
  store i8* %59, i8** %ob_start63, align 8
  %61 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj, align 8
  %ob_bytes64 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %61, i32 0, i32 2
  store i8* %59, i8** %ob_bytes64, align 8
  %62 = load i64, i64* %size.addr, align 8
  %63 = load %struct._object*, %struct._object** %self.addr, align 8
  %64 = bitcast %struct._object* %63 to %struct.PyVarObject*
  %ob_size65 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %64, i32 0, i32 1
  store i64 %62, i64* %ob_size65, align 8
  %65 = load i64, i64* %alloc, align 8
  %66 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj, align 8
  %ob_alloc66 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %66, i32 0, i32 1
  store i64 %65, i64* %ob_alloc66, align 8
  %67 = load i64, i64* %size.addr, align 8
  %68 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj, align 8
  %ob_bytes67 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %68, i32 0, i32 2
  %69 = load i8*, i8** %ob_bytes67, align 8
  %arrayidx68 = getelementptr i8, i8* %69, i64 %67
  store i8 0, i8* %arrayidx68, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.then.59, %if.then.35, %cond.end, %if.then.1, %if.then
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @_canresize(%struct.PyByteArrayObject* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_exports = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %0, i32 0, i32 4
  %1 = load i32, i32* %ob_exports, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare void @PyObject_Free(i8*) #1

declare i8* @PyObject_Realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyByteArray_Concat(%struct._object* %a, %struct._object* %b) #0 {
entry:
  %a.addr = alloca %struct._object*, align 8
  %b.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %va = alloca %struct.bufferinfo, align 8
  %vb = alloca %struct.bufferinfo, align 8
  %result = alloca %struct.PyByteArrayObject*, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  store %struct._object* %b, %struct._object** %b.addr, align 8
  store %struct.PyByteArrayObject* null, %struct.PyByteArrayObject** %result, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %va, i32 0, i32 2
  store i64 -1, i64* %len, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vb, i32 0, i32 2
  store i64 -1, i64* %len1, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i64 @_getbuffer(%struct._object* %0, %struct.bufferinfo* %va)
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %b.addr, align 8
  %call2 = call i64 @_getbuffer(%struct._object* %1, %struct.bufferinfo* %vb)
  %cmp3 = icmp slt i64 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %3 = load %struct._object*, %struct._object** %a.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 1
  %5 = load i8*, i8** %tp_name, align 8
  %6 = load %struct._object*, %struct._object** %b.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_name5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %tp_name5, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %5, i8* %8)
  br label %done

if.end:                                           ; preds = %lor.lhs.false
  %len7 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %va, i32 0, i32 2
  %9 = load i64, i64* %len7, align 8
  %len8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vb, i32 0, i32 2
  %10 = load i64, i64* %len8, align 8
  %add = add i64 %9, %10
  store i64 %add, i64* %size, align 8
  %11 = load i64, i64* %size, align 8
  %cmp9 = icmp slt i64 %11, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %call11 = call %struct._object* @PyErr_NoMemory()
  br label %done

if.end.12:                                        ; preds = %if.end
  %12 = load i64, i64* %size, align 8
  %call13 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %12)
  %13 = bitcast %struct._object* %call13 to %struct.PyByteArrayObject*
  store %struct.PyByteArrayObject* %13, %struct.PyByteArrayObject** %result, align 8
  %14 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %cmp14 = icmp ne %struct.PyByteArrayObject* %14, null
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end.12
  %15 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %ob_bytes = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %15, i32 0, i32 2
  %16 = load i8*, i8** %ob_bytes, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %va, i32 0, i32 0
  %17 = load i8*, i8** %buf, align 8
  %len16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %va, i32 0, i32 2
  %18 = load i64, i64* %len16, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 %18, i32 1, i1 false)
  %19 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %ob_bytes17 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %19, i32 0, i32 2
  %20 = load i8*, i8** %ob_bytes17, align 8
  %len18 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %va, i32 0, i32 2
  %21 = load i64, i64* %len18, align 8
  %add.ptr = getelementptr i8, i8* %20, i64 %21
  %buf19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vb, i32 0, i32 0
  %22 = load i8*, i8** %buf19, align 8
  %len20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vb, i32 0, i32 2
  %23 = load i64, i64* %len20, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %22, i64 %23, i32 1, i1 false)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %if.end.12
  br label %done

done:                                             ; preds = %if.end.21, %if.then.10, %if.then
  %len22 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %va, i32 0, i32 2
  %24 = load i64, i64* %len22, align 8
  %cmp23 = icmp ne i64 %24, -1
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %done
  call void @PyBuffer_Release(%struct.bufferinfo* %va)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %done
  %len26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vb, i32 0, i32 2
  %25 = load i64, i64* %len26, align 8
  %cmp27 = icmp ne i64 %25, -1
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  call void @PyBuffer_Release(%struct.bufferinfo* %vb)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.25
  %26 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %27 = bitcast %struct.PyByteArrayObject* %26 to %struct._object*
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define internal i64 @_getbuffer(%struct._object* %obj, %struct.bufferinfo* %view) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca %struct._object*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %buffer = alloca %struct.PyBufferProcs*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 18
  %2 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  store %struct.PyBufferProcs* %2, %struct.PyBufferProcs** %buffer, align 8
  %3 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %buffer, align 8
  %cmp = icmp eq %struct.PyBufferProcs* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %buffer, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %4, i32 0, i32 0
  %5 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp1 = icmp eq i32 (%struct._object*, %struct.bufferinfo*, i32)* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i8* %9)
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %buffer, align 8
  %bf_getbuffer3 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %10, i32 0, i32 0
  %11 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer3, align 8
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %call4 = call i32 %11(%struct._object* %12, %struct.bufferinfo* %13, i32 0)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 2
  %15 = load i64, i64* %len, align 8
  store i64 %15, i64* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %16 = load i64, i64* %retval
  ret i64 %16
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

; Function Attrs: nounwind uwtable
define internal void @bytearray_dealloc(%struct.PyByteArrayObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_exports = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %0, i32 0, i32 4
  %1 = load i32, i32* %ob_exports, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0))
  call void @PyErr_Print()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_bytes = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %3, i32 0, i32 2
  %4 = load i8*, i8** %ob_bytes, align 8
  %cmp1 = icmp ne i8* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_bytes3 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %5, i32 0, i32 2
  %6 = load i8*, i8** %ob_bytes3, align 8
  call void @PyObject_Free(i8* %6)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %8 = bitcast %struct.PyByteArrayObject* %7 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 38
  %10 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %11 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %12 = bitcast %struct.PyByteArrayObject* %11 to %struct._object*
  %13 = bitcast %struct._object* %12 to i8*
  call void %10(i8* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_repr(%struct.PyByteArrayObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %quote_prefix = alloca i8*, align 8
  %quote_postfix = alloca i8*, align 8
  %length = alloca i64, align 8
  %newsize = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %bytes = alloca i8*, align 8
  %c = alloca i8, align 1
  %p = alloca i8*, align 8
  %quote = alloca i32, align 4
  %test = alloca i8*, align 8
  %start = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8** %quote_prefix, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8** %quote_postfix, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %length, align 8
  %3 = load i64, i64* %length, align 8
  %cmp = icmp sgt i64 %3, 2305843009213693948
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %length, align 8
  %mul = mul i64 %5, 4
  %add = add i64 15, %mul
  store i64 %add, i64* %newsize, align 8
  %6 = load i64, i64* %newsize, align 8
  %call = call i8* @PyObject_Malloc(i64 %6)
  store i8* %call, i8** %buffer, align 8
  %7 = load i8*, i8** %buffer, align 8
  %cmp1 = icmp eq i8* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 39, i32* %quote, align 4
  %8 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %9 = bitcast %struct.PyByteArrayObject* %8 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size5, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %11 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %11, i32 0, i32 3
  %12 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %start, align 8
  %13 = load i8*, i8** %start, align 8
  store i8* %13, i8** %test, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i8*, i8** %test, align 8
  %15 = load i8*, i8** %start, align 8
  %16 = load i64, i64* %length, align 8
  %add.ptr = getelementptr i8, i8* %15, i64 %16
  %cmp6 = icmp ult i8* %14, %add.ptr
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %test, align 8
  %18 = load i8, i8* %17, align 1
  %conv = sext i8 %18 to i32
  %cmp7 = icmp eq i32 %conv, 34
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body
  store i32 39, i32* %quote, align 4
  br label %for.end

if.else:                                          ; preds = %for.body
  %19 = load i8*, i8** %test, align 8
  %20 = load i8, i8* %19, align 1
  %conv10 = sext i8 %20 to i32
  %cmp11 = icmp eq i32 %conv10, 39
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  store i32 34, i32* %quote, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %21 = load i8*, i8** %test, align 8
  %incdec.ptr = getelementptr i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %test, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  %22 = load i8*, i8** %buffer, align 8
  store i8* %22, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %23 = load i8*, i8** %quote_prefix, align 8
  %24 = load i8, i8* %23, align 1
  %tobool16 = icmp ne i8 %24, 0
  br i1 %tobool16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i8*, i8** %quote_prefix, align 8
  %incdec.ptr17 = getelementptr i8, i8* %25, i32 1
  store i8* %incdec.ptr17, i8** %quote_prefix, align 8
  %26 = load i8, i8* %25, align 1
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr18 = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8
  store i8 %26, i8* %27, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load i32, i32* %quote, align 4
  %conv19 = trunc i32 %28 to i8
  %29 = load i8*, i8** %p, align 8
  %incdec.ptr20 = getelementptr i8, i8* %29, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8
  store i8 %conv19, i8* %29, align 1
  %30 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %31 = bitcast %struct.PyByteArrayObject* %30 to %struct.PyVarObject*
  %ob_size21 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %31, i32 0, i32 1
  %32 = load i64, i64* %ob_size21, align 8
  %tobool22 = icmp ne i64 %32, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %while.end
  %33 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start24 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %33, i32 0, i32 3
  %34 = load i8*, i8** %ob_start24, align 8
  br label %cond.end.26

cond.false.25:                                    ; preds = %while.end
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.23
  %cond27 = phi i8* [ %34, %cond.true.23 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.25 ]
  store i8* %cond27, i8** %bytes, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.98, %cond.end.26
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* %length, align 8
  %cmp29 = icmp slt i64 %35, %36
  br i1 %cmp29, label %for.body.31, label %for.end.99

for.body.31:                                      ; preds = %for.cond.28
  %37 = load i64, i64* %i, align 8
  %38 = load i8*, i8** %bytes, align 8
  %arrayidx = getelementptr i8, i8* %38, i64 %37
  %39 = load i8, i8* %arrayidx, align 1
  store i8 %39, i8* %c, align 1
  %40 = load i8, i8* %c, align 1
  %conv32 = sext i8 %40 to i32
  %cmp33 = icmp eq i32 %conv32, 39
  br i1 %cmp33, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.31
  %41 = load i8, i8* %c, align 1
  %conv35 = sext i8 %41 to i32
  %cmp36 = icmp eq i32 %conv35, 92
  br i1 %cmp36, label %if.then.38, label %if.else.41

if.then.38:                                       ; preds = %lor.lhs.false, %for.body.31
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr39 = getelementptr i8, i8* %42, i32 1
  store i8* %incdec.ptr39, i8** %p, align 8
  store i8 92, i8* %42, align 1
  %43 = load i8, i8* %c, align 1
  %44 = load i8*, i8** %p, align 8
  %incdec.ptr40 = getelementptr i8, i8* %44, i32 1
  store i8* %incdec.ptr40, i8** %p, align 8
  store i8 %43, i8* %44, align 1
  br label %if.end.97

if.else.41:                                       ; preds = %lor.lhs.false
  %45 = load i8, i8* %c, align 1
  %conv42 = sext i8 %45 to i32
  %cmp43 = icmp eq i32 %conv42, 9
  br i1 %cmp43, label %if.then.45, label %if.else.48

if.then.45:                                       ; preds = %if.else.41
  %46 = load i8*, i8** %p, align 8
  %incdec.ptr46 = getelementptr i8, i8* %46, i32 1
  store i8* %incdec.ptr46, i8** %p, align 8
  store i8 92, i8* %46, align 1
  %47 = load i8*, i8** %p, align 8
  %incdec.ptr47 = getelementptr i8, i8* %47, i32 1
  store i8* %incdec.ptr47, i8** %p, align 8
  store i8 116, i8* %47, align 1
  br label %if.end.96

if.else.48:                                       ; preds = %if.else.41
  %48 = load i8, i8* %c, align 1
  %conv49 = sext i8 %48 to i32
  %cmp50 = icmp eq i32 %conv49, 10
  br i1 %cmp50, label %if.then.52, label %if.else.55

if.then.52:                                       ; preds = %if.else.48
  %49 = load i8*, i8** %p, align 8
  %incdec.ptr53 = getelementptr i8, i8* %49, i32 1
  store i8* %incdec.ptr53, i8** %p, align 8
  store i8 92, i8* %49, align 1
  %50 = load i8*, i8** %p, align 8
  %incdec.ptr54 = getelementptr i8, i8* %50, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8
  store i8 110, i8* %50, align 1
  br label %if.end.95

if.else.55:                                       ; preds = %if.else.48
  %51 = load i8, i8* %c, align 1
  %conv56 = sext i8 %51 to i32
  %cmp57 = icmp eq i32 %conv56, 13
  br i1 %cmp57, label %if.then.59, label %if.else.62

if.then.59:                                       ; preds = %if.else.55
  %52 = load i8*, i8** %p, align 8
  %incdec.ptr60 = getelementptr i8, i8* %52, i32 1
  store i8* %incdec.ptr60, i8** %p, align 8
  store i8 92, i8* %52, align 1
  %53 = load i8*, i8** %p, align 8
  %incdec.ptr61 = getelementptr i8, i8* %53, i32 1
  store i8* %incdec.ptr61, i8** %p, align 8
  store i8 114, i8* %53, align 1
  br label %if.end.94

if.else.62:                                       ; preds = %if.else.55
  %54 = load i8, i8* %c, align 1
  %conv63 = sext i8 %54 to i32
  %cmp64 = icmp eq i32 %conv63, 0
  br i1 %cmp64, label %if.then.66, label %if.else.71

if.then.66:                                       ; preds = %if.else.62
  %55 = load i8*, i8** %p, align 8
  %incdec.ptr67 = getelementptr i8, i8* %55, i32 1
  store i8* %incdec.ptr67, i8** %p, align 8
  store i8 92, i8* %55, align 1
  %56 = load i8*, i8** %p, align 8
  %incdec.ptr68 = getelementptr i8, i8* %56, i32 1
  store i8* %incdec.ptr68, i8** %p, align 8
  store i8 120, i8* %56, align 1
  %57 = load i8*, i8** %p, align 8
  %incdec.ptr69 = getelementptr i8, i8* %57, i32 1
  store i8* %incdec.ptr69, i8** %p, align 8
  store i8 48, i8* %57, align 1
  %58 = load i8*, i8** %p, align 8
  %incdec.ptr70 = getelementptr i8, i8* %58, i32 1
  store i8* %incdec.ptr70, i8** %p, align 8
  store i8 48, i8* %58, align 1
  br label %if.end.93

if.else.71:                                       ; preds = %if.else.62
  %59 = load i8, i8* %c, align 1
  %conv72 = sext i8 %59 to i32
  %cmp73 = icmp slt i32 %conv72, 32
  br i1 %cmp73, label %if.then.79, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %if.else.71
  %60 = load i8, i8* %c, align 1
  %conv76 = sext i8 %60 to i32
  %cmp77 = icmp sge i32 %conv76, 127
  br i1 %cmp77, label %if.then.79, label %if.else.90

if.then.79:                                       ; preds = %lor.lhs.false.75, %if.else.71
  %61 = load i8*, i8** %p, align 8
  %incdec.ptr80 = getelementptr i8, i8* %61, i32 1
  store i8* %incdec.ptr80, i8** %p, align 8
  store i8 92, i8* %61, align 1
  %62 = load i8*, i8** %p, align 8
  %incdec.ptr81 = getelementptr i8, i8* %62, i32 1
  store i8* %incdec.ptr81, i8** %p, align 8
  store i8 120, i8* %62, align 1
  %63 = load i8, i8* %c, align 1
  %conv82 = sext i8 %63 to i32
  %and = and i32 %conv82, 240
  %shr = ashr i32 %and, 4
  %idxprom = sext i32 %shr to i64
  %64 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx83 = getelementptr i8, i8* %64, i64 %idxprom
  %65 = load i8, i8* %arrayidx83, align 1
  %66 = load i8*, i8** %p, align 8
  %incdec.ptr84 = getelementptr i8, i8* %66, i32 1
  store i8* %incdec.ptr84, i8** %p, align 8
  store i8 %65, i8* %66, align 1
  %67 = load i8, i8* %c, align 1
  %conv85 = sext i8 %67 to i32
  %and86 = and i32 %conv85, 15
  %idxprom87 = sext i32 %and86 to i64
  %68 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx88 = getelementptr i8, i8* %68, i64 %idxprom87
  %69 = load i8, i8* %arrayidx88, align 1
  %70 = load i8*, i8** %p, align 8
  %incdec.ptr89 = getelementptr i8, i8* %70, i32 1
  store i8* %incdec.ptr89, i8** %p, align 8
  store i8 %69, i8* %70, align 1
  br label %if.end.92

if.else.90:                                       ; preds = %lor.lhs.false.75
  %71 = load i8, i8* %c, align 1
  %72 = load i8*, i8** %p, align 8
  %incdec.ptr91 = getelementptr i8, i8* %72, i32 1
  store i8* %incdec.ptr91, i8** %p, align 8
  store i8 %71, i8* %72, align 1
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.then.79
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.66
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.59
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.52
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.45
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.38
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.97
  %73 = load i64, i64* %i, align 8
  %inc = add i64 %73, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.28

for.end.99:                                       ; preds = %for.cond.28
  %74 = load i32, i32* %quote, align 4
  %conv100 = trunc i32 %74 to i8
  %75 = load i8*, i8** %p, align 8
  %incdec.ptr101 = getelementptr i8, i8* %75, i32 1
  store i8* %incdec.ptr101, i8** %p, align 8
  store i8 %conv100, i8* %75, align 1
  br label %while.cond.102

while.cond.102:                                   ; preds = %while.body.104, %for.end.99
  %76 = load i8*, i8** %quote_postfix, align 8
  %77 = load i8, i8* %76, align 1
  %tobool103 = icmp ne i8 %77, 0
  br i1 %tobool103, label %while.body.104, label %while.end.107

while.body.104:                                   ; preds = %while.cond.102
  %78 = load i8*, i8** %quote_postfix, align 8
  %incdec.ptr105 = getelementptr i8, i8* %78, i32 1
  store i8* %incdec.ptr105, i8** %quote_postfix, align 8
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %p, align 8
  %incdec.ptr106 = getelementptr i8, i8* %80, i32 1
  store i8* %incdec.ptr106, i8** %p, align 8
  store i8 %79, i8* %80, align 1
  br label %while.cond.102

while.end.107:                                    ; preds = %while.cond.102
  %81 = load i8*, i8** %buffer, align 8
  %82 = load i8*, i8** %p, align 8
  %83 = load i8*, i8** %buffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %82 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %83 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call108 = call %struct._object* @PyUnicode_DecodeASCII(i8* %81, i64 %sub.ptr.sub, i8* null)
  store %struct._object* %call108, %struct._object** %v, align 8
  %84 = load i8*, i8** %buffer, align 8
  call void @PyObject_Free(i8* %84)
  %85 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %85, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end.107, %if.then.2, %if.then
  %86 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %86
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_str(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load i32, i32* @Py_BytesWarningFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_BytesWarning, align 8
  %call = call i32 @PyErr_WarnEx(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i64 1)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyByteArrayObject*
  %call4 = call %struct._object* @bytearray_repr(%struct.PyByteArrayObject* %3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_richcompare(%struct._object* %self, %struct._object* %other, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %self_size = alloca i64, align 8
  %other_size = alloca i64, align 8
  %self_bytes = alloca %struct.bufferinfo, align 8
  %other_bytes = alloca %struct.bufferinfo, align 8
  %res = alloca %struct._object*, align 8
  %minsize = alloca i64, align 8
  %cmp = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i32 @PyObject_IsInstance(%struct._object* %0, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %other.addr, align 8
  %call1 = call i32 @PyObject_IsInstance(%struct._object* %1, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end.12

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* @Py_BytesWarningFlag, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* %op.addr, align 4
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %op.addr, align 4
  %cmp6 = icmp eq i32 %4, 3
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %lor.lhs.false.5, %land.lhs.true
  %5 = load %struct._object*, %struct._object** @PyExc_BytesWarning, align 8
  %call8 = call i32 @PyErr_WarnEx(%struct._object* %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0), i64 1)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %lor.lhs.false.5, %if.then
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %call13 = call i64 @_getbuffer(%struct._object* %7, %struct.bufferinfo* %self_bytes)
  store i64 %call13, i64* %self_size, align 8
  %8 = load i64, i64* %self_size, align 8
  %cmp14 = icmp slt i64 %8, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  call void @PyErr_Clear()
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc16 = add i64 %9, 1
  store i64 %inc16, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %10 = load %struct._object*, %struct._object** %other.addr, align 8
  %call18 = call i64 @_getbuffer(%struct._object* %10, %struct.bufferinfo* %other_bytes)
  store i64 %call18, i64* %other_size, align 8
  %11 = load i64, i64* %other_size, align 8
  %cmp19 = icmp slt i64 %11, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  call void @PyErr_Clear()
  call void @PyBuffer_Release(%struct.bufferinfo* %self_bytes)
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc21 = add i64 %12, 1
  store i64 %inc21, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.17
  %13 = load i64, i64* %self_size, align 8
  %14 = load i64, i64* %other_size, align 8
  %cmp23 = icmp ne i64 %13, %14
  br i1 %cmp23, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %if.end.22
  %15 = load i32, i32* %op.addr, align 4
  %cmp25 = icmp eq i32 %15, 2
  br i1 %cmp25, label %if.then.28, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true.24
  %16 = load i32, i32* %op.addr, align 4
  %cmp27 = icmp eq i32 %16, 3
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %lor.lhs.false.26, %land.lhs.true.24
  %17 = load i32, i32* %op.addr, align 4
  %cmp29 = icmp eq i32 %17, 3
  %conv = zext i1 %cmp29 to i32
  store i32 %conv, i32* %cmp, align 4
  br label %if.end.66

if.else:                                          ; preds = %lor.lhs.false.26, %if.end.22
  %18 = load i64, i64* %self_size, align 8
  store i64 %18, i64* %minsize, align 8
  %19 = load i64, i64* %other_size, align 8
  %20 = load i64, i64* %minsize, align 8
  %cmp30 = icmp slt i64 %19, %20
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else
  %21 = load i64, i64* %other_size, align 8
  store i64 %21, i64* %minsize, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.else
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %self_bytes, i32 0, i32 0
  %22 = load i8*, i8** %buf, align 8
  %buf34 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %other_bytes, i32 0, i32 0
  %23 = load i8*, i8** %buf34, align 8
  %24 = load i64, i64* %minsize, align 8
  %call35 = call i32 @memcmp(i8* %22, i8* %23, i64 %24) #7
  store i32 %call35, i32* %cmp, align 4
  %25 = load i32, i32* %cmp, align 4
  %cmp36 = icmp eq i32 %25, 0
  br i1 %cmp36, label %if.then.38, label %if.end.48

if.then.38:                                       ; preds = %if.end.33
  %26 = load i64, i64* %self_size, align 8
  %27 = load i64, i64* %other_size, align 8
  %cmp39 = icmp slt i64 %26, %27
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.then.38
  store i32 -1, i32* %cmp, align 4
  br label %if.end.47

if.else.42:                                       ; preds = %if.then.38
  %28 = load i64, i64* %self_size, align 8
  %29 = load i64, i64* %other_size, align 8
  %cmp43 = icmp sgt i64 %28, %29
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.else.42
  store i32 1, i32* %cmp, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.else.42
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.41
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.33
  %30 = load i32, i32* %op.addr, align 4
  switch i32 %30, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.51
    i32 2, label %sw.bb.54
    i32 3, label %sw.bb.57
    i32 4, label %sw.bb.60
    i32 5, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end.48
  %31 = load i32, i32* %cmp, align 4
  %cmp49 = icmp slt i32 %31, 0
  %conv50 = zext i1 %cmp49 to i32
  store i32 %conv50, i32* %cmp, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.48
  %32 = load i32, i32* %cmp, align 4
  %cmp52 = icmp sle i32 %32, 0
  %conv53 = zext i1 %cmp52 to i32
  store i32 %conv53, i32* %cmp, align 4
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.end.48
  %33 = load i32, i32* %cmp, align 4
  %cmp55 = icmp eq i32 %33, 0
  %conv56 = zext i1 %cmp55 to i32
  store i32 %conv56, i32* %cmp, align 4
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end.48
  %34 = load i32, i32* %cmp, align 4
  %cmp58 = icmp ne i32 %34, 0
  %conv59 = zext i1 %cmp58 to i32
  store i32 %conv59, i32* %cmp, align 4
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.48
  %35 = load i32, i32* %cmp, align 4
  %cmp61 = icmp sgt i32 %35, 0
  %conv62 = zext i1 %cmp61 to i32
  store i32 %conv62, i32* %cmp, align 4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.48
  %36 = load i32, i32* %cmp, align 4
  %cmp64 = icmp sge i32 %36, 0
  %conv65 = zext i1 %cmp64 to i32
  store i32 %conv65, i32* %cmp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.48, %sw.bb.63, %sw.bb.60, %sw.bb.57, %sw.bb.54, %sw.bb.51, %sw.bb
  br label %if.end.66

if.end.66:                                        ; preds = %sw.epilog, %if.then.28
  %37 = load i32, i32* %cmp, align 4
  %tobool67 = icmp ne i32 %37, 0
  %cond = select i1 %tobool67, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %res, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %self_bytes)
  call void @PyBuffer_Release(%struct.bufferinfo* %other_bytes)
  %38 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt, align 8
  %inc68 = add i64 %39, 1
  store i64 %inc68, i64* %ob_refcnt, align 8
  %40 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.then.20, %if.then.15, %if.end.11, %if.then.10
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_iter(%struct._object* %seq) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %it = alloca %struct.bytesiterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  %0 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyByteArray_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyByteArray_Type to %struct._typeobject*))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.129, i32 0, i32 0), i32 3089)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %call2 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyByteArrayIter_Type to %struct._typeobject*))
  %4 = bitcast %struct._object* %call2 to %struct.bytesiterobject*
  store %struct.bytesiterobject* %4, %struct.bytesiterobject** %it, align 8
  %5 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it, align 8
  %cmp3 = icmp eq %struct.bytesiterobject* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it, align 8
  %it_index = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %6, i32 0, i32 1
  store i64 0, i64* %it_index, align 8
  %7 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct._object*, %struct._object** %seq.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyByteArrayObject*
  %11 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it, align 8
  %it_seq = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %11, i32 0, i32 2
  store %struct.PyByteArrayObject* %10, %struct.PyByteArrayObject** %it_seq, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %12 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it, align 8
  %13 = bitcast %struct.bytesiterobject* %12 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %13, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %14 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %15 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %15, 1
  %cmp6 = icmp ne i64 %shr, -2
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.130, i32 0, i32 0)) #8
  unreachable

if.end.8:                                         ; preds = %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.8
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %16 to %struct.anon.0*
  %gc_refs11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc10, i32 0, i32 2
  %17 = load i64, i64* %gc_refs11, align 8
  %and = and i64 %17, 1
  %or = or i64 %and, -6
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc12 = bitcast %union._gc_head* %18 to %struct.anon.0*
  %gc_refs13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc12, i32 0, i32 2
  store i64 %or, i64* %gc_refs13, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.9
  %19 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %20 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc14, i32 0, i32 0
  store %union._gc_head* %19, %union._gc_head** %gc_next, align 8
  %21 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc15 = bitcast %union._gc_head* %21 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc15, i32 0, i32 1
  %22 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc16 = bitcast %union._gc_head* %23 to %struct.anon.0*
  %gc_prev17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc16, i32 0, i32 1
  store %union._gc_head* %22, %union._gc_head** %gc_prev17, align 8
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8
  %25 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc18 = bitcast %union._gc_head* %25 to %struct.anon.0*
  %gc_prev19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc18, i32 0, i32 1
  %26 = load %union._gc_head*, %union._gc_head** %gc_prev19, align 8
  %gc20 = bitcast %union._gc_head* %26 to %struct.anon.0*
  %gc_next21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc20, i32 0, i32 0
  store %union._gc_head* %24, %union._gc_head** %gc_next21, align 8
  %27 = load %union._gc_head*, %union._gc_head** %g, align 8
  %28 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc22 = bitcast %union._gc_head* %28 to %struct.anon.0*
  %gc_prev23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc22, i32 0, i32 1
  store %union._gc_head* %27, %union._gc_head** %gc_prev23, align 8
  br label %do.end.24

do.end.24:                                        ; preds = %do.end
  %29 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it, align 8
  %30 = bitcast %struct.bytesiterobject* %29 to %struct._object*
  store %struct._object* %30, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.24, %if.then.4, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

; Function Attrs: nounwind uwtable
define internal i32 @bytearray_init(%struct.PyByteArrayObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  %count = alloca i64, align 8
  %it = alloca %struct._object*, align 8
  %iternext = alloca %struct._object* (%struct._object*)*, align 8
  %encoded = alloca %struct._object*, align 8
  %new = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %view = alloca %struct.bufferinfo, align 8
  %item = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %value = alloca i32, align 4
  %_py_decref_tmp118 = alloca %struct._object*, align 8
  %_py_decref_tmp151 = alloca %struct._object*, align 8
  %_py_decref_tmp163 = alloca %struct._object*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %arg, align 8
  store i8* null, i8** %encoding, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %4 = bitcast %struct.PyByteArrayObject* %3 to %struct._object*
  %call = call i32 @PyByteArray_Resize(%struct._object* %4, i64 0)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %6 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call4 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %5, %struct._object* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.119, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @bytearray_init.kwlist, i32 0, i32 0), %struct._object** %arg, i8** %encoding, i8** %errors)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** %arg, align 8
  %cmp7 = icmp eq %struct._object* %7, null
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.6
  %8 = load i8*, i8** %encoding, align 8
  %cmp9 = icmp ne i8* %8, null
  br i1 %cmp9, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %9 = load i8*, i8** %errors, align 8
  %cmp10 = icmp ne i8* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.then.8
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.120, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19
  %13 = load i64, i64* %tp_flags, align 8
  %and = and i64 %13, 268435456
  %cmp14 = icmp ne i64 %and, 0
  br i1 %cmp14, label %if.then.15, label %if.end.42

if.then.15:                                       ; preds = %if.end.13
  %14 = load i8*, i8** %encoding, align 8
  %cmp16 = icmp eq i8* %14, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.15
  %16 = load %struct._object*, %struct._object** %arg, align 8
  %17 = load i8*, i8** %encoding, align 8
  %18 = load i8*, i8** %errors, align 8
  %call19 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %16, i8* %17, i8* %18)
  store %struct._object* %call19, %struct._object** %encoded, align 8
  %19 = load %struct._object*, %struct._object** %encoded, align 8
  %cmp20 = icmp eq %struct._object* %19, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %20 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %21 = load %struct._object*, %struct._object** %encoded, align 8
  %call23 = call %struct._object* @bytearray_iconcat(%struct.PyByteArrayObject* %20, %struct._object* %21)
  store %struct._object* %call23, %struct._object** %new, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.22
  %22 = load %struct._object*, %struct._object** %encoded, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %do.body
  br label %if.end.27

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.27
  %29 = load %struct._object*, %struct._object** %new, align 8
  %cmp28 = icmp eq %struct._object* %29, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %do.end
  br label %do.body.31

do.body.31:                                       ; preds = %if.end.30
  %30 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp32, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %32, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %35(%struct._object* %36)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.13
  %37 = load i8*, i8** %encoding, align 8
  %cmp43 = icmp ne i8* %37, null
  br i1 %cmp43, label %if.then.46, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end.42
  %38 = load i8*, i8** %errors, align 8
  %cmp45 = icmp ne i8* %38, null
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false.44, %if.end.42
  %39 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %lor.lhs.false.44
  %40 = load %struct._object*, %struct._object** %arg, align 8
  %41 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call48 = call i64 @PyNumber_AsSsize_t(%struct._object* %40, %struct._object* %41)
  store i64 %call48, i64* %count, align 8
  %42 = load i64, i64* %count, align 8
  %cmp49 = icmp eq i64 %42, -1
  br i1 %cmp49, label %land.lhs.true, label %if.else.57

land.lhs.true:                                    ; preds = %if.end.47
  %call50 = call %struct._object* @PyErr_Occurred()
  %tobool51 = icmp ne %struct._object* %call50, null
  br i1 %tobool51, label %if.then.52, label %if.else.57

if.then.52:                                       ; preds = %land.lhs.true
  %43 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call53 = call i32 @PyErr_ExceptionMatches(%struct._object* %43)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.52
  store i32 -1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.52
  call void @PyErr_Clear()
  br label %if.end.70

if.else.57:                                       ; preds = %land.lhs.true, %if.end.47
  %44 = load i64, i64* %count, align 8
  %cmp58 = icmp slt i64 %44, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.else.57
  %45 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.123, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else.60:                                       ; preds = %if.else.57
  %46 = load i64, i64* %count, align 8
  %cmp61 = icmp sgt i64 %46, 0
  br i1 %cmp61, label %if.then.62, label %if.end.69

if.then.62:                                       ; preds = %if.else.60
  %47 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %48 = bitcast %struct.PyByteArrayObject* %47 to %struct._object*
  %49 = load i64, i64* %count, align 8
  %call63 = call i32 @PyByteArray_Resize(%struct._object* %48, i64 %49)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.62
  store i32 -1, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.62
  %50 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %51 = bitcast %struct.PyByteArrayObject* %50 to %struct.PyVarObject*
  %ob_size67 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %51, i32 0, i32 1
  %52 = load i64, i64* %ob_size67, align 8
  %tobool68 = icmp ne i64 %52, 0
  br i1 %tobool68, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.66
  %53 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %53, i32 0, i32 3
  %54 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.66
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %54, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %55 = load i64, i64* %count, align 8
  call void @llvm.memset.p0i8.i64(i8* %cond, i8 0, i64 %55, i32 1, i1 false)
  br label %if.end.69

if.end.69:                                        ; preds = %cond.end, %if.else.60
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.56
  %56 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 18
  %58 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp72 = icmp ne %struct.PyBufferProcs* %58, null
  br i1 %cmp72, label %land.lhs.true.73, label %if.end.97

land.lhs.true.73:                                 ; preds = %if.end.70
  %59 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_as_buffer75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 18
  %61 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer75, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %61, i32 0, i32 0
  %62 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp76 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %62, null
  br i1 %cmp76, label %if.then.77, label %if.end.97

if.then.77:                                       ; preds = %land.lhs.true.73
  %63 = load %struct._object*, %struct._object** %arg, align 8
  %call78 = call i32 @PyObject_GetBuffer(%struct._object* %63, %struct.bufferinfo* %view, i32 284)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.77
  store i32 -1, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.then.77
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %64 = load i64, i64* %len, align 8
  store i64 %64, i64* %size, align 8
  %65 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %66 = bitcast %struct.PyByteArrayObject* %65 to %struct._object*
  %67 = load i64, i64* %size, align 8
  %call82 = call i32 @PyByteArray_Resize(%struct._object* %66, i64 %67)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  br label %fail

if.end.85:                                        ; preds = %if.end.81
  %68 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %69 = bitcast %struct.PyByteArrayObject* %68 to %struct.PyVarObject*
  %ob_size86 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %69, i32 0, i32 1
  %70 = load i64, i64* %ob_size86, align 8
  %tobool87 = icmp ne i64 %70, 0
  br i1 %tobool87, label %cond.true.88, label %cond.false.90

cond.true.88:                                     ; preds = %if.end.85
  %71 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start89 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %71, i32 0, i32 3
  %72 = load i8*, i8** %ob_start89, align 8
  br label %cond.end.91

cond.false.90:                                    ; preds = %if.end.85
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.88
  %cond92 = phi i8* [ %72, %cond.true.88 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.90 ]
  %73 = load i64, i64* %size, align 8
  %call93 = call i32 @PyBuffer_ToContiguous(i8* %cond92, %struct.bufferinfo* %view, i64 %73, i8 signext 67)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %cond.end.91
  br label %fail

if.end.96:                                        ; preds = %cond.end.91
  call void @PyBuffer_Release(%struct.bufferinfo* %view)
  store i32 0, i32* %retval
  br label %return

fail:                                             ; preds = %if.then.95, %if.then.84
  call void @PyBuffer_Release(%struct.bufferinfo* %view)
  store i32 -1, i32* %retval
  br label %return

if.end.97:                                        ; preds = %land.lhs.true.73, %if.end.70
  %74 = load %struct._object*, %struct._object** %arg, align 8
  %call98 = call %struct._object* @PyObject_GetIter(%struct._object* %74)
  store %struct._object* %call98, %struct._object** %it, align 8
  %75 = load %struct._object*, %struct._object** %it, align 8
  %cmp99 = icmp eq %struct._object* %75, null
  br i1 %cmp99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.97
  store i32 -1, i32* %retval
  br label %return

if.end.101:                                       ; preds = %if.end.97
  %76 = load %struct._object*, %struct._object** %it, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 26
  %tp_iternext103 = bitcast {}** %tp_iternext to %struct._object* (%struct._object*)**
  %78 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext103, align 8
  store %struct._object* (%struct._object*)* %78, %struct._object* (%struct._object*)** %iternext, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.148, %if.end.101
  %79 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %iternext, align 8
  %80 = load %struct._object*, %struct._object** %it, align 8
  %call104 = call %struct._object* %79(%struct._object* %80)
  store %struct._object* %call104, %struct._object** %item, align 8
  %81 = load %struct._object*, %struct._object** %item, align 8
  %cmp105 = icmp eq %struct._object* %81, null
  br i1 %cmp105, label %if.then.106, label %if.end.115

if.then.106:                                      ; preds = %for.cond
  %call107 = call %struct._object* @PyErr_Occurred()
  %tobool108 = icmp ne %struct._object* %call107, null
  br i1 %tobool108, label %if.then.109, label %if.end.114

if.then.109:                                      ; preds = %if.then.106
  %82 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call110 = call i32 @PyErr_ExceptionMatches(%struct._object* %82)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %if.then.109
  br label %error

if.end.113:                                       ; preds = %if.then.109
  call void @PyErr_Clear()
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.106
  br label %for.end

if.end.115:                                       ; preds = %for.cond
  %83 = load %struct._object*, %struct._object** %item, align 8
  %call116 = call i32 @_getbytevalue(%struct._object* %83, i32* %value)
  store i32 %call116, i32* %rc, align 4
  br label %do.body.117

do.body.117:                                      ; preds = %if.end.115
  %84 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %84, %struct._object** %_py_decref_tmp118, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt119, align 8
  %dec120 = add i64 %86, -1
  store i64 %dec120, i64* %ob_refcnt119, align 8
  %cmp121 = icmp ne i64 %dec120, 0
  br i1 %cmp121, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %do.body.117
  br label %if.end.126

if.else.123:                                      ; preds = %do.body.117
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8
  %tp_dealloc125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  call void %89(%struct._object* %90)
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.122
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  %91 = load i32, i32* %rc, align 4
  %tobool128 = icmp ne i32 %91, 0
  br i1 %tobool128, label %if.end.130, label %if.then.129

if.then.129:                                      ; preds = %do.end.127
  br label %error

if.end.130:                                       ; preds = %do.end.127
  %92 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %93 = bitcast %struct.PyByteArrayObject* %92 to %struct.PyVarObject*
  %ob_size131 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %93, i32 0, i32 1
  %94 = load i64, i64* %ob_size131, align 8
  %95 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_alloc = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %95, i32 0, i32 1
  %96 = load i64, i64* %ob_alloc, align 8
  %cmp132 = icmp slt i64 %94, %96
  br i1 %cmp132, label %if.then.133, label %if.else.135

if.then.133:                                      ; preds = %if.end.130
  %97 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %98 = bitcast %struct.PyByteArrayObject* %97 to %struct.PyVarObject*
  %ob_size134 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %98, i32 0, i32 1
  %99 = load i64, i64* %ob_size134, align 8
  %inc = add i64 %99, 1
  store i64 %inc, i64* %ob_size134, align 8
  br label %if.end.141

if.else.135:                                      ; preds = %if.end.130
  %100 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %101 = bitcast %struct.PyByteArrayObject* %100 to %struct._object*
  %102 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %103 = bitcast %struct.PyByteArrayObject* %102 to %struct.PyVarObject*
  %ob_size136 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %103, i32 0, i32 1
  %104 = load i64, i64* %ob_size136, align 8
  %add = add i64 %104, 1
  %call137 = call i32 @PyByteArray_Resize(%struct._object* %101, i64 %add)
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.else.135
  br label %error

if.end.140:                                       ; preds = %if.else.135
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.133
  %105 = load i32, i32* %value, align 4
  %conv = trunc i32 %105 to i8
  %106 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %107 = bitcast %struct.PyByteArrayObject* %106 to %struct.PyVarObject*
  %ob_size142 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %107, i32 0, i32 1
  %108 = load i64, i64* %ob_size142, align 8
  %sub = sub i64 %108, 1
  %109 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %110 = bitcast %struct.PyByteArrayObject* %109 to %struct.PyVarObject*
  %ob_size143 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %110, i32 0, i32 1
  %111 = load i64, i64* %ob_size143, align 8
  %tobool144 = icmp ne i64 %111, 0
  br i1 %tobool144, label %cond.true.145, label %cond.false.147

cond.true.145:                                    ; preds = %if.end.141
  %112 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start146 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %112, i32 0, i32 3
  %113 = load i8*, i8** %ob_start146, align 8
  br label %cond.end.148

cond.false.147:                                   ; preds = %if.end.141
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.147, %cond.true.145
  %cond149 = phi i8* [ %113, %cond.true.145 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.147 ]
  %arrayidx = getelementptr i8, i8* %cond149, i64 %sub
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.cond

for.end:                                          ; preds = %if.end.114
  br label %do.body.150

do.body.150:                                      ; preds = %for.end
  %114 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %114, %struct._object** %_py_decref_tmp151, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  %ob_refcnt152 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt152, align 8
  %dec153 = add i64 %116, -1
  store i64 %dec153, i64* %ob_refcnt152, align 8
  %cmp154 = icmp ne i64 %dec153, 0
  br i1 %cmp154, label %if.then.156, label %if.else.157

if.then.156:                                      ; preds = %do.body.150
  br label %if.end.160

if.else.157:                                      ; preds = %do.body.150
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  %ob_type158 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 1
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type158, align 8
  %tp_dealloc159 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %118, i32 0, i32 4
  %119 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc159, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  call void %119(%struct._object* %120)
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.157, %if.then.156
  br label %do.end.161

do.end.161:                                       ; preds = %if.end.160
  store i32 0, i32* %retval
  br label %return

error:                                            ; preds = %if.then.139, %if.then.129, %if.then.112
  br label %do.body.162

do.body.162:                                      ; preds = %error
  %121 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %121, %struct._object** %_py_decref_tmp163, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  %ob_refcnt164 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 0
  %123 = load i64, i64* %ob_refcnt164, align 8
  %dec165 = add i64 %123, -1
  store i64 %dec165, i64* %ob_refcnt164, align 8
  %cmp166 = icmp ne i64 %dec165, 0
  br i1 %cmp166, label %if.then.168, label %if.else.169

if.then.168:                                      ; preds = %do.body.162
  br label %if.end.172

if.else.169:                                      ; preds = %do.body.162
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  %ob_type170 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 1
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type170, align 8
  %tp_dealloc171 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i32 0, i32 4
  %126 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc171, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  call void %126(%struct._object* %127)
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.169, %if.then.168
  br label %do.end.173

do.end.173:                                       ; preds = %if.end.172
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.173, %do.end.161, %if.then.100, %fail, %if.end.96, %if.then.80, %if.end.69, %if.then.65, %if.then.59, %if.then.55, %if.then.46, %do.end.41, %if.then.29, %if.then.21, %if.then.17, %if.end.12, %if.then.11, %if.then.5, %if.then.2
  %128 = load i32, i32* %retval
  ret i32 %128
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @bytearrayiter_dealloc(%struct.bytesiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.bytesiterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesiterobject* %it, %struct.bytesiterobject** %it.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %1 = bitcast %struct.bytesiterobject* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon.0*
  %gc_refs3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon.0*
  %gc_next7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon.0*
  %gc_prev9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon.0*
  %gc_next11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon.0*
  %gc_prev13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon.0*
  %gc_next15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %14, i32 0, i32 2
  %15 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %it_seq, align 8
  %16 = bitcast %struct.PyByteArrayObject* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %17, null
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %do.body.17
  br label %do.body.18

do.body.18:                                       ; preds = %if.then
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body.18
  br label %if.end

if.else:                                          ; preds = %do.body.18
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %do.end.21

do.end.21:                                        ; preds = %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.21, %do.body.17
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %25 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %26 = bitcast %struct.bytesiterobject* %25 to i8*
  call void @PyObject_GC_Del(i8* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @bytearrayiter_traverse(%struct.bytesiterobject* %it, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.bytesiterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.bytesiterobject* %it, %struct.bytesiterobject** %it.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %0, i32 0, i32 2
  %1 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %it_seq, align 8
  %tobool = icmp ne %struct.PyByteArrayObject* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %3, i32 0, i32 2
  %4 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %it_seq1, align 8
  %5 = bitcast %struct.PyByteArrayObject* %4 to %struct._object*
  %6 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %5, i8* %6)
  store i32 %call, i32* %vret, align 4
  %7 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearrayiter_next(%struct.bytesiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.bytesiterobject*, align 8
  %seq = alloca %struct.PyByteArrayObject*, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bytesiterobject* %it, %struct.bytesiterobject** %it.addr, align 8
  %0 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %0, i32 0, i32 2
  %1 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %it_seq, align 8
  store %struct.PyByteArrayObject* %1, %struct.PyByteArrayObject** %seq, align 8
  %2 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %seq, align 8
  %cmp = icmp eq %struct.PyByteArrayObject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %3, i32 0, i32 1
  %4 = load i64, i64* %it_index, align 8
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %seq, align 8
  %6 = bitcast %struct.PyByteArrayObject* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp slt i64 %4, %7
  br i1 %cmp1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_index3 = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %8, i32 0, i32 1
  %9 = load i64, i64* %it_index3, align 8
  %10 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %seq, align 8
  %11 = bitcast %struct.PyByteArrayObject* %10 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size4, align 8
  %tobool = icmp ne i64 %12, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %13 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %seq, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %13, i32 0, i32 3
  %14 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %14, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %arrayidx = getelementptr i8, i8* %cond, i64 %9
  %15 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %15 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %item, align 8
  %16 = load %struct._object*, %struct._object** %item, align 8
  %cmp5 = icmp ne %struct._object* %16, null
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %cond.end
  %17 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_index8 = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %17, i32 0, i32 1
  %18 = load i64, i64* %it_index8, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %it_index8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %cond.end
  %19 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %20 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %seq, align 8
  %21 = bitcast %struct.PyByteArrayObject* %20 to %struct._object*
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %28 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_seq15 = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %28, i32 0, i32 2
  store %struct.PyByteArrayObject* null, %struct.PyByteArrayObject** %it_seq15, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.9, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

declare void @PyErr_Print() #1

declare %struct._object* @PyUnicode_DecodeASCII(i8*, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal i64 @bytearray_length(%struct.PyByteArrayObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_repeat(%struct.PyByteArrayObject* %self, i64 %count) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %count.addr = alloca i64, align 8
  %result = alloca %struct.PyByteArrayObject*, align 8
  %mysize = alloca i64, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i64, i64* %count.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %count.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %2 = bitcast %struct.PyByteArrayObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %mysize, align 8
  %4 = load i64, i64* %count.addr, align 8
  %cmp1 = icmp sgt i64 %4, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %5 = load i64, i64* %mysize, align 8
  %6 = load i64, i64* %count.addr, align 8
  %div = sdiv i64 9223372036854775807, %6
  %cmp2 = icmp sgt i64 %5, %div
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %7 = load i64, i64* %mysize, align 8
  %8 = load i64, i64* %count.addr, align 8
  %mul = mul i64 %7, %8
  store i64 %mul, i64* %size, align 8
  %9 = load i64, i64* %size, align 8
  %call5 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %9)
  %10 = bitcast %struct._object* %call5 to %struct.PyByteArrayObject*
  store %struct.PyByteArrayObject* %10, %struct.PyByteArrayObject** %result, align 8
  %11 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %cmp6 = icmp ne %struct.PyByteArrayObject* %11, null
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.19

land.lhs.true.7:                                  ; preds = %if.end.4
  %12 = load i64, i64* %size, align 8
  %cmp8 = icmp ne i64 %12, 0
  br i1 %cmp8, label %if.then.9, label %if.end.19

if.then.9:                                        ; preds = %land.lhs.true.7
  %13 = load i64, i64* %mysize, align 8
  %cmp10 = icmp eq i64 %13, 1
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.9
  %14 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %ob_bytes = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %14, i32 0, i32 2
  %15 = load i8*, i8** %ob_bytes, align 8
  %16 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_bytes12 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %16, i32 0, i32 2
  %17 = load i8*, i8** %ob_bytes12, align 8
  %arrayidx = getelementptr i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %18 to i32
  %19 = trunc i32 %conv to i8
  %20 = load i64, i64* %size, align 8
  call void @llvm.memset.p0i8.i64(i8* %15, i8 %19, i64 %20, i32 1, i1 false)
  br label %if.end.18

if.else:                                          ; preds = %if.then.9
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %count.addr, align 8
  %cmp13 = icmp slt i64 %21, %22
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %ob_bytes15 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %23, i32 0, i32 2
  %24 = load i8*, i8** %ob_bytes15, align 8
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %mysize, align 8
  %mul16 = mul i64 %25, %26
  %add.ptr = getelementptr i8, i8* %24, i64 %mul16
  %27 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_bytes17 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %27, i32 0, i32 2
  %28 = load i8*, i8** %ob_bytes17, align 8
  %29 = load i64, i64* %mysize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %28, i64 %29, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i64, i64* %i, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.then.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %land.lhs.true.7, %if.end.4
  %31 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %32 = bitcast %struct.PyByteArrayObject* %31 to %struct._object*
  store %struct._object* %32, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.3
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_getitem(%struct.PyByteArrayObject* %self, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %2 = bitcast %struct.PyByteArrayObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %4 = load i64, i64* %i.addr, align 8
  %add = add i64 %4, %3
  store i64 %add, i64* %i.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %i.addr, align 8
  %cmp1 = icmp slt i64 %5, 0
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, i64* %i.addr, align 8
  %7 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %8 = bitcast %struct.PyByteArrayObject* %7 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size2, align 8
  %cmp3 = icmp sge i64 %6, %9
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %11 = load i64, i64* %i.addr, align 8
  %12 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %13 = bitcast %struct.PyByteArrayObject* %12 to %struct.PyVarObject*
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size6, align 8
  %tobool = icmp ne i64 %14, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %15 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %15, i32 0, i32 3
  %16 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %arrayidx = getelementptr i8, i8* %cond, i64 %11
  %17 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %17 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.4
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal i32 @bytearray_setitem(%struct.PyByteArrayObject* %self, i64 %i, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %i.addr = alloca i64, align 8
  %value.addr = alloca %struct._object*, align 8
  %ival = alloca i32, align 4
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %2 = bitcast %struct.PyByteArrayObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %4 = load i64, i64* %i.addr, align 8
  %add = add i64 %4, %3
  store i64 %add, i64* %i.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %i.addr, align 8
  %cmp1 = icmp slt i64 %5, 0
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, i64* %i.addr, align 8
  %7 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %8 = bitcast %struct.PyByteArrayObject* %7 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size2, align 8
  %cmp3 = icmp sge i64 %6, %9
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %11 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp6 = icmp eq %struct._object* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %12 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %13 = load i64, i64* %i.addr, align 8
  %14 = load i64, i64* %i.addr, align 8
  %add8 = add i64 %14, 1
  %call = call i32 @bytearray_setslice(%struct.PyByteArrayObject* %12, i64 %13, i64 %add8, %struct._object* null)
  store i32 %call, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %15 = load %struct._object*, %struct._object** %value.addr, align 8
  %call10 = call i32 @_getbytevalue(%struct._object* %15, i32* %ival)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  %16 = load i32, i32* %ival, align 4
  %conv = trunc i32 %16 to i8
  %17 = load i64, i64* %i.addr, align 8
  %18 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %19 = bitcast %struct.PyByteArrayObject* %18 to %struct.PyVarObject*
  %ob_size13 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size13, align 8
  %tobool14 = icmp ne i64 %20, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %21 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %21, i32 0, i32 3
  %22 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %arrayidx = getelementptr i8, i8* %cond, i64 %17
  store i8 %conv, i8* %arrayidx, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.11, %if.then.7, %if.then.4
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @bytearray_contains(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %ival = alloca i64, align 8
  %varg = alloca %struct.bufferinfo, align 8
  %pos = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %0, %struct._object* %1)
  store i64 %call, i64* %ival, align 8
  %2 = load i64, i64* %ival, align 8
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true
  call void @PyErr_Clear()
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call2 = call i64 @_getbuffer(%struct._object* %3, %struct.bufferinfo* %varg)
  %cmp3 = icmp slt i64 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  %tobool5 = icmp ne i64 %6, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %8, i32 0, i32 3
  %9 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size6, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %varg, i32 0, i32 0
  %13 = load i8*, i8** %buf, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %varg, i32 0, i32 2
  %14 = load i64, i64* %len, align 8
  %call7 = call i64 @stringlib_find(i8* %cond, i64 %12, i8* %13, i64 %14, i64 0)
  store i64 %call7, i64* %pos, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %varg)
  %15 = load i64, i64* %pos, align 8
  %cmp8 = icmp sge i64 %15, 0
  %conv = zext i1 %cmp8 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true, %entry
  %16 = load i64, i64* %ival, align 8
  %cmp10 = icmp slt i64 %16, 0
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %17 = load i64, i64* %ival, align 8
  %cmp12 = icmp sge i64 %17, 256
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.9
  %18 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false
  %19 = load %struct._object*, %struct._object** %self.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyVarObject*
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size16, align 8
  %tobool17 = icmp ne i64 %21, 0
  br i1 %tobool17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %if.end.15
  %22 = load %struct._object*, %struct._object** %self.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyByteArrayObject*
  %ob_start19 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %23, i32 0, i32 3
  %24 = load i8*, i8** %ob_start19, align 8
  br label %cond.end.21

cond.false.20:                                    ; preds = %if.end.15
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.18
  %cond22 = phi i8* [ %24, %cond.true.18 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.20 ]
  %25 = load i64, i64* %ival, align 8
  %conv23 = trunc i64 %25 to i32
  %26 = load %struct._object*, %struct._object** %self.addr, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyVarObject*
  %ob_size24 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %27, i32 0, i32 1
  %28 = load i64, i64* %ob_size24, align 8
  %call25 = call i8* @memchr(i8* %cond22, i32 %conv23, i64 %28) #7
  %cmp26 = icmp ne i8* %call25, null
  %conv27 = zext i1 %cmp26 to i32
  store i32 %conv27, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.21, %if.then.14, %cond.end, %if.then.4
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_iconcat(%struct.PyByteArrayObject* %self, %struct._object* %other) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %other.addr = alloca %struct._object*, align 8
  %mysize = alloca i64, align 8
  %size = alloca i64, align 8
  %vo = alloca %struct.bufferinfo, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  %0 = load %struct._object*, %struct._object** %other.addr, align 8
  %call = call i64 @_getbuffer(%struct._object* %0, %struct.bufferinfo* %vo)
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %2 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %tp_name, align 8
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %6 = bitcast %struct.PyByteArrayObject* %5 to %struct._object*
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %tp_name2, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %4, i8* %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %10 = bitcast %struct.PyByteArrayObject* %9 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size, align 8
  store i64 %11, i64* %mysize, align 8
  %12 = load i64, i64* %mysize, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vo, i32 0, i32 2
  %13 = load i64, i64* %len, align 8
  %add = add i64 %12, %13
  store i64 %add, i64* %size, align 8
  %14 = load i64, i64* %size, align 8
  %cmp4 = icmp slt i64 %14, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  call void @PyBuffer_Release(%struct.bufferinfo* %vo)
  %call6 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %15 = load i64, i64* %size, align 8
  %16 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_alloc = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_alloc, align 8
  %cmp8 = icmp slt i64 %15, %17
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  %18 = load i64, i64* %size, align 8
  %19 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %20 = bitcast %struct.PyByteArrayObject* %19 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  store i64 %18, i64* %ob_size10, align 8
  %21 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %22 = bitcast %struct.PyByteArrayObject* %21 to %struct.PyVarObject*
  %ob_size11 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %22, i32 0, i32 1
  %23 = load i64, i64* %ob_size11, align 8
  %24 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %25 = bitcast %struct.PyByteArrayObject* %24 to %struct.PyVarObject*
  %ob_size12 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ob_size12, align 8
  %tobool = icmp ne i64 %26, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %27 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %27, i32 0, i32 3
  %28 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %28, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %arrayidx = getelementptr i8, i8* %cond, i64 %23
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.17

if.else:                                          ; preds = %if.end.7
  %29 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %30 = bitcast %struct.PyByteArrayObject* %29 to %struct._object*
  %31 = load i64, i64* %size, align 8
  %call13 = call i32 @PyByteArray_Resize(%struct._object* %30, i64 %31)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else
  call void @PyBuffer_Release(%struct.bufferinfo* %vo)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %cond.end
  %32 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %33 = bitcast %struct.PyByteArrayObject* %32 to %struct.PyVarObject*
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %33, i32 0, i32 1
  %34 = load i64, i64* %ob_size18, align 8
  %tobool19 = icmp ne i64 %34, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.end.17
  %35 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start21 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %35, i32 0, i32 3
  %36 = load i8*, i8** %ob_start21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.17
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi i8* [ %36, %cond.true.20 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.22 ]
  %37 = load i64, i64* %mysize, align 8
  %add.ptr = getelementptr i8, i8* %cond24, i64 %37
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vo, i32 0, i32 0
  %38 = load i8*, i8** %buf, align 8
  %len25 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vo, i32 0, i32 2
  %39 = load i64, i64* %len25, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %38, i64 %39, i32 1, i1 false)
  call void @PyBuffer_Release(%struct.bufferinfo* %vo)
  %40 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %41 = bitcast %struct.PyByteArrayObject* %40 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %42, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %43 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %44 = bitcast %struct.PyByteArrayObject* %43 to %struct._object*
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end.23, %if.then.15, %if.then.5, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_irepeat(%struct.PyByteArrayObject* %self, i64 %count) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %count.addr = alloca i64, align 8
  %mysize = alloca i64, align 8
  %size = alloca i64, align 8
  %buf = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i64, i64* %count.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %count.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %2 = bitcast %struct.PyByteArrayObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %mysize, align 8
  %4 = load i64, i64* %count.addr, align 8
  %cmp1 = icmp sgt i64 %4, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %5 = load i64, i64* %mysize, align 8
  %6 = load i64, i64* %count.addr, align 8
  %div = sdiv i64 9223372036854775807, %6
  %cmp2 = icmp sgt i64 %5, %div
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %7 = load i64, i64* %mysize, align 8
  %8 = load i64, i64* %count.addr, align 8
  %mul = mul i64 %7, %8
  store i64 %mul, i64* %size, align 8
  %9 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %10 = bitcast %struct.PyByteArrayObject* %9 to %struct._object*
  %11 = load i64, i64* %size, align 8
  %call5 = call i32 @PyByteArray_Resize(%struct._object* %10, i64 %11)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %12 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %13 = bitcast %struct.PyByteArrayObject* %12 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size9, align 8
  %tobool = icmp ne i64 %14, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %15 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %15, i32 0, i32 3
  %16 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %buf, align 8
  %17 = load i64, i64* %mysize, align 8
  %cmp10 = icmp eq i64 %17, 1
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %cond.end
  %18 = load i8*, i8** %buf, align 8
  %19 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %20 to i32
  %21 = trunc i32 %conv to i8
  %22 = load i64, i64* %size, align 8
  call void @llvm.memset.p0i8.i64(i8* %18, i8 %21, i64 %22, i32 1, i1 false)
  br label %if.end.15

if.else:                                          ; preds = %cond.end
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %23 = load i64, i64* %i, align 8
  %24 = load i64, i64* %count.addr, align 8
  %cmp12 = icmp slt i64 %23, %24
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i8*, i8** %buf, align 8
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %mysize, align 8
  %mul14 = mul i64 %26, %27
  %add.ptr = getelementptr i8, i8* %25, i64 %mul14
  %28 = load i8*, i8** %buf, align 8
  %29 = load i64, i64* %mysize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %28, i64 %29, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i64, i64* %i, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %if.then.11
  %31 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %32 = bitcast %struct.PyByteArrayObject* %31 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt, align 8
  %inc16 = add i64 %33, 1
  store i64 %inc16, i64* %ob_refcnt, align 8
  %34 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %35 = bitcast %struct.PyByteArrayObject* %34 to %struct._object*
  store %struct._object* %35, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.7, %if.then.3
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @bytearray_setslice(%struct.PyByteArrayObject* %self, i64 %lo, i64 %hi, %struct._object* %values) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %lo.addr = alloca i64, align 8
  %hi.addr = alloca i64, align 8
  %values.addr = alloca %struct._object*, align 8
  %needed = alloca i64, align 8
  %bytes = alloca i8*, align 8
  %vbytes = alloca %struct.bufferinfo, align 8
  %res = alloca i32, align 4
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i64 %lo, i64* %lo.addr, align 8
  store i64 %hi, i64* %hi.addr, align 8
  store %struct._object* %values, %struct._object** %values.addr, align 8
  store i32 0, i32* %res, align 4
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbytes, i32 0, i32 2
  store i64 -1, i64* %len, align 8
  %0 = load %struct._object*, %struct._object** %values.addr, align 8
  %1 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %2 = bitcast %struct.PyByteArrayObject* %1 to %struct._object*
  %cmp = icmp eq %struct._object* %0, %2
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %values.addr, align 8
  %call = call %struct._object* @PyByteArray_FromObject(%struct._object* %3)
  store %struct._object* %call, %struct._object** %values.addr, align 8
  %4 = load %struct._object*, %struct._object** %values.addr, align 8
  %cmp1 = icmp eq %struct._object* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %6 = load i64, i64* %lo.addr, align 8
  %7 = load i64, i64* %hi.addr, align 8
  %8 = load %struct._object*, %struct._object** %values.addr, align 8
  %call3 = call i32 @bytearray_setslice(%struct.PyByteArrayObject* %5, i64 %6, i64 %7, %struct._object* %8)
  store i32 %call3, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %values.addr, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %16 = load i32, i32* %err, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.7:                                         ; preds = %entry
  %17 = load %struct._object*, %struct._object** %values.addr, align 8
  %cmp8 = icmp eq %struct._object* %17, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  store i8* null, i8** %bytes, align 8
  store i64 0, i64* %needed, align 8
  br label %if.end.18

if.else.10:                                       ; preds = %if.end.7
  %18 = load %struct._object*, %struct._object** %values.addr, align 8
  %call11 = call i64 @_getbuffer(%struct._object* %18, %struct.bufferinfo* %vbytes)
  %cmp12 = icmp slt i64 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.else.10
  %19 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %20 = load %struct._object*, %struct._object** %values.addr, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 1
  %22 = load i8*, i8** %tp_name, align 8
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i8* %22)
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.else.10
  %len17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbytes, i32 0, i32 2
  %23 = load i64, i64* %len17, align 8
  store i64 %23, i64* %needed, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbytes, i32 0, i32 0
  %24 = load i8*, i8** %buf, align 8
  store i8* %24, i8** %bytes, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %if.then.9
  %25 = load i64, i64* %lo.addr, align 8
  %cmp19 = icmp slt i64 %25, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  store i64 0, i64* %lo.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %26 = load i64, i64* %hi.addr, align 8
  %27 = load i64, i64* %lo.addr, align 8
  %cmp22 = icmp slt i64 %26, %27
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %28 = load i64, i64* %lo.addr, align 8
  store i64 %28, i64* %hi.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  %29 = load i64, i64* %hi.addr, align 8
  %30 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %31 = bitcast %struct.PyByteArrayObject* %30 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %31, i32 0, i32 1
  %32 = load i64, i64* %ob_size, align 8
  %cmp25 = icmp sgt i64 %29, %32
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %33 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %34 = bitcast %struct.PyByteArrayObject* %33 to %struct.PyVarObject*
  %ob_size27 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %34, i32 0, i32 1
  %35 = load i64, i64* %ob_size27, align 8
  store i64 %35, i64* %hi.addr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %36 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %37 = load i64, i64* %lo.addr, align 8
  %38 = load i64, i64* %hi.addr, align 8
  %39 = load i8*, i8** %bytes, align 8
  %40 = load i64, i64* %needed, align 8
  %call29 = call i32 @bytearray_setslice_linear(%struct.PyByteArrayObject* %36, i64 %37, i64 %38, i8* %39, i64 %40)
  store i32 %call29, i32* %res, align 4
  %len30 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbytes, i32 0, i32 2
  %41 = load i64, i64* %len30, align 8
  %cmp31 = icmp ne i64 %41, -1
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  call void @PyBuffer_Release(%struct.bufferinfo* %vbytes)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.28
  %42 = load i32, i32* %res, align 4
  store i32 %42, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.13, %do.end, %if.then.2
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @_getbytevalue(%struct._object* %arg, i32* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca %struct._object*, align 8
  %value.addr = alloca i32*, align 8
  %face_value = alloca i64, align 8
  %index = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %3)
  store i64 %call, i64* %face_value, align 8
  br label %if.end.11

if.else:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call1 = call %struct._object* @PyNumber_Index(%struct._object* %4)
  store %struct._object* %call1, %struct._object** %index, align 8
  %5 = load %struct._object*, %struct._object** %index, align 8
  %cmp2 = icmp eq %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0))
  %7 = load i32*, i32** %value.addr, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %8 = load %struct._object*, %struct._object** %index, align 8
  %call5 = call i64 @PyLong_AsLong(%struct._object* %8)
  store i64 %call5, i64* %face_value, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %index, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body
  br label %if.end.10

if.else.8:                                        ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %if.then
  %16 = load i64, i64* %face_value, align 8
  %cmp12 = icmp slt i64 %16, 0
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %17 = load i64, i64* %face_value, align 8
  %cmp13 = icmp sge i64 %17, 256
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.11
  %18 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  %19 = load i32*, i32** %value.addr, align 8
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false
  %20 = load i64, i64* %face_value, align 8
  %conv = trunc i64 %20 to i32
  %21 = load i32*, i32** %value.addr, align 8
  store i32 %conv, i32* %21, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.3
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @bytearray_setslice_linear(%struct.PyByteArrayObject* %self, i64 %lo, i64 %hi, i8* %bytes, i64 %bytes_len) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %lo.addr = alloca i64, align 8
  %hi.addr = alloca i64, align 8
  %bytes.addr = alloca i8*, align 8
  %bytes_len.addr = alloca i64, align 8
  %avail = alloca i64, align 8
  %buf = alloca i8*, align 8
  %growth = alloca i64, align 8
  %res = alloca i32, align 4
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i64 %lo, i64* %lo.addr, align 8
  store i64 %hi, i64* %hi.addr, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  store i64 %bytes_len, i64* %bytes_len.addr, align 8
  %0 = load i64, i64* %hi.addr, align 8
  %1 = load i64, i64* %lo.addr, align 8
  %sub = sub i64 %0, %1
  store i64 %sub, i64* %avail, align 8
  %2 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %3 = bitcast %struct.PyByteArrayObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %5, i32 0, i32 3
  %6 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %buf, align 8
  %7 = load i64, i64* %bytes_len.addr, align 8
  %8 = load i64, i64* %avail, align 8
  %sub1 = sub i64 %7, %8
  store i64 %sub1, i64* %growth, align 8
  store i32 0, i32* %res, align 4
  %9 = load i64, i64* %growth, align 8
  %cmp = icmp slt i64 %9, 0
  br i1 %cmp, label %if.then, label %if.else.32

if.then:                                          ; preds = %cond.end
  %10 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call = call i32 @_canresize(%struct.PyByteArrayObject* %10)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load i64, i64* %lo.addr, align 8
  %cmp4 = icmp eq i64 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %12 = load i64, i64* %growth, align 8
  %13 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start6 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %13, i32 0, i32 3
  %14 = load i8*, i8** %ob_start6, align 8
  %idx.neg = sub i64 0, %12
  %add.ptr = getelementptr i8, i8* %14, i64 %idx.neg
  store i8* %add.ptr, i8** %ob_start6, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %15 = load i8*, i8** %buf, align 8
  %16 = load i64, i64* %lo.addr, align 8
  %add.ptr7 = getelementptr i8, i8* %15, i64 %16
  %17 = load i64, i64* %bytes_len.addr, align 8
  %add.ptr8 = getelementptr i8, i8* %add.ptr7, i64 %17
  %18 = load i8*, i8** %buf, align 8
  %19 = load i64, i64* %hi.addr, align 8
  %add.ptr9 = getelementptr i8, i8* %18, i64 %19
  %20 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %21 = bitcast %struct.PyByteArrayObject* %20 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size10, align 8
  %23 = load i64, i64* %hi.addr, align 8
  %sub11 = sub i64 %22, %23
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr8, i8* %add.ptr9, i64 %sub11, i32 1, i1 false)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.5
  %24 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %25 = bitcast %struct.PyByteArrayObject* %24 to %struct._object*
  %26 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %27 = bitcast %struct.PyByteArrayObject* %26 to %struct.PyVarObject*
  %ob_size13 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %27, i32 0, i32 1
  %28 = load i64, i64* %ob_size13, align 8
  %29 = load i64, i64* %growth, align 8
  %add = add i64 %28, %29
  %call14 = call i32 @PyByteArray_Resize(%struct._object* %25, i64 %add)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.end.12
  %30 = load i64, i64* %lo.addr, align 8
  %cmp17 = icmp eq i64 %30, 0
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.then.16
  %31 = load i64, i64* %growth, align 8
  %32 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start19 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %32, i32 0, i32 3
  %33 = load i8*, i8** %ob_start19, align 8
  %add.ptr20 = getelementptr i8, i8* %33, i64 %31
  store i8* %add.ptr20, i8** %ob_start19, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.16
  %34 = load i64, i64* %growth, align 8
  %35 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %36 = bitcast %struct.PyByteArrayObject* %35 to %struct.PyVarObject*
  %ob_size22 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %36, i32 0, i32 1
  %37 = load i64, i64* %ob_size22, align 8
  %add23 = add i64 %37, %34
  store i64 %add23, i64* %ob_size22, align 8
  store i32 -1, i32* %res, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.21, %if.end.12
  %38 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %39 = bitcast %struct.PyByteArrayObject* %38 to %struct.PyVarObject*
  %ob_size25 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %39, i32 0, i32 1
  %40 = load i64, i64* %ob_size25, align 8
  %tobool26 = icmp ne i64 %40, 0
  br i1 %tobool26, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %if.end.24
  %41 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start28 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %41, i32 0, i32 3
  %42 = load i8*, i8** %ob_start28, align 8
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.end.24
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.27
  %cond31 = phi i8* [ %42, %cond.true.27 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.29 ]
  store i8* %cond31, i8** %buf, align 8
  br label %if.end.61

if.else.32:                                       ; preds = %cond.end
  %43 = load i64, i64* %growth, align 8
  %cmp33 = icmp sgt i64 %43, 0
  br i1 %cmp33, label %if.then.34, label %if.end.60

if.then.34:                                       ; preds = %if.else.32
  %44 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %45 = bitcast %struct.PyByteArrayObject* %44 to %struct.PyVarObject*
  %ob_size35 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %45, i32 0, i32 1
  %46 = load i64, i64* %ob_size35, align 8
  %47 = load i64, i64* %growth, align 8
  %sub36 = sub i64 9223372036854775807, %47
  %cmp37 = icmp sgt i64 %46, %sub36
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.then.34
  %call39 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.then.34
  %48 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %49 = bitcast %struct.PyByteArrayObject* %48 to %struct._object*
  %50 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %51 = bitcast %struct.PyByteArrayObject* %50 to %struct.PyVarObject*
  %ob_size41 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %51, i32 0, i32 1
  %52 = load i64, i64* %ob_size41, align 8
  %53 = load i64, i64* %growth, align 8
  %add42 = add i64 %52, %53
  %call43 = call i32 @PyByteArray_Resize(%struct._object* %49, i64 %add42)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.40
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.40
  %54 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %55 = bitcast %struct.PyByteArrayObject* %54 to %struct.PyVarObject*
  %ob_size47 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %55, i32 0, i32 1
  %56 = load i64, i64* %ob_size47, align 8
  %tobool48 = icmp ne i64 %56, 0
  br i1 %tobool48, label %cond.true.49, label %cond.false.51

cond.true.49:                                     ; preds = %if.end.46
  %57 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start50 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %57, i32 0, i32 3
  %58 = load i8*, i8** %ob_start50, align 8
  br label %cond.end.52

cond.false.51:                                    ; preds = %if.end.46
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.49
  %cond53 = phi i8* [ %58, %cond.true.49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.51 ]
  store i8* %cond53, i8** %buf, align 8
  %59 = load i8*, i8** %buf, align 8
  %60 = load i64, i64* %lo.addr, align 8
  %add.ptr54 = getelementptr i8, i8* %59, i64 %60
  %61 = load i64, i64* %bytes_len.addr, align 8
  %add.ptr55 = getelementptr i8, i8* %add.ptr54, i64 %61
  %62 = load i8*, i8** %buf, align 8
  %63 = load i64, i64* %hi.addr, align 8
  %add.ptr56 = getelementptr i8, i8* %62, i64 %63
  %64 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %65 = bitcast %struct.PyByteArrayObject* %64 to %struct.PyVarObject*
  %ob_size57 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %65, i32 0, i32 1
  %66 = load i64, i64* %ob_size57, align 8
  %67 = load i64, i64* %lo.addr, align 8
  %sub58 = sub i64 %66, %67
  %68 = load i64, i64* %bytes_len.addr, align 8
  %sub59 = sub i64 %sub58, %68
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr55, i8* %add.ptr56, i64 %sub59, i32 1, i1 false)
  br label %if.end.60

if.end.60:                                        ; preds = %cond.end.52, %if.else.32
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %cond.end.30
  %69 = load i64, i64* %bytes_len.addr, align 8
  %cmp62 = icmp sgt i64 %69, 0
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.61
  %70 = load i8*, i8** %buf, align 8
  %71 = load i64, i64* %lo.addr, align 8
  %add.ptr64 = getelementptr i8, i8* %70, i64 %71
  %72 = load i8*, i8** %bytes.addr, align 8
  %73 = load i64, i64* %bytes_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr64, i8* %72, i64 %73, i32 1, i1 false)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.61
  %74 = load i32, i32* %res, align 4
  store i32 %74, i32* %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.then.45, %if.then.38, %if.then.18, %if.then.3
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyNumber_Index(%struct._object*) #1

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare void @PyErr_Clear() #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stringlib_find(i8* %str, i64 %str_len, i8* %sub, i64 %sub_len, i64 %offset) #3 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %sub.addr = alloca i8*, align 8
  %sub_len.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store i8* %sub, i8** %sub.addr, align 8
  store i64 %sub_len, i64* %sub_len.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i64, i64* %str_len.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %sub_len.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load i64, i64* %offset.addr, align 8
  store i64 %2, i64* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i64, i64* %str_len.addr, align 8
  %5 = load i8*, i8** %sub.addr, align 8
  %6 = load i64, i64* %sub_len.addr, align 8
  %call = call i64 @fastsearch(i8* %3, i64 %4, i8* %5, i64 %6, i64 -1, i32 1)
  store i64 %call, i64* %pos, align 8
  %7 = load i64, i64* %pos, align 8
  %cmp4 = icmp sge i64 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %8 = load i64, i64* %offset.addr, align 8
  %9 = load i64, i64* %pos, align 8
  %add = add i64 %9, %8
  store i64 %add, i64* %pos, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %10 = load i64, i64* %pos, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.2, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fastsearch(i8* %s, i64 %n, i8* %p, i64 %m, i64 %maxcount, i32 %mode) #3 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %p.addr = alloca i8*, align 8
  %m.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %mask = alloca i64, align 8
  %skip = alloca i64, align 8
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %mlast = alloca i64, align 8
  %w = alloca i64, align 8
  %needle = alloca i8, align 1
  %ss = alloca i8*, align 8
  %pp = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 0, i64* %count, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load i64, i64* %m.addr, align 8
  %sub = sub i64 %0, %1
  store i64 %sub, i64* %w, align 8
  %2 = load i64, i64* %w, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i64, i64* %maxcount.addr, align 8
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load i64, i64* %m.addr, align 8
  %cmp3 = icmp sle i64 %5, 1
  br i1 %cmp3, label %if.then.4, label %if.end.71

if.then.4:                                        ; preds = %if.end
  %6 = load i64, i64* %m.addr, align 8
  %cmp5 = icmp sle i64 %6, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.4
  store i64 -1, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.4
  %7 = load i64, i64* %n.addr, align 8
  %cmp8 = icmp sgt i64 %7, 10
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.16

land.lhs.true.9:                                  ; preds = %if.end.7
  %8 = load i32, i32* %mode.addr, align 4
  %cmp10 = icmp eq i32 %8, 1
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.9
  %9 = load i32, i32* %mode.addr, align 4
  %cmp12 = icmp eq i32 %9, 2
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %lor.lhs.false.11, %land.lhs.true.9
  %10 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %and = and i32 %conv, 255
  %conv14 = trunc i32 %and to i8
  store i8 %conv14, i8* %needle, align 1
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i64, i64* %n.addr, align 8
  %14 = load i8*, i8** %p.addr, align 8
  %arrayidx15 = getelementptr i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx15, align 1
  %16 = load i8, i8* %needle, align 1
  %17 = load i64, i64* %maxcount.addr, align 8
  %18 = load i32, i32* %mode.addr, align 4
  %call = call i64 @stringlib_fastsearch_memchr_1char(i8* %12, i64 %13, i8 signext %15, i8 zeroext %16, i64 %17, i32 %18)
  store i64 %call, i64* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false.11, %if.end.7
  %19 = load i32, i32* %mode.addr, align 4
  %cmp17 = icmp eq i32 %19, 0
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* %n.addr, align 8
  %cmp20 = icmp slt i64 %20, %21
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i64, i64* %i, align 8
  %23 = load i8*, i8** %s.addr, align 8
  %arrayidx22 = getelementptr i8, i8* %23, i64 %22
  %24 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %24 to i32
  %25 = load i8*, i8** %p.addr, align 8
  %arrayidx24 = getelementptr i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %26 to i32
  %cmp26 = icmp eq i32 %conv23, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %for.body
  %27 = load i64, i64* %count, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %count, align 8
  %28 = load i64, i64* %count, align 8
  %29 = load i64, i64* %maxcount.addr, align 8
  %cmp29 = icmp eq i64 %28, %29
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  %30 = load i64, i64* %maxcount.addr, align 8
  store i64 %30, i64* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %31 = load i64, i64* %i, align 8
  %inc34 = add i64 %31, 1
  store i64 %inc34, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i64, i64* %count, align 8
  store i64 %32, i64* %retval
  br label %return

if.else:                                          ; preds = %if.end.16
  %33 = load i32, i32* %mode.addr, align 4
  %cmp35 = icmp eq i32 %33, 1
  br i1 %cmp35, label %if.then.37, label %if.else.53

if.then.37:                                       ; preds = %if.else
  store i64 0, i64* %i, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.50, %if.then.37
  %34 = load i64, i64* %i, align 8
  %35 = load i64, i64* %n.addr, align 8
  %cmp39 = icmp slt i64 %34, %35
  br i1 %cmp39, label %for.body.41, label %for.end.52

for.body.41:                                      ; preds = %for.cond.38
  %36 = load i64, i64* %i, align 8
  %37 = load i8*, i8** %s.addr, align 8
  %arrayidx42 = getelementptr i8, i8* %37, i64 %36
  %38 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %38 to i32
  %39 = load i8*, i8** %p.addr, align 8
  %arrayidx44 = getelementptr i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %40 to i32
  %cmp46 = icmp eq i32 %conv43, %conv45
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body.41
  %41 = load i64, i64* %i, align 8
  store i64 %41, i64* %retval
  br label %return

if.end.49:                                        ; preds = %for.body.41
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %42 = load i64, i64* %i, align 8
  %inc51 = add i64 %42, 1
  store i64 %inc51, i64* %i, align 8
  br label %for.cond.38

for.end.52:                                       ; preds = %for.cond.38
  br label %if.end.69

if.else.53:                                       ; preds = %if.else
  %43 = load i64, i64* %n.addr, align 8
  %sub54 = sub i64 %43, 1
  store i64 %sub54, i64* %i, align 8
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.67, %if.else.53
  %44 = load i64, i64* %i, align 8
  %cmp56 = icmp sgt i64 %44, -1
  br i1 %cmp56, label %for.body.58, label %for.end.68

for.body.58:                                      ; preds = %for.cond.55
  %45 = load i64, i64* %i, align 8
  %46 = load i8*, i8** %s.addr, align 8
  %arrayidx59 = getelementptr i8, i8* %46, i64 %45
  %47 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %47 to i32
  %48 = load i8*, i8** %p.addr, align 8
  %arrayidx61 = getelementptr i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %49 to i32
  %cmp63 = icmp eq i32 %conv60, %conv62
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.body.58
  %50 = load i64, i64* %i, align 8
  store i64 %50, i64* %retval
  br label %return

if.end.66:                                        ; preds = %for.body.58
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %51 = load i64, i64* %i, align 8
  %dec = add i64 %51, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond.55

for.end.68:                                       ; preds = %for.cond.55
  br label %if.end.69

if.end.69:                                        ; preds = %for.end.68, %for.end.52
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69
  store i64 -1, i64* %retval
  br label %return

if.end.71:                                        ; preds = %if.end
  %52 = load i64, i64* %m.addr, align 8
  %sub72 = sub i64 %52, 1
  store i64 %sub72, i64* %mlast, align 8
  %53 = load i64, i64* %mlast, align 8
  %sub73 = sub i64 %53, 1
  store i64 %sub73, i64* %skip, align 8
  store i64 0, i64* %mask, align 8
  %54 = load i32, i32* %mode.addr, align 4
  %cmp74 = icmp ne i32 %54, 2
  br i1 %cmp74, label %if.then.76, label %if.else.174

if.then.76:                                       ; preds = %if.end.71
  %55 = load i8*, i8** %s.addr, align 8
  %56 = load i64, i64* %m.addr, align 8
  %add.ptr = getelementptr i8, i8* %55, i64 %56
  %add.ptr77 = getelementptr i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr77, i8** %ss, align 8
  %57 = load i8*, i8** %p.addr, align 8
  %58 = load i64, i64* %m.addr, align 8
  %add.ptr78 = getelementptr i8, i8* %57, i64 %58
  %add.ptr79 = getelementptr i8, i8* %add.ptr78, i64 -1
  store i8* %add.ptr79, i8** %pp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.97, %if.then.76
  %59 = load i64, i64* %i, align 8
  %60 = load i64, i64* %mlast, align 8
  %cmp81 = icmp slt i64 %59, %60
  br i1 %cmp81, label %for.body.83, label %for.end.99

for.body.83:                                      ; preds = %for.cond.80
  %61 = load i64, i64* %i, align 8
  %62 = load i8*, i8** %p.addr, align 8
  %arrayidx84 = getelementptr i8, i8* %62, i64 %61
  %63 = load i8, i8* %arrayidx84, align 1
  %conv85 = sext i8 %63 to i32
  %and86 = and i32 %conv85, 63
  %sh_prom = zext i32 %and86 to i64
  %shl = shl i64 1, %sh_prom
  %64 = load i64, i64* %mask, align 8
  %or = or i64 %64, %shl
  store i64 %or, i64* %mask, align 8
  %65 = load i64, i64* %i, align 8
  %66 = load i8*, i8** %p.addr, align 8
  %arrayidx87 = getelementptr i8, i8* %66, i64 %65
  %67 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %67 to i32
  %68 = load i64, i64* %mlast, align 8
  %69 = load i8*, i8** %p.addr, align 8
  %arrayidx89 = getelementptr i8, i8* %69, i64 %68
  %70 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %70 to i32
  %cmp91 = icmp eq i32 %conv88, %conv90
  br i1 %cmp91, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %for.body.83
  %71 = load i64, i64* %mlast, align 8
  %72 = load i64, i64* %i, align 8
  %sub94 = sub i64 %71, %72
  %sub95 = sub i64 %sub94, 1
  store i64 %sub95, i64* %skip, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %for.body.83
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %73 = load i64, i64* %i, align 8
  %inc98 = add i64 %73, 1
  store i64 %inc98, i64* %i, align 8
  br label %for.cond.80

for.end.99:                                       ; preds = %for.cond.80
  %74 = load i64, i64* %mlast, align 8
  %75 = load i8*, i8** %p.addr, align 8
  %arrayidx100 = getelementptr i8, i8* %75, i64 %74
  %76 = load i8, i8* %arrayidx100, align 1
  %conv101 = sext i8 %76 to i32
  %and102 = and i32 %conv101, 63
  %sh_prom103 = zext i32 %and102 to i64
  %shl104 = shl i64 1, %sh_prom103
  %77 = load i64, i64* %mask, align 8
  %or105 = or i64 %77, %shl104
  store i64 %or105, i64* %mask, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.171, %for.end.99
  %78 = load i64, i64* %i, align 8
  %79 = load i64, i64* %w, align 8
  %cmp107 = icmp sle i64 %78, %79
  br i1 %cmp107, label %for.body.109, label %for.end.173

for.body.109:                                     ; preds = %for.cond.106
  %80 = load i64, i64* %i, align 8
  %81 = load i8*, i8** %ss, align 8
  %arrayidx110 = getelementptr i8, i8* %81, i64 %80
  %82 = load i8, i8* %arrayidx110, align 1
  %conv111 = sext i8 %82 to i32
  %83 = load i8*, i8** %pp, align 8
  %arrayidx112 = getelementptr i8, i8* %83, i64 0
  %84 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %84 to i32
  %cmp114 = icmp eq i32 %conv111, %conv113
  br i1 %cmp114, label %if.then.116, label %if.else.158

if.then.116:                                      ; preds = %for.body.109
  store i64 0, i64* %j, align 8
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.129, %if.then.116
  %85 = load i64, i64* %j, align 8
  %86 = load i64, i64* %mlast, align 8
  %cmp118 = icmp slt i64 %85, %86
  br i1 %cmp118, label %for.body.120, label %for.end.131

for.body.120:                                     ; preds = %for.cond.117
  %87 = load i64, i64* %i, align 8
  %88 = load i64, i64* %j, align 8
  %add = add i64 %87, %88
  %89 = load i8*, i8** %s.addr, align 8
  %arrayidx121 = getelementptr i8, i8* %89, i64 %add
  %90 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %90 to i32
  %91 = load i64, i64* %j, align 8
  %92 = load i8*, i8** %p.addr, align 8
  %arrayidx123 = getelementptr i8, i8* %92, i64 %91
  %93 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %93 to i32
  %cmp125 = icmp ne i32 %conv122, %conv124
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %for.body.120
  br label %for.end.131

if.end.128:                                       ; preds = %for.body.120
  br label %for.inc.129

for.inc.129:                                      ; preds = %if.end.128
  %94 = load i64, i64* %j, align 8
  %inc130 = add i64 %94, 1
  store i64 %inc130, i64* %j, align 8
  br label %for.cond.117

for.end.131:                                      ; preds = %if.then.127, %for.cond.117
  %95 = load i64, i64* %j, align 8
  %96 = load i64, i64* %mlast, align 8
  %cmp132 = icmp eq i64 %95, %96
  br i1 %cmp132, label %if.then.134, label %if.end.145

if.then.134:                                      ; preds = %for.end.131
  %97 = load i32, i32* %mode.addr, align 4
  %cmp135 = icmp ne i32 %97, 0
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.then.134
  %98 = load i64, i64* %i, align 8
  store i64 %98, i64* %retval
  br label %return

if.end.138:                                       ; preds = %if.then.134
  %99 = load i64, i64* %count, align 8
  %inc139 = add i64 %99, 1
  store i64 %inc139, i64* %count, align 8
  %100 = load i64, i64* %count, align 8
  %101 = load i64, i64* %maxcount.addr, align 8
  %cmp140 = icmp eq i64 %100, %101
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.138
  %102 = load i64, i64* %maxcount.addr, align 8
  store i64 %102, i64* %retval
  br label %return

if.end.143:                                       ; preds = %if.end.138
  %103 = load i64, i64* %i, align 8
  %104 = load i64, i64* %mlast, align 8
  %add144 = add i64 %103, %104
  store i64 %add144, i64* %i, align 8
  br label %for.inc.171

if.end.145:                                       ; preds = %for.end.131
  %105 = load i64, i64* %mask, align 8
  %106 = load i64, i64* %i, align 8
  %add146 = add i64 %106, 1
  %107 = load i8*, i8** %ss, align 8
  %arrayidx147 = getelementptr i8, i8* %107, i64 %add146
  %108 = load i8, i8* %arrayidx147, align 1
  %conv148 = sext i8 %108 to i32
  %and149 = and i32 %conv148, 63
  %sh_prom150 = zext i32 %and149 to i64
  %shl151 = shl i64 1, %sh_prom150
  %and152 = and i64 %105, %shl151
  %tobool = icmp ne i64 %and152, 0
  br i1 %tobool, label %if.else.155, label %if.then.153

if.then.153:                                      ; preds = %if.end.145
  %109 = load i64, i64* %i, align 8
  %110 = load i64, i64* %m.addr, align 8
  %add154 = add i64 %109, %110
  store i64 %add154, i64* %i, align 8
  br label %if.end.157

if.else.155:                                      ; preds = %if.end.145
  %111 = load i64, i64* %i, align 8
  %112 = load i64, i64* %skip, align 8
  %add156 = add i64 %111, %112
  store i64 %add156, i64* %i, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.155, %if.then.153
  br label %if.end.170

if.else.158:                                      ; preds = %for.body.109
  %113 = load i64, i64* %mask, align 8
  %114 = load i64, i64* %i, align 8
  %add159 = add i64 %114, 1
  %115 = load i8*, i8** %ss, align 8
  %arrayidx160 = getelementptr i8, i8* %115, i64 %add159
  %116 = load i8, i8* %arrayidx160, align 1
  %conv161 = sext i8 %116 to i32
  %and162 = and i32 %conv161, 63
  %sh_prom163 = zext i32 %and162 to i64
  %shl164 = shl i64 1, %sh_prom163
  %and165 = and i64 %113, %shl164
  %tobool166 = icmp ne i64 %and165, 0
  br i1 %tobool166, label %if.end.169, label %if.then.167

if.then.167:                                      ; preds = %if.else.158
  %117 = load i64, i64* %i, align 8
  %118 = load i64, i64* %m.addr, align 8
  %add168 = add i64 %117, %118
  store i64 %add168, i64* %i, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.167, %if.else.158
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.157
  br label %for.inc.171

for.inc.171:                                      ; preds = %if.end.170, %if.end.143
  %119 = load i64, i64* %i, align 8
  %inc172 = add i64 %119, 1
  store i64 %inc172, i64* %i, align 8
  br label %for.cond.106

for.end.173:                                      ; preds = %for.cond.106
  br label %if.end.269

if.else.174:                                      ; preds = %if.end.71
  %120 = load i8*, i8** %p.addr, align 8
  %arrayidx175 = getelementptr i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx175, align 1
  %conv176 = sext i8 %121 to i32
  %and177 = and i32 %conv176, 63
  %sh_prom178 = zext i32 %and177 to i64
  %shl179 = shl i64 1, %sh_prom178
  %122 = load i64, i64* %mask, align 8
  %or180 = or i64 %122, %shl179
  store i64 %or180, i64* %mask, align 8
  %123 = load i64, i64* %mlast, align 8
  store i64 %123, i64* %i, align 8
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.200, %if.else.174
  %124 = load i64, i64* %i, align 8
  %cmp182 = icmp sgt i64 %124, 0
  br i1 %cmp182, label %for.body.184, label %for.end.202

for.body.184:                                     ; preds = %for.cond.181
  %125 = load i64, i64* %i, align 8
  %126 = load i8*, i8** %p.addr, align 8
  %arrayidx185 = getelementptr i8, i8* %126, i64 %125
  %127 = load i8, i8* %arrayidx185, align 1
  %conv186 = sext i8 %127 to i32
  %and187 = and i32 %conv186, 63
  %sh_prom188 = zext i32 %and187 to i64
  %shl189 = shl i64 1, %sh_prom188
  %128 = load i64, i64* %mask, align 8
  %or190 = or i64 %128, %shl189
  store i64 %or190, i64* %mask, align 8
  %129 = load i64, i64* %i, align 8
  %130 = load i8*, i8** %p.addr, align 8
  %arrayidx191 = getelementptr i8, i8* %130, i64 %129
  %131 = load i8, i8* %arrayidx191, align 1
  %conv192 = sext i8 %131 to i32
  %132 = load i8*, i8** %p.addr, align 8
  %arrayidx193 = getelementptr i8, i8* %132, i64 0
  %133 = load i8, i8* %arrayidx193, align 1
  %conv194 = sext i8 %133 to i32
  %cmp195 = icmp eq i32 %conv192, %conv194
  br i1 %cmp195, label %if.then.197, label %if.end.199

if.then.197:                                      ; preds = %for.body.184
  %134 = load i64, i64* %i, align 8
  %sub198 = sub i64 %134, 1
  store i64 %sub198, i64* %skip, align 8
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.197, %for.body.184
  br label %for.inc.200

for.inc.200:                                      ; preds = %if.end.199
  %135 = load i64, i64* %i, align 8
  %dec201 = add i64 %135, -1
  store i64 %dec201, i64* %i, align 8
  br label %for.cond.181

for.end.202:                                      ; preds = %for.cond.181
  %136 = load i64, i64* %w, align 8
  store i64 %136, i64* %i, align 8
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.266, %for.end.202
  %137 = load i64, i64* %i, align 8
  %cmp204 = icmp sge i64 %137, 0
  br i1 %cmp204, label %for.body.206, label %for.end.268

for.body.206:                                     ; preds = %for.cond.203
  %138 = load i64, i64* %i, align 8
  %139 = load i8*, i8** %s.addr, align 8
  %arrayidx207 = getelementptr i8, i8* %139, i64 %138
  %140 = load i8, i8* %arrayidx207, align 1
  %conv208 = sext i8 %140 to i32
  %141 = load i8*, i8** %p.addr, align 8
  %arrayidx209 = getelementptr i8, i8* %141, i64 0
  %142 = load i8, i8* %arrayidx209, align 1
  %conv210 = sext i8 %142 to i32
  %cmp211 = icmp eq i32 %conv208, %conv210
  br i1 %cmp211, label %if.then.213, label %if.else.250

if.then.213:                                      ; preds = %for.body.206
  %143 = load i64, i64* %mlast, align 8
  store i64 %143, i64* %j, align 8
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.227, %if.then.213
  %144 = load i64, i64* %j, align 8
  %cmp215 = icmp sgt i64 %144, 0
  br i1 %cmp215, label %for.body.217, label %for.end.229

for.body.217:                                     ; preds = %for.cond.214
  %145 = load i64, i64* %i, align 8
  %146 = load i64, i64* %j, align 8
  %add218 = add i64 %145, %146
  %147 = load i8*, i8** %s.addr, align 8
  %arrayidx219 = getelementptr i8, i8* %147, i64 %add218
  %148 = load i8, i8* %arrayidx219, align 1
  %conv220 = sext i8 %148 to i32
  %149 = load i64, i64* %j, align 8
  %150 = load i8*, i8** %p.addr, align 8
  %arrayidx221 = getelementptr i8, i8* %150, i64 %149
  %151 = load i8, i8* %arrayidx221, align 1
  %conv222 = sext i8 %151 to i32
  %cmp223 = icmp ne i32 %conv220, %conv222
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %for.body.217
  br label %for.end.229

if.end.226:                                       ; preds = %for.body.217
  br label %for.inc.227

for.inc.227:                                      ; preds = %if.end.226
  %152 = load i64, i64* %j, align 8
  %dec228 = add i64 %152, -1
  store i64 %dec228, i64* %j, align 8
  br label %for.cond.214

for.end.229:                                      ; preds = %if.then.225, %for.cond.214
  %153 = load i64, i64* %j, align 8
  %cmp230 = icmp eq i64 %153, 0
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %for.end.229
  %154 = load i64, i64* %i, align 8
  store i64 %154, i64* %retval
  br label %return

if.end.233:                                       ; preds = %for.end.229
  %155 = load i64, i64* %i, align 8
  %cmp234 = icmp sgt i64 %155, 0
  br i1 %cmp234, label %land.lhs.true.236, label %if.else.247

land.lhs.true.236:                                ; preds = %if.end.233
  %156 = load i64, i64* %mask, align 8
  %157 = load i64, i64* %i, align 8
  %sub237 = sub i64 %157, 1
  %158 = load i8*, i8** %s.addr, align 8
  %arrayidx238 = getelementptr i8, i8* %158, i64 %sub237
  %159 = load i8, i8* %arrayidx238, align 1
  %conv239 = sext i8 %159 to i32
  %and240 = and i32 %conv239, 63
  %sh_prom241 = zext i32 %and240 to i64
  %shl242 = shl i64 1, %sh_prom241
  %and243 = and i64 %156, %shl242
  %tobool244 = icmp ne i64 %and243, 0
  br i1 %tobool244, label %if.else.247, label %if.then.245

if.then.245:                                      ; preds = %land.lhs.true.236
  %160 = load i64, i64* %i, align 8
  %161 = load i64, i64* %m.addr, align 8
  %sub246 = sub i64 %160, %161
  store i64 %sub246, i64* %i, align 8
  br label %if.end.249

if.else.247:                                      ; preds = %land.lhs.true.236, %if.end.233
  %162 = load i64, i64* %i, align 8
  %163 = load i64, i64* %skip, align 8
  %sub248 = sub i64 %162, %163
  store i64 %sub248, i64* %i, align 8
  br label %if.end.249

if.end.249:                                       ; preds = %if.else.247, %if.then.245
  br label %if.end.265

if.else.250:                                      ; preds = %for.body.206
  %164 = load i64, i64* %i, align 8
  %cmp251 = icmp sgt i64 %164, 0
  br i1 %cmp251, label %land.lhs.true.253, label %if.end.264

land.lhs.true.253:                                ; preds = %if.else.250
  %165 = load i64, i64* %mask, align 8
  %166 = load i64, i64* %i, align 8
  %sub254 = sub i64 %166, 1
  %167 = load i8*, i8** %s.addr, align 8
  %arrayidx255 = getelementptr i8, i8* %167, i64 %sub254
  %168 = load i8, i8* %arrayidx255, align 1
  %conv256 = sext i8 %168 to i32
  %and257 = and i32 %conv256, 63
  %sh_prom258 = zext i32 %and257 to i64
  %shl259 = shl i64 1, %sh_prom258
  %and260 = and i64 %165, %shl259
  %tobool261 = icmp ne i64 %and260, 0
  br i1 %tobool261, label %if.end.264, label %if.then.262

if.then.262:                                      ; preds = %land.lhs.true.253
  %169 = load i64, i64* %i, align 8
  %170 = load i64, i64* %m.addr, align 8
  %sub263 = sub i64 %169, %170
  store i64 %sub263, i64* %i, align 8
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.262, %land.lhs.true.253, %if.else.250
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.end.249
  br label %for.inc.266

for.inc.266:                                      ; preds = %if.end.265
  %171 = load i64, i64* %i, align 8
  %dec267 = add i64 %171, -1
  store i64 %dec267, i64* %i, align 8
  br label %for.cond.203

for.end.268:                                      ; preds = %for.cond.203
  br label %if.end.269

if.end.269:                                       ; preds = %for.end.268, %for.end.173
  %172 = load i32, i32* %mode.addr, align 4
  %cmp270 = icmp ne i32 %172, 0
  br i1 %cmp270, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %if.end.269
  store i64 -1, i64* %retval
  br label %return

if.end.273:                                       ; preds = %if.end.269
  %173 = load i64, i64* %count, align 8
  store i64 %173, i64* %retval
  br label %return

return:                                           ; preds = %if.end.273, %if.then.272, %if.then.232, %if.then.142, %if.then.137, %if.end.70, %if.then.65, %if.then.48, %for.end, %if.then.31, %if.then.13, %if.then.6, %if.then
  %174 = load i64, i64* %retval
  ret i64 %174
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stringlib_fastsearch_memchr_1char(i8* %s, i64 %n, i8 signext %ch, i8 zeroext %needle, i64 %maxcount, i32 %mode) #3 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %ch.addr = alloca i8, align 1
  %needle.addr = alloca i8, align 1
  %maxcount.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %e = alloca i8*, align 8
  %candidate = alloca i8*, align 8
  %found = alloca i8*, align 8
  %candidate15 = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8 %ch, i8* %ch.addr, align 1
  store i8 %needle, i8* %needle.addr, align 1
  store i64 %maxcount, i64* %maxcount.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  store i8* %1, i8** %ptr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i64, i64* %n.addr, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %3
  store i8* %add.ptr, i8** %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then
  %4 = load i8*, i8** %ptr, align 8
  %5 = load i8*, i8** %e, align 8
  %cmp1 = icmp ult i8* %4, %5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %ptr, align 8
  %7 = load i8, i8* %needle.addr, align 1
  %conv = zext i8 %7 to i32
  %8 = load i8*, i8** %e, align 8
  %9 = load i8*, i8** %ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = mul i64 %sub.ptr.sub, 1
  %call = call i8* @memchr(i8* %6, i32 %conv, i64 %mul) #7
  store i8* %call, i8** %candidate, align 8
  %10 = load i8*, i8** %candidate, align 8
  %cmp2 = icmp eq i8* %10, null
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %while.body
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %11 = load i8*, i8** %candidate, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %ptr, align 8
  %14 = load i8*, i8** %ptr, align 8
  %15 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast5 = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %15 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  store i64 %sub.ptr.sub7, i64* %retval
  br label %return

while.end:                                        ; preds = %while.cond
  store i64 -1, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %16 = load i32, i32* %mode.addr, align 4
  %cmp8 = icmp eq i32 %16, 2
  br i1 %cmp8, label %if.then.10, label %if.else.27

if.then.10:                                       ; preds = %if.else
  br label %while.cond.11

while.cond.11:                                    ; preds = %if.then.10
  %17 = load i64, i64* %n.addr, align 8
  %cmp12 = icmp sgt i64 %17, 0
  br i1 %cmp12, label %while.body.14, label %while.end.26

while.body.14:                                    ; preds = %while.cond.11
  %18 = load i8*, i8** %s.addr, align 8
  %19 = load i8, i8* %needle.addr, align 1
  %conv16 = zext i8 %19 to i32
  %20 = load i64, i64* %n.addr, align 8
  %mul17 = mul i64 %20, 1
  %call18 = call i8* @memrchr(i8* %18, i32 %conv16, i64 %mul17) #7
  store i8* %call18, i8** %candidate15, align 8
  %21 = load i8*, i8** %candidate15, align 8
  %cmp19 = icmp eq i8* %21, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %while.body.14
  store i64 -1, i64* %retval
  br label %return

if.end.22:                                        ; preds = %while.body.14
  %22 = load i8*, i8** %candidate15, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %found, align 8
  %25 = load i8*, i8** %found, align 8
  %26 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast23 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %26 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  store i64 %sub.ptr.sub25, i64* %n.addr, align 8
  %27 = load i64, i64* %n.addr, align 8
  store i64 %27, i64* %retval
  br label %return

while.end.26:                                     ; preds = %while.cond.11
  store i64 -1, i64* %retval
  br label %return

if.else.27:                                       ; preds = %if.else
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.else.27, %while.end.26, %if.end.22, %if.then.21, %while.end, %if.end, %if.then.4
  %28 = load i64, i64* %retval
  ret i64 %28
}

; Function Attrs: nounwind readonly
declare i8* @memrchr(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_subscript(%struct.PyByteArrayObject* %self, %struct._object* %index) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %index.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelength = alloca i64, align 8
  %cur = alloca i64, align 8
  %i24 = alloca i64, align 8
  %source_buf = alloca i8*, align 8
  %result_buf = alloca i8*, align 8
  %result = alloca %struct._object*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %index, %struct._object** %index.addr, align 8
  %0 = load %struct._object*, %struct._object** %index.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp = icmp ne %struct.PyNumberMethods* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %index.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 33
  %nb_index3 = bitcast {}** %nb_index to %struct._object* (%struct._object*)**
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index3, align 8
  %cmp4 = icmp ne %struct._object* (%struct._object*)* %6, null
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %index.addr, align 8
  %8 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %7, %struct._object* %8)
  store i64 %call, i64* %i, align 8
  %9 = load i64, i64* %i, align 8
  %cmp5 = icmp eq i64 %9, -1
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.then
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call7, null
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.6, %if.then
  %10 = load i64, i64* %i, align 8
  %cmp9 = icmp slt i64 %10, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %11 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %12 = bitcast %struct.PyByteArrayObject* %11 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size, align 8
  %14 = load i64, i64* %i, align 8
  %add = add i64 %14, %13
  store i64 %add, i64* %i, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %15 = load i64, i64* %i, align 8
  %cmp12 = icmp slt i64 %15, 0
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %18 = bitcast %struct.PyByteArrayObject* %17 to %struct.PyVarObject*
  %ob_size13 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size13, align 8
  %cmp14 = icmp sge i64 %16, %19
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.11
  %20 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  %21 = load i64, i64* %i, align 8
  %22 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %23 = bitcast %struct.PyByteArrayObject* %22 to %struct.PyVarObject*
  %ob_size17 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1
  %24 = load i64, i64* %ob_size17, align 8
  %tobool18 = icmp ne i64 %24, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %25 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %25, i32 0, i32 3
  %26 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %26, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %arrayidx = getelementptr i8, i8* %cond, i64 %21
  %27 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %27 to i64
  %call19 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call19, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %28 = load %struct._object*, %struct._object** %index.addr, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %cmp21 = icmp eq %struct._typeobject* %29, @PySlice_Type
  br i1 %cmp21, label %if.then.23, label %if.else.72

if.then.23:                                       ; preds = %if.else
  %30 = load %struct._object*, %struct._object** %index.addr, align 8
  %31 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %32 = bitcast %struct.PyByteArrayObject* %31 to %struct.PyVarObject*
  %ob_size25 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  %33 = load i64, i64* %ob_size25, align 8
  %call26 = call i32 @PySlice_GetIndicesEx(%struct._object* %30, i64 %33, i64* %start, i64* %stop, i64* %step, i64* %slicelength)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.then.23
  %34 = load i64, i64* %slicelength, align 8
  %cmp31 = icmp sle i64 %34, 0
  br i1 %cmp31, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.end.30
  %call34 = call %struct._object* @PyByteArray_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i64 0)
  store %struct._object* %call34, %struct._object** %retval
  br label %return

if.else.35:                                       ; preds = %if.end.30
  %35 = load i64, i64* %step, align 8
  %cmp36 = icmp eq i64 %35, 1
  br i1 %cmp36, label %if.then.38, label %if.else.47

if.then.38:                                       ; preds = %if.else.35
  %36 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %37 = bitcast %struct.PyByteArrayObject* %36 to %struct.PyVarObject*
  %ob_size39 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %37, i32 0, i32 1
  %38 = load i64, i64* %ob_size39, align 8
  %tobool40 = icmp ne i64 %38, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %if.then.38
  %39 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start42 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %39, i32 0, i32 3
  %40 = load i8*, i8** %ob_start42, align 8
  br label %cond.end.44

cond.false.43:                                    ; preds = %if.then.38
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi i8* [ %40, %cond.true.41 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.43 ]
  %41 = load i64, i64* %start, align 8
  %add.ptr = getelementptr i8, i8* %cond45, i64 %41
  %42 = load i64, i64* %slicelength, align 8
  %call46 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %42)
  store %struct._object* %call46, %struct._object** %retval
  br label %return

if.else.47:                                       ; preds = %if.else.35
  %43 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %44 = bitcast %struct.PyByteArrayObject* %43 to %struct.PyVarObject*
  %ob_size48 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %44, i32 0, i32 1
  %45 = load i64, i64* %ob_size48, align 8
  %tobool49 = icmp ne i64 %45, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.52

cond.true.50:                                     ; preds = %if.else.47
  %46 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start51 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %46, i32 0, i32 3
  %47 = load i8*, i8** %ob_start51, align 8
  br label %cond.end.53

cond.false.52:                                    ; preds = %if.else.47
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.50
  %cond54 = phi i8* [ %47, %cond.true.50 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.52 ]
  store i8* %cond54, i8** %source_buf, align 8
  %48 = load i64, i64* %slicelength, align 8
  %call55 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %48)
  store %struct._object* %call55, %struct._object** %result, align 8
  %49 = load %struct._object*, %struct._object** %result, align 8
  %cmp56 = icmp eq %struct._object* %49, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %cond.end.53
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.59:                                        ; preds = %cond.end.53
  %50 = load %struct._object*, %struct._object** %result, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyVarObject*
  %ob_size60 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %51, i32 0, i32 1
  %52 = load i64, i64* %ob_size60, align 8
  %tobool61 = icmp ne i64 %52, 0
  br i1 %tobool61, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %if.end.59
  %53 = load %struct._object*, %struct._object** %result, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyByteArrayObject*
  %ob_start63 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %54, i32 0, i32 3
  %55 = load i8*, i8** %ob_start63, align 8
  br label %cond.end.65

cond.false.64:                                    ; preds = %if.end.59
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi i8* [ %55, %cond.true.62 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.64 ]
  store i8* %cond66, i8** %result_buf, align 8
  %56 = load i64, i64* %start, align 8
  store i64 %56, i64* %cur, align 8
  store i64 0, i64* %i24, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.65
  %57 = load i64, i64* %i24, align 8
  %58 = load i64, i64* %slicelength, align 8
  %cmp67 = icmp slt i64 %57, %58
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load i64, i64* %cur, align 8
  %60 = load i8*, i8** %source_buf, align 8
  %arrayidx69 = getelementptr i8, i8* %60, i64 %59
  %61 = load i8, i8* %arrayidx69, align 1
  %62 = load i64, i64* %i24, align 8
  %63 = load i8*, i8** %result_buf, align 8
  %arrayidx70 = getelementptr i8, i8* %63, i64 %62
  store i8 %61, i8* %arrayidx70, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i64, i64* %step, align 8
  %65 = load i64, i64* %cur, align 8
  %add71 = add i64 %65, %64
  store i64 %add71, i64* %cur, align 8
  %66 = load i64, i64* %i24, align 8
  %inc = add i64 %66, 1
  store i64 %inc, i64* %i24, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %67, %struct._object** %retval
  br label %return

if.else.72:                                       ; preds = %if.else
  %68 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.72, %for.end, %if.then.58, %cond.end.44, %if.then.33, %if.then.29, %cond.end, %if.then.15, %if.then.8
  %69 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %69
}

; Function Attrs: nounwind uwtable
define internal i32 @bytearray_ass_subscript(%struct.PyByteArrayObject* %self, %struct._object* %index, %struct._object* %values) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %index.addr = alloca %struct._object*, align 8
  %values.addr = alloca %struct._object*, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelen = alloca i64, align 8
  %needed = alloca i64, align 8
  %buf = alloca i8*, align 8
  %bytes = alloca i8*, align 8
  %i = alloca i64, align 8
  %ival = alloca i32, align 4
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %cur = alloca i64, align 8
  %i108 = alloca i64, align 8
  %lim = alloca i64, align 8
  %i162 = alloca i64, align 8
  %cur163 = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %index, %struct._object** %index.addr, align 8
  store %struct._object* %values, %struct._object** %values.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %3, i32 0, i32 3
  %4 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %buf, align 8
  %5 = load %struct._object*, %struct._object** %index.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 10
  %7 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp = icmp ne %struct.PyNumberMethods* %7, null
  br i1 %cmp, label %land.lhs.true, label %if.else.27

land.lhs.true:                                    ; preds = %cond.end
  %8 = load %struct._object*, %struct._object** %index.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 10
  %10 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %10, i32 0, i32 33
  %nb_index3 = bitcast {}** %nb_index to %struct._object* (%struct._object*)**
  %11 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index3, align 8
  %cmp4 = icmp ne %struct._object* (%struct._object*)* %11, null
  br i1 %cmp4, label %if.then, label %if.else.27

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._object*, %struct._object** %index.addr, align 8
  %13 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %12, %struct._object* %13)
  store i64 %call, i64* %i, align 8
  %14 = load i64, i64* %i, align 8
  %cmp5 = icmp eq i64 %14, -1
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.then
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool8 = icmp ne %struct._object* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.6
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.6, %if.then
  %15 = load i64, i64* %i, align 8
  %cmp10 = icmp slt i64 %15, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %16 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %17 = bitcast %struct.PyByteArrayObject* %16 to %struct.PyVarObject*
  %ob_size12 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size12, align 8
  %19 = load i64, i64* %i, align 8
  %add = add i64 %19, %18
  store i64 %add, i64* %i, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %20 = load i64, i64* %i, align 8
  %cmp14 = icmp slt i64 %20, 0
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %21 = load i64, i64* %i, align 8
  %22 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %23 = bitcast %struct.PyByteArrayObject* %22 to %struct.PyVarObject*
  %ob_size15 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1
  %24 = load i64, i64* %ob_size15, align 8
  %cmp16 = icmp sge i64 %21, %24
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.13
  %25 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  %26 = load %struct._object*, %struct._object** %values.addr, align 8
  %cmp19 = icmp eq %struct._object* %26, null
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.18
  %27 = load i64, i64* %i, align 8
  store i64 %27, i64* %start, align 8
  %28 = load i64, i64* %i, align 8
  %add21 = add i64 %28, 1
  store i64 %add21, i64* %stop, align 8
  store i64 1, i64* %step, align 8
  store i64 1, i64* %slicelen, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end.18
  %29 = load %struct._object*, %struct._object** %values.addr, align 8
  %call22 = call i32 @_getbytevalue(%struct._object* %29, i32* %ival)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.else
  %30 = load i32, i32* %ival, align 4
  %conv = trunc i32 %30 to i8
  %31 = load i64, i64* %i, align 8
  %32 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr i8, i8* %32, i64 %31
  store i8 %conv, i8* %arrayidx, align 1
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.then.20
  br label %if.end.40

if.else.27:                                       ; preds = %land.lhs.true, %cond.end
  %33 = load %struct._object*, %struct._object** %index.addr, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %cmp29 = icmp eq %struct._typeobject* %34, @PySlice_Type
  br i1 %cmp29, label %if.then.31, label %if.else.38

if.then.31:                                       ; preds = %if.else.27
  %35 = load %struct._object*, %struct._object** %index.addr, align 8
  %36 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %37 = bitcast %struct.PyByteArrayObject* %36 to %struct.PyVarObject*
  %ob_size32 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %37, i32 0, i32 1
  %38 = load i64, i64* %ob_size32, align 8
  %call33 = call i32 @PySlice_GetIndicesEx(%struct._object* %35, i64 %38, i64* %start, i64* %stop, i64* %step, i64* %slicelen)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.31
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.31
  br label %if.end.39

if.else.38:                                       ; preds = %if.else.27
  %39 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.37
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.26
  %40 = load %struct._object*, %struct._object** %values.addr, align 8
  %cmp41 = icmp eq %struct._object* %40, null
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40
  store i8* null, i8** %bytes, align 8
  store i64 0, i64* %needed, align 8
  br label %if.end.86

if.else.44:                                       ; preds = %if.end.40
  %41 = load %struct._object*, %struct._object** %values.addr, align 8
  %42 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %43 = bitcast %struct.PyByteArrayObject* %42 to %struct._object*
  %cmp45 = icmp eq %struct._object* %41, %43
  br i1 %cmp45, label %if.then.55, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.else.44
  %44 = load %struct._object*, %struct._object** %values.addr, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %cmp49 = icmp eq %struct._typeobject* %45, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyByteArray_Type to %struct._typeobject*)
  br i1 %cmp49, label %if.else.76, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.47
  %46 = load %struct._object*, %struct._object** %values.addr, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %call53 = call i32 @PyType_IsSubtype(%struct._typeobject* %47, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyByteArray_Type to %struct._typeobject*))
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.else.76, label %if.then.55

if.then.55:                                       ; preds = %lor.lhs.false.51, %if.else.44
  %48 = load %struct._object*, %struct._object** %values.addr, align 8
  %call56 = call i32 @PyNumber_Check(%struct._object* %48)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.62, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %if.then.55
  %49 = load %struct._object*, %struct._object** %values.addr, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 19
  %51 = load i64, i64* %tp_flags, align 8
  %and = and i64 %51, 268435456
  %cmp60 = icmp ne i64 %and, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %lor.lhs.false.58, %if.then.55
  %52 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %52, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.17, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.63:                                        ; preds = %lor.lhs.false.58
  %53 = load %struct._object*, %struct._object** %values.addr, align 8
  %call64 = call %struct._object* @PyByteArray_FromObject(%struct._object* %53)
  store %struct._object* %call64, %struct._object** %values.addr, align 8
  %54 = load %struct._object*, %struct._object** %values.addr, align 8
  %cmp65 = icmp eq %struct._object* %54, null
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.63
  store i32 -1, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.63
  %55 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %56 = load %struct._object*, %struct._object** %index.addr, align 8
  %57 = load %struct._object*, %struct._object** %values.addr, align 8
  %call69 = call i32 @bytearray_ass_subscript(%struct.PyByteArrayObject* %55, %struct._object* %56, %struct._object* %57)
  store i32 %call69, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.68
  %58 = load %struct._object*, %struct._object** %values.addr, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %60, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp70 = icmp ne i64 %dec, 0
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %do.body
  br label %if.end.75

if.else.73:                                       ; preds = %do.body
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %63(%struct._object* %64)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.72
  br label %do.end

do.end:                                           ; preds = %if.end.75
  %65 = load i32, i32* %err, align 4
  store i32 %65, i32* %retval
  br label %return

if.else.76:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.47
  %66 = load %struct._object*, %struct._object** %values.addr, align 8
  %67 = bitcast %struct._object* %66 to %struct.PyVarObject*
  %ob_size77 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %67, i32 0, i32 1
  %68 = load i64, i64* %ob_size77, align 8
  %tobool78 = icmp ne i64 %68, 0
  br i1 %tobool78, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %if.else.76
  %69 = load %struct._object*, %struct._object** %values.addr, align 8
  %70 = bitcast %struct._object* %69 to %struct.PyByteArrayObject*
  %ob_start80 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %70, i32 0, i32 3
  %71 = load i8*, i8** %ob_start80, align 8
  br label %cond.end.82

cond.false.81:                                    ; preds = %if.else.76
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.79
  %cond83 = phi i8* [ %71, %cond.true.79 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.81 ]
  store i8* %cond83, i8** %bytes, align 8
  %72 = load %struct._object*, %struct._object** %values.addr, align 8
  %73 = bitcast %struct._object* %72 to %struct.PyVarObject*
  %ob_size84 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %73, i32 0, i32 1
  %74 = load i64, i64* %ob_size84, align 8
  store i64 %74, i64* %needed, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %cond.end.82
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.43
  %75 = load i64, i64* %step, align 8
  %cmp87 = icmp slt i64 %75, 0
  br i1 %cmp87, label %land.lhs.true.89, label %lor.lhs.false.92

land.lhs.true.89:                                 ; preds = %if.end.86
  %76 = load i64, i64* %start, align 8
  %77 = load i64, i64* %stop, align 8
  %cmp90 = icmp slt i64 %76, %77
  br i1 %cmp90, label %if.then.98, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %land.lhs.true.89, %if.end.86
  %78 = load i64, i64* %step, align 8
  %cmp93 = icmp sgt i64 %78, 0
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.99

land.lhs.true.95:                                 ; preds = %lor.lhs.false.92
  %79 = load i64, i64* %start, align 8
  %80 = load i64, i64* %stop, align 8
  %cmp96 = icmp sgt i64 %79, %80
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %land.lhs.true.95, %land.lhs.true.89
  %81 = load i64, i64* %start, align 8
  store i64 %81, i64* %stop, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %land.lhs.true.95, %lor.lhs.false.92
  %82 = load i64, i64* %step, align 8
  %cmp100 = icmp eq i64 %82, 1
  br i1 %cmp100, label %if.then.102, label %if.else.104

if.then.102:                                      ; preds = %if.end.99
  %83 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %84 = load i64, i64* %start, align 8
  %85 = load i64, i64* %stop, align 8
  %86 = load i8*, i8** %bytes, align 8
  %87 = load i64, i64* %needed, align 8
  %call103 = call i32 @bytearray_setslice_linear(%struct.PyByteArrayObject* %83, i64 %84, i64 %85, i8* %86, i64 %87)
  store i32 %call103, i32* %retval
  br label %return

if.else.104:                                      ; preds = %if.end.99
  %88 = load i64, i64* %needed, align 8
  %cmp105 = icmp eq i64 %88, 0
  br i1 %cmp105, label %if.then.107, label %if.else.161

if.then.107:                                      ; preds = %if.else.104
  %89 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call109 = call i32 @_canresize(%struct.PyByteArrayObject* %89)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %if.then.107
  store i32 -1, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.then.107
  %90 = load i64, i64* %slicelen, align 8
  %cmp113 = icmp eq i64 %90, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.112
  store i32 0, i32* %retval
  br label %return

if.end.116:                                       ; preds = %if.end.112
  %91 = load i64, i64* %step, align 8
  %cmp117 = icmp slt i64 %91, 0
  br i1 %cmp117, label %if.then.119, label %if.end.124

if.then.119:                                      ; preds = %if.end.116
  %92 = load i64, i64* %start, align 8
  %add120 = add i64 %92, 1
  store i64 %add120, i64* %stop, align 8
  %93 = load i64, i64* %stop, align 8
  %94 = load i64, i64* %step, align 8
  %95 = load i64, i64* %slicelen, align 8
  %sub = sub i64 %95, 1
  %mul = mul i64 %94, %sub
  %add121 = add i64 %93, %mul
  %sub122 = sub i64 %add121, 1
  store i64 %sub122, i64* %start, align 8
  %96 = load i64, i64* %step, align 8
  %sub123 = sub i64 0, %96
  store i64 %sub123, i64* %step, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.119, %if.end.116
  %97 = load i64, i64* %start, align 8
  store i64 %97, i64* %cur, align 8
  store i64 0, i64* %i108, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.124
  %98 = load i64, i64* %i108, align 8
  %99 = load i64, i64* %slicelen, align 8
  %cmp125 = icmp slt i64 %98, %99
  br i1 %cmp125, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %100 = load i64, i64* %step, align 8
  %sub127 = sub i64 %100, 1
  store i64 %sub127, i64* %lim, align 8
  %101 = load i64, i64* %cur, align 8
  %102 = load i64, i64* %step, align 8
  %add128 = add i64 %101, %102
  %103 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %104 = bitcast %struct.PyByteArrayObject* %103 to %struct.PyVarObject*
  %ob_size129 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %104, i32 0, i32 1
  %105 = load i64, i64* %ob_size129, align 8
  %cmp130 = icmp uge i64 %add128, %105
  br i1 %cmp130, label %if.then.132, label %if.end.136

if.then.132:                                      ; preds = %for.body
  %106 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %107 = bitcast %struct.PyByteArrayObject* %106 to %struct.PyVarObject*
  %ob_size133 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %107, i32 0, i32 1
  %108 = load i64, i64* %ob_size133, align 8
  %109 = load i64, i64* %cur, align 8
  %sub134 = sub i64 %108, %109
  %sub135 = sub i64 %sub134, 1
  store i64 %sub135, i64* %lim, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.132, %for.body
  %110 = load i8*, i8** %buf, align 8
  %111 = load i64, i64* %cur, align 8
  %add.ptr = getelementptr i8, i8* %110, i64 %111
  %112 = load i64, i64* %i108, align 8
  %idx.neg = sub i64 0, %112
  %add.ptr137 = getelementptr i8, i8* %add.ptr, i64 %idx.neg
  %113 = load i8*, i8** %buf, align 8
  %114 = load i64, i64* %cur, align 8
  %add.ptr138 = getelementptr i8, i8* %113, i64 %114
  %add.ptr139 = getelementptr i8, i8* %add.ptr138, i64 1
  %115 = load i64, i64* %lim, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr137, i8* %add.ptr139, i64 %115, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.136
  %116 = load i64, i64* %step, align 8
  %117 = load i64, i64* %cur, align 8
  %add140 = add i64 %117, %116
  store i64 %add140, i64* %cur, align 8
  %118 = load i64, i64* %i108, align 8
  %inc = add i64 %118, 1
  store i64 %inc, i64* %i108, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %119 = load i64, i64* %start, align 8
  %120 = load i64, i64* %slicelen, align 8
  %121 = load i64, i64* %step, align 8
  %mul141 = mul i64 %120, %121
  %add142 = add i64 %119, %mul141
  store i64 %add142, i64* %cur, align 8
  %122 = load i64, i64* %cur, align 8
  %123 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %124 = bitcast %struct.PyByteArrayObject* %123 to %struct.PyVarObject*
  %ob_size143 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %124, i32 0, i32 1
  %125 = load i64, i64* %ob_size143, align 8
  %cmp144 = icmp ult i64 %122, %125
  br i1 %cmp144, label %if.then.146, label %if.end.153

if.then.146:                                      ; preds = %for.end
  %126 = load i8*, i8** %buf, align 8
  %127 = load i64, i64* %cur, align 8
  %add.ptr147 = getelementptr i8, i8* %126, i64 %127
  %128 = load i64, i64* %slicelen, align 8
  %idx.neg148 = sub i64 0, %128
  %add.ptr149 = getelementptr i8, i8* %add.ptr147, i64 %idx.neg148
  %129 = load i8*, i8** %buf, align 8
  %130 = load i64, i64* %cur, align 8
  %add.ptr150 = getelementptr i8, i8* %129, i64 %130
  %131 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %132 = bitcast %struct.PyByteArrayObject* %131 to %struct.PyVarObject*
  %ob_size151 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %132, i32 0, i32 1
  %133 = load i64, i64* %ob_size151, align 8
  %134 = load i64, i64* %cur, align 8
  %sub152 = sub i64 %133, %134
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr149, i8* %add.ptr150, i64 %sub152, i32 1, i1 false)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.146, %for.end
  %135 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %136 = bitcast %struct.PyByteArrayObject* %135 to %struct._object*
  %137 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %138 = bitcast %struct.PyByteArrayObject* %137 to %struct.PyVarObject*
  %ob_size154 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %138, i32 0, i32 1
  %139 = load i64, i64* %ob_size154, align 8
  %140 = load i64, i64* %slicelen, align 8
  %sub155 = sub i64 %139, %140
  %call156 = call i32 @PyByteArray_Resize(%struct._object* %136, i64 %sub155)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.153
  store i32 -1, i32* %retval
  br label %return

if.end.160:                                       ; preds = %if.end.153
  store i32 0, i32* %retval
  br label %return

if.else.161:                                      ; preds = %if.else.104
  %141 = load i64, i64* %needed, align 8
  %142 = load i64, i64* %slicelen, align 8
  %cmp164 = icmp ne i64 %141, %142
  br i1 %cmp164, label %if.then.166, label %if.end.168

if.then.166:                                      ; preds = %if.else.161
  %143 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %144 = load i64, i64* %needed, align 8
  %145 = load i64, i64* %slicelen, align 8
  %call167 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %143, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i32 0, i32 0), i64 %144, i64 %145)
  store i32 -1, i32* %retval
  br label %return

if.end.168:                                       ; preds = %if.else.161
  %146 = load i64, i64* %start, align 8
  store i64 %146, i64* %cur163, align 8
  store i64 0, i64* %i162, align 8
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.175, %if.end.168
  %147 = load i64, i64* %i162, align 8
  %148 = load i64, i64* %slicelen, align 8
  %cmp170 = icmp slt i64 %147, %148
  br i1 %cmp170, label %for.body.172, label %for.end.178

for.body.172:                                     ; preds = %for.cond.169
  %149 = load i64, i64* %i162, align 8
  %150 = load i8*, i8** %bytes, align 8
  %arrayidx173 = getelementptr i8, i8* %150, i64 %149
  %151 = load i8, i8* %arrayidx173, align 1
  %152 = load i64, i64* %cur163, align 8
  %153 = load i8*, i8** %buf, align 8
  %arrayidx174 = getelementptr i8, i8* %153, i64 %152
  store i8 %151, i8* %arrayidx174, align 1
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.body.172
  %154 = load i64, i64* %step, align 8
  %155 = load i64, i64* %cur163, align 8
  %add176 = add i64 %155, %154
  store i64 %add176, i64* %cur163, align 8
  %156 = load i64, i64* %i162, align 8
  %inc177 = add i64 %156, 1
  store i64 %inc177, i64* %i162, align 8
  br label %for.cond.169

for.end.178:                                      ; preds = %for.cond.169
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.178, %if.then.166, %if.end.160, %if.then.159, %if.then.115, %if.then.111, %if.then.102, %do.end, %if.then.67, %if.then.62, %if.else.38, %if.then.36, %if.end.25, %if.then.24, %if.then.17, %if.then.9
  %157 = load i32, i32* %retval
  ret i32 %157
}

declare i32 @PySlice_GetIndicesEx(%struct._object*, i64, i64*, i64*, i64*, i64*) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare i32 @PyNumber_Check(%struct._object*) #1

declare i32 @PyErr_WarnEx(%struct._object*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @bytearray_getbuffer(%struct.PyByteArrayObject* %obj, %struct.bufferinfo* %view, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct.PyByteArrayObject*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store %struct.PyByteArrayObject* %obj, %struct.PyByteArrayObject** %obj.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %cmp = icmp eq %struct.bufferinfo* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj.addr, align 8
  %ob_exports = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %1, i32 0, i32 4
  %2 = load i32, i32* %ob_exports, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %ob_exports, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj.addr, align 8
  %4 = bitcast %struct.PyByteArrayObject* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %6, i32 0, i32 3
  %7 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %ptr, align 8
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %9 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj.addr, align 8
  %10 = bitcast %struct.PyByteArrayObject* %9 to %struct._object*
  %11 = load i8*, i8** %ptr, align 8
  %12 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj.addr, align 8
  %13 = bitcast %struct.PyByteArrayObject* %12 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size1, align 8
  %15 = load i32, i32* %flags.addr, align 4
  %call = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %8, %struct._object* %10, i8* %11, i64 %14, i32 0, i32 %15)
  store i32 %call, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp2 = icmp sge i32 %16, 0
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %cond.end
  %17 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj.addr, align 8
  %ob_exports4 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %17, i32 0, i32 4
  %18 = load i32, i32* %ob_exports4, align 4
  %inc5 = add i32 %18, 1
  store i32 %inc5, i32* %ob_exports4, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %cond.end
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @bytearray_releasebuffer(%struct.PyByteArrayObject* %obj, %struct.bufferinfo* %view) #0 {
entry:
  %obj.addr = alloca %struct.PyByteArrayObject*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  store %struct.PyByteArrayObject* %obj, %struct.PyByteArrayObject** %obj.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %obj.addr, align 8
  %ob_exports = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %0, i32 0, i32 4
  %1 = load i32, i32* %ob_exports, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %ob_exports, align 4
  ret void
}

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #1

declare i32 @PyObject_IsInstance(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_alloc(%struct.PyByteArrayObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_alloc = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %0, i32 0, i32 1
  %1 = load i64, i64* %ob_alloc, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_reduce(%struct.PyByteArrayObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call = call %struct._object* @_common_reduce(%struct.PyByteArrayObject* %0, i32 2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_reduce_ex(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %proto = alloca i32, align 4
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %proto, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.76, i32 0, i32 0), i32* %proto)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %2 = load i32, i32* %proto, align 4
  %call1 = call %struct._object* @_common_reduce(%struct.PyByteArrayObject* %1, i32 %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_sizeof(%struct.PyByteArrayObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %res = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_alloc = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %0, i32 0, i32 1
  %1 = load i64, i64* %ob_alloc, align 8
  %mul = mul i64 %1, 1
  %add = add i64 56, %mul
  store i64 %add, i64* %res, align 8
  %2 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_append(%struct.PyByteArrayObject* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %value = alloca i32, align 4
  %n = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i32 @_getbytevalue(%struct._object* %3, i32* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %4, 9223372036854775807
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.77, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %6 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %7 = bitcast %struct.PyByteArrayObject* %6 to %struct._object*
  %8 = load i64, i64* %n, align 8
  %add = add i64 %8, 1
  %call3 = call i32 @PyByteArray_Resize(%struct._object* %7, i64 %add)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %9 = load i32, i32* %value, align 4
  %conv = trunc i32 %9 to i8
  %10 = load i64, i64* %n, align 8
  %11 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %12 = bitcast %struct.PyByteArrayObject* %11 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size7, align 8
  %tobool8 = icmp ne i64 %13, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %14 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %14, i32 0, i32 3
  %15 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %15, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %arrayidx = getelementptr i8, i8* %cond, i64 %10
  store i8 %conv, i8* %arrayidx, align 1
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.5, %if.then.1, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_capitalize(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %newobj = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %2)
  store %struct._object* %call, %struct._object** %newobj, align 8
  %3 = load %struct._object*, %struct._object** %newobj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %newobj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size1, align 8
  %tobool2 = icmp ne i64 %6, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %newobj, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %8, i32 0, i32 3
  %9 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size3, align 8
  %tobool4 = icmp ne i64 %12, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyByteArrayObject*
  %ob_start6 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %14, i32 0, i32 3
  %15 = load i8*, i8** %ob_start6, align 8
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i8* [ %15, %cond.true.5 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.7 ]
  %16 = load %struct._object*, %struct._object** %self.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size10, align 8
  call void @_Py_bytes_capitalize(i8* %cond, i8* %cond9, i64 %18)
  %19 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end.8, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_center(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %marg = alloca i64, align 8
  %left = alloca i64, align 8
  %width = alloca i64, align 8
  %fillchar = alloca i8, align 1
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8 32, i8* %fillchar, align 1
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), i64* %width, i8* %fillchar)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %4 = load i64, i64* %width, align 8
  %cmp = icmp sge i64 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %6, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyByteArray_Type to %struct._typeobject*)
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size3, align 8
  %tobool4 = icmp ne i64 %9, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %11, i32 0, i32 3
  %12 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size5, align 8
  %call6 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %cond, i64 %15)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %16 = load i64, i64* %width, align 8
  %17 = load %struct._object*, %struct._object** %self.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size8, align 8
  %sub = sub i64 %16, %19
  store i64 %sub, i64* %marg, align 8
  %20 = load i64, i64* %marg, align 8
  %div = sdiv i64 %20, 2
  %21 = load i64, i64* %marg, align 8
  %22 = load i64, i64* %width, align 8
  %and = and i64 %21, %22
  %and9 = and i64 %and, 1
  %add = add i64 %div, %and9
  store i64 %add, i64* %left, align 8
  %23 = load %struct._object*, %struct._object** %self.addr, align 8
  %24 = load i64, i64* %left, align 8
  %25 = load i64, i64* %marg, align 8
  %26 = load i64, i64* %left, align 8
  %sub10 = sub i64 %25, %26
  %27 = load i8, i8* %fillchar, align 1
  %call11 = call %struct._object* @pad(%struct._object* %23, i64 %24, i64 %sub10, i8 signext %27)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %cond.end, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_clear(%struct.PyByteArrayObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct._object*
  %call = call i32 @PyByteArray_Resize(%struct._object* %1, i64 0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_copy(%struct.PyByteArrayObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct._object*
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %5 = bitcast %struct.PyByteArrayObject* %4 to %struct._object*
  %6 = bitcast %struct._object* %5 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %6, i32 0, i32 3
  %7 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %8 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %9 = bitcast %struct.PyByteArrayObject* %8 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size1, align 8
  %call = call %struct._object* @PyByteArray_FromStringAndSize(i8* %cond, i64 %10)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_count(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %sub_obj = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %sub = alloca i8*, align 8
  %sub_len = alloca i64, align 8
  %byte = alloca i8, align 1
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %vsub = alloca %struct.bufferinfo, align 8
  %count_obj = alloca %struct._object*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %3, i32 0, i32 3
  %4 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %str, align 8
  store i64 0, i64* %start, align 8
  store i64 9223372036854775807, i64* %end, align 8
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @stringlib_parse_args_finds_byte(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), %struct._object* %5, %struct._object** %sub_obj, i8* %byte, i64* %start, i64* %end)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load %struct._object*, %struct._object** %sub_obj, align 8
  %tobool2 = icmp ne %struct._object* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %sub_obj, align 8
  %call4 = call i64 @_getbuffer(%struct._object* %7, %struct.bufferinfo* %vsub)
  %cmp = icmp slt i64 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.3
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsub, i32 0, i32 0
  %8 = load i8*, i8** %buf, align 8
  store i8* %8, i8** %sub, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsub, i32 0, i32 2
  %9 = load i64, i64* %len, align 8
  store i64 %9, i64* %sub_len, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  store i8* %byte, i8** %sub, align 8
  store i64 1, i64* %sub_len, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end.6
  %10 = load i64, i64* %end, align 8
  %11 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %12 = bitcast %struct.PyByteArrayObject* %11 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size8, align 8
  %cmp9 = icmp sgt i64 %10, %13
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.end.7
  %14 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %15 = bitcast %struct.PyByteArrayObject* %14 to %struct.PyVarObject*
  %ob_size11 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1
  %16 = load i64, i64* %ob_size11, align 8
  store i64 %16, i64* %end, align 8
  br label %if.end.20

if.else.12:                                       ; preds = %if.end.7
  %17 = load i64, i64* %end, align 8
  %cmp13 = icmp slt i64 %17, 0
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.else.12
  %18 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %19 = bitcast %struct.PyByteArrayObject* %18 to %struct.PyVarObject*
  %ob_size15 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size15, align 8
  %21 = load i64, i64* %end, align 8
  %add = add i64 %21, %20
  store i64 %add, i64* %end, align 8
  %22 = load i64, i64* %end, align 8
  %cmp16 = icmp slt i64 %22, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  store i64 0, i64* %end, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.else.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.10
  %23 = load i64, i64* %start, align 8
  %cmp21 = icmp slt i64 %23, 0
  br i1 %cmp21, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.end.20
  %24 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %25 = bitcast %struct.PyByteArrayObject* %24 to %struct.PyVarObject*
  %ob_size23 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ob_size23, align 8
  %27 = load i64, i64* %start, align 8
  %add24 = add i64 %27, %26
  store i64 %add24, i64* %start, align 8
  %28 = load i64, i64* %start, align 8
  %cmp25 = icmp slt i64 %28, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  store i64 0, i64* %start, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.20
  %29 = load i8*, i8** %str, align 8
  %30 = load i64, i64* %start, align 8
  %add.ptr = getelementptr i8, i8* %29, i64 %30
  %31 = load i64, i64* %end, align 8
  %32 = load i64, i64* %start, align 8
  %sub29 = sub i64 %31, %32
  %33 = load i8*, i8** %sub, align 8
  %34 = load i64, i64* %sub_len, align 8
  %call30 = call i64 @stringlib_count(i8* %add.ptr, i64 %sub29, i8* %33, i64 %34, i64 9223372036854775807)
  %call31 = call %struct._object* @PyLong_FromSsize_t(i64 %call30)
  store %struct._object* %call31, %struct._object** %count_obj, align 8
  %35 = load %struct._object*, %struct._object** %sub_obj, align 8
  %tobool32 = icmp ne %struct._object* %35, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.28
  call void @PyBuffer_Release(%struct.bufferinfo* %vsub)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.28
  %36 = load %struct._object*, %struct._object** %count_obj, align 8
  store %struct._object* %36, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.5, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_decode(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i8* null, i8** %encoding, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bytearray_decode.kwlist, i32 0, i32 0), i8** %encoding, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %encoding, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %call2 = call i8* @PyUnicode_GetDefaultEncoding()
  store i8* %call2, i8** %encoding, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %4 = load i8*, i8** %encoding, align 8
  %5 = load i8*, i8** %errors, align 8
  %call4 = call %struct._object* @PyUnicode_FromEncodedObject(%struct._object* %3, i8* %4, i8* %5)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_endswith(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %subobj = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %start, align 8
  store i64 9223372036854775807, i64* %end, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @stringlib_parse_args_finds(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), %struct._object* %0, %struct._object** %subobj, i64* %start, i64* %end)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %subobj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.end.12

if.then.1:                                        ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %4 = load i64, i64* %i, align 8
  %5 = load %struct._object*, %struct._object** %subobj, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %cmp2 = icmp slt i64 %4, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load %struct._object*, %struct._object** %subobj, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %13 = load i64, i64* %start, align 8
  %14 = load i64, i64* %end, align 8
  %call3 = call i32 @_bytearray_tailmatch(%struct.PyByteArrayObject* %8, %struct._object* %12, i64 %13, i64 %14, i32 1)
  store i32 %call3, i32* %result, align 4
  %15 = load i32, i32* %result, align 4
  %cmp4 = icmp eq i32 %15, -1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %for.body
  %16 = load i32, i32* %result, align 4
  %tobool6 = icmp ne i32 %16, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %18 = load i64, i64* %i, align 8
  %inc10 = add i64 %18, 1
  store i64 %inc10, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc11 = add i64 %19, 1
  store i64 %inc11, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %20 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %21 = load %struct._object*, %struct._object** %subobj, align 8
  %22 = load i64, i64* %start, align 8
  %23 = load i64, i64* %end, align 8
  %call13 = call i32 @_bytearray_tailmatch(%struct.PyByteArrayObject* %20, %struct._object* %21, i64 %22, i64 %23, i32 1)
  store i32 %call13, i32* %result, align 4
  %24 = load i32, i32* %result, align 4
  %cmp14 = icmp eq i32 %24, -1
  br i1 %cmp14, label %if.then.15, label %if.else.22

if.then.15:                                       ; preds = %if.end.12
  %25 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call16 = call i32 @PyErr_ExceptionMatches(%struct._object* %25)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.then.15
  %26 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %27 = load %struct._object*, %struct._object** %subobj, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 1
  %29 = load i8*, i8** %tp_name, align 8
  %call20 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %26, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.82, i32 0, i32 0), i8* %29)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.then.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.22:                                       ; preds = %if.end.12
  %30 = load i32, i32* %result, align 4
  %conv = sext i32 %30 to i64
  %call23 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.22, %if.end.21, %for.end, %if.then.7, %if.then.5, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_expandtabs(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %e = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %u = alloca %struct._object*, align 8
  %tabsize = alloca i32, align 4
  %incr = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i32 8, i32* %tabsize, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stringlib_expandtabs.kwlist, i32 0, i32 0), i32* %tabsize)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %tobool1 = icmp ne i64 %4, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %6, i32 0, i32 3
  %7 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %8 = load %struct._object*, %struct._object** %self.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size2, align 8
  %add.ptr = getelementptr i8, i8* %cond, i64 %10
  store i8* %add.ptr, i8** %e, align 8
  %11 = load %struct._object*, %struct._object** %self.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size3, align 8
  %tobool4 = icmp ne i64 %13, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %14 = load %struct._object*, %struct._object** %self.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyByteArrayObject*
  %ob_start6 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %15, i32 0, i32 3
  %16 = load i8*, i8** %ob_start6, align 8
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i8* [ %16, %cond.true.5 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.7 ]
  store i8* %cond9, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.8
  %17 = load i8*, i8** %p, align 8
  %18 = load i8*, i8** %e, align 8
  %cmp = icmp ult i8* %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv = sext i8 %20 to i32
  %cmp10 = icmp eq i32 %conv, 9
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %for.body
  %21 = load i32, i32* %tabsize, align 4
  %cmp13 = icmp sgt i32 %21, 0
  br i1 %cmp13, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.then.12
  %22 = load i32, i32* %tabsize, align 4
  %conv16 = sext i32 %22 to i64
  %23 = load i64, i64* %j, align 8
  %24 = load i32, i32* %tabsize, align 4
  %conv17 = sext i32 %24 to i64
  %rem = srem i64 %23, %conv17
  %sub = sub i64 %conv16, %rem
  store i64 %sub, i64* %incr, align 8
  %25 = load i64, i64* %j, align 8
  %26 = load i64, i64* %incr, align 8
  %sub18 = sub i64 9223372036854775807, %26
  %cmp19 = icmp sgt i64 %25, %sub18
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.15
  br label %overflow

if.end.22:                                        ; preds = %if.then.15
  %27 = load i64, i64* %incr, align 8
  %28 = load i64, i64* %j, align 8
  %add = add i64 %28, %27
  store i64 %add, i64* %j, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.12
  br label %if.end.42

if.else:                                          ; preds = %for.body
  %29 = load i64, i64* %j, align 8
  %cmp24 = icmp sgt i64 %29, 9223372036854775806
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else
  br label %overflow

if.end.27:                                        ; preds = %if.else
  %30 = load i64, i64* %j, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %j, align 8
  %31 = load i8*, i8** %p, align 8
  %32 = load i8, i8* %31, align 1
  %conv28 = sext i8 %32 to i32
  %cmp29 = icmp eq i32 %conv28, 10
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %33 = load i8*, i8** %p, align 8
  %34 = load i8, i8* %33, align 1
  %conv31 = sext i8 %34 to i32
  %cmp32 = icmp eq i32 %conv31, 13
  br i1 %cmp32, label %if.then.34, label %if.end.41

if.then.34:                                       ; preds = %lor.lhs.false, %if.end.27
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* %j, align 8
  %sub35 = sub i64 9223372036854775807, %36
  %cmp36 = icmp sgt i64 %35, %sub35
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.34
  br label %overflow

if.end.39:                                        ; preds = %if.then.34
  %37 = load i64, i64* %j, align 8
  %38 = load i64, i64* %i, align 8
  %add40 = add i64 %38, %37
  store i64 %add40, i64* %i, align 8
  store i64 0, i64* %j, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.39, %lor.lhs.false
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %39 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* %j, align 8
  %sub43 = sub i64 9223372036854775807, %41
  %cmp44 = icmp sgt i64 %40, %sub43
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.end
  br label %overflow

if.end.47:                                        ; preds = %for.end
  %42 = load i64, i64* %i, align 8
  %43 = load i64, i64* %j, align 8
  %add48 = add i64 %42, %43
  %call49 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %add48)
  store %struct._object* %call49, %struct._object** %u, align 8
  %44 = load %struct._object*, %struct._object** %u, align 8
  %tobool50 = icmp ne %struct._object* %44, null
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.52:                                        ; preds = %if.end.47
  store i64 0, i64* %j, align 8
  %45 = load %struct._object*, %struct._object** %u, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyVarObject*
  %ob_size53 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %46, i32 0, i32 1
  %47 = load i64, i64* %ob_size53, align 8
  %tobool54 = icmp ne i64 %47, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.57

cond.true.55:                                     ; preds = %if.end.52
  %48 = load %struct._object*, %struct._object** %u, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyByteArrayObject*
  %ob_start56 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %49, i32 0, i32 3
  %50 = load i8*, i8** %ob_start56, align 8
  br label %cond.end.58

cond.false.57:                                    ; preds = %if.end.52
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.55
  %cond59 = phi i8* [ %50, %cond.true.55 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.57 ]
  store i8* %cond59, i8** %q, align 8
  %51 = load %struct._object*, %struct._object** %self.addr, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyVarObject*
  %ob_size60 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %52, i32 0, i32 1
  %53 = load i64, i64* %ob_size60, align 8
  %tobool61 = icmp ne i64 %53, 0
  br i1 %tobool61, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %cond.end.58
  %54 = load %struct._object*, %struct._object** %self.addr, align 8
  %55 = bitcast %struct._object* %54 to %struct.PyByteArrayObject*
  %ob_start63 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %55, i32 0, i32 3
  %56 = load i8*, i8** %ob_start63, align 8
  br label %cond.end.65

cond.false.64:                                    ; preds = %cond.end.58
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi i8* [ %56, %cond.true.62 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.64 ]
  store i8* %cond66, i8** %p, align 8
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.99, %cond.end.65
  %57 = load i8*, i8** %p, align 8
  %58 = load i8*, i8** %e, align 8
  %cmp68 = icmp ult i8* %57, %58
  br i1 %cmp68, label %for.body.70, label %for.end.101

for.body.70:                                      ; preds = %for.cond.67
  %59 = load i8*, i8** %p, align 8
  %60 = load i8, i8* %59, align 1
  %conv71 = sext i8 %60 to i32
  %cmp72 = icmp eq i32 %conv71, 9
  br i1 %cmp72, label %if.then.74, label %if.else.86

if.then.74:                                       ; preds = %for.body.70
  %61 = load i32, i32* %tabsize, align 4
  %cmp75 = icmp sgt i32 %61, 0
  br i1 %cmp75, label %if.then.77, label %if.end.85

if.then.77:                                       ; preds = %if.then.74
  %62 = load i32, i32* %tabsize, align 4
  %conv78 = sext i32 %62 to i64
  %63 = load i64, i64* %j, align 8
  %64 = load i32, i32* %tabsize, align 4
  %conv79 = sext i32 %64 to i64
  %rem80 = srem i64 %63, %conv79
  %sub81 = sub i64 %conv78, %rem80
  store i64 %sub81, i64* %i, align 8
  %65 = load i64, i64* %i, align 8
  %66 = load i64, i64* %j, align 8
  %add82 = add i64 %66, %65
  store i64 %add82, i64* %j, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.77
  %67 = load i64, i64* %i, align 8
  %dec = add i64 %67, -1
  store i64 %dec, i64* %i, align 8
  %tobool83 = icmp ne i64 %67, 0
  br i1 %tobool83, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %68 = load i8*, i8** %q, align 8
  %incdec.ptr84 = getelementptr i8, i8* %68, i32 1
  store i8* %incdec.ptr84, i8** %q, align 8
  store i8 32, i8* %68, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.85

if.end.85:                                        ; preds = %while.end, %if.then.74
  br label %if.end.98

if.else.86:                                       ; preds = %for.body.70
  %69 = load i64, i64* %j, align 8
  %inc87 = add i64 %69, 1
  store i64 %inc87, i64* %j, align 8
  %70 = load i8*, i8** %p, align 8
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %q, align 8
  %incdec.ptr88 = getelementptr i8, i8* %72, i32 1
  store i8* %incdec.ptr88, i8** %q, align 8
  store i8 %71, i8* %72, align 1
  %73 = load i8*, i8** %p, align 8
  %74 = load i8, i8* %73, align 1
  %conv89 = sext i8 %74 to i32
  %cmp90 = icmp eq i32 %conv89, 10
  br i1 %cmp90, label %if.then.96, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %if.else.86
  %75 = load i8*, i8** %p, align 8
  %76 = load i8, i8* %75, align 1
  %conv93 = sext i8 %76 to i32
  %cmp94 = icmp eq i32 %conv93, 13
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %lor.lhs.false.92, %if.else.86
  store i64 0, i64* %j, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %lor.lhs.false.92
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.85
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %77 = load i8*, i8** %p, align 8
  %incdec.ptr100 = getelementptr i8, i8* %77, i32 1
  store i8* %incdec.ptr100, i8** %p, align 8
  br label %for.cond.67

for.end.101:                                      ; preds = %for.cond.67
  %78 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %78, %struct._object** %retval
  br label %return

overflow:                                         ; preds = %if.then.46, %if.then.38, %if.then.26, %if.then.21
  %79 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %overflow, %for.end.101, %if.then.51, %if.then
  %80 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %80
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_extend(%struct.PyByteArrayObject* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %bytearray_obj = alloca %struct._object*, align 8
  %buf_size = alloca i64, align 8
  %len = alloca i64, align 8
  %value = alloca i32, align 4
  %buf = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp97 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  %_py_decref_tmp130 = alloca %struct._object*, align 8
  %_py_decref_tmp146 = alloca %struct._object*, align 8
  %_py_decref_tmp165 = alloca %struct._object*, align 8
  %_py_decref_tmp178 = alloca %struct._object*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i64 0, i64* %buf_size, align 8
  store i64 0, i64* %len, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 18
  %2 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp = icmp ne %struct.PyBufferProcs* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_buffer2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 18
  %5 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer2, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %5, i32 0, i32 0
  %6 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp3 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %6, null
  br i1 %cmp3, label %if.then, label %if.end.7

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %8 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %9 = bitcast %struct.PyByteArrayObject* %8 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size, align 8
  %11 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %12 = bitcast %struct.PyByteArrayObject* %11 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size4, align 8
  %14 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i32 @bytearray_setslice(%struct.PyByteArrayObject* %7, i64 %10, i64 %13, %struct._object* %14)
  %cmp5 = icmp eq i32 %call, -1
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %entry
  %16 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call8 = call %struct._object* @PyObject_GetIter(%struct._object* %16)
  store %struct._object* %call8, %struct._object** %it, align 8
  %17 = load %struct._object*, %struct._object** %it, align 8
  %cmp9 = icmp eq %struct._object* %17, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %18 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call12 = call i64 @PyObject_LengthHint(%struct._object* %18, i64 32)
  store i64 %call12, i64* %buf_size, align 8
  %19 = load i64, i64* %buf_size, align 8
  %cmp13 = icmp eq i64 %19, -1
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end.11
  br label %do.body

do.body:                                          ; preds = %if.then.14
  %20 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.11
  %27 = load i64, i64* %buf_size, align 8
  %call20 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %27)
  store %struct._object* %call20, %struct._object** %bytearray_obj, align 8
  %28 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  %cmp21 = icmp eq %struct._object* %28, null
  br i1 %cmp21, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %if.end.19
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  %29 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp24, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %31, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %34(%struct._object* %35)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %if.end.19
  %36 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyVarObject*
  %ob_size35 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %37, i32 0, i32 1
  %38 = load i64, i64* %ob_size35, align 8
  %tobool = icmp ne i64 %38, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.34
  %39 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %40, i32 0, i32 3
  %41 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %41, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %buf, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.128, %cond.end
  %42 = load %struct._object*, %struct._object** %it, align 8
  %call36 = call %struct._object* @PyIter_Next(%struct._object* %42)
  store %struct._object* %call36, %struct._object** %item, align 8
  %cmp37 = icmp ne %struct._object* %call36, null
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = load %struct._object*, %struct._object** %item, align 8
  %call38 = call i32 @_getbytevalue(%struct._object* %43, i32* %value)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.74, label %if.then.40

if.then.40:                                       ; preds = %while.body
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %44 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp42, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt43, align 8
  %dec44 = add i64 %46, -1
  store i64 %dec44, i64* %ob_refcnt43, align 8
  %cmp45 = icmp ne i64 %dec44, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.41
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  call void %49(%struct._object* %50)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.51
  %51 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp53, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %53, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %56(%struct._object* %57)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %do.body.63

do.body.63:                                       ; preds = %do.end.62
  %58 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp64, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt65, align 8
  %dec66 = add i64 %60, -1
  store i64 %dec66, i64* %ob_refcnt65, align 8
  %cmp67 = icmp ne i64 %dec66, 0
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.63
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.63
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  call void %63(%struct._object* %64)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.74:                                        ; preds = %while.body
  %65 = load i32, i32* %value, align 4
  %conv = trunc i32 %65 to i8
  %66 = load i64, i64* %len, align 8
  %inc75 = add i64 %66, 1
  store i64 %inc75, i64* %len, align 8
  %67 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr i8, i8* %67, i64 %66
  store i8 %conv, i8* %arrayidx, align 1
  br label %do.body.76

do.body.76:                                       ; preds = %if.end.74
  %68 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp77, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %70, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.76
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.76
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %73(%struct._object* %74)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  %75 = load i64, i64* %len, align 8
  %76 = load i64, i64* %buf_size, align 8
  %cmp88 = icmp sge i64 %75, %76
  br i1 %cmp88, label %if.then.90, label %if.end.128

if.then.90:                                       ; preds = %do.end.87
  %77 = load i64, i64* %len, align 8
  %78 = load i64, i64* %len, align 8
  %shr = ashr i64 %78, 1
  %add = add i64 %77, %shr
  %add91 = add i64 %add, 1
  store i64 %add91, i64* %buf_size, align 8
  %79 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  %80 = load i64, i64* %buf_size, align 8
  %call92 = call i32 @PyByteArray_Resize(%struct._object* %79, i64 %80)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.then.95, label %if.end.120

if.then.95:                                       ; preds = %if.then.90
  br label %do.body.96

do.body.96:                                       ; preds = %if.then.95
  %81 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp97, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  %ob_refcnt98 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt98, align 8
  %dec99 = add i64 %83, -1
  store i64 %dec99, i64* %ob_refcnt98, align 8
  %cmp100 = icmp ne i64 %dec99, 0
  br i1 %cmp100, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %do.body.96
  br label %if.end.106

if.else.103:                                      ; preds = %do.body.96
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  call void %86(%struct._object* %87)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.102
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  br label %do.body.108

do.body.108:                                      ; preds = %do.end.107
  %88 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp109, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %90, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %do.body.108
  br label %if.end.118

if.else.115:                                      ; preds = %do.body.108
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %93(%struct._object* %94)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.120:                                       ; preds = %if.then.90
  %95 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  %96 = bitcast %struct._object* %95 to %struct.PyVarObject*
  %ob_size121 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %96, i32 0, i32 1
  %97 = load i64, i64* %ob_size121, align 8
  %tobool122 = icmp ne i64 %97, 0
  br i1 %tobool122, label %cond.true.123, label %cond.false.125

cond.true.123:                                    ; preds = %if.end.120
  %98 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  %99 = bitcast %struct._object* %98 to %struct.PyByteArrayObject*
  %ob_start124 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %99, i32 0, i32 3
  %100 = load i8*, i8** %ob_start124, align 8
  br label %cond.end.126

cond.false.125:                                   ; preds = %if.end.120
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.125, %cond.true.123
  %cond127 = phi i8* [ %100, %cond.true.123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.125 ]
  store i8* %cond127, i8** %buf, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %cond.end.126, %do.end.87
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.129

do.body.129:                                      ; preds = %while.end
  %101 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp130, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  %ob_refcnt131 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt131, align 8
  %dec132 = add i64 %103, -1
  store i64 %dec132, i64* %ob_refcnt131, align 8
  %cmp133 = icmp ne i64 %dec132, 0
  br i1 %cmp133, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %do.body.129
  br label %if.end.139

if.else.136:                                      ; preds = %do.body.129
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  %ob_type137 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type137, align 8
  %tp_dealloc138 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc138, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  call void %106(%struct._object* %107)
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.136, %if.then.135
  br label %do.end.140

do.end.140:                                       ; preds = %if.end.139
  %108 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  %109 = load i64, i64* %len, align 8
  %call141 = call i32 @PyByteArray_Resize(%struct._object* %108, i64 %109)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %if.then.144, label %if.end.157

if.then.144:                                      ; preds = %do.end.140
  br label %do.body.145

do.body.145:                                      ; preds = %if.then.144
  %110 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  store %struct._object* %110, %struct._object** %_py_decref_tmp146, align 8
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  %ob_refcnt147 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 0
  %112 = load i64, i64* %ob_refcnt147, align 8
  %dec148 = add i64 %112, -1
  store i64 %dec148, i64* %ob_refcnt147, align 8
  %cmp149 = icmp ne i64 %dec148, 0
  br i1 %cmp149, label %if.then.151, label %if.else.152

if.then.151:                                      ; preds = %do.body.145
  br label %if.end.155

if.else.152:                                      ; preds = %do.body.145
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  %ob_type153 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 1
  %114 = load %struct._typeobject*, %struct._typeobject** %ob_type153, align 8
  %tp_dealloc154 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %114, i32 0, i32 4
  %115 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc154, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  call void %115(%struct._object* %116)
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.152, %if.then.151
  br label %do.end.156

do.end.156:                                       ; preds = %if.end.155
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.157:                                       ; preds = %do.end.140
  %117 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %118 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %119 = bitcast %struct.PyByteArrayObject* %118 to %struct.PyVarObject*
  %ob_size158 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %119, i32 0, i32 1
  %120 = load i64, i64* %ob_size158, align 8
  %121 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %122 = bitcast %struct.PyByteArrayObject* %121 to %struct.PyVarObject*
  %ob_size159 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %122, i32 0, i32 1
  %123 = load i64, i64* %ob_size159, align 8
  %124 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  %call160 = call i32 @bytearray_setslice(%struct.PyByteArrayObject* %117, i64 %120, i64 %123, %struct._object* %124)
  %cmp161 = icmp eq i32 %call160, -1
  br i1 %cmp161, label %if.then.163, label %if.end.176

if.then.163:                                      ; preds = %if.end.157
  br label %do.body.164

do.body.164:                                      ; preds = %if.then.163
  %125 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  store %struct._object* %125, %struct._object** %_py_decref_tmp165, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  %ob_refcnt166 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 0
  %127 = load i64, i64* %ob_refcnt166, align 8
  %dec167 = add i64 %127, -1
  store i64 %dec167, i64* %ob_refcnt166, align 8
  %cmp168 = icmp ne i64 %dec167, 0
  br i1 %cmp168, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %do.body.164
  br label %if.end.174

if.else.171:                                      ; preds = %do.body.164
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  %ob_type172 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 1
  %129 = load %struct._typeobject*, %struct._typeobject** %ob_type172, align 8
  %tp_dealloc173 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %129, i32 0, i32 4
  %130 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  call void %130(%struct._object* %131)
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.171, %if.then.170
  br label %do.end.175

do.end.175:                                       ; preds = %if.end.174
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.176:                                       ; preds = %if.end.157
  br label %do.body.177

do.body.177:                                      ; preds = %if.end.176
  %132 = load %struct._object*, %struct._object** %bytearray_obj, align 8
  store %struct._object* %132, %struct._object** %_py_decref_tmp178, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8
  %ob_refcnt179 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 0
  %134 = load i64, i64* %ob_refcnt179, align 8
  %dec180 = add i64 %134, -1
  store i64 %dec180, i64* %ob_refcnt179, align 8
  %cmp181 = icmp ne i64 %dec180, 0
  br i1 %cmp181, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %do.body.177
  br label %if.end.187

if.else.184:                                      ; preds = %do.body.177
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8
  %ob_type185 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 1
  %136 = load %struct._typeobject*, %struct._typeobject** %ob_type185, align 8
  %tp_dealloc186 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %136, i32 0, i32 4
  %137 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc186, align 8
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8
  call void %137(%struct._object* %138)
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.184, %if.then.183
  br label %do.end.188

do.end.188:                                       ; preds = %if.end.187
  %139 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc189 = add i64 %139, 1
  store i64 %inc189, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.188, %do.end.175, %do.end.156, %do.end.119, %do.end.73, %do.end.33, %do.end, %if.then.10, %if.end, %if.then.6
  %140 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %140
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_find(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @bytearray_find_internal(%struct.PyByteArrayObject* %0, %struct._object* %1, i32 1)
  store i64 %call, i64* %result, align 8
  %2 = load i64, i64* %result, align 8
  %cmp = icmp eq i64 %2, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %result, align 8
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_fromhex(%struct._object* %cls, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %newbytes = alloca %struct._object*, align 8
  %hexobj = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %hexlen = alloca i64, align 8
  %byteslen = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %top = alloca i32, align 4
  %bot = alloca i32, align 4
  %data = alloca i8*, align 8
  %kind = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), %struct._object** %hexobj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %hexobj, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %2, i32 0, i32 3
  %3 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %3, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %hexobj, align 8
  %call2 = call i32 @_PyUnicode_Ready(%struct._object* %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call2, %cond.false ]
  %tobool3 = icmp ne i32 %cond, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  %5 = load %struct._object*, %struct._object** %hexobj, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %state6 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3
  %7 = bitcast %struct.anon* %state6 to i32*
  %bf.load7 = load i32, i32* %7, align 4
  %bf.lshr8 = lshr i32 %bf.load7, 2
  %bf.clear9 = and i32 %bf.lshr8, 7
  store i32 %bf.clear9, i32* %kind, align 4
  %8 = load %struct._object*, %struct._object** %hexobj, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %state10 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3
  %10 = bitcast %struct.anon* %state10 to i32*
  %bf.load11 = load i32, i32* %10, align 4
  %bf.lshr12 = lshr i32 %bf.load11, 5
  %bf.clear13 = and i32 %bf.lshr12, 1
  %tobool14 = icmp ne i32 %bf.clear13, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.26

cond.true.15:                                     ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %hexobj, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %state16 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3
  %13 = bitcast %struct.anon* %state16 to i32*
  %bf.load17 = load i32, i32* %13, align 4
  %bf.lshr18 = lshr i32 %bf.load17, 6
  %bf.clear19 = and i32 %bf.lshr18, 1
  %tobool20 = icmp ne i32 %bf.clear19, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.true.15
  %14 = load %struct._object*, %struct._object** %hexobj, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i64 1
  %16 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.24

cond.false.22:                                    ; preds = %cond.true.15
  %17 = load %struct._object*, %struct._object** %hexobj, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyCompactUnicodeObject*
  %add.ptr23 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %18, i64 1
  %19 = bitcast %struct.PyCompactUnicodeObject* %add.ptr23 to i8*
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.21
  %cond25 = phi i8* [ %16, %cond.true.21 ], [ %19, %cond.false.22 ]
  br label %cond.end.28

cond.false.26:                                    ; preds = %if.end.5
  %20 = load %struct._object*, %struct._object** %hexobj, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyUnicodeObject*
  %data27 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %21, i32 0, i32 1
  %any = bitcast %union.anon* %data27 to i8**
  %22 = load i8*, i8** %any, align 8
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.end.24
  %cond29 = phi i8* [ %cond25, %cond.end.24 ], [ %22, %cond.false.26 ]
  store i8* %cond29, i8** %data, align 8
  %23 = load %struct._object*, %struct._object** %hexobj, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i32 0, i32 1
  %25 = load i64, i64* %length, align 8
  store i64 %25, i64* %hexlen, align 8
  %26 = load i64, i64* %hexlen, align 8
  %div = sdiv i64 %26, 2
  store i64 %div, i64* %byteslen, align 8
  %27 = load i64, i64* %byteslen, align 8
  %call30 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %27)
  store %struct._object* %call30, %struct._object** %newbytes, align 8
  %28 = load %struct._object*, %struct._object** %newbytes, align 8
  %tobool31 = icmp ne %struct._object* %28, null
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %cond.end.28
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %cond.end.28
  %29 = load %struct._object*, %struct._object** %newbytes, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %30, i32 0, i32 1
  %31 = load i64, i64* %ob_size, align 8
  %tobool34 = icmp ne i64 %31, 0
  br i1 %tobool34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %if.end.33
  %32 = load %struct._object*, %struct._object** %newbytes, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %33, i32 0, i32 3
  %34 = load i8*, i8** %ob_start, align 8
  br label %cond.end.37

cond.false.36:                                    ; preds = %if.end.33
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi i8* [ %34, %cond.true.35 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.36 ]
  store i8* %cond38, i8** %buf, align 8
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.37
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* %hexlen, align 8
  %cmp = icmp slt i64 %35, %36
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %37 = load i32, i32* %kind, align 4
  %cmp39 = icmp eq i32 %37, 1
  br i1 %cmp39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %while.cond
  %38 = load i64, i64* %i, align 8
  %39 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %39, i64 %38
  %40 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %40 to i32
  br label %cond.end.51

cond.false.41:                                    ; preds = %while.cond
  %41 = load i32, i32* %kind, align 4
  %cmp42 = icmp eq i32 %41, 2
  br i1 %cmp42, label %cond.true.44, label %cond.false.47

cond.true.44:                                     ; preds = %cond.false.41
  %42 = load i64, i64* %i, align 8
  %43 = load i8*, i8** %data, align 8
  %44 = bitcast i8* %43 to i16*
  %arrayidx45 = getelementptr i16, i16* %44, i64 %42
  %45 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %45 to i32
  br label %cond.end.49

cond.false.47:                                    ; preds = %cond.false.41
  %46 = load i64, i64* %i, align 8
  %47 = load i8*, i8** %data, align 8
  %48 = bitcast i8* %47 to i32*
  %arrayidx48 = getelementptr i32, i32* %48, i64 %46
  %49 = load i32, i32* %arrayidx48, align 4
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.44
  %cond50 = phi i32 [ %conv46, %cond.true.44 ], [ %49, %cond.false.47 ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end.49, %cond.true.40
  %cond52 = phi i32 [ %conv, %cond.true.40 ], [ %cond50, %cond.end.49 ]
  %cmp53 = icmp eq i32 %cond52, 32
  br i1 %cmp53, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end.51
  %50 = load i64, i64* %i, align 8
  %inc = add i64 %50, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %cond.end.51
  %51 = load i64, i64* %i, align 8
  %52 = load i64, i64* %hexlen, align 8
  %cmp55 = icmp sge i64 %51, %52
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %while.end
  br label %for.end

if.end.58:                                        ; preds = %while.end
  %53 = load i32, i32* %kind, align 4
  %cmp59 = icmp eq i32 %53, 1
  br i1 %cmp59, label %cond.true.61, label %cond.false.64

cond.true.61:                                     ; preds = %if.end.58
  %54 = load i64, i64* %i, align 8
  %55 = load i8*, i8** %data, align 8
  %arrayidx62 = getelementptr i8, i8* %55, i64 %54
  %56 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %56 to i32
  br label %cond.end.74

cond.false.64:                                    ; preds = %if.end.58
  %57 = load i32, i32* %kind, align 4
  %cmp65 = icmp eq i32 %57, 2
  br i1 %cmp65, label %cond.true.67, label %cond.false.70

cond.true.67:                                     ; preds = %cond.false.64
  %58 = load i64, i64* %i, align 8
  %59 = load i8*, i8** %data, align 8
  %60 = bitcast i8* %59 to i16*
  %arrayidx68 = getelementptr i16, i16* %60, i64 %58
  %61 = load i16, i16* %arrayidx68, align 2
  %conv69 = zext i16 %61 to i32
  br label %cond.end.72

cond.false.70:                                    ; preds = %cond.false.64
  %62 = load i64, i64* %i, align 8
  %63 = load i8*, i8** %data, align 8
  %64 = bitcast i8* %63 to i32*
  %arrayidx71 = getelementptr i32, i32* %64, i64 %62
  %65 = load i32, i32* %arrayidx71, align 4
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.70, %cond.true.67
  %cond73 = phi i32 [ %conv69, %cond.true.67 ], [ %65, %cond.false.70 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end.72, %cond.true.61
  %cond75 = phi i32 [ %conv63, %cond.true.61 ], [ %cond73, %cond.end.72 ]
  %call76 = call i32 @hex_digit_to_int(i32 %cond75)
  store i32 %call76, i32* %top, align 4
  %66 = load i32, i32* %kind, align 4
  %cmp77 = icmp eq i32 %66, 1
  br i1 %cmp77, label %cond.true.79, label %cond.false.82

cond.true.79:                                     ; preds = %cond.end.74
  %67 = load i64, i64* %i, align 8
  %add = add i64 %67, 1
  %68 = load i8*, i8** %data, align 8
  %arrayidx80 = getelementptr i8, i8* %68, i64 %add
  %69 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %69 to i32
  br label %cond.end.94

cond.false.82:                                    ; preds = %cond.end.74
  %70 = load i32, i32* %kind, align 4
  %cmp83 = icmp eq i32 %70, 2
  br i1 %cmp83, label %cond.true.85, label %cond.false.89

cond.true.85:                                     ; preds = %cond.false.82
  %71 = load i64, i64* %i, align 8
  %add86 = add i64 %71, 1
  %72 = load i8*, i8** %data, align 8
  %73 = bitcast i8* %72 to i16*
  %arrayidx87 = getelementptr i16, i16* %73, i64 %add86
  %74 = load i16, i16* %arrayidx87, align 2
  %conv88 = zext i16 %74 to i32
  br label %cond.end.92

cond.false.89:                                    ; preds = %cond.false.82
  %75 = load i64, i64* %i, align 8
  %add90 = add i64 %75, 1
  %76 = load i8*, i8** %data, align 8
  %77 = bitcast i8* %76 to i32*
  %arrayidx91 = getelementptr i32, i32* %77, i64 %add90
  %78 = load i32, i32* %arrayidx91, align 4
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.89, %cond.true.85
  %cond93 = phi i32 [ %conv88, %cond.true.85 ], [ %78, %cond.false.89 ]
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.end.92, %cond.true.79
  %cond95 = phi i32 [ %conv81, %cond.true.79 ], [ %cond93, %cond.end.92 ]
  %call96 = call i32 @hex_digit_to_int(i32 %cond95)
  store i32 %call96, i32* %bot, align 4
  %79 = load i32, i32* %top, align 4
  %cmp97 = icmp eq i32 %79, -1
  br i1 %cmp97, label %if.then.101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.94
  %80 = load i32, i32* %bot, align 4
  %cmp99 = icmp eq i32 %80, -1
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %lor.lhs.false, %cond.end.94
  %81 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %82 = load i64, i64* %i, align 8
  %call102 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %81, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.88, i32 0, i32 0), i64 %82)
  br label %error

if.end.103:                                       ; preds = %lor.lhs.false
  %83 = load i32, i32* %top, align 4
  %shl = shl i32 %83, 4
  %84 = load i32, i32* %bot, align 4
  %add104 = add i32 %shl, %84
  %conv105 = trunc i32 %add104 to i8
  %85 = load i64, i64* %j, align 8
  %inc106 = add i64 %85, 1
  store i64 %inc106, i64* %j, align 8
  %86 = load i8*, i8** %buf, align 8
  %arrayidx107 = getelementptr i8, i8* %86, i64 %85
  store i8 %conv105, i8* %arrayidx107, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.103
  %87 = load i64, i64* %i, align 8
  %add108 = add i64 %87, 2
  store i64 %add108, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.57, %for.cond
  %88 = load %struct._object*, %struct._object** %newbytes, align 8
  %89 = load i64, i64* %j, align 8
  %call109 = call i32 @PyByteArray_Resize(%struct._object* %88, i64 %89)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %for.end
  br label %error

if.end.113:                                       ; preds = %for.end
  %90 = load %struct._object*, %struct._object** %newbytes, align 8
  store %struct._object* %90, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.112, %if.then.101
  br label %do.body

do.body:                                          ; preds = %error
  %91 = load %struct._object*, %struct._object** %newbytes, align 8
  store %struct._object* %91, %struct._object** %_py_decref_tmp, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0
  %93 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %93, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp114 = icmp ne i64 %dec, 0
  br i1 %cmp114, label %if.then.116, label %if.else

if.then.116:                                      ; preds = %do.body
  br label %if.end.117

if.else:                                          ; preds = %do.body
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %96(%struct._object* %97)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else, %if.then.116
  br label %do.end

do.end:                                           ; preds = %if.end.117
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.113, %if.then.32, %if.then.4, %if.then
  %98 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %98
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_index(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @bytearray_find_internal(%struct.PyByteArrayObject* %0, %struct._object* %1, i32 1)
  store i64 %call, i64* %result, align 8
  %2 = load i64, i64* %result, align 8
  %cmp = icmp eq i64 %2, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %result, align 8
  %cmp1 = icmp eq i64 %3, -1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i64, i64* %result, align 8
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %5)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_insert(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %ival = alloca i32, align 4
  %where = alloca i64, align 8
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i64* %where, %struct._object** %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %4, 9223372036854775807
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.77, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %value, align 8
  %call3 = call i32 @_getbytevalue(%struct._object* %6, i32* %ival)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %7 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %8 = bitcast %struct.PyByteArrayObject* %7 to %struct._object*
  %9 = load i64, i64* %n, align 8
  %add = add i64 %9, 1
  %call7 = call i32 @PyByteArray_Resize(%struct._object* %8, i64 %add)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %10 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %11 = bitcast %struct.PyByteArrayObject* %10 to %struct.PyVarObject*
  %ob_size11 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size11, align 8
  %tobool12 = icmp ne i64 %12, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %13 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %13, i32 0, i32 3
  %14 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %14, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %buf, align 8
  %15 = load i64, i64* %where, align 8
  %cmp13 = icmp slt i64 %15, 0
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %cond.end
  %16 = load i64, i64* %n, align 8
  %17 = load i64, i64* %where, align 8
  %add15 = add i64 %17, %16
  store i64 %add15, i64* %where, align 8
  %18 = load i64, i64* %where, align 8
  %cmp16 = icmp slt i64 %18, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  store i64 0, i64* %where, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %cond.end
  %19 = load i64, i64* %where, align 8
  %20 = load i64, i64* %n, align 8
  %cmp20 = icmp sgt i64 %19, %20
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %21 = load i64, i64* %n, align 8
  store i64 %21, i64* %where, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  %22 = load i8*, i8** %buf, align 8
  %23 = load i64, i64* %where, align 8
  %add.ptr = getelementptr i8, i8* %22, i64 %23
  %add.ptr23 = getelementptr i8, i8* %add.ptr, i64 1
  %24 = load i8*, i8** %buf, align 8
  %25 = load i64, i64* %where, align 8
  %add.ptr24 = getelementptr i8, i8* %24, i64 %25
  %26 = load i64, i64* %n, align 8
  %27 = load i64, i64* %where, align 8
  %sub = sub i64 %26, %27
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr23, i8* %add.ptr24, i64 %sub, i32 1, i1 false)
  %28 = load i32, i32* %ival, align 4
  %conv = trunc i32 %28 to i8
  %29 = load i64, i64* %where, align 8
  %30 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr i8, i8* %30, i64 %29
  store i8 %conv, i8* %arrayidx, align 1
  %31 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.9, %if.then.5, %if.then.1, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_isalnum(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %4, i32 0, i32 3
  %5 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size1, align 8
  %call = call %struct._object* @_Py_bytes_isalnum(i8* %cond, i64 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_isalpha(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %4, i32 0, i32 3
  %5 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size1, align 8
  %call = call %struct._object* @_Py_bytes_isalpha(i8* %cond, i64 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_isdigit(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %4, i32 0, i32 3
  %5 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size1, align 8
  %call = call %struct._object* @_Py_bytes_isdigit(i8* %cond, i64 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_islower(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %4, i32 0, i32 3
  %5 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size1, align 8
  %call = call %struct._object* @_Py_bytes_islower(i8* %cond, i64 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_isspace(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %4, i32 0, i32 3
  %5 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size1, align 8
  %call = call %struct._object* @_Py_bytes_isspace(i8* %cond, i64 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_istitle(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %4, i32 0, i32 3
  %5 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size1, align 8
  %call = call %struct._object* @_Py_bytes_istitle(i8* %cond, i64 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_isupper(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %4, i32 0, i32 3
  %5 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size1, align 8
  %call = call %struct._object* @_Py_bytes_isupper(i8* %cond, i64 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_join(%struct._object* %self, %struct._object* %iterable) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %iterable.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call = call %struct._object* @stringlib_bytes_join(%struct._object* %0, %struct._object* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_ljust(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %width = alloca i64, align 8
  %fillchar = alloca i8, align 1
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8 32, i8* %fillchar, align 1
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i64* %width, i8* %fillchar)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %4 = load i64, i64* %width, align 8
  %cmp = icmp sge i64 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %6, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyByteArray_Type to %struct._typeobject*)
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size3, align 8
  %tobool4 = icmp ne i64 %9, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %11, i32 0, i32 3
  %12 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size5, align 8
  %call6 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %cond, i64 %15)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %16 = load %struct._object*, %struct._object** %self.addr, align 8
  %17 = load i64, i64* %width, align 8
  %18 = load %struct._object*, %struct._object** %self.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size8, align 8
  %sub = sub i64 %17, %20
  %21 = load i8, i8* %fillchar, align 1
  %call9 = call %struct._object* @pad(%struct._object* %16, i64 0, i64 %sub, i8 signext %21)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %cond.end, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_lower(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %newobj = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %2)
  store %struct._object* %call, %struct._object** %newobj, align 8
  %3 = load %struct._object*, %struct._object** %newobj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %newobj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size1, align 8
  %tobool2 = icmp ne i64 %6, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %newobj, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %8, i32 0, i32 3
  %9 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size3, align 8
  %tobool4 = icmp ne i64 %12, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyByteArrayObject*
  %ob_start6 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %14, i32 0, i32 3
  %15 = load i8*, i8** %ob_start6, align 8
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i8* [ %15, %cond.true.5 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.7 ]
  %16 = load %struct._object*, %struct._object** %self.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size10, align 8
  call void @_Py_bytes_lower(i8* %cond, i8* %cond9, i64 %18)
  %19 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end.8, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_lstrip(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %left = alloca i64, align 8
  %right = alloca i64, align 8
  %mysize = alloca i64, align 8
  %argsize = alloca i64, align 8
  %myptr = alloca i8*, align 8
  %argptr = alloca i8*, align 8
  %arg = alloca %struct._object*, align 8
  %varg = alloca %struct.bufferinfo, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %arg, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), i8** %argptr, align 8
  store i64 6, i64* %argsize, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %arg, align 8
  %call2 = call i64 @_getbuffer(%struct._object* %2, %struct.bufferinfo* %varg)
  %cmp3 = icmp slt i64 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.else
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %varg, i32 0, i32 0
  %3 = load i8*, i8** %buf, align 8
  store i8* %3, i8** %argptr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %varg, i32 0, i32 2
  %4 = load i64, i64* %len, align 8
  store i64 %4, i64* %argsize, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then.1
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %6 = bitcast %struct.PyByteArrayObject* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %tobool7 = icmp ne i64 %7, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %8 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %8, i32 0, i32 3
  %9 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %myptr, align 8
  %10 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %11 = bitcast %struct.PyByteArrayObject* %10 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size8, align 8
  store i64 %12, i64* %mysize, align 8
  %13 = load i8*, i8** %myptr, align 8
  %14 = load i64, i64* %mysize, align 8
  %15 = load i8*, i8** %argptr, align 8
  %16 = load i64, i64* %argsize, align 8
  %call9 = call i64 @lstrip_helper(i8* %13, i64 %14, i8* %15, i64 %16)
  store i64 %call9, i64* %left, align 8
  %17 = load i64, i64* %mysize, align 8
  store i64 %17, i64* %right, align 8
  %18 = load %struct._object*, %struct._object** %arg, align 8
  %cmp10 = icmp ne %struct._object* %18, @_Py_NoneStruct
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %cond.end
  call void @PyBuffer_Release(%struct.bufferinfo* %varg)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %cond.end
  %19 = load i8*, i8** %myptr, align 8
  %20 = load i64, i64* %left, align 8
  %add.ptr = getelementptr i8, i8* %19, i64 %20
  %21 = load i64, i64* %right, align 8
  %22 = load i64, i64* %left, align 8
  %sub = sub i64 %21, %22
  %call13 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub)
  store %struct._object* %call13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.4, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_maketrans(%struct._object* %null, %struct._object* %args) #0 {
entry:
  %null.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %null, %struct._object** %null.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_Py_bytes_maketrans(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_partition(%struct.PyByteArrayObject* %self, %struct._object* %sep_obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %sep_obj.addr = alloca %struct._object*, align 8
  %bytesep = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %sep_obj, %struct._object** %sep_obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %call = call %struct._object* @PyByteArray_FromObject(%struct._object* %0)
  store %struct._object* %call, %struct._object** %bytesep, align 8
  %1 = load %struct._object*, %struct._object** %bytesep, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %3 = bitcast %struct.PyByteArrayObject* %2 to %struct._object*
  %4 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %5 = bitcast %struct.PyByteArrayObject* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  %tobool1 = icmp ne i64 %6, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %7, i32 0, i32 3
  %8 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %9 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %10 = bitcast %struct.PyByteArrayObject* %9 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size2, align 8
  %12 = load %struct._object*, %struct._object** %bytesep, align 8
  %13 = load %struct._object*, %struct._object** %bytesep, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size3, align 8
  %tobool4 = icmp ne i64 %15, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %bytesep, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyByteArrayObject*
  %ob_start6 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %17, i32 0, i32 3
  %18 = load i8*, i8** %ob_start6, align 8
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i8* [ %18, %cond.true.5 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.7 ]
  %19 = load %struct._object*, %struct._object** %bytesep, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size10, align 8
  %call11 = call %struct._object* @stringlib_partition(%struct._object* %3, i8* %cond, i64 %11, %struct._object* %12, i8* %cond9, i64 %21)
  store %struct._object* %call11, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.8
  %22 = load %struct._object*, %struct._object** %bytesep, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %29 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_pop(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i32, align 4
  %where = alloca i64, align 8
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %where, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i64* %where)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.100, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %6 = load i64, i64* %where, align 8
  %cmp3 = icmp slt i64 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end.2
  %7 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %8 = bitcast %struct.PyByteArrayObject* %7 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size5, align 8
  %10 = load i64, i64* %where, align 8
  %add = add i64 %10, %9
  store i64 %add, i64* %where, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end.2
  %11 = load i64, i64* %where, align 8
  %cmp7 = icmp slt i64 %11, 0
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %12 = load i64, i64* %where, align 8
  %13 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %14 = bitcast %struct.PyByteArrayObject* %13 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size8, align 8
  %cmp9 = icmp sge i64 %12, %15
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.6
  %16 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.101, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %17 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call12 = call i32 @_canresize(%struct.PyByteArrayObject* %17)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %18 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %19 = bitcast %struct.PyByteArrayObject* %18 to %struct.PyVarObject*
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size16, align 8
  %tobool17 = icmp ne i64 %20, 0
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %21 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %21, i32 0, i32 3
  %22 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %buf, align 8
  %23 = load i64, i64* %where, align 8
  %24 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr i8, i8* %24, i64 %23
  %25 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %25 to i32
  store i32 %conv, i32* %value, align 4
  %26 = load i8*, i8** %buf, align 8
  %27 = load i64, i64* %where, align 8
  %add.ptr = getelementptr i8, i8* %26, i64 %27
  %28 = load i8*, i8** %buf, align 8
  %29 = load i64, i64* %where, align 8
  %add.ptr18 = getelementptr i8, i8* %28, i64 %29
  %add.ptr19 = getelementptr i8, i8* %add.ptr18, i64 1
  %30 = load i64, i64* %n, align 8
  %31 = load i64, i64* %where, align 8
  %sub = sub i64 %30, %31
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr19, i64 %sub, i32 1, i1 false)
  %32 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %33 = bitcast %struct.PyByteArrayObject* %32 to %struct._object*
  %34 = load i64, i64* %n, align 8
  %sub20 = sub i64 %34, 1
  %call21 = call i32 @PyByteArray_Resize(%struct._object* %33, i64 %sub20)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %cond.end
  %35 = load i32, i32* %value, align 4
  %conv26 = trunc i32 %35 to i8
  %conv27 = zext i8 %conv26 to i64
  %call28 = call %struct._object* @PyLong_FromLong(i64 %conv27)
  store %struct._object* %call28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %if.then.14, %if.then.10, %if.then.1, %if.then
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_remove(%struct.PyByteArrayObject* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %value = alloca i32, align 4
  %where = alloca i64, align 8
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %4 = bitcast %struct.PyByteArrayObject* %3 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size1, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %6, i32 0, i32 3
  %7 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %buf, align 8
  %8 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i32 @_getbytevalue(%struct._object* %8, i32* %value)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  store i64 0, i64* %where, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i64, i64* %where, align 8
  %10 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %where, align 8
  %12 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr i8, i8* %12, i64 %11
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %14 = load i32, i32* %value, align 4
  %cmp3 = icmp eq i32 %conv, %14
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  br label %for.end

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %15 = load i64, i64* %where, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %where, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.5, %for.cond
  %16 = load i64, i64* %where, align 8
  %17 = load i64, i64* %n, align 8
  %cmp7 = icmp eq i64 %16, %17
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  %18 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.102, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %for.end
  %19 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call11 = call i32 @_canresize(%struct.PyByteArrayObject* %19)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %20 = load i8*, i8** %buf, align 8
  %21 = load i64, i64* %where, align 8
  %add.ptr = getelementptr i8, i8* %20, i64 %21
  %22 = load i8*, i8** %buf, align 8
  %23 = load i64, i64* %where, align 8
  %add.ptr15 = getelementptr i8, i8* %22, i64 %23
  %add.ptr16 = getelementptr i8, i8* %add.ptr15, i64 1
  %24 = load i64, i64* %n, align 8
  %25 = load i64, i64* %where, align 8
  %sub = sub i64 %24, %25
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr16, i64 %sub, i32 1, i1 false)
  %26 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %27 = bitcast %struct.PyByteArrayObject* %26 to %struct._object*
  %28 = load i64, i64* %n, align 8
  %sub17 = sub i64 %28, 1
  %call18 = call i32 @PyByteArray_Resize(%struct._object* %27, i64 %sub17)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.14
  %29 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc23 = add i64 %29, 1
  store i64 %inc23, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.then.13, %if.then.9, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_replace(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %count = alloca i64, align 8
  %from = alloca %struct._object*, align 8
  %to = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %vfrom = alloca %struct.bufferinfo, align 8
  %vto = alloca %struct.bufferinfo, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %count, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), %struct._object** %from, %struct._object** %to, i64* %count)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %from, align 8
  %call1 = call i64 @_getbuffer(%struct._object* %1, %struct.bufferinfo* %vfrom)
  %cmp = icmp slt i64 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %to, align 8
  %call4 = call i64 @_getbuffer(%struct._object* %2, %struct.bufferinfo* %vto)
  %cmp5 = icmp slt i64 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  call void @PyBuffer_Release(%struct.bufferinfo* %vfrom)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vfrom, i32 0, i32 0
  %4 = load i8*, i8** %buf, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vfrom, i32 0, i32 2
  %5 = load i64, i64* %len, align 8
  %buf8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vto, i32 0, i32 0
  %6 = load i8*, i8** %buf8, align 8
  %len9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vto, i32 0, i32 2
  %7 = load i64, i64* %len9, align 8
  %8 = load i64, i64* %count, align 8
  %call10 = call %struct.PyByteArrayObject* @replace(%struct.PyByteArrayObject* %3, i8* %4, i64 %5, i8* %6, i64 %7, i64 %8)
  %9 = bitcast %struct.PyByteArrayObject* %call10 to %struct._object*
  store %struct._object* %9, %struct._object** %res, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %vfrom)
  call void @PyBuffer_Release(%struct.bufferinfo* %vto)
  %10 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_reverse(%struct.PyByteArrayObject* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %swap = alloca i8, align 1
  %head = alloca i8*, align 8
  %tail = alloca i8*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %div = sdiv i64 %3, 2
  store i64 %div, i64* %j, align 8
  %4 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %5 = bitcast %struct.PyByteArrayObject* %4 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size1, align 8
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %7, i32 0, i32 3
  %8 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %head, align 8
  %9 = load i8*, i8** %head, align 8
  %10 = load i64, i64* %n, align 8
  %add.ptr = getelementptr i8, i8* %9, i64 %10
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr2, i8** %tail, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %j, align 8
  %cmp = icmp slt i64 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %head, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %swap, align 1
  %15 = load i8*, i8** %tail, align 8
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** %head, align 8
  %incdec.ptr = getelementptr i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %head, align 8
  store i8 %16, i8* %17, align 1
  %18 = load i8, i8* %swap, align 1
  %19 = load i8*, i8** %tail, align 8
  %incdec.ptr3 = getelementptr i8, i8* %19, i32 -1
  store i8* %incdec.ptr3, i8** %tail, align 8
  store i8 %18, i8* %19, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc4 = add i64 %21, 1
  store i64 %inc4, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_rfind(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @bytearray_find_internal(%struct.PyByteArrayObject* %0, %struct._object* %1, i32 -1)
  store i64 %call, i64* %result, align 8
  %2 = load i64, i64* %result, align 8
  %cmp = icmp eq i64 %2, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %result, align 8
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_rindex(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @bytearray_find_internal(%struct.PyByteArrayObject* %0, %struct._object* %1, i32 -1)
  store i64 %call, i64* %result, align 8
  %2 = load i64, i64* %result, align 8
  %cmp = icmp eq i64 %2, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %result, align 8
  %cmp1 = icmp eq i64 %3, -1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i64, i64* %result, align 8
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %5)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_rjust(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %width = alloca i64, align 8
  %fillchar = alloca i8, align 1
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8 32, i8* %fillchar, align 1
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i64* %width, i8* %fillchar)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %4 = load i64, i64* %width, align 8
  %cmp = icmp sge i64 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %6, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyByteArray_Type to %struct._typeobject*)
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size3, align 8
  %tobool4 = icmp ne i64 %9, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %11, i32 0, i32 3
  %12 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size5, align 8
  %call6 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %cond, i64 %15)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %16 = load %struct._object*, %struct._object** %self.addr, align 8
  %17 = load i64, i64* %width, align 8
  %18 = load %struct._object*, %struct._object** %self.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size8, align 8
  %sub = sub i64 %17, %20
  %21 = load i8, i8* %fillchar, align 1
  %call9 = call %struct._object* @pad(%struct._object* %16, i64 %sub, i64 0, i8 signext %21)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %cond.end, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_rpartition(%struct.PyByteArrayObject* %self, %struct._object* %sep_obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %sep_obj.addr = alloca %struct._object*, align 8
  %bytesep = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %sep_obj, %struct._object** %sep_obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %call = call %struct._object* @PyByteArray_FromObject(%struct._object* %0)
  store %struct._object* %call, %struct._object** %bytesep, align 8
  %1 = load %struct._object*, %struct._object** %bytesep, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %3 = bitcast %struct.PyByteArrayObject* %2 to %struct._object*
  %4 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %5 = bitcast %struct.PyByteArrayObject* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  %tobool1 = icmp ne i64 %6, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %7, i32 0, i32 3
  %8 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %9 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %10 = bitcast %struct.PyByteArrayObject* %9 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size2, align 8
  %12 = load %struct._object*, %struct._object** %bytesep, align 8
  %13 = load %struct._object*, %struct._object** %bytesep, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size3, align 8
  %tobool4 = icmp ne i64 %15, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %bytesep, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyByteArrayObject*
  %ob_start6 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %17, i32 0, i32 3
  %18 = load i8*, i8** %ob_start6, align 8
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i8* [ %18, %cond.true.5 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.7 ]
  %19 = load %struct._object*, %struct._object** %bytesep, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size10, align 8
  %call11 = call %struct._object* @stringlib_rpartition(%struct._object* %3, i8* %cond, i64 %11, %struct._object* %12, i8* %cond9, i64 %21)
  store %struct._object* %call11, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end.8
  %22 = load %struct._object*, %struct._object** %bytesep, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %29 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_rsplit(%struct.PyByteArrayObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %n = alloca i64, align 8
  %maxsplit = alloca i64, align 8
  %s = alloca i8*, align 8
  %sub = alloca i8*, align 8
  %list = alloca %struct._object*, align 8
  %subobj = alloca %struct._object*, align 8
  %vsub = alloca %struct.bufferinfo, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %len, align 8
  store i64 -1, i64* %maxsplit, align 8
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %4 = bitcast %struct.PyByteArrayObject* %3 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size1, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %6, i32 0, i32 3
  %7 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %s, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %subobj, align 8
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %9 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %8, %struct._object* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.109, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bytearray_rsplit.kwlist, i32 0, i32 0), %struct._object** %subobj, i64* %maxsplit)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %10 = load i64, i64* %maxsplit, align 8
  %cmp = icmp slt i64 %10, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i64 9223372036854775807, i64* %maxsplit, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %11 = load %struct._object*, %struct._object** %subobj, align 8
  %cmp5 = icmp eq %struct._object* %11, @_Py_NoneStruct
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %12 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %13 = bitcast %struct.PyByteArrayObject* %12 to %struct._object*
  %14 = load i8*, i8** %s, align 8
  %15 = load i64, i64* %len, align 8
  %16 = load i64, i64* %maxsplit, align 8
  %call7 = call %struct._object* @stringlib_rsplit_whitespace(%struct._object* %13, i8* %14, i64 %15, i64 %16)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %17 = load %struct._object*, %struct._object** %subobj, align 8
  %call9 = call i64 @_getbuffer(%struct._object* %17, %struct.bufferinfo* %vsub)
  %cmp10 = icmp slt i64 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsub, i32 0, i32 0
  %18 = load i8*, i8** %buf, align 8
  store i8* %18, i8** %sub, align 8
  %len13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsub, i32 0, i32 2
  %19 = load i64, i64* %len13, align 8
  store i64 %19, i64* %n, align 8
  %20 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %21 = bitcast %struct.PyByteArrayObject* %20 to %struct._object*
  %22 = load i8*, i8** %s, align 8
  %23 = load i64, i64* %len, align 8
  %24 = load i8*, i8** %sub, align 8
  %25 = load i64, i64* %n, align 8
  %26 = load i64, i64* %maxsplit, align 8
  %call14 = call %struct._object* @stringlib_rsplit(%struct._object* %21, i8* %22, i64 %23, i8* %24, i64 %25, i64 %26)
  store %struct._object* %call14, %struct._object** %list, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %vsub)
  %27 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.6, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_rstrip(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %right = alloca i64, align 8
  %mysize = alloca i64, align 8
  %argsize = alloca i64, align 8
  %myptr = alloca i8*, align 8
  %argptr = alloca i8*, align 8
  %arg = alloca %struct._object*, align 8
  %varg = alloca %struct.bufferinfo, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %arg, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), i8** %argptr, align 8
  store i64 6, i64* %argsize, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %arg, align 8
  %call2 = call i64 @_getbuffer(%struct._object* %2, %struct.bufferinfo* %varg)
  %cmp3 = icmp slt i64 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.else
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %varg, i32 0, i32 0
  %3 = load i8*, i8** %buf, align 8
  store i8* %3, i8** %argptr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %varg, i32 0, i32 2
  %4 = load i64, i64* %len, align 8
  store i64 %4, i64* %argsize, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then.1
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %6 = bitcast %struct.PyByteArrayObject* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %tobool7 = icmp ne i64 %7, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %8 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %8, i32 0, i32 3
  %9 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %myptr, align 8
  %10 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %11 = bitcast %struct.PyByteArrayObject* %10 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size8, align 8
  store i64 %12, i64* %mysize, align 8
  %13 = load i8*, i8** %myptr, align 8
  %14 = load i64, i64* %mysize, align 8
  %15 = load i8*, i8** %argptr, align 8
  %16 = load i64, i64* %argsize, align 8
  %call9 = call i64 @rstrip_helper(i8* %13, i64 %14, i8* %15, i64 %16)
  store i64 %call9, i64* %right, align 8
  %17 = load %struct._object*, %struct._object** %arg, align 8
  %cmp10 = icmp ne %struct._object* %17, @_Py_NoneStruct
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %cond.end
  call void @PyBuffer_Release(%struct.bufferinfo* %varg)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %cond.end
  %18 = load i8*, i8** %myptr, align 8
  %19 = load i64, i64* %right, align 8
  %call13 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %18, i64 %19)
  store %struct._object* %call13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.4, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_split(%struct.PyByteArrayObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %n = alloca i64, align 8
  %maxsplit = alloca i64, align 8
  %s = alloca i8*, align 8
  %sub = alloca i8*, align 8
  %list = alloca %struct._object*, align 8
  %subobj = alloca %struct._object*, align 8
  %vsub = alloca %struct.bufferinfo, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %len, align 8
  store i64 -1, i64* %maxsplit, align 8
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %4 = bitcast %struct.PyByteArrayObject* %3 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size1, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %6, i32 0, i32 3
  %7 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %s, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %subobj, align 8
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %9 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %8, %struct._object* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bytearray_split.kwlist, i32 0, i32 0), %struct._object** %subobj, i64* %maxsplit)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %10 = load i64, i64* %maxsplit, align 8
  %cmp = icmp slt i64 %10, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i64 9223372036854775807, i64* %maxsplit, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %11 = load %struct._object*, %struct._object** %subobj, align 8
  %cmp5 = icmp eq %struct._object* %11, @_Py_NoneStruct
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %12 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %13 = bitcast %struct.PyByteArrayObject* %12 to %struct._object*
  %14 = load i8*, i8** %s, align 8
  %15 = load i64, i64* %len, align 8
  %16 = load i64, i64* %maxsplit, align 8
  %call7 = call %struct._object* @stringlib_split_whitespace(%struct._object* %13, i8* %14, i64 %15, i64 %16)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %17 = load %struct._object*, %struct._object** %subobj, align 8
  %call9 = call i64 @_getbuffer(%struct._object* %17, %struct.bufferinfo* %vsub)
  %cmp10 = icmp slt i64 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsub, i32 0, i32 0
  %18 = load i8*, i8** %buf, align 8
  store i8* %18, i8** %sub, align 8
  %len13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsub, i32 0, i32 2
  %19 = load i64, i64* %len13, align 8
  store i64 %19, i64* %n, align 8
  %20 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %21 = bitcast %struct.PyByteArrayObject* %20 to %struct._object*
  %22 = load i8*, i8** %s, align 8
  %23 = load i64, i64* %len, align 8
  %24 = load i8*, i8** %sub, align 8
  %25 = load i64, i64* %n, align 8
  %26 = load i64, i64* %maxsplit, align 8
  %call14 = call %struct._object* @stringlib_split(%struct._object* %21, i8* %22, i64 %23, i8* %24, i64 %25, i64 %26)
  store %struct._object* %call14, %struct._object** %list, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %vsub)
  %27 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.6, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_splitlines(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %keepends = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i32 0, i32* %keepends, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @bytearray_splitlines.kwlist, i32 0, i32 0), i32* %keepends)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %tobool1 = icmp ne i64 %5, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %7, i32 0, i32 3
  %8 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %9 = load %struct._object*, %struct._object** %self.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size2, align 8
  %12 = load i32, i32* %keepends, align 4
  %call3 = call %struct._object* @stringlib_splitlines(%struct._object* %2, i8* %cond, i64 %11, i32 %12)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_startswith(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %subobj = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %start, align 8
  store i64 9223372036854775807, i64* %end, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @stringlib_parse_args_finds(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), %struct._object* %0, %struct._object** %subobj, i64* %start, i64* %end)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %subobj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.end.12

if.then.1:                                        ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %4 = load i64, i64* %i, align 8
  %5 = load %struct._object*, %struct._object** %subobj, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %cmp2 = icmp slt i64 %4, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load %struct._object*, %struct._object** %subobj, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %13 = load i64, i64* %start, align 8
  %14 = load i64, i64* %end, align 8
  %call3 = call i32 @_bytearray_tailmatch(%struct.PyByteArrayObject* %8, %struct._object* %12, i64 %13, i64 %14, i32 -1)
  store i32 %call3, i32* %result, align 4
  %15 = load i32, i32* %result, align 4
  %cmp4 = icmp eq i32 %15, -1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %for.body
  %16 = load i32, i32* %result, align 4
  %tobool6 = icmp ne i32 %16, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %18 = load i64, i64* %i, align 8
  %inc10 = add i64 %18, 1
  store i64 %inc10, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc11 = add i64 %19, 1
  store i64 %inc11, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %20 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %21 = load %struct._object*, %struct._object** %subobj, align 8
  %22 = load i64, i64* %start, align 8
  %23 = load i64, i64* %end, align 8
  %call13 = call i32 @_bytearray_tailmatch(%struct.PyByteArrayObject* %20, %struct._object* %21, i64 %22, i64 %23, i32 -1)
  store i32 %call13, i32* %result, align 4
  %24 = load i32, i32* %result, align 4
  %cmp14 = icmp eq i32 %24, -1
  br i1 %cmp14, label %if.then.15, label %if.else.22

if.then.15:                                       ; preds = %if.end.12
  %25 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call16 = call i32 @PyErr_ExceptionMatches(%struct._object* %25)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.then.15
  %26 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %27 = load %struct._object*, %struct._object** %subobj, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 1
  %29 = load i8*, i8** %tp_name, align 8
  %call20 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %26, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.114, i32 0, i32 0), i8* %29)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.then.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.22:                                       ; preds = %if.end.12
  %30 = load i32, i32* %result, align 4
  %conv = sext i32 %30 to i64
  %call23 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.22, %if.end.21, %for.end, %if.then.7, %if.then.5, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_strip(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %left = alloca i64, align 8
  %right = alloca i64, align 8
  %mysize = alloca i64, align 8
  %argsize = alloca i64, align 8
  %myptr = alloca i8*, align 8
  %argptr = alloca i8*, align 8
  %arg = alloca %struct._object*, align 8
  %varg = alloca %struct.bufferinfo, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %arg, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), i8** %argptr, align 8
  store i64 6, i64* %argsize, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %arg, align 8
  %call2 = call i64 @_getbuffer(%struct._object* %2, %struct.bufferinfo* %varg)
  %cmp3 = icmp slt i64 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.else
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %varg, i32 0, i32 0
  %3 = load i8*, i8** %buf, align 8
  store i8* %3, i8** %argptr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %varg, i32 0, i32 2
  %4 = load i64, i64* %len, align 8
  store i64 %4, i64* %argsize, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then.1
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %6 = bitcast %struct.PyByteArrayObject* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %tobool7 = icmp ne i64 %7, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %8 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %8, i32 0, i32 3
  %9 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %myptr, align 8
  %10 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %11 = bitcast %struct.PyByteArrayObject* %10 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size8, align 8
  store i64 %12, i64* %mysize, align 8
  %13 = load i8*, i8** %myptr, align 8
  %14 = load i64, i64* %mysize, align 8
  %15 = load i8*, i8** %argptr, align 8
  %16 = load i64, i64* %argsize, align 8
  %call9 = call i64 @lstrip_helper(i8* %13, i64 %14, i8* %15, i64 %16)
  store i64 %call9, i64* %left, align 8
  %17 = load i64, i64* %left, align 8
  %18 = load i64, i64* %mysize, align 8
  %cmp10 = icmp eq i64 %17, %18
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %cond.end
  %19 = load i64, i64* %left, align 8
  store i64 %19, i64* %right, align 8
  br label %if.end.14

if.else.12:                                       ; preds = %cond.end
  %20 = load i8*, i8** %myptr, align 8
  %21 = load i64, i64* %mysize, align 8
  %22 = load i8*, i8** %argptr, align 8
  %23 = load i64, i64* %argsize, align 8
  %call13 = call i64 @rstrip_helper(i8* %20, i64 %21, i8* %22, i64 %23)
  store i64 %call13, i64* %right, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  %24 = load %struct._object*, %struct._object** %arg, align 8
  %cmp15 = icmp ne %struct._object* %24, @_Py_NoneStruct
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  call void @PyBuffer_Release(%struct.bufferinfo* %varg)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %25 = load i8*, i8** %myptr, align 8
  %26 = load i64, i64* %left, align 8
  %add.ptr = getelementptr i8, i8* %25, i64 %26
  %27 = load i64, i64* %right, align 8
  %28 = load i64, i64* %left, align 8
  %sub = sub i64 %27, %28
  %call18 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub)
  store %struct._object* %call18, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.4, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_swapcase(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %newobj = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %2)
  store %struct._object* %call, %struct._object** %newobj, align 8
  %3 = load %struct._object*, %struct._object** %newobj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %newobj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size1, align 8
  %tobool2 = icmp ne i64 %6, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %newobj, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %8, i32 0, i32 3
  %9 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size3, align 8
  %tobool4 = icmp ne i64 %12, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyByteArrayObject*
  %ob_start6 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %14, i32 0, i32 3
  %15 = load i8*, i8** %ob_start6, align 8
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i8* [ %15, %cond.true.5 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.7 ]
  %16 = load %struct._object*, %struct._object** %self.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size10, align 8
  call void @_Py_bytes_swapcase(i8* %cond, i8* %cond9, i64 %18)
  %19 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end.8, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_title(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %newobj = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %2)
  store %struct._object* %call, %struct._object** %newobj, align 8
  %3 = load %struct._object*, %struct._object** %newobj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %newobj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size1, align 8
  %tobool2 = icmp ne i64 %6, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %newobj, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %8, i32 0, i32 3
  %9 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size3, align 8
  %tobool4 = icmp ne i64 %12, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyByteArrayObject*
  %ob_start6 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %14, i32 0, i32 3
  %15 = load i8*, i8** %ob_start6, align 8
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i8* [ %15, %cond.true.5 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.7 ]
  %16 = load %struct._object*, %struct._object** %self.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size10, align 8
  call void @_Py_bytes_title(i8* %cond, i8* %cond9, i64 %18)
  %19 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end.8, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearray_translate(%struct.PyByteArrayObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %input = alloca i8*, align 8
  %output = alloca i8*, align 8
  %table = alloca i8*, align 8
  %i = alloca i64, align 8
  %c = alloca i64, align 8
  %input_obj = alloca %struct._object*, align 8
  %output_start = alloca i8*, align 8
  %inlen = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %trans_table = alloca [256 x i32], align 16
  %tableobj = alloca %struct._object*, align 8
  %delobj = alloca %struct._object*, align 8
  %vtable = alloca %struct.bufferinfo, align 8
  %vdel = alloca %struct.bufferinfo, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct._object*
  store %struct._object* %1, %struct._object** %input_obj, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %tableobj, align 8
  store %struct._object* null, %struct._object** %delobj, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i64 1, i64 2, %struct._object** %tableobj, %struct._object** %delobj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %tableobj, align 8
  %cmp = icmp eq %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i8* null, i8** %table, align 8
  store %struct._object* null, %struct._object** %tableobj, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %tableobj, align 8
  %call2 = call i64 @_getbuffer(%struct._object* %4, %struct.bufferinfo* %vtable)
  %cmp3 = icmp slt i64 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vtable, i32 0, i32 2
  %5 = load i64, i64* %len, align 8
  %cmp6 = icmp ne i64 %5, 256
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else.5
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.116, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %vtable)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.else.5
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vtable, i32 0, i32 0
  %7 = load i8*, i8** %buf, align 8
  store i8* %7, i8** %table, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.1
  %8 = load %struct._object*, %struct._object** %delobj, align 8
  %cmp11 = icmp ne %struct._object* %8, null
  br i1 %cmp11, label %if.then.12, label %if.else.20

if.then.12:                                       ; preds = %if.end.10
  %9 = load %struct._object*, %struct._object** %delobj, align 8
  %call13 = call i64 @_getbuffer(%struct._object* %9, %struct.bufferinfo* %vdel)
  %cmp14 = icmp slt i64 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.then.12
  %10 = load %struct._object*, %struct._object** %tableobj, align 8
  %cmp16 = icmp ne %struct._object* %10, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  call void @PyBuffer_Release(%struct.bufferinfo* %vtable)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.12
  br label %if.end.23

if.else.20:                                       ; preds = %if.end.10
  %buf21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vdel, i32 0, i32 0
  store i8* null, i8** %buf21, align 8
  %len22 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vdel, i32 0, i32 2
  store i64 0, i64* %len22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.end.19
  %11 = load %struct._object*, %struct._object** %input_obj, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size, align 8
  store i64 %13, i64* %inlen, align 8
  %14 = load i64, i64* %inlen, align 8
  %call24 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %14)
  store %struct._object* %call24, %struct._object** %result, align 8
  %15 = load %struct._object*, %struct._object** %result, align 8
  %cmp25 = icmp eq %struct._object* %15, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  br label %done

if.end.27:                                        ; preds = %if.end.23
  %16 = load %struct._object*, %struct._object** %result, align 8
  %call28 = call i8* @PyByteArray_AsString(%struct._object* %16)
  store i8* %call28, i8** %output, align 8
  store i8* %call28, i8** %output_start, align 8
  %17 = load %struct._object*, %struct._object** %input_obj, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyVarObject*
  %ob_size29 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size29, align 8
  %tobool30 = icmp ne i64 %19, 0
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.27
  %20 = load %struct._object*, %struct._object** %input_obj, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %21, i32 0, i32 3
  %22 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %input, align 8
  %len31 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vdel, i32 0, i32 2
  %23 = load i64, i64* %len31, align 8
  %cmp32 = icmp eq i64 %23, 0
  br i1 %cmp32, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %cond.end
  %24 = load i8*, i8** %table, align 8
  %cmp33 = icmp ne i8* %24, null
  br i1 %cmp33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %land.lhs.true
  %25 = load i64, i64* %inlen, align 8
  store i64 %25, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then.34
  %26 = load i64, i64* %i, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %i, align 8
  %cmp35 = icmp sge i64 %dec, 0
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i8*, i8** %input, align 8
  %incdec.ptr = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %input, align 8
  %28 = load i8, i8* %27, align 1
  %conv = sext i8 %28 to i32
  %and = and i32 %conv, 255
  %conv36 = trunc i32 %and to i8
  %conv37 = zext i8 %conv36 to i64
  store i64 %conv37, i64* %c, align 8
  %29 = load i64, i64* %c, align 8
  %30 = load i8*, i8** %table, align 8
  %arrayidx = getelementptr i8, i8* %30, i64 %29
  %31 = load i8, i8* %arrayidx, align 1
  %32 = load i8*, i8** %output, align 8
  %incdec.ptr38 = getelementptr i8, i8* %32, i32 1
  store i8* %incdec.ptr38, i8** %output, align 8
  store i8 %31, i8* %32, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %done

if.end.39:                                        ; preds = %land.lhs.true, %cond.end
  %33 = load i8*, i8** %table, align 8
  %cmp40 = icmp eq i8* %33, null
  br i1 %cmp40, label %if.then.42, label %if.else.52

if.then.42:                                       ; preds = %if.end.39
  store i64 0, i64* %i, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc, %if.then.42
  %34 = load i64, i64* %i, align 8
  %cmp44 = icmp slt i64 %34, 256
  br i1 %cmp44, label %for.body.46, label %for.end.51

for.body.46:                                      ; preds = %for.cond.43
  %35 = load i64, i64* %i, align 8
  %and47 = and i64 %35, 255
  %conv48 = trunc i64 %and47 to i8
  %conv49 = zext i8 %conv48 to i32
  %36 = load i64, i64* %i, align 8
  %arrayidx50 = getelementptr [256 x i32], [256 x i32]* %trans_table, i32 0, i64 %36
  store i32 %conv49, i32* %arrayidx50, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.46
  %37 = load i64, i64* %i, align 8
  %inc = add i64 %37, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.43

for.end.51:                                       ; preds = %for.cond.43
  br label %if.end.66

if.else.52:                                       ; preds = %if.end.39
  store i64 0, i64* %i, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.63, %if.else.52
  %38 = load i64, i64* %i, align 8
  %cmp54 = icmp slt i64 %38, 256
  br i1 %cmp54, label %for.body.56, label %for.end.65

for.body.56:                                      ; preds = %for.cond.53
  %39 = load i64, i64* %i, align 8
  %40 = load i8*, i8** %table, align 8
  %arrayidx57 = getelementptr i8, i8* %40, i64 %39
  %41 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %41 to i32
  %and59 = and i32 %conv58, 255
  %conv60 = trunc i32 %and59 to i8
  %conv61 = zext i8 %conv60 to i32
  %42 = load i64, i64* %i, align 8
  %arrayidx62 = getelementptr [256 x i32], [256 x i32]* %trans_table, i32 0, i64 %42
  store i32 %conv61, i32* %arrayidx62, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.56
  %43 = load i64, i64* %i, align 8
  %inc64 = add i64 %43, 1
  store i64 %inc64, i64* %i, align 8
  br label %for.cond.53

for.end.65:                                       ; preds = %for.cond.53
  br label %if.end.66

if.end.66:                                        ; preds = %for.end.65, %for.end.51
  store i64 0, i64* %i, align 8
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.79, %if.end.66
  %44 = load i64, i64* %i, align 8
  %len68 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vdel, i32 0, i32 2
  %45 = load i64, i64* %len68, align 8
  %cmp69 = icmp slt i64 %44, %45
  br i1 %cmp69, label %for.body.71, label %for.end.81

for.body.71:                                      ; preds = %for.cond.67
  %46 = load i64, i64* %i, align 8
  %buf72 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vdel, i32 0, i32 0
  %47 = load i8*, i8** %buf72, align 8
  %arrayidx73 = getelementptr i8, i8* %47, i64 %46
  %48 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %48 to i32
  %and75 = and i32 %conv74, 255
  %conv76 = trunc i32 %and75 to i8
  %conv77 = zext i8 %conv76 to i32
  %idxprom = sext i32 %conv77 to i64
  %arrayidx78 = getelementptr [256 x i32], [256 x i32]* %trans_table, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx78, align 4
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.71
  %49 = load i64, i64* %i, align 8
  %inc80 = add i64 %49, 1
  store i64 %inc80, i64* %i, align 8
  br label %for.cond.67

for.end.81:                                       ; preds = %for.cond.67
  %50 = load i64, i64* %inlen, align 8
  store i64 %50, i64* %i, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %if.end.107, %if.then.105, %for.end.81
  %51 = load i64, i64* %i, align 8
  %dec83 = add i64 %51, -1
  store i64 %dec83, i64* %i, align 8
  %cmp84 = icmp sge i64 %dec83, 0
  br i1 %cmp84, label %for.body.86, label %for.end.108

for.body.86:                                      ; preds = %for.cond.82
  %52 = load i8*, i8** %input, align 8
  %incdec.ptr87 = getelementptr i8, i8* %52, i32 1
  store i8* %incdec.ptr87, i8** %input, align 8
  %53 = load i8, i8* %52, align 1
  %conv88 = sext i8 %53 to i32
  %and89 = and i32 %conv88, 255
  %conv90 = trunc i32 %and89 to i8
  %conv91 = zext i8 %conv90 to i64
  store i64 %conv91, i64* %c, align 8
  %54 = load i64, i64* %c, align 8
  %arrayidx92 = getelementptr [256 x i32], [256 x i32]* %trans_table, i32 0, i64 %54
  %55 = load i32, i32* %arrayidx92, align 4
  %cmp93 = icmp ne i32 %55, -1
  br i1 %cmp93, label %if.then.95, label %if.end.107

if.then.95:                                       ; preds = %for.body.86
  %56 = load i64, i64* %c, align 8
  %arrayidx96 = getelementptr [256 x i32], [256 x i32]* %trans_table, i32 0, i64 %56
  %57 = load i32, i32* %arrayidx96, align 4
  %conv97 = trunc i32 %57 to i8
  %58 = load i8*, i8** %output, align 8
  %incdec.ptr98 = getelementptr i8, i8* %58, i32 1
  store i8* %incdec.ptr98, i8** %output, align 8
  store i8 %conv97, i8* %58, align 1
  %conv99 = sext i8 %conv97 to i32
  %and100 = and i32 %conv99, 255
  %conv101 = trunc i32 %and100 to i8
  %conv102 = zext i8 %conv101 to i64
  %59 = load i64, i64* %c, align 8
  %cmp103 = icmp eq i64 %conv102, %59
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.95
  br label %for.cond.82

if.end.106:                                       ; preds = %if.then.95
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %for.body.86
  br label %for.cond.82

for.end.108:                                      ; preds = %for.cond.82
  %60 = load i64, i64* %inlen, align 8
  %cmp109 = icmp sgt i64 %60, 0
  br i1 %cmp109, label %if.then.111, label %if.end.129

if.then.111:                                      ; preds = %for.end.108
  %61 = load %struct._object*, %struct._object** %result, align 8
  %62 = load i8*, i8** %output, align 8
  %63 = load i8*, i8** %output_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %63 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call112 = call i32 @PyByteArray_Resize(%struct._object* %61, i64 %sub.ptr.sub)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.then.115, label %if.end.128

if.then.115:                                      ; preds = %if.then.111
  br label %do.body

do.body:                                          ; preds = %if.then.115
  %64 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %64, %struct._object** %_py_tmp, align 8
  %65 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp116 = icmp ne %struct._object* %65, null
  br i1 %cmp116, label %if.then.118, label %if.end.126

if.then.118:                                      ; preds = %do.body
  store %struct._object* null, %struct._object** %result, align 8
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.118
  %66 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt, align 8
  %dec120 = add i64 %68, -1
  store i64 %dec120, i64* %ob_refcnt, align 8
  %cmp121 = icmp ne i64 %dec120, 0
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %do.body.119
  br label %if.end.125

if.else.124:                                      ; preds = %do.body.119
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %71(%struct._object* %72)
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.124, %if.then.123
  br label %do.end

do.end:                                           ; preds = %if.end.125
  br label %if.end.126

if.end.126:                                       ; preds = %do.end, %do.body
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  br label %done

if.end.128:                                       ; preds = %if.then.111
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %for.end.108
  br label %done

done:                                             ; preds = %if.end.129, %do.end.127, %for.end, %if.then.26
  %73 = load %struct._object*, %struct._object** %tableobj, align 8
  %cmp130 = icmp ne %struct._object* %73, null
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %done
  call void @PyBuffer_Release(%struct.bufferinfo* %vtable)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %done
  %74 = load %struct._object*, %struct._object** %delobj, align 8
  %cmp134 = icmp ne %struct._object* %74, null
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.133
  call void @PyBuffer_Release(%struct.bufferinfo* %vdel)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.end.133
  %75 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %75, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.137, %if.end.18, %if.then.7, %if.then.4, %if.then
  %76 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %76
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_upper(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %newobj = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %2)
  store %struct._object* %call, %struct._object** %newobj, align 8
  %3 = load %struct._object*, %struct._object** %newobj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %newobj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size1, align 8
  %tobool2 = icmp ne i64 %6, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %newobj, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %8, i32 0, i32 3
  %9 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size3, align 8
  %tobool4 = icmp ne i64 %12, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyByteArrayObject*
  %ob_start6 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %14, i32 0, i32 3
  %15 = load i8*, i8** %ob_start6, align 8
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i8* [ %15, %cond.true.5 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.7 ]
  %16 = load %struct._object*, %struct._object** %self.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size10, align 8
  call void @_Py_bytes_upper(i8* %cond, i8* %cond9, i64 %18)
  %19 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end.8, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_zfill(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fill = alloca i64, align 8
  %s = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  %width = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i64* %width)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %4 = load i64, i64* %width, align 8
  %cmp = icmp sge i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.end.17

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %6, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyByteArray_Type to %struct._typeobject*)
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.1
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size4, align 8
  %tobool5 = icmp ne i64 %9, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %11, i32 0, i32 3
  %12 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %13 = load %struct._object*, %struct._object** %self.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size6, align 8
  %call7 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %cond, i64 %15)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then.1
  %16 = load %struct._object*, %struct._object** %self.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size8, align 8
  %tobool9 = icmp ne i64 %18, 0
  br i1 %tobool9, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %if.else
  %19 = load %struct._object*, %struct._object** %self.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyByteArrayObject*
  %ob_start11 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %20, i32 0, i32 3
  %21 = load i8*, i8** %ob_start11, align 8
  br label %cond.end.13

cond.false.12:                                    ; preds = %if.else
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.10
  %cond14 = phi i8* [ %21, %cond.true.10 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.12 ]
  %22 = load %struct._object*, %struct._object** %self.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyVarObject*
  %ob_size15 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1
  %24 = load i64, i64* %ob_size15, align 8
  %call16 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %cond14, i64 %24)
  store %struct._object* %call16, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %25 = load i64, i64* %width, align 8
  %26 = load %struct._object*, %struct._object** %self.addr, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyVarObject*
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %27, i32 0, i32 1
  %28 = load i64, i64* %ob_size18, align 8
  %sub = sub i64 %25, %28
  store i64 %sub, i64* %fill, align 8
  %29 = load %struct._object*, %struct._object** %self.addr, align 8
  %30 = load i64, i64* %fill, align 8
  %call19 = call %struct._object* @pad(%struct._object* %29, i64 %30, i64 0, i8 signext 48)
  store %struct._object* %call19, %struct._object** %s, align 8
  %31 = load %struct._object*, %struct._object** %s, align 8
  %cmp20 = icmp eq %struct._object* %31, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.17
  %32 = load %struct._object*, %struct._object** %s, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyVarObject*
  %ob_size23 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %33, i32 0, i32 1
  %34 = load i64, i64* %ob_size23, align 8
  %tobool24 = icmp ne i64 %34, 0
  br i1 %tobool24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %if.end.22
  %35 = load %struct._object*, %struct._object** %s, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyByteArrayObject*
  %ob_start26 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %36, i32 0, i32 3
  %37 = load i8*, i8** %ob_start26, align 8
  br label %cond.end.28

cond.false.27:                                    ; preds = %if.end.22
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.25
  %cond29 = phi i8* [ %37, %cond.true.25 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.27 ]
  store i8* %cond29, i8** %p, align 8
  %38 = load i64, i64* %fill, align 8
  %39 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr i8, i8* %39, i64 %38
  %40 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %40 to i32
  %cmp30 = icmp eq i32 %conv, 43
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.28
  %41 = load i64, i64* %fill, align 8
  %42 = load i8*, i8** %p, align 8
  %arrayidx32 = getelementptr i8, i8* %42, i64 %41
  %43 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %43 to i32
  %cmp34 = icmp eq i32 %conv33, 45
  br i1 %cmp34, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %lor.lhs.false, %cond.end.28
  %44 = load i64, i64* %fill, align 8
  %45 = load i8*, i8** %p, align 8
  %arrayidx37 = getelementptr i8, i8* %45, i64 %44
  %46 = load i8, i8* %arrayidx37, align 1
  %47 = load i8*, i8** %p, align 8
  %arrayidx38 = getelementptr i8, i8* %47, i64 0
  store i8 %46, i8* %arrayidx38, align 1
  %48 = load i64, i64* %fill, align 8
  %49 = load i8*, i8** %p, align 8
  %arrayidx39 = getelementptr i8, i8* %49, i64 %48
  store i8 48, i8* %arrayidx39, align 1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %lor.lhs.false
  %50 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %50, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.21, %cond.end.13, %cond.end, %if.then
  %51 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %51
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_common_reduce(%struct.PyByteArrayObject* %self, i32 %proto) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %proto.addr = alloca i32, align 4
  %dict = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %latin1 = alloca %struct._object*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i32 %proto, i32* %proto.addr, align 4
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct._object*
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %1, %struct._Py_Identifier* @_common_reduce.PyId___dict__)
  store %struct._object* %call, %struct._object** %dict, align 8
  %2 = load %struct._object*, %struct._object** %dict, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  store %struct._object* @_Py_NoneStruct, %struct._object** %dict, align 8
  %3 = load %struct._object*, %struct._object** %dict, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %6 = bitcast %struct.PyByteArrayObject* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %8, i32 0, i32 3
  %9 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %buf, align 8
  %10 = load i32, i32* %proto.addr, align 4
  %cmp1 = icmp slt i32 %10, 3
  br i1 %cmp1, label %if.then.2, label %if.else.11

if.then.2:                                        ; preds = %cond.end
  %11 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %12 = bitcast %struct.PyByteArrayObject* %11 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size3, align 8
  %tobool4 = icmp ne i64 %13, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.2
  %14 = load i8*, i8** %buf, align 8
  %15 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %16 = bitcast %struct.PyByteArrayObject* %15 to %struct.PyVarObject*
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size6, align 8
  %call7 = call %struct._object* @PyUnicode_DecodeLatin1(i8* %14, i64 %17, i8* null)
  store %struct._object* %call7, %struct._object** %latin1, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.then.2
  %call8 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %latin1, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.5
  %18 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %19 = bitcast %struct.PyByteArrayObject* %18 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %21 = load %struct._object*, %struct._object** %latin1, align 8
  %22 = load %struct._object*, %struct._object** %dict, align 8
  %call10 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), %struct._typeobject* %20, %struct._object* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), %struct._object* %22)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.else.11:                                       ; preds = %cond.end
  %23 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %24 = bitcast %struct.PyByteArrayObject* %23 to %struct.PyVarObject*
  %ob_size12 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %24, i32 0, i32 1
  %25 = load i64, i64* %ob_size12, align 8
  %tobool13 = icmp ne i64 %25, 0
  br i1 %tobool13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %if.else.11
  %26 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %27 = bitcast %struct.PyByteArrayObject* %26 to %struct._object*
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %29 = load i8*, i8** %buf, align 8
  %30 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %31 = bitcast %struct.PyByteArrayObject* %30 to %struct.PyVarObject*
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %31, i32 0, i32 1
  %32 = load i64, i64* %ob_size16, align 8
  %33 = load %struct._object*, %struct._object** %dict, align 8
  %call17 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), %struct._typeobject* %28, i8* %29, i64 %32, %struct._object* %33)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.else.18:                                       ; preds = %if.else.11
  %34 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %35 = bitcast %struct.PyByteArrayObject* %34 to %struct._object*
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %37 = load %struct._object*, %struct._object** %dict, align 8
  %call20 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), %struct._typeobject* %36, %struct._object* %37)
  store %struct._object* %call20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.18, %if.then.14, %if.end.9
  %38 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %38
}

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyUnicode_DecodeLatin1(i8*, i64, i8*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare void @_Py_bytes_capitalize(i8*, i8*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @pad(%struct._object* %self, i64 %left, i64 %right, i8 signext %fill) #3 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %left.addr = alloca i64, align 8
  %right.addr = alloca i64, align 8
  %fill.addr = alloca i8, align 1
  %u = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i64 %left, i64* %left.addr, align 8
  store i64 %right, i64* %right.addr, align 8
  store i8 %fill, i8* %fill.addr, align 1
  %0 = load i64, i64* %left.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %left.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %right.addr, align 8
  %cmp1 = icmp slt i64 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i64 0, i64* %right.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i64, i64* %left.addr, align 8
  %cmp4 = icmp eq i64 %2, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end.3
  %3 = load i64, i64* %right.addr, align 8
  %cmp5 = icmp eq i64 %3, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.10

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp7 = icmp eq %struct._typeobject* %5, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyByteArray_Type to %struct._typeobject*)
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %land.lhs.true.6
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %9 = load %struct._object*, %struct._object** %self.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %10, i32 0, i32 3
  %11 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %12 = load %struct._object*, %struct._object** %self.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size9, align 8
  %call = call %struct._object* @PyByteArray_FromStringAndSize(i8* %cond, i64 %14)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.6, %land.lhs.true, %if.end.3
  %15 = load i64, i64* %left.addr, align 8
  %16 = load %struct._object*, %struct._object** %self.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size11 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size11, align 8
  %add = add i64 %15, %18
  %19 = load i64, i64* %right.addr, align 8
  %add12 = add i64 %add, %19
  %call13 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %add12)
  store %struct._object* %call13, %struct._object** %u, align 8
  %20 = load %struct._object*, %struct._object** %u, align 8
  %tobool14 = icmp ne %struct._object* %20, null
  br i1 %tobool14, label %if.then.15, label %if.end.55

if.then.15:                                       ; preds = %if.end.10
  %21 = load i64, i64* %left.addr, align 8
  %tobool16 = icmp ne i64 %21, 0
  br i1 %tobool16, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %if.then.15
  %22 = load %struct._object*, %struct._object** %u, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyVarObject*
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1
  %24 = load i64, i64* %ob_size18, align 8
  %tobool19 = icmp ne i64 %24, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %if.then.17
  %25 = load %struct._object*, %struct._object** %u, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyByteArrayObject*
  %ob_start21 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %26, i32 0, i32 3
  %27 = load i8*, i8** %ob_start21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.then.17
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi i8* [ %27, %cond.true.20 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.22 ]
  %28 = load i8, i8* %fill.addr, align 1
  %conv = sext i8 %28 to i32
  %29 = trunc i32 %conv to i8
  %30 = load i64, i64* %left.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %cond24, i8 %29, i64 %30, i32 1, i1 false)
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %if.then.15
  %31 = load %struct._object*, %struct._object** %u, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyVarObject*
  %ob_size26 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  %33 = load i64, i64* %ob_size26, align 8
  %tobool27 = icmp ne i64 %33, 0
  br i1 %tobool27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %if.end.25
  %34 = load %struct._object*, %struct._object** %u, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyByteArrayObject*
  %ob_start29 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %35, i32 0, i32 3
  %36 = load i8*, i8** %ob_start29, align 8
  br label %cond.end.31

cond.false.30:                                    ; preds = %if.end.25
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.28
  %cond32 = phi i8* [ %36, %cond.true.28 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.30 ]
  %37 = load i64, i64* %left.addr, align 8
  %add.ptr = getelementptr i8, i8* %cond32, i64 %37
  %38 = load %struct._object*, %struct._object** %self.addr, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyVarObject*
  %ob_size33 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %39, i32 0, i32 1
  %40 = load i64, i64* %ob_size33, align 8
  %tobool34 = icmp ne i64 %40, 0
  br i1 %tobool34, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %cond.end.31
  %41 = load %struct._object*, %struct._object** %self.addr, align 8
  %42 = bitcast %struct._object* %41 to %struct.PyByteArrayObject*
  %ob_start36 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %42, i32 0, i32 3
  %43 = load i8*, i8** %ob_start36, align 8
  br label %cond.end.38

cond.false.37:                                    ; preds = %cond.end.31
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.35
  %cond39 = phi i8* [ %43, %cond.true.35 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.37 ]
  %44 = load %struct._object*, %struct._object** %self.addr, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyVarObject*
  %ob_size40 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %45, i32 0, i32 1
  %46 = load i64, i64* %ob_size40, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %cond39, i64 %46, i32 1, i1 false)
  %47 = load i64, i64* %right.addr, align 8
  %tobool41 = icmp ne i64 %47, 0
  br i1 %tobool41, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %cond.end.38
  %48 = load %struct._object*, %struct._object** %u, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyVarObject*
  %ob_size43 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %49, i32 0, i32 1
  %50 = load i64, i64* %ob_size43, align 8
  %tobool44 = icmp ne i64 %50, 0
  br i1 %tobool44, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %if.then.42
  %51 = load %struct._object*, %struct._object** %u, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyByteArrayObject*
  %ob_start46 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %52, i32 0, i32 3
  %53 = load i8*, i8** %ob_start46, align 8
  br label %cond.end.48

cond.false.47:                                    ; preds = %if.then.42
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.45
  %cond49 = phi i8* [ %53, %cond.true.45 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.47 ]
  %54 = load i64, i64* %left.addr, align 8
  %add.ptr50 = getelementptr i8, i8* %cond49, i64 %54
  %55 = load %struct._object*, %struct._object** %self.addr, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyVarObject*
  %ob_size51 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %56, i32 0, i32 1
  %57 = load i64, i64* %ob_size51, align 8
  %add.ptr52 = getelementptr i8, i8* %add.ptr50, i64 %57
  %58 = load i8, i8* %fill.addr, align 1
  %conv53 = sext i8 %58 to i32
  %59 = trunc i32 %conv53 to i8
  %60 = load i64, i64* %right.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %add.ptr52, i8 %59, i64 %60, i32 1, i1 false)
  br label %if.end.54

if.end.54:                                        ; preds = %cond.end.48, %cond.end.38
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.10
  %61 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %61, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.55, %cond.end
  %62 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %62
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stringlib_parse_args_finds_byte(i8* %function_name, %struct._object* %args, %struct._object** %subobj, i8* %byte, i64* %start, i64* %end) #3 {
entry:
  %retval = alloca i32, align 4
  %function_name.addr = alloca i8*, align 8
  %args.addr = alloca %struct._object*, align 8
  %subobj.addr = alloca %struct._object**, align 8
  %byte.addr = alloca i8*, align 8
  %start.addr = alloca i64*, align 8
  %end.addr = alloca i64*, align 8
  %tmp_subobj = alloca %struct._object*, align 8
  %ival = alloca i64, align 8
  %err = alloca %struct._object*, align 8
  store i8* %function_name, i8** %function_name.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object** %subobj, %struct._object*** %subobj.addr, align 8
  store i8* %byte, i8** %byte.addr, align 8
  store i64* %start, i64** %start.addr, align 8
  store i64* %end, i64** %end.addr, align 8
  %0 = load i8*, i8** %function_name.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load i64*, i64** %start.addr, align 8
  %3 = load i64*, i64** %end.addr, align 8
  %call = call i32 @stringlib_parse_args_finds(i8* %0, %struct._object* %1, %struct._object** %tmp_subobj, i64* %2, i64* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %tmp_subobj, align 8
  %call1 = call i32 @PyNumber_Check(%struct._object* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %tmp_subobj, align 8
  %6 = load %struct._object**, %struct._object*** %subobj.addr, align 8
  store %struct._object* %5, %struct._object** %6, align 8
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %tmp_subobj, align 8
  %8 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call5 = call i64 @PyNumber_AsSsize_t(%struct._object* %7, %struct._object* %8)
  store i64 %call5, i64* %ival, align 8
  %9 = load i64, i64* %ival, align 8
  %cmp = icmp eq i64 %9, -1
  br i1 %cmp, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end.4
  %call7 = call %struct._object* @PyErr_Occurred()
  store %struct._object* %call7, %struct._object** %err, align 8
  %10 = load %struct._object*, %struct._object** %err, align 8
  %tobool8 = icmp ne %struct._object* %10, null
  br i1 %tobool8, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.then.6
  %11 = load %struct._object*, %struct._object** %err, align 8
  %12 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call9 = call i32 @PyErr_GivenExceptionMatches(%struct._object* %11, %struct._object* %12)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  call void @PyErr_Clear()
  %13 = load %struct._object*, %struct._object** %tmp_subobj, align 8
  %14 = load %struct._object**, %struct._object*** %subobj.addr, align 8
  store %struct._object* %13, %struct._object** %14, align 8
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.4
  %15 = load i64, i64* %ival, align 8
  %cmp14 = icmp slt i64 %15, 0
  br i1 %cmp14, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %16 = load i64, i64* %ival, align 8
  %cmp15 = icmp sgt i64 %16, 255
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false, %if.end.13
  %17 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false
  %18 = load %struct._object**, %struct._object*** %subobj.addr, align 8
  store %struct._object* null, %struct._object** %18, align 8
  %19 = load i64, i64* %ival, align 8
  %conv = trunc i64 %19 to i8
  %20 = load i8*, i8** %byte.addr, align 8
  store i8 %conv, i8* %20, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.11, %if.then.3, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stringlib_count(i8* %str, i64 %str_len, i8* %sub, i64 %sub_len, i64 %maxcount) #3 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %sub.addr = alloca i8*, align 8
  %sub_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  %count = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store i8* %sub, i8** %sub.addr, align 8
  store i64 %sub_len, i64* %sub_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load i64, i64* %str_len.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %sub_len.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %2 = load i64, i64* %str_len.addr, align 8
  %3 = load i64, i64* %maxcount.addr, align 8
  %cmp3 = icmp slt i64 %2, %3
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %4 = load i64, i64* %str_len.addr, align 8
  %add = add i64 %4, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %5 = load i64, i64* %maxcount.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ %5, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i64, i64* %str_len.addr, align 8
  %8 = load i8*, i8** %sub.addr, align 8
  %9 = load i64, i64* %sub_len.addr, align 8
  %10 = load i64, i64* %maxcount.addr, align 8
  %call = call i64 @fastsearch(i8* %6, i64 %7, i8* %8, i64 %9, i64 %10, i32 0)
  store i64 %call, i64* %count, align 8
  %11 = load i64, i64* %count, align 8
  %cmp5 = icmp slt i64 %11, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i64 0, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %12 = load i64, i64* %count, align 8
  store i64 %12, i64* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %cond.end, %if.then
  %13 = load i64, i64* %retval
  ret i64 %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stringlib_parse_args_finds(i8* %function_name, %struct._object* %args, %struct._object** %subobj, i64* %start, i64* %end) #3 {
entry:
  %retval = alloca i32, align 4
  %function_name.addr = alloca i8*, align 8
  %args.addr = alloca %struct._object*, align 8
  %subobj.addr = alloca %struct._object**, align 8
  %start.addr = alloca i64*, align 8
  %end.addr = alloca i64*, align 8
  %tmp_subobj = alloca %struct._object*, align 8
  %tmp_start = alloca i64, align 8
  %tmp_end = alloca i64, align 8
  %obj_start = alloca %struct._object*, align 8
  %obj_end = alloca %struct._object*, align 8
  %format = alloca [50 x i8], align 16
  %len = alloca i64, align 8
  store i8* %function_name, i8** %function_name.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object** %subobj, %struct._object*** %subobj.addr, align 8
  store i64* %start, i64** %start.addr, align 8
  store i64* %end, i64** %end.addr, align 8
  store i64 0, i64* %tmp_start, align 8
  store i64 9223372036854775807, i64* %tmp_end, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %obj_start, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %obj_end, align 8
  %0 = bitcast [50 x i8]* %format to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 50, i32 16, i1 false)
  %1 = bitcast i8* %0 to [50 x i8]*
  %2 = getelementptr [50 x i8], [50 x i8]* %1, i32 0, i32 0
  store i8 79, i8* %2
  %3 = getelementptr [50 x i8], [50 x i8]* %1, i32 0, i32 1
  store i8 124, i8* %3
  %4 = getelementptr [50 x i8], [50 x i8]* %1, i32 0, i32 2
  store i8 79, i8* %4
  %5 = getelementptr [50 x i8], [50 x i8]* %1, i32 0, i32 3
  store i8 79, i8* %5
  %6 = getelementptr [50 x i8], [50 x i8]* %1, i32 0, i32 4
  store i8 58, i8* %6
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %format, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #7
  store i64 %call, i64* %len, align 8
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %format, i32 0, i32 0
  %7 = load i64, i64* %len, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay1, i64 %7
  %8 = load i8*, i8** %function_name.addr, align 8
  %9 = load i64, i64* %len, align 8
  %sub = sub i64 50, %9
  %sub2 = sub i64 %sub, 1
  %call3 = call i8* @strncpy(i8* %add.ptr, i8* %8, i64 %sub2) #2
  %arrayidx = getelementptr [50 x i8], [50 x i8]* %format, i32 0, i64 49
  store i8 0, i8* %arrayidx, align 1
  %10 = load %struct._object*, %struct._object** %args.addr, align 8
  %arraydecay4 = getelementptr inbounds [50 x i8], [50 x i8]* %format, i32 0, i32 0
  %call5 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %10, i8* %arraydecay4, %struct._object** %tmp_subobj, %struct._object** %obj_start, %struct._object** %obj_end)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._object*, %struct._object** %obj_start, align 8
  %cmp = icmp ne %struct._object* %11, @_Py_NoneStruct
  br i1 %cmp, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %obj_start, align 8
  %call7 = call i32 @_PyEval_SliceIndex(%struct._object* %12, i64* %tmp_start)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.6
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %13 = load %struct._object*, %struct._object** %obj_end, align 8
  %cmp12 = icmp ne %struct._object* %13, @_Py_NoneStruct
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %obj_end, align 8
  %call14 = call i32 @_PyEval_SliceIndex(%struct._object* %14, i64* %tmp_end)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.11
  %15 = load i64, i64* %tmp_start, align 8
  %16 = load i64*, i64** %start.addr, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* %tmp_end, align 8
  %18 = load i64*, i64** %end.addr, align 8
  store i64 %17, i64* %18, align 8
  %19 = load %struct._object*, %struct._object** %tmp_subobj, align 8
  %20 = load %struct._object**, %struct._object*** %subobj.addr, align 8
  store %struct._object* %19, %struct._object** %20, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.16, %if.then.9, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @PyErr_GivenExceptionMatches(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

declare i32 @_PyEval_SliceIndex(%struct._object*, i64*) #1

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare i8* @PyUnicode_GetDefaultEncoding() #1

declare %struct._object* @PyUnicode_FromEncodedObject(%struct._object*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_bytearray_tailmatch(%struct.PyByteArrayObject* %self, %struct._object* %substr, i64 %start, i64 %end, i32 %direction) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %substr.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %direction.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %str = alloca i8*, align 8
  %vsubstr = alloca %struct.bufferinfo, align 8
  %rv = alloca i32, align 4
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %substr, %struct._object** %substr.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %len, align 8
  store i32 0, i32* %rv, align 4
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %4 = bitcast %struct.PyByteArrayObject* %3 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size1, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %6, i32 0, i32 3
  %7 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %str, align 8
  %8 = load %struct._object*, %struct._object** %substr.addr, align 8
  %call = call i64 @_getbuffer(%struct._object* %8, %struct.bufferinfo* %vsubstr)
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %9 = load i64, i64* %end.addr, align 8
  %10 = load i64, i64* %len, align 8
  %cmp2 = icmp sgt i64 %9, %10
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %11 = load i64, i64* %len, align 8
  store i64 %11, i64* %end.addr, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %12 = load i64, i64* %end.addr, align 8
  %cmp4 = icmp slt i64 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.else
  %13 = load i64, i64* %len, align 8
  %14 = load i64, i64* %end.addr, align 8
  %add = add i64 %14, %13
  store i64 %add, i64* %end.addr, align 8
  %15 = load i64, i64* %end.addr, align 8
  %cmp6 = icmp slt i64 %15, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  store i64 0, i64* %end.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.3
  %16 = load i64, i64* %start.addr, align 8
  %cmp11 = icmp slt i64 %16, 0
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.10
  %17 = load i64, i64* %len, align 8
  %18 = load i64, i64* %start.addr, align 8
  %add13 = add i64 %18, %17
  store i64 %add13, i64* %start.addr, align 8
  %19 = load i64, i64* %start.addr, align 8
  %cmp14 = icmp slt i64 %19, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store i64 0, i64* %start.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  %20 = load i32, i32* %direction.addr, align 4
  %cmp18 = icmp slt i32 %20, 0
  br i1 %cmp18, label %if.then.19, label %if.else.25

if.then.19:                                       ; preds = %if.end.17
  %21 = load i64, i64* %start.addr, align 8
  %len20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsubstr, i32 0, i32 2
  %22 = load i64, i64* %len20, align 8
  %add21 = add i64 %21, %22
  %23 = load i64, i64* %len, align 8
  %cmp22 = icmp sgt i64 %add21, %23
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.19
  br label %done

if.end.24:                                        ; preds = %if.then.19
  br label %if.end.38

if.else.25:                                       ; preds = %if.end.17
  %24 = load i64, i64* %end.addr, align 8
  %25 = load i64, i64* %start.addr, align 8
  %sub = sub i64 %24, %25
  %len26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsubstr, i32 0, i32 2
  %26 = load i64, i64* %len26, align 8
  %cmp27 = icmp slt i64 %sub, %26
  br i1 %cmp27, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.25
  %27 = load i64, i64* %start.addr, align 8
  %28 = load i64, i64* %len, align 8
  %cmp28 = icmp sgt i64 %27, %28
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.else.25
  br label %done

if.end.30:                                        ; preds = %lor.lhs.false
  %29 = load i64, i64* %end.addr, align 8
  %len31 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsubstr, i32 0, i32 2
  %30 = load i64, i64* %len31, align 8
  %sub32 = sub i64 %29, %30
  %31 = load i64, i64* %start.addr, align 8
  %cmp33 = icmp sgt i64 %sub32, %31
  br i1 %cmp33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.30
  %32 = load i64, i64* %end.addr, align 8
  %len35 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsubstr, i32 0, i32 2
  %33 = load i64, i64* %len35, align 8
  %sub36 = sub i64 %32, %33
  store i64 %sub36, i64* %start.addr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.30
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.24
  %34 = load i64, i64* %end.addr, align 8
  %35 = load i64, i64* %start.addr, align 8
  %sub39 = sub i64 %34, %35
  %len40 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsubstr, i32 0, i32 2
  %36 = load i64, i64* %len40, align 8
  %cmp41 = icmp sge i64 %sub39, %36
  br i1 %cmp41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.38
  %37 = load i8*, i8** %str, align 8
  %38 = load i64, i64* %start.addr, align 8
  %add.ptr = getelementptr i8, i8* %37, i64 %38
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsubstr, i32 0, i32 0
  %39 = load i8*, i8** %buf, align 8
  %len43 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsubstr, i32 0, i32 2
  %40 = load i64, i64* %len43, align 8
  %call44 = call i32 @memcmp(i8* %add.ptr, i8* %39, i64 %40) #7
  %tobool45 = icmp ne i32 %call44, 0
  %lnot = xor i1 %tobool45, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %rv, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.end.38
  br label %done

done:                                             ; preds = %if.end.46, %if.then.29, %if.then.23
  call void @PyBuffer_Release(%struct.bufferinfo* %vsubstr)
  %41 = load i32, i32* %rv, align 4
  store i32 %41, i32* %retval
  br label %return

return:                                           ; preds = %done, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare %struct._object* @PyBool_FromLong(i64) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare i64 @PyObject_LengthHint(%struct._object*, i64) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @bytearray_find_internal(%struct.PyByteArrayObject* %self, %struct._object* %args, i32 %dir) #3 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %dir.addr = alloca i32, align 4
  %subobj = alloca %struct._object*, align 8
  %byte = alloca i8, align 1
  %subbuf = alloca %struct.bufferinfo, align 8
  %sub = alloca i8*, align 8
  %sub_len = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %res = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  store i64 0, i64* %start, align 8
  store i64 9223372036854775807, i64* %end, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @stringlib_parse_args_finds_byte(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.86, i32 0, i32 0), %struct._object* %0, %struct._object** %subobj, i8* %byte, i64* %start, i64* %end)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %subobj, align 8
  %tobool1 = icmp ne %struct._object* %1, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %subobj, align 8
  %call3 = call i64 @_getbuffer(%struct._object* %2, %struct.bufferinfo* %subbuf)
  %cmp = icmp slt i64 %call3, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  store i64 -2, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.2
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %subbuf, i32 0, i32 0
  %3 = load i8*, i8** %buf, align 8
  store i8* %3, i8** %sub, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %subbuf, i32 0, i32 2
  %4 = load i64, i64* %len, align 8
  store i64 %4, i64* %sub_len, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  store i8* %byte, i8** %sub, align 8
  store i64 1, i64* %sub_len, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end.5
  %5 = load i32, i32* %dir.addr, align 4
  %cmp7 = icmp sgt i32 %5, 0
  br i1 %cmp7, label %if.then.8, label %if.else.12

if.then.8:                                        ; preds = %if.end.6
  %6 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %7 = bitcast %struct.PyByteArrayObject* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  %tobool9 = icmp ne i64 %8, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %9 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %9, i32 0, i32 3
  %10 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %11 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %12 = bitcast %struct.PyByteArrayObject* %11 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size10, align 8
  %14 = load i8*, i8** %sub, align 8
  %15 = load i64, i64* %sub_len, align 8
  %16 = load i64, i64* %start, align 8
  %17 = load i64, i64* %end, align 8
  %call11 = call i64 @stringlib_find_slice(i8* %cond, i64 %13, i8* %14, i64 %15, i64 %16, i64 %17)
  store i64 %call11, i64* %res, align 8
  br label %if.end.22

if.else.12:                                       ; preds = %if.end.6
  %18 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %19 = bitcast %struct.PyByteArrayObject* %18 to %struct.PyVarObject*
  %ob_size13 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size13, align 8
  %tobool14 = icmp ne i64 %20, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %if.else.12
  %21 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start16 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %21, i32 0, i32 3
  %22 = load i8*, i8** %ob_start16, align 8
  br label %cond.end.18

cond.false.17:                                    ; preds = %if.else.12
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.15
  %cond19 = phi i8* [ %22, %cond.true.15 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.17 ]
  %23 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %24 = bitcast %struct.PyByteArrayObject* %23 to %struct.PyVarObject*
  %ob_size20 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %24, i32 0, i32 1
  %25 = load i64, i64* %ob_size20, align 8
  %26 = load i8*, i8** %sub, align 8
  %27 = load i64, i64* %sub_len, align 8
  %28 = load i64, i64* %start, align 8
  %29 = load i64, i64* %end, align 8
  %call21 = call i64 @stringlib_rfind_slice(i8* %cond19, i64 %25, i8* %26, i64 %27, i64 %28, i64 %29)
  store i64 %call21, i64* %res, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %cond.end.18, %cond.end
  %30 = load %struct._object*, %struct._object** %subobj, align 8
  %tobool23 = icmp ne %struct._object* %30, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  call void @PyBuffer_Release(%struct.bufferinfo* %subbuf)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %31 = load i64, i64* %res, align 8
  store i64 %31, i64* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.4, %if.then
  %32 = load i64, i64* %retval
  ret i64 %32
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stringlib_find_slice(i8* %str, i64 %str_len, i8* %sub, i64 %sub_len, i64 %start, i64 %end) #3 {
entry:
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %sub.addr = alloca i8*, align 8
  %sub_len.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store i8* %sub, i8** %sub.addr, align 8
  store i64 %sub_len, i64* %sub_len.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %end.addr, align 8
  %1 = load i64, i64* %str_len.addr, align 8
  %cmp = icmp sgt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %str_len.addr, align 8
  store i64 %2, i64* %end.addr, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %end.addr, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.else
  %4 = load i64, i64* %str_len.addr, align 8
  %5 = load i64, i64* %end.addr, align 8
  %add = add i64 %5, %4
  store i64 %add, i64* %end.addr, align 8
  %6 = load i64, i64* %end.addr, align 8
  %cmp3 = icmp slt i64 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  store i64 0, i64* %end.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then
  %7 = load i64, i64* %start.addr, align 8
  %cmp7 = icmp slt i64 %7, 0
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.6
  %8 = load i64, i64* %str_len.addr, align 8
  %9 = load i64, i64* %start.addr, align 8
  %add9 = add i64 %9, %8
  store i64 %add9, i64* %start.addr, align 8
  %10 = load i64, i64* %start.addr, align 8
  %cmp10 = icmp slt i64 %10, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store i64 0, i64* %start.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.6
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i64, i64* %start.addr, align 8
  %add.ptr = getelementptr i8, i8* %11, i64 %12
  %13 = load i64, i64* %end.addr, align 8
  %14 = load i64, i64* %start.addr, align 8
  %sub14 = sub i64 %13, %14
  %15 = load i8*, i8** %sub.addr, align 8
  %16 = load i64, i64* %sub_len.addr, align 8
  %17 = load i64, i64* %start.addr, align 8
  %call = call i64 @stringlib_find(i8* %add.ptr, i64 %sub14, i8* %15, i64 %16, i64 %17)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stringlib_rfind_slice(i8* %str, i64 %str_len, i8* %sub, i64 %sub_len, i64 %start, i64 %end) #3 {
entry:
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %sub.addr = alloca i8*, align 8
  %sub_len.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store i8* %sub, i8** %sub.addr, align 8
  store i64 %sub_len, i64* %sub_len.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %end.addr, align 8
  %1 = load i64, i64* %str_len.addr, align 8
  %cmp = icmp sgt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %str_len.addr, align 8
  store i64 %2, i64* %end.addr, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %end.addr, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.else
  %4 = load i64, i64* %str_len.addr, align 8
  %5 = load i64, i64* %end.addr, align 8
  %add = add i64 %5, %4
  store i64 %add, i64* %end.addr, align 8
  %6 = load i64, i64* %end.addr, align 8
  %cmp3 = icmp slt i64 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  store i64 0, i64* %end.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then
  %7 = load i64, i64* %start.addr, align 8
  %cmp7 = icmp slt i64 %7, 0
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.6
  %8 = load i64, i64* %str_len.addr, align 8
  %9 = load i64, i64* %start.addr, align 8
  %add9 = add i64 %9, %8
  store i64 %add9, i64* %start.addr, align 8
  %10 = load i64, i64* %start.addr, align 8
  %cmp10 = icmp slt i64 %10, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store i64 0, i64* %start.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.6
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i64, i64* %start.addr, align 8
  %add.ptr = getelementptr i8, i8* %11, i64 %12
  %13 = load i64, i64* %end.addr, align 8
  %14 = load i64, i64* %start.addr, align 8
  %sub14 = sub i64 %13, %14
  %15 = load i8*, i8** %sub.addr, align 8
  %16 = load i64, i64* %sub_len.addr, align 8
  %17 = load i64, i64* %start.addr, align 8
  %call = call i64 @stringlib_rfind(i8* %add.ptr, i64 %sub14, i8* %15, i64 %16, i64 %17)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stringlib_rfind(i8* %str, i64 %str_len, i8* %sub, i64 %sub_len, i64 %offset) #3 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %sub.addr = alloca i8*, align 8
  %sub_len.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store i8* %sub, i8** %sub.addr, align 8
  store i64 %sub_len, i64* %sub_len.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i64, i64* %str_len.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %sub_len.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load i64, i64* %str_len.addr, align 8
  %3 = load i64, i64* %offset.addr, align 8
  %add = add i64 %2, %3
  store i64 %add, i64* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i64, i64* %str_len.addr, align 8
  %6 = load i8*, i8** %sub.addr, align 8
  %7 = load i64, i64* %sub_len.addr, align 8
  %call = call i64 @fastsearch(i8* %4, i64 %5, i8* %6, i64 %7, i64 -1, i32 2)
  store i64 %call, i64* %pos, align 8
  %8 = load i64, i64* %pos, align 8
  %cmp4 = icmp sge i64 %8, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %9 = load i64, i64* %offset.addr, align 8
  %10 = load i64, i64* %pos, align 8
  %add6 = add i64 %10, %9
  store i64 %add6, i64* %pos, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %11 = load i64, i64* %pos, align 8
  store i64 %11, i64* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.2, %if.then
  %12 = load i64, i64* %retval
  ret i64 %12
}

declare i32 @_PyUnicode_Ready(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @hex_digit_to_int(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp uge i32 %0, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %and = and i32 %1, 255
  %conv = trunc i32 %and to i8
  %idxprom = zext i8 %conv to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %and1 = and i32 %2, 4
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %c.addr, align 4
  %sub = sub i32 %3, 48
  store i32 %sub, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* %c.addr, align 4
  %and3 = and i32 %4, 255
  %conv4 = trunc i32 %and3 to i8
  %idxprom5 = zext i8 %conv4 to i64
  %arrayidx6 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom5
  %5 = load i32, i32* %arrayidx6, align 4
  %and7 = and i32 %5, 2
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.else
  %6 = load i32, i32* %c.addr, align 4
  %and10 = and i32 %6, 255
  %conv11 = trunc i32 %and10 to i8
  %idxprom12 = zext i8 %conv11 to i64
  %arrayidx13 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom12
  %7 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  store i32 %conv14, i32* %c.addr, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.9, %if.else
  %8 = load i32, i32* %c.addr, align 4
  %cmp16 = icmp uge i32 %8, 97
  br i1 %cmp16, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.15
  %9 = load i32, i32* %c.addr, align 4
  %cmp18 = icmp ule i32 %9, 102
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true
  %10 = load i32, i32* %c.addr, align 4
  %sub21 = sub i32 %10, 97
  %add = add i32 %sub21, 10
  store i32 %add, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true, %if.end.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.20, %if.then.2, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare %struct._object* @_Py_bytes_isalnum(i8*, i64) #1

declare %struct._object* @_Py_bytes_isalpha(i8*, i64) #1

declare %struct._object* @_Py_bytes_isdigit(i8*, i64) #1

declare %struct._object* @_Py_bytes_islower(i8*, i64) #1

declare %struct._object* @_Py_bytes_isspace(i8*, i64) #1

declare %struct._object* @_Py_bytes_istitle(i8*, i64) #1

declare %struct._object* @_Py_bytes_isupper(i8*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_bytes_join(%struct._object* %sep, %struct._object* %iterable) #3 {
entry:
  %retval = alloca %struct._object*, align 8
  %sep.addr = alloca %struct._object*, align 8
  %iterable.addr = alloca %struct._object*, align 8
  %sepstr = alloca i8*, align 8
  %seplen = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  %seqlen = alloca i64, align 8
  %sz = alloca i64, align 8
  %i = alloca i64, align 8
  %nbufs = alloca i64, align 8
  %seq = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %buffers = alloca %struct.bufferinfo*, align 8
  %static_buffers = alloca [10 x %struct.bufferinfo], align 16
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %itemlen = alloca i64, align 8
  %n = alloca i64, align 8
  %q = alloca i8*, align 8
  %n112 = alloca i64, align 8
  %q113 = alloca i8*, align 8
  %_py_decref_tmp127 = alloca %struct._object*, align 8
  store %struct._object* %sep, %struct._object** %sep.addr, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  %0 = load %struct._object*, %struct._object** %sep.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** %sep.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %4, i32 0, i32 3
  %5 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %sepstr, align 8
  %6 = load %struct._object*, %struct._object** %sep.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size1, align 8
  store i64 %8, i64* %seplen, align 8
  store %struct._object* null, %struct._object** %res, align 8
  store i64 0, i64* %seqlen, align 8
  store i64 0, i64* %sz, align 8
  store %struct.bufferinfo* null, %struct.bufferinfo** %buffers, align 8
  %9 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call = call %struct._object* @PySequence_Fast(%struct._object* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.91, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %seq, align 8
  %10 = load %struct._object*, %struct._object** %seq, align 8
  %cmp = icmp eq %struct._object* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %11 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19
  %13 = load i64, i64* %tp_flags, align 8
  %and = and i64 %13, 33554432
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %seq, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1
  %16 = load i64, i64* %ob_size4, align 8
  br label %cond.end.7

cond.false.5:                                     ; preds = %if.end
  %17 = load %struct._object*, %struct._object** %seq, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyVarObject*
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size6, align 8
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.5, %cond.true.3
  %cond8 = phi i64 [ %16, %cond.true.3 ], [ %19, %cond.false.5 ]
  store i64 %cond8, i64* %seqlen, align 8
  %20 = load i64, i64* %seqlen, align 8
  %cmp9 = icmp eq i64 %20, 0
  br i1 %cmp9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %cond.end.7
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %21 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %call15 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 0)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %cond.end.7
  %28 = load i64, i64* %seqlen, align 8
  %cmp17 = icmp sgt i64 %28, 10
  br i1 %cmp17, label %if.then.18, label %if.else.40

if.then.18:                                       ; preds = %if.end.16
  %29 = load i64, i64* %seqlen, align 8
  %cmp19 = icmp ugt i64 %29, 115292150460684697
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %if.then.18
  br label %cond.end.23

cond.false.21:                                    ; preds = %if.then.18
  %30 = load i64, i64* %seqlen, align 8
  %mul = mul i64 %30, 80
  %call22 = call i8* @PyMem_Malloc(i64 %mul)
  %31 = bitcast i8* %call22 to %struct.bufferinfo*
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.20
  %cond24 = phi %struct.bufferinfo* [ null, %cond.true.20 ], [ %31, %cond.false.21 ]
  store %struct.bufferinfo* %cond24, %struct.bufferinfo** %buffers, align 8
  %32 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %cmp25 = icmp eq %struct.bufferinfo* %32, null
  br i1 %cmp25, label %if.then.26, label %if.end.39

if.then.26:                                       ; preds = %cond.end.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %33 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp28, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %35, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %38(%struct._object* %39)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %call38 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %cond.end.23
  br label %if.end.41

if.else.40:                                       ; preds = %if.end.16
  %arraydecay = getelementptr inbounds [10 x %struct.bufferinfo], [10 x %struct.bufferinfo]* %static_buffers, i32 0, i32 0
  store %struct.bufferinfo* %arraydecay, %struct.bufferinfo** %buffers, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.end.39
  store i64 0, i64* %i, align 8
  store i64 0, i64* %nbufs, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.41
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* %seqlen, align 8
  %cmp42 = icmp slt i64 %40, %41
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_flags44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 19
  %44 = load i64, i64* %tp_flags44, align 8
  %and45 = and i64 %44, 33554432
  %cmp46 = icmp ne i64 %and45, 0
  br i1 %cmp46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %for.body
  %45 = load i64, i64* %i, align 8
  %46 = load %struct._object*, %struct._object** %seq, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %47, i32 0, i32 1
  %48 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %48, i64 %45
  %49 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end.51

cond.false.48:                                    ; preds = %for.body
  %50 = load i64, i64* %i, align 8
  %51 = load %struct._object*, %struct._object** %seq, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyTupleObject*
  %ob_item49 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %52, i32 0, i32 1
  %arrayidx50 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item49, i32 0, i64 %50
  %53 = load %struct._object*, %struct._object** %arrayidx50, align 8
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.48, %cond.true.47
  %cond52 = phi %struct._object* [ %49, %cond.true.47 ], [ %53, %cond.false.48 ]
  store %struct._object* %cond52, %struct._object** %item, align 8
  %54 = load %struct._object*, %struct._object** %item, align 8
  %55 = load i64, i64* %i, align 8
  %56 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx53 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %56, i64 %55
  %call54 = call i64 @_getbuffer(%struct._object* %54, %struct.bufferinfo* %arrayidx53)
  %cmp55 = icmp slt i64 %call54, 0
  br i1 %cmp55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %cond.end.51
  %57 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %58 = load i64, i64* %i, align 8
  %59 = load %struct._object*, %struct._object** %item, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 1
  %61 = load i8*, i8** %tp_name, align 8
  %call58 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %57, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.92, i32 0, i32 0), i64 %58, i8* %61)
  br label %error

if.end.59:                                        ; preds = %cond.end.51
  %62 = load i64, i64* %i, align 8
  %add = add i64 %62, 1
  store i64 %add, i64* %nbufs, align 8
  %63 = load i64, i64* %i, align 8
  %64 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx60 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %64, i64 %63
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx60, i32 0, i32 2
  %65 = load i64, i64* %len, align 8
  store i64 %65, i64* %itemlen, align 8
  %66 = load i64, i64* %itemlen, align 8
  %67 = load i64, i64* %sz, align 8
  %sub = sub i64 9223372036854775807, %67
  %cmp61 = icmp sgt i64 %66, %sub
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  %68 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.93, i32 0, i32 0))
  br label %error

if.end.63:                                        ; preds = %if.end.59
  %69 = load i64, i64* %itemlen, align 8
  %70 = load i64, i64* %sz, align 8
  %add64 = add i64 %70, %69
  store i64 %add64, i64* %sz, align 8
  %71 = load i64, i64* %i, align 8
  %cmp65 = icmp ne i64 %71, 0
  br i1 %cmp65, label %if.then.66, label %if.end.72

if.then.66:                                       ; preds = %if.end.63
  %72 = load i64, i64* %seplen, align 8
  %73 = load i64, i64* %sz, align 8
  %sub67 = sub i64 9223372036854775807, %73
  %cmp68 = icmp sgt i64 %72, %sub67
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.66
  %74 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.93, i32 0, i32 0))
  br label %error

if.end.70:                                        ; preds = %if.then.66
  %75 = load i64, i64* %seplen, align 8
  %76 = load i64, i64* %sz, align 8
  %add71 = add i64 %76, %75
  store i64 %add71, i64* %sz, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.70, %if.end.63
  %77 = load i64, i64* %seqlen, align 8
  %78 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_flags74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 19
  %80 = load i64, i64* %tp_flags74, align 8
  %and75 = and i64 %80, 33554432
  %cmp76 = icmp ne i64 %and75, 0
  br i1 %cmp76, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %if.end.72
  %81 = load %struct._object*, %struct._object** %seq, align 8
  %82 = bitcast %struct._object* %81 to %struct.PyVarObject*
  %ob_size78 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %82, i32 0, i32 1
  %83 = load i64, i64* %ob_size78, align 8
  br label %cond.end.81

cond.false.79:                                    ; preds = %if.end.72
  %84 = load %struct._object*, %struct._object** %seq, align 8
  %85 = bitcast %struct._object* %84 to %struct.PyVarObject*
  %ob_size80 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %85, i32 0, i32 1
  %86 = load i64, i64* %ob_size80, align 8
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.77
  %cond82 = phi i64 [ %83, %cond.true.77 ], [ %86, %cond.false.79 ]
  %cmp83 = icmp ne i64 %77, %cond82
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %cond.end.81
  %87 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0))
  br label %error

if.end.85:                                        ; preds = %cond.end.81
  br label %for.inc

for.inc:                                          ; preds = %if.end.85
  %88 = load i64, i64* %i, align 8
  %inc = add i64 %88, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %89 = load i64, i64* %sz, align 8
  %call86 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %89)
  store %struct._object* %call86, %struct._object** %res, align 8
  %90 = load %struct._object*, %struct._object** %res, align 8
  %cmp87 = icmp eq %struct._object* %90, null
  br i1 %cmp87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %for.end
  br label %error

if.end.89:                                        ; preds = %for.end
  %91 = load %struct._object*, %struct._object** %res, align 8
  %92 = bitcast %struct._object* %91 to %struct.PyVarObject*
  %ob_size90 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %92, i32 0, i32 1
  %93 = load i64, i64* %ob_size90, align 8
  %tobool91 = icmp ne i64 %93, 0
  br i1 %tobool91, label %cond.true.92, label %cond.false.94

cond.true.92:                                     ; preds = %if.end.89
  %94 = load %struct._object*, %struct._object** %res, align 8
  %95 = bitcast %struct._object* %94 to %struct.PyByteArrayObject*
  %ob_start93 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %95, i32 0, i32 3
  %96 = load i8*, i8** %ob_start93, align 8
  br label %cond.end.95

cond.false.94:                                    ; preds = %if.end.89
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.92
  %cond96 = phi i8* [ %96, %cond.true.92 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.94 ]
  store i8* %cond96, i8** %p, align 8
  %97 = load i64, i64* %seplen, align 8
  %tobool97 = icmp ne i64 %97, 0
  br i1 %tobool97, label %if.end.108, label %if.then.98

if.then.98:                                       ; preds = %cond.end.95
  store i64 0, i64* %i, align 8
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.105, %if.then.98
  %98 = load i64, i64* %i, align 8
  %99 = load i64, i64* %nbufs, align 8
  %cmp100 = icmp slt i64 %98, %99
  br i1 %cmp100, label %for.body.101, label %for.end.107

for.body.101:                                     ; preds = %for.cond.99
  %100 = load i64, i64* %i, align 8
  %101 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx102 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %101, i64 %100
  %len103 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx102, i32 0, i32 2
  %102 = load i64, i64* %len103, align 8
  store i64 %102, i64* %n, align 8
  %103 = load i64, i64* %i, align 8
  %104 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx104 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %104, i64 %103
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx104, i32 0, i32 0
  %105 = load i8*, i8** %buf, align 8
  store i8* %105, i8** %q, align 8
  %106 = load i8*, i8** %p, align 8
  %107 = load i8*, i8** %q, align 8
  %108 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 %108, i32 1, i1 false)
  %109 = load i64, i64* %n, align 8
  %110 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %110, i64 %109
  store i8* %add.ptr, i8** %p, align 8
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.101
  %111 = load i64, i64* %i, align 8
  %inc106 = add i64 %111, 1
  store i64 %inc106, i64* %i, align 8
  br label %for.cond.99

for.end.107:                                      ; preds = %for.cond.99
  br label %done

if.end.108:                                       ; preds = %cond.end.95
  store i64 0, i64* %i, align 8
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.123, %if.end.108
  %112 = load i64, i64* %i, align 8
  %113 = load i64, i64* %nbufs, align 8
  %cmp110 = icmp slt i64 %112, %113
  br i1 %cmp110, label %for.body.111, label %for.end.125

for.body.111:                                     ; preds = %for.cond.109
  %114 = load i64, i64* %i, align 8
  %tobool114 = icmp ne i64 %114, 0
  br i1 %tobool114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %for.body.111
  %115 = load i8*, i8** %p, align 8
  %116 = load i8*, i8** %sepstr, align 8
  %117 = load i64, i64* %seplen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %116, i64 %117, i32 1, i1 false)
  %118 = load i64, i64* %seplen, align 8
  %119 = load i8*, i8** %p, align 8
  %add.ptr116 = getelementptr i8, i8* %119, i64 %118
  store i8* %add.ptr116, i8** %p, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %for.body.111
  %120 = load i64, i64* %i, align 8
  %121 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx118 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %121, i64 %120
  %len119 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx118, i32 0, i32 2
  %122 = load i64, i64* %len119, align 8
  store i64 %122, i64* %n112, align 8
  %123 = load i64, i64* %i, align 8
  %124 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx120 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %124, i64 %123
  %buf121 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx120, i32 0, i32 0
  %125 = load i8*, i8** %buf121, align 8
  store i8* %125, i8** %q113, align 8
  %126 = load i8*, i8** %p, align 8
  %127 = load i8*, i8** %q113, align 8
  %128 = load i64, i64* %n112, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 %128, i32 1, i1 false)
  %129 = load i64, i64* %n112, align 8
  %130 = load i8*, i8** %p, align 8
  %add.ptr122 = getelementptr i8, i8* %130, i64 %129
  store i8* %add.ptr122, i8** %p, align 8
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.117
  %131 = load i64, i64* %i, align 8
  %inc124 = add i64 %131, 1
  store i64 %inc124, i64* %i, align 8
  br label %for.cond.109

for.end.125:                                      ; preds = %for.cond.109
  br label %done

error:                                            ; preds = %if.then.88, %if.then.84, %if.then.69, %if.then.62, %if.then.56
  store %struct._object* null, %struct._object** %res, align 8
  br label %done

done:                                             ; preds = %error, %for.end.125, %for.end.107
  br label %do.body.126

do.body.126:                                      ; preds = %done
  %132 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %132, %struct._object** %_py_decref_tmp127, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  %ob_refcnt128 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 0
  %134 = load i64, i64* %ob_refcnt128, align 8
  %dec129 = add i64 %134, -1
  store i64 %dec129, i64* %ob_refcnt128, align 8
  %cmp130 = icmp ne i64 %dec129, 0
  br i1 %cmp130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %do.body.126
  br label %if.end.135

if.else.132:                                      ; preds = %do.body.126
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  %ob_type133 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 1
  %136 = load %struct._typeobject*, %struct._typeobject** %ob_type133, align 8
  %tp_dealloc134 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %136, i32 0, i32 4
  %137 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc134, align 8
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  call void %137(%struct._object* %138)
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.131
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  store i64 0, i64* %i, align 8
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.141, %do.end.136
  %139 = load i64, i64* %i, align 8
  %140 = load i64, i64* %nbufs, align 8
  %cmp138 = icmp slt i64 %139, %140
  br i1 %cmp138, label %for.body.139, label %for.end.143

for.body.139:                                     ; preds = %for.cond.137
  %141 = load i64, i64* %i, align 8
  %142 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx140 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %142, i64 %141
  call void @PyBuffer_Release(%struct.bufferinfo* %arrayidx140)
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.body.139
  %143 = load i64, i64* %i, align 8
  %inc142 = add i64 %143, 1
  store i64 %inc142, i64* %i, align 8
  br label %for.cond.137

for.end.143:                                      ; preds = %for.cond.137
  %144 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arraydecay144 = getelementptr inbounds [10 x %struct.bufferinfo], [10 x %struct.bufferinfo]* %static_buffers, i32 0, i32 0
  %cmp145 = icmp ne %struct.bufferinfo* %144, %arraydecay144
  br i1 %cmp145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %for.end.143
  %145 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %146 = bitcast %struct.bufferinfo* %145 to i8*
  call void @PyMem_Free(i8* %146)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %for.end.143
  %147 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %147, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.147, %do.end.37, %do.end, %if.then
  %148 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %148
}

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #1

declare i8* @PyMem_Malloc(i64) #1

declare void @PyMem_Free(i8*) #1

declare void @_Py_bytes_lower(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @lstrip_helper(i8* %myptr, i64 %mysize, i8* %argptr, i64 %argsize) #0 {
entry:
  %myptr.addr = alloca i8*, align 8
  %mysize.addr = alloca i64, align 8
  %argptr.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %myptr, i8** %myptr.addr, align 8
  store i64 %mysize, i64* %mysize.addr, align 8
  store i8* %argptr, i8** %argptr.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %mysize.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %argptr.addr, align 8
  %3 = load i64, i64* %i, align 8
  %4 = load i8*, i8** %myptr.addr, align 8
  %arrayidx = getelementptr i8, i8* %4, i64 %3
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @memchr(i8* %2, i32 %conv, i64 %6) #7
  %tobool = icmp ne i8* %call, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i64, i64* %i, align 8
  ret i64 %9
}

declare %struct._object* @_Py_bytes_maketrans(%struct._object*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_partition(%struct._object* %str_obj, i8* %str, i64 %str_len, %struct._object* %sep_obj, i8* %sep, i64 %sep_len) #3 {
entry:
  %retval = alloca %struct._object*, align 8
  %str_obj.addr = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %sep_obj.addr = alloca %struct._object*, align 8
  %sep.addr = alloca i8*, align 8
  %sep_len.addr = alloca i64, align 8
  %out = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %str_obj, %struct._object** %str_obj.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store %struct._object* %sep_obj, %struct._object** %sep_obj.addr, align 8
  store i8* %sep, i8** %sep.addr, align 8
  store i64 %sep_len, i64* %sep_len.addr, align 8
  %0 = load i64, i64* %sep_len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._object* @PyTuple_New(i64 3)
  store %struct._object* %call, %struct._object** %out, align 8
  %2 = load %struct._object*, %struct._object** %out, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i64, i64* %str_len.addr, align 8
  %5 = load i8*, i8** %sep.addr, align 8
  %6 = load i64, i64* %sep_len.addr, align 8
  %call3 = call i64 @fastsearch(i8* %3, i64 %4, i8* %5, i64 %6, i64 -1, i32 1)
  store i64 %call3, i64* %pos, align 8
  %7 = load i64, i64* %pos, align 8
  %cmp4 = icmp slt i64 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.20

if.then.5:                                        ; preds = %if.end.2
  %8 = load i8*, i8** %str.addr, align 8
  %9 = load i64, i64* %str_len.addr, align 8
  %call6 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %8, i64 %9)
  %10 = load %struct._object*, %struct._object** %out, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %call6, %struct._object** %arrayidx, align 8
  %call7 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 0)
  %12 = load %struct._object*, %struct._object** %out, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item8 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item8, i32 0, i64 1
  store %struct._object* %call7, %struct._object** %arrayidx9, align 8
  %call10 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 0)
  %14 = load %struct._object*, %struct._object** %out, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item11 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx12 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item11, i32 0, i64 2
  store %struct._object* %call10, %struct._object** %arrayidx12, align 8
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool14 = icmp ne %struct._object* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.then.5
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %16 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.5
  %23 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.2
  %24 = load i8*, i8** %str.addr, align 8
  %25 = load i64, i64* %pos, align 8
  %call21 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %24, i64 %25)
  %26 = load %struct._object*, %struct._object** %out, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*
  %ob_item22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item22, i32 0, i64 0
  store %struct._object* %call21, %struct._object** %arrayidx23, align 8
  %28 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt24, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %ob_refcnt24, align 8
  %30 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %31 = load %struct._object*, %struct._object** %out, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*
  %ob_item25 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1
  %arrayidx26 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item25, i32 0, i64 1
  store %struct._object* %30, %struct._object** %arrayidx26, align 8
  %33 = load i64, i64* %sep_len.addr, align 8
  %34 = load i64, i64* %pos, align 8
  %add = add i64 %34, %33
  store i64 %add, i64* %pos, align 8
  %35 = load i8*, i8** %str.addr, align 8
  %36 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr i8, i8* %35, i64 %36
  %37 = load i64, i64* %str_len.addr, align 8
  %38 = load i64, i64* %pos, align 8
  %sub = sub i64 %37, %38
  %call27 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub)
  %39 = load %struct._object*, %struct._object** %out, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*
  %ob_item28 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1
  %arrayidx29 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item28, i32 0, i64 2
  store %struct._object* %call27, %struct._object** %arrayidx29, align 8
  %call30 = call %struct._object* @PyErr_Occurred()
  %tobool31 = icmp ne %struct._object* %call30, null
  br i1 %tobool31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %if.end.20
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %41 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp34, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %43, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %46(%struct._object* %47)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.20
  %48 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %48, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.44, %do.end.43, %if.end.19, %do.end, %if.then.1, %if.then
  %49 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %49
}

declare %struct._object* @PyTuple_New(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.PyByteArrayObject* @replace(%struct.PyByteArrayObject* %self, i8* %from_s, i64 %from_len, i8* %to_s, i64 %to_len, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyByteArrayObject*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %from_s.addr = alloca i8*, align 8
  %from_len.addr = alloca i64, align 8
  %to_s.addr = alloca i8*, align 8
  %to_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i8* %from_s, i8** %from_s.addr, align 8
  store i64 %from_len, i64* %from_len.addr, align 8
  store i8* %to_s, i8** %to_s.addr, align 8
  store i64 %to_len, i64* %to_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load i64, i64* %maxcount.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, i64* %maxcount.addr, align 8
  br label %if.end.4

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %maxcount.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %2 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %3 = bitcast %struct.PyByteArrayObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %lor.lhs.false, %if.else
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call = call %struct.PyByteArrayObject* @return_self(%struct.PyByteArrayObject* %5)
  store %struct.PyByteArrayObject* %call, %struct.PyByteArrayObject** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %6 = load i64, i64* %maxcount.addr, align 8
  %cmp5 = icmp eq i64 %6, 0
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.end.4
  %7 = load i64, i64* %from_len.addr, align 8
  %cmp7 = icmp eq i64 %7, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %lor.lhs.false.6
  %8 = load i64, i64* %to_len.addr, align 8
  %cmp8 = icmp eq i64 %8, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true, %if.end.4
  %9 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call10 = call %struct.PyByteArrayObject* @return_self(%struct.PyByteArrayObject* %9)
  store %struct.PyByteArrayObject* %call10, %struct.PyByteArrayObject** %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %lor.lhs.false.6
  %10 = load i64, i64* %from_len.addr, align 8
  %cmp12 = icmp eq i64 %10, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %11 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %12 = load i8*, i8** %to_s.addr, align 8
  %13 = load i64, i64* %to_len.addr, align 8
  %14 = load i64, i64* %maxcount.addr, align 8
  %call14 = call %struct.PyByteArrayObject* @replace_interleave(%struct.PyByteArrayObject* %11, i8* %12, i64 %13, i64 %14)
  store %struct.PyByteArrayObject* %call14, %struct.PyByteArrayObject** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %15 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %16 = bitcast %struct.PyByteArrayObject* %15 to %struct.PyVarObject*
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size16, align 8
  %cmp17 = icmp eq i64 %17, 0
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %18 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call19 = call %struct.PyByteArrayObject* @return_self(%struct.PyByteArrayObject* %18)
  store %struct.PyByteArrayObject* %call19, %struct.PyByteArrayObject** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %19 = load i64, i64* %to_len.addr, align 8
  %cmp21 = icmp eq i64 %19, 0
  br i1 %cmp21, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.end.20
  %20 = load i64, i64* %from_len.addr, align 8
  %cmp23 = icmp eq i64 %20, 1
  br i1 %cmp23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.then.22
  %21 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %22 = load i8*, i8** %from_s.addr, align 8
  %arrayidx = getelementptr i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx, align 1
  %24 = load i64, i64* %maxcount.addr, align 8
  %call25 = call %struct.PyByteArrayObject* @replace_delete_single_character(%struct.PyByteArrayObject* %21, i8 signext %23, i64 %24)
  store %struct.PyByteArrayObject* %call25, %struct.PyByteArrayObject** %retval
  br label %return

if.else.26:                                       ; preds = %if.then.22
  %25 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %26 = load i8*, i8** %from_s.addr, align 8
  %27 = load i64, i64* %from_len.addr, align 8
  %28 = load i64, i64* %maxcount.addr, align 8
  %call27 = call %struct.PyByteArrayObject* @replace_delete_substring(%struct.PyByteArrayObject* %25, i8* %26, i64 %27, i64 %28)
  store %struct.PyByteArrayObject* %call27, %struct.PyByteArrayObject** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.20
  %29 = load i64, i64* %from_len.addr, align 8
  %30 = load i64, i64* %to_len.addr, align 8
  %cmp29 = icmp eq i64 %29, %30
  br i1 %cmp29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.end.28
  %31 = load i64, i64* %from_len.addr, align 8
  %cmp31 = icmp eq i64 %31, 1
  br i1 %cmp31, label %if.then.32, label %if.else.36

if.then.32:                                       ; preds = %if.then.30
  %32 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %33 = load i8*, i8** %from_s.addr, align 8
  %arrayidx33 = getelementptr i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx33, align 1
  %35 = load i8*, i8** %to_s.addr, align 8
  %arrayidx34 = getelementptr i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx34, align 1
  %37 = load i64, i64* %maxcount.addr, align 8
  %call35 = call %struct.PyByteArrayObject* @replace_single_character_in_place(%struct.PyByteArrayObject* %32, i8 signext %34, i8 signext %36, i64 %37)
  store %struct.PyByteArrayObject* %call35, %struct.PyByteArrayObject** %retval
  br label %return

if.else.36:                                       ; preds = %if.then.30
  %38 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %39 = load i8*, i8** %from_s.addr, align 8
  %40 = load i64, i64* %from_len.addr, align 8
  %41 = load i8*, i8** %to_s.addr, align 8
  %42 = load i64, i64* %to_len.addr, align 8
  %43 = load i64, i64* %maxcount.addr, align 8
  %call37 = call %struct.PyByteArrayObject* @replace_substring_in_place(%struct.PyByteArrayObject* %38, i8* %39, i64 %40, i8* %41, i64 %42, i64 %43)
  store %struct.PyByteArrayObject* %call37, %struct.PyByteArrayObject** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.28
  %44 = load i64, i64* %from_len.addr, align 8
  %cmp39 = icmp eq i64 %44, 1
  br i1 %cmp39, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %if.end.38
  %45 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %46 = load i8*, i8** %from_s.addr, align 8
  %arrayidx41 = getelementptr i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx41, align 1
  %48 = load i8*, i8** %to_s.addr, align 8
  %49 = load i64, i64* %to_len.addr, align 8
  %50 = load i64, i64* %maxcount.addr, align 8
  %call42 = call %struct.PyByteArrayObject* @replace_single_character(%struct.PyByteArrayObject* %45, i8 signext %47, i8* %48, i64 %49, i64 %50)
  store %struct.PyByteArrayObject* %call42, %struct.PyByteArrayObject** %retval
  br label %return

if.else.43:                                       ; preds = %if.end.38
  %51 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %52 = load i8*, i8** %from_s.addr, align 8
  %53 = load i64, i64* %from_len.addr, align 8
  %54 = load i8*, i8** %to_s.addr, align 8
  %55 = load i64, i64* %to_len.addr, align 8
  %56 = load i64, i64* %maxcount.addr, align 8
  %call44 = call %struct.PyByteArrayObject* @replace_substring(%struct.PyByteArrayObject* %51, i8* %52, i64 %53, i8* %54, i64 %55, i64 %56)
  store %struct.PyByteArrayObject* %call44, %struct.PyByteArrayObject** %retval
  br label %return

return:                                           ; preds = %if.else.43, %if.then.40, %if.else.36, %if.then.32, %if.else.26, %if.then.24, %if.then.18, %if.then.13, %if.then.9, %if.then.3
  %57 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %retval
  ret %struct.PyByteArrayObject* %57
}

; Function Attrs: nounwind uwtable
define internal %struct.PyByteArrayObject* @return_self(%struct.PyByteArrayObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %3, i32 0, i32 3
  %4 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %6 = bitcast %struct.PyByteArrayObject* %5 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size1, align 8
  %call = call %struct._object* @PyByteArray_FromStringAndSize(i8* %cond, i64 %7)
  %8 = bitcast %struct._object* %call to %struct.PyByteArrayObject*
  ret %struct.PyByteArrayObject* %8
}

; Function Attrs: nounwind uwtable
define internal %struct.PyByteArrayObject* @replace_interleave(%struct.PyByteArrayObject* %self, i8* %to_s, i64 %to_len, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyByteArrayObject*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %to_s.addr = alloca i8*, align 8
  %to_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  %self_s = alloca i8*, align 8
  %result_s = alloca i8*, align 8
  %self_len = alloca i64, align 8
  %result_len = alloca i64, align 8
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %result = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i8* %to_s, i8** %to_s.addr, align 8
  store i64 %to_len, i64* %to_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %self_len, align 8
  %3 = load i64, i64* %maxcount.addr, align 8
  %4 = load i64, i64* %self_len, align 8
  %cmp = icmp sle i64 %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %maxcount.addr, align 8
  store i64 %5, i64* %count, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %self_len, align 8
  %add = add i64 %6, 1
  store i64 %add, i64* %count, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i64, i64* %to_len.addr, align 8
  %8 = load i64, i64* %self_len, align 8
  %sub = sub i64 9223372036854775807, %8
  %9 = load i64, i64* %count, align 8
  %div = sdiv i64 %sub, %9
  %cmp1 = icmp sgt i64 %7, %div
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.104, i32 0, i32 0))
  store %struct.PyByteArrayObject* null, %struct.PyByteArrayObject** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %11 = load i64, i64* %count, align 8
  %12 = load i64, i64* %to_len.addr, align 8
  %mul = mul i64 %11, %12
  %13 = load i64, i64* %self_len, align 8
  %add4 = add i64 %mul, %13
  store i64 %add4, i64* %result_len, align 8
  %14 = load i64, i64* %result_len, align 8
  %call = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %14)
  %15 = bitcast %struct._object* %call to %struct.PyByteArrayObject*
  store %struct.PyByteArrayObject* %15, %struct.PyByteArrayObject** %result, align 8
  %tobool = icmp ne %struct.PyByteArrayObject* %15, null
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store %struct.PyByteArrayObject* null, %struct.PyByteArrayObject** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %16 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %17 = bitcast %struct.PyByteArrayObject* %16 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size7, align 8
  %tobool8 = icmp ne i64 %18, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %19 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %19, i32 0, i32 3
  %20 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %20, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %self_s, align 8
  %21 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %22 = bitcast %struct.PyByteArrayObject* %21 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %22, i32 0, i32 1
  %23 = load i64, i64* %ob_size9, align 8
  %tobool10 = icmp ne i64 %23, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %cond.end
  %24 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %ob_start12 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %24, i32 0, i32 3
  %25 = load i8*, i8** %ob_start12, align 8
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.11
  %cond15 = phi i8* [ %25, %cond.true.11 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.13 ]
  store i8* %cond15, i8** %result_s, align 8
  %26 = load i8*, i8** %result_s, align 8
  %27 = load i8*, i8** %to_s.addr, align 8
  %28 = load i64, i64* %to_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 %28, i32 1, i1 false)
  %29 = load i64, i64* %to_len.addr, align 8
  %30 = load i8*, i8** %result_s, align 8
  %add.ptr = getelementptr i8, i8* %30, i64 %29
  store i8* %add.ptr, i8** %result_s, align 8
  %31 = load i64, i64* %count, align 8
  %sub16 = sub i64 %31, 1
  store i64 %sub16, i64* %count, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.14
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %count, align 8
  %cmp17 = icmp slt i64 %32, %33
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i8*, i8** %self_s, align 8
  %incdec.ptr = getelementptr i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %self_s, align 8
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %result_s, align 8
  %incdec.ptr18 = getelementptr i8, i8* %36, i32 1
  store i8* %incdec.ptr18, i8** %result_s, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %result_s, align 8
  %38 = load i8*, i8** %to_s.addr, align 8
  %39 = load i64, i64* %to_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %39, i32 1, i1 false)
  %40 = load i64, i64* %to_len.addr, align 8
  %41 = load i8*, i8** %result_s, align 8
  %add.ptr19 = getelementptr i8, i8* %41, i64 %40
  store i8* %add.ptr19, i8** %result_s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i64, i64* %i, align 8
  %inc = add i64 %42, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i8*, i8** %result_s, align 8
  %44 = load i8*, i8** %self_s, align 8
  %45 = load i64, i64* %self_len, align 8
  %46 = load i64, i64* %i, align 8
  %sub20 = sub i64 %45, %46
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 %sub20, i32 1, i1 false)
  %47 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  store %struct.PyByteArrayObject* %47, %struct.PyByteArrayObject** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then.2
  %48 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %retval
  ret %struct.PyByteArrayObject* %48
}

; Function Attrs: nounwind uwtable
define internal %struct.PyByteArrayObject* @replace_delete_single_character(%struct.PyByteArrayObject* %self, i8 signext %from_c, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyByteArrayObject*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %from_c.addr = alloca i8, align 1
  %maxcount.addr = alloca i64, align 8
  %self_s = alloca i8*, align 8
  %result_s = alloca i8*, align 8
  %start = alloca i8*, align 8
  %next = alloca i8*, align 8
  %end = alloca i8*, align 8
  %self_len = alloca i64, align 8
  %result_len = alloca i64, align 8
  %count = alloca i64, align 8
  %result = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i8 %from_c, i8* %from_c.addr, align 1
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %self_len, align 8
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %4 = bitcast %struct.PyByteArrayObject* %3 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size1, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %6, i32 0, i32 3
  %7 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %self_s, align 8
  %8 = load i8*, i8** %self_s, align 8
  %9 = load i64, i64* %self_len, align 8
  %10 = load i8, i8* %from_c.addr, align 1
  %11 = load i64, i64* %maxcount.addr, align 8
  %call = call i64 @countchar(i8* %8, i64 %9, i8 signext %10, i64 %11)
  store i64 %call, i64* %count, align 8
  %12 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %13 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call2 = call %struct.PyByteArrayObject* @return_self(%struct.PyByteArrayObject* %13)
  store %struct.PyByteArrayObject* %call2, %struct.PyByteArrayObject** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %14 = load i64, i64* %self_len, align 8
  %15 = load i64, i64* %count, align 8
  %sub = sub i64 %14, %15
  store i64 %sub, i64* %result_len, align 8
  %16 = load i64, i64* %result_len, align 8
  %call3 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %16)
  %17 = bitcast %struct._object* %call3 to %struct.PyByteArrayObject*
  store %struct.PyByteArrayObject* %17, %struct.PyByteArrayObject** %result, align 8
  %cmp4 = icmp eq %struct.PyByteArrayObject* %17, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct.PyByteArrayObject* null, %struct.PyByteArrayObject** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %18 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %19 = bitcast %struct.PyByteArrayObject* %18 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size7, align 8
  %tobool8 = icmp ne i64 %20, 0
  br i1 %tobool8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %if.end.6
  %21 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %ob_start10 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %21, i32 0, i32 3
  %22 = load i8*, i8** %ob_start10, align 8
  br label %cond.end.12

cond.false.11:                                    ; preds = %if.end.6
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.9
  %cond13 = phi i8* [ %22, %cond.true.9 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.11 ]
  store i8* %cond13, i8** %result_s, align 8
  %23 = load i8*, i8** %self_s, align 8
  store i8* %23, i8** %start, align 8
  %24 = load i8*, i8** %self_s, align 8
  %25 = load i64, i64* %self_len, align 8
  %add.ptr = getelementptr i8, i8* %24, i64 %25
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %cond.end.12
  %26 = load i64, i64* %count, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %count, align 8
  %cmp14 = icmp sgt i64 %26, 0
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i8*, i8** %start, align 8
  %28 = load i8, i8* %from_c.addr, align 1
  %conv = sext i8 %28 to i32
  %29 = load i8*, i8** %end, align 8
  %30 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call15 = call i8* @memchr(i8* %27, i32 %conv, i64 %sub.ptr.sub) #7
  store i8* %call15, i8** %next, align 8
  %31 = load i8*, i8** %next, align 8
  %cmp16 = icmp eq i8* %31, null
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.body
  br label %while.end

if.end.19:                                        ; preds = %while.body
  %32 = load i8*, i8** %result_s, align 8
  %33 = load i8*, i8** %start, align 8
  %34 = load i8*, i8** %next, align 8
  %35 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast20 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %35 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 %sub.ptr.sub22, i32 1, i1 false)
  %36 = load i8*, i8** %next, align 8
  %37 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast23 = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %37 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %38 = load i8*, i8** %result_s, align 8
  %add.ptr26 = getelementptr i8, i8* %38, i64 %sub.ptr.sub25
  store i8* %add.ptr26, i8** %result_s, align 8
  %39 = load i8*, i8** %next, align 8
  %add.ptr27 = getelementptr i8, i8* %39, i64 1
  store i8* %add.ptr27, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.18, %while.cond
  %40 = load i8*, i8** %result_s, align 8
  %41 = load i8*, i8** %start, align 8
  %42 = load i8*, i8** %end, align 8
  %43 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast28 = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast29 = ptrtoint i8* %43 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 %sub.ptr.sub30, i32 1, i1 false)
  %44 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  store %struct.PyByteArrayObject* %44, %struct.PyByteArrayObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.5, %if.then
  %45 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %retval
  ret %struct.PyByteArrayObject* %45
}

; Function Attrs: nounwind uwtable
define internal %struct.PyByteArrayObject* @replace_delete_substring(%struct.PyByteArrayObject* %self, i8* %from_s, i64 %from_len, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyByteArrayObject*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %from_s.addr = alloca i8*, align 8
  %from_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  %self_s = alloca i8*, align 8
  %result_s = alloca i8*, align 8
  %start = alloca i8*, align 8
  %next = alloca i8*, align 8
  %end = alloca i8*, align 8
  %self_len = alloca i64, align 8
  %result_len = alloca i64, align 8
  %count = alloca i64, align 8
  %offset = alloca i64, align 8
  %result = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i8* %from_s, i8** %from_s.addr, align 8
  store i64 %from_len, i64* %from_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %self_len, align 8
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %4 = bitcast %struct.PyByteArrayObject* %3 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size1, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %6, i32 0, i32 3
  %7 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %self_s, align 8
  %8 = load i8*, i8** %self_s, align 8
  %9 = load i64, i64* %self_len, align 8
  %10 = load i8*, i8** %from_s.addr, align 8
  %11 = load i64, i64* %from_len.addr, align 8
  %12 = load i64, i64* %maxcount.addr, align 8
  %call = call i64 @stringlib_count(i8* %8, i64 %9, i8* %10, i64 %11, i64 %12)
  store i64 %call, i64* %count, align 8
  %13 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %14 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call2 = call %struct.PyByteArrayObject* @return_self(%struct.PyByteArrayObject* %14)
  store %struct.PyByteArrayObject* %call2, %struct.PyByteArrayObject** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %15 = load i64, i64* %self_len, align 8
  %16 = load i64, i64* %count, align 8
  %17 = load i64, i64* %from_len.addr, align 8
  %mul = mul i64 %16, %17
  %sub = sub i64 %15, %mul
  store i64 %sub, i64* %result_len, align 8
  %18 = load i64, i64* %result_len, align 8
  %call3 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %18)
  %19 = bitcast %struct._object* %call3 to %struct.PyByteArrayObject*
  store %struct.PyByteArrayObject* %19, %struct.PyByteArrayObject** %result, align 8
  %cmp4 = icmp eq %struct.PyByteArrayObject* %19, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct.PyByteArrayObject* null, %struct.PyByteArrayObject** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %20 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %21 = bitcast %struct.PyByteArrayObject* %20 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size7, align 8
  %tobool8 = icmp ne i64 %22, 0
  br i1 %tobool8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %if.end.6
  %23 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %ob_start10 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %23, i32 0, i32 3
  %24 = load i8*, i8** %ob_start10, align 8
  br label %cond.end.12

cond.false.11:                                    ; preds = %if.end.6
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.9
  %cond13 = phi i8* [ %24, %cond.true.9 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.11 ]
  store i8* %cond13, i8** %result_s, align 8
  %25 = load i8*, i8** %self_s, align 8
  store i8* %25, i8** %start, align 8
  %26 = load i8*, i8** %self_s, align 8
  %27 = load i64, i64* %self_len, align 8
  %add.ptr = getelementptr i8, i8* %26, i64 %27
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %cond.end.12
  %28 = load i64, i64* %count, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %count, align 8
  %cmp14 = icmp sgt i64 %28, 0
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i8*, i8** %start, align 8
  %30 = load i8*, i8** %end, align 8
  %31 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %32 = load i8*, i8** %from_s.addr, align 8
  %33 = load i64, i64* %from_len.addr, align 8
  %call15 = call i64 @stringlib_find(i8* %29, i64 %sub.ptr.sub, i8* %32, i64 %33, i64 0)
  store i64 %call15, i64* %offset, align 8
  %34 = load i64, i64* %offset, align 8
  %cmp16 = icmp eq i64 %34, -1
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body
  br label %while.end

if.end.18:                                        ; preds = %while.body
  %35 = load i8*, i8** %start, align 8
  %36 = load i64, i64* %offset, align 8
  %add.ptr19 = getelementptr i8, i8* %35, i64 %36
  store i8* %add.ptr19, i8** %next, align 8
  %37 = load i8*, i8** %result_s, align 8
  %38 = load i8*, i8** %start, align 8
  %39 = load i8*, i8** %next, align 8
  %40 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast20 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %40 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %sub.ptr.sub22, i32 1, i1 false)
  %41 = load i8*, i8** %next, align 8
  %42 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast23 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %42 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %43 = load i8*, i8** %result_s, align 8
  %add.ptr26 = getelementptr i8, i8* %43, i64 %sub.ptr.sub25
  store i8* %add.ptr26, i8** %result_s, align 8
  %44 = load i8*, i8** %next, align 8
  %45 = load i64, i64* %from_len.addr, align 8
  %add.ptr27 = getelementptr i8, i8* %44, i64 %45
  store i8* %add.ptr27, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.17, %while.cond
  %46 = load i8*, i8** %result_s, align 8
  %47 = load i8*, i8** %start, align 8
  %48 = load i8*, i8** %end, align 8
  %49 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast28 = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast29 = ptrtoint i8* %49 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 %sub.ptr.sub30, i32 1, i1 false)
  %50 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  store %struct.PyByteArrayObject* %50, %struct.PyByteArrayObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.5, %if.then
  %51 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %retval
  ret %struct.PyByteArrayObject* %51
}

; Function Attrs: nounwind uwtable
define internal %struct.PyByteArrayObject* @replace_single_character_in_place(%struct.PyByteArrayObject* %self, i8 signext %from_c, i8 signext %to_c, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyByteArrayObject*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %from_c.addr = alloca i8, align 1
  %to_c.addr = alloca i8, align 1
  %maxcount.addr = alloca i64, align 8
  %self_s = alloca i8*, align 8
  %result_s = alloca i8*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %next = alloca i8*, align 8
  %self_len = alloca i64, align 8
  %result = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i8 %from_c, i8* %from_c.addr, align 1
  store i8 %to_c, i8* %to_c.addr, align 1
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %3, i32 0, i32 3
  %4 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %self_s, align 8
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %6 = bitcast %struct.PyByteArrayObject* %5 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size1, align 8
  store i64 %7, i64* %self_len, align 8
  %8 = load i8*, i8** %self_s, align 8
  %9 = load i8, i8* %from_c.addr, align 1
  %conv = sext i8 %9 to i32
  %10 = load i64, i64* %self_len, align 8
  %call = call i8* @memchr(i8* %8, i32 %conv, i64 %10) #7
  store i8* %call, i8** %next, align 8
  %11 = load i8*, i8** %next, align 8
  %cmp = icmp eq i8* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call3 = call %struct.PyByteArrayObject* @return_self(%struct.PyByteArrayObject* %12)
  store %struct.PyByteArrayObject* %call3, %struct.PyByteArrayObject** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %13 = load i64, i64* %self_len, align 8
  %call4 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %13)
  %14 = bitcast %struct._object* %call4 to %struct.PyByteArrayObject*
  store %struct.PyByteArrayObject* %14, %struct.PyByteArrayObject** %result, align 8
  %15 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %cmp5 = icmp eq %struct.PyByteArrayObject* %15, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store %struct.PyByteArrayObject* null, %struct.PyByteArrayObject** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %16 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %17 = bitcast %struct.PyByteArrayObject* %16 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size9, align 8
  %tobool10 = icmp ne i64 %18, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %if.end.8
  %19 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %ob_start12 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %19, i32 0, i32 3
  %20 = load i8*, i8** %ob_start12, align 8
  br label %cond.end.14

cond.false.13:                                    ; preds = %if.end.8
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.11
  %cond15 = phi i8* [ %20, %cond.true.11 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.13 ]
  store i8* %cond15, i8** %result_s, align 8
  %21 = load i8*, i8** %result_s, align 8
  %22 = load i8*, i8** %self_s, align 8
  %23 = load i64, i64* %self_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 %23, i32 1, i1 false)
  %24 = load i8*, i8** %result_s, align 8
  %25 = load i8*, i8** %next, align 8
  %26 = load i8*, i8** %self_s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr i8, i8* %24, i64 %sub.ptr.sub
  store i8* %add.ptr, i8** %start, align 8
  %27 = load i8, i8* %to_c.addr, align 1
  %28 = load i8*, i8** %start, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i8*, i8** %start, align 8
  %incdec.ptr = getelementptr i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %start, align 8
  %30 = load i8*, i8** %result_s, align 8
  %31 = load i64, i64* %self_len, align 8
  %add.ptr16 = getelementptr i8, i8* %30, i64 %31
  store i8* %add.ptr16, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %cond.end.14
  %32 = load i64, i64* %maxcount.addr, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %maxcount.addr, align 8
  %cmp17 = icmp sgt i64 %dec, 0
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i8*, i8** %start, align 8
  %34 = load i8, i8* %from_c.addr, align 1
  %conv19 = sext i8 %34 to i32
  %35 = load i8*, i8** %end, align 8
  %36 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast20 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %36 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %call23 = call i8* @memchr(i8* %33, i32 %conv19, i64 %sub.ptr.sub22) #7
  store i8* %call23, i8** %next, align 8
  %37 = load i8*, i8** %next, align 8
  %cmp24 = icmp eq i8* %37, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %while.body
  br label %while.end

if.end.27:                                        ; preds = %while.body
  %38 = load i8, i8* %to_c.addr, align 1
  %39 = load i8*, i8** %next, align 8
  store i8 %38, i8* %39, align 1
  %40 = load i8*, i8** %next, align 8
  %add.ptr28 = getelementptr i8, i8* %40, i64 1
  store i8* %add.ptr28, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.26, %while.cond
  %41 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  store %struct.PyByteArrayObject* %41, %struct.PyByteArrayObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.7, %if.then
  %42 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %retval
  ret %struct.PyByteArrayObject* %42
}

; Function Attrs: nounwind uwtable
define internal %struct.PyByteArrayObject* @replace_substring_in_place(%struct.PyByteArrayObject* %self, i8* %from_s, i64 %from_len, i8* %to_s, i64 %to_len, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyByteArrayObject*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %from_s.addr = alloca i8*, align 8
  %from_len.addr = alloca i64, align 8
  %to_s.addr = alloca i8*, align 8
  %to_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  %result_s = alloca i8*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %self_s = alloca i8*, align 8
  %self_len = alloca i64, align 8
  %offset = alloca i64, align 8
  %result = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i8* %from_s, i8** %from_s.addr, align 8
  store i64 %from_len, i64* %from_len.addr, align 8
  store i8* %to_s, i8** %to_s.addr, align 8
  store i64 %to_len, i64* %to_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %3, i32 0, i32 3
  %4 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %self_s, align 8
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %6 = bitcast %struct.PyByteArrayObject* %5 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size1, align 8
  store i64 %7, i64* %self_len, align 8
  %8 = load i8*, i8** %self_s, align 8
  %9 = load i64, i64* %self_len, align 8
  %10 = load i8*, i8** %from_s.addr, align 8
  %11 = load i64, i64* %from_len.addr, align 8
  %call = call i64 @stringlib_find(i8* %8, i64 %9, i8* %10, i64 %11, i64 0)
  store i64 %call, i64* %offset, align 8
  %12 = load i64, i64* %offset, align 8
  %cmp = icmp eq i64 %12, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %13 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call2 = call %struct.PyByteArrayObject* @return_self(%struct.PyByteArrayObject* %13)
  store %struct.PyByteArrayObject* %call2, %struct.PyByteArrayObject** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %14 = load i64, i64* %self_len, align 8
  %call3 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %14)
  %15 = bitcast %struct._object* %call3 to %struct.PyByteArrayObject*
  store %struct.PyByteArrayObject* %15, %struct.PyByteArrayObject** %result, align 8
  %16 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %cmp4 = icmp eq %struct.PyByteArrayObject* %16, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct.PyByteArrayObject* null, %struct.PyByteArrayObject** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %17 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %18 = bitcast %struct.PyByteArrayObject* %17 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size7, align 8
  %tobool8 = icmp ne i64 %19, 0
  br i1 %tobool8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %if.end.6
  %20 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %ob_start10 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %20, i32 0, i32 3
  %21 = load i8*, i8** %ob_start10, align 8
  br label %cond.end.12

cond.false.11:                                    ; preds = %if.end.6
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.9
  %cond13 = phi i8* [ %21, %cond.true.9 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.11 ]
  store i8* %cond13, i8** %result_s, align 8
  %22 = load i8*, i8** %result_s, align 8
  %23 = load i8*, i8** %self_s, align 8
  %24 = load i64, i64* %self_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 %24, i32 1, i1 false)
  %25 = load i8*, i8** %result_s, align 8
  %26 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %25, i64 %26
  store i8* %add.ptr, i8** %start, align 8
  %27 = load i8*, i8** %start, align 8
  %28 = load i8*, i8** %to_s.addr, align 8
  %29 = load i64, i64* %from_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 %29, i32 1, i1 false)
  %30 = load i64, i64* %from_len.addr, align 8
  %31 = load i8*, i8** %start, align 8
  %add.ptr14 = getelementptr i8, i8* %31, i64 %30
  store i8* %add.ptr14, i8** %start, align 8
  %32 = load i8*, i8** %result_s, align 8
  %33 = load i64, i64* %self_len, align 8
  %add.ptr15 = getelementptr i8, i8* %32, i64 %33
  store i8* %add.ptr15, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %cond.end.12
  %34 = load i64, i64* %maxcount.addr, align 8
  %dec = add i64 %34, -1
  store i64 %dec, i64* %maxcount.addr, align 8
  %cmp16 = icmp sgt i64 %dec, 0
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i8*, i8** %start, align 8
  %36 = load i8*, i8** %end, align 8
  %37 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %38 = load i8*, i8** %from_s.addr, align 8
  %39 = load i64, i64* %from_len.addr, align 8
  %call17 = call i64 @stringlib_find(i8* %35, i64 %sub.ptr.sub, i8* %38, i64 %39, i64 0)
  store i64 %call17, i64* %offset, align 8
  %40 = load i64, i64* %offset, align 8
  %cmp18 = icmp eq i64 %40, -1
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.body
  br label %while.end

if.end.20:                                        ; preds = %while.body
  %41 = load i8*, i8** %start, align 8
  %42 = load i64, i64* %offset, align 8
  %add.ptr21 = getelementptr i8, i8* %41, i64 %42
  %43 = load i8*, i8** %to_s.addr, align 8
  %44 = load i64, i64* %from_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr21, i8* %43, i64 %44, i32 1, i1 false)
  %45 = load i64, i64* %offset, align 8
  %46 = load i64, i64* %from_len.addr, align 8
  %add = add i64 %45, %46
  %47 = load i8*, i8** %start, align 8
  %add.ptr22 = getelementptr i8, i8* %47, i64 %add
  store i8* %add.ptr22, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.19, %while.cond
  %48 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  store %struct.PyByteArrayObject* %48, %struct.PyByteArrayObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.5, %if.then
  %49 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %retval
  ret %struct.PyByteArrayObject* %49
}

; Function Attrs: nounwind uwtable
define internal %struct.PyByteArrayObject* @replace_single_character(%struct.PyByteArrayObject* %self, i8 signext %from_c, i8* %to_s, i64 %to_len, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyByteArrayObject*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %from_c.addr = alloca i8, align 1
  %to_s.addr = alloca i8*, align 8
  %to_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  %self_s = alloca i8*, align 8
  %result_s = alloca i8*, align 8
  %start = alloca i8*, align 8
  %next = alloca i8*, align 8
  %end = alloca i8*, align 8
  %self_len = alloca i64, align 8
  %result_len = alloca i64, align 8
  %count = alloca i64, align 8
  %result = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i8 %from_c, i8* %from_c.addr, align 1
  store i8* %to_s, i8** %to_s.addr, align 8
  store i64 %to_len, i64* %to_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %3, i32 0, i32 3
  %4 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %self_s, align 8
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %6 = bitcast %struct.PyByteArrayObject* %5 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size1, align 8
  store i64 %7, i64* %self_len, align 8
  %8 = load i8*, i8** %self_s, align 8
  %9 = load i64, i64* %self_len, align 8
  %10 = load i8, i8* %from_c.addr, align 1
  %11 = load i64, i64* %maxcount.addr, align 8
  %call = call i64 @countchar(i8* %8, i64 %9, i8 signext %10, i64 %11)
  store i64 %call, i64* %count, align 8
  %12 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %13 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call2 = call %struct.PyByteArrayObject* @return_self(%struct.PyByteArrayObject* %13)
  store %struct.PyByteArrayObject* %call2, %struct.PyByteArrayObject** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %14 = load i64, i64* %to_len.addr, align 8
  %sub = sub i64 %14, 1
  %15 = load i64, i64* %self_len, align 8
  %sub3 = sub i64 9223372036854775807, %15
  %16 = load i64, i64* %count, align 8
  %div = sdiv i64 %sub3, %16
  %cmp4 = icmp sgt i64 %sub, %div
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %17 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.105, i32 0, i32 0))
  store %struct.PyByteArrayObject* null, %struct.PyByteArrayObject** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %18 = load i64, i64* %self_len, align 8
  %19 = load i64, i64* %count, align 8
  %20 = load i64, i64* %to_len.addr, align 8
  %sub7 = sub i64 %20, 1
  %mul = mul i64 %19, %sub7
  %add = add i64 %18, %mul
  store i64 %add, i64* %result_len, align 8
  %21 = load i64, i64* %result_len, align 8
  %call8 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %21)
  %22 = bitcast %struct._object* %call8 to %struct.PyByteArrayObject*
  store %struct.PyByteArrayObject* %22, %struct.PyByteArrayObject** %result, align 8
  %cmp9 = icmp eq %struct.PyByteArrayObject* %22, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store %struct.PyByteArrayObject* null, %struct.PyByteArrayObject** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %23 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %24 = bitcast %struct.PyByteArrayObject* %23 to %struct.PyVarObject*
  %ob_size12 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %24, i32 0, i32 1
  %25 = load i64, i64* %ob_size12, align 8
  %tobool13 = icmp ne i64 %25, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %if.end.11
  %26 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %ob_start15 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %26, i32 0, i32 3
  %27 = load i8*, i8** %ob_start15, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %if.end.11
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.14
  %cond18 = phi i8* [ %27, %cond.true.14 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.16 ]
  store i8* %cond18, i8** %result_s, align 8
  %28 = load i8*, i8** %self_s, align 8
  store i8* %28, i8** %start, align 8
  %29 = load i8*, i8** %self_s, align 8
  %30 = load i64, i64* %self_len, align 8
  %add.ptr = getelementptr i8, i8* %29, i64 %30
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %cond.end.17
  %31 = load i64, i64* %count, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %count, align 8
  %cmp19 = icmp sgt i64 %31, 0
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load i8*, i8** %start, align 8
  %33 = load i8, i8* %from_c.addr, align 1
  %conv = sext i8 %33 to i32
  %34 = load i8*, i8** %end, align 8
  %35 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call20 = call i8* @memchr(i8* %32, i32 %conv, i64 %sub.ptr.sub) #7
  store i8* %call20, i8** %next, align 8
  %36 = load i8*, i8** %next, align 8
  %cmp21 = icmp eq i8* %36, null
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %while.body
  br label %while.end

if.end.24:                                        ; preds = %while.body
  %37 = load i8*, i8** %next, align 8
  %38 = load i8*, i8** %start, align 8
  %cmp25 = icmp eq i8* %37, %38
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.24
  %39 = load i8*, i8** %result_s, align 8
  %40 = load i8*, i8** %to_s.addr, align 8
  %41 = load i64, i64* %to_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 %41, i32 1, i1 false)
  %42 = load i64, i64* %to_len.addr, align 8
  %43 = load i8*, i8** %result_s, align 8
  %add.ptr28 = getelementptr i8, i8* %43, i64 %42
  store i8* %add.ptr28, i8** %result_s, align 8
  %44 = load i8*, i8** %start, align 8
  %add.ptr29 = getelementptr i8, i8* %44, i64 1
  store i8* %add.ptr29, i8** %start, align 8
  br label %if.end.39

if.else:                                          ; preds = %if.end.24
  %45 = load i8*, i8** %result_s, align 8
  %46 = load i8*, i8** %start, align 8
  %47 = load i8*, i8** %next, align 8
  %48 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast30 = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast31 = ptrtoint i8* %48 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 %sub.ptr.sub32, i32 1, i1 false)
  %49 = load i8*, i8** %next, align 8
  %50 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast33 = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast34 = ptrtoint i8* %50 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %51 = load i8*, i8** %result_s, align 8
  %add.ptr36 = getelementptr i8, i8* %51, i64 %sub.ptr.sub35
  store i8* %add.ptr36, i8** %result_s, align 8
  %52 = load i8*, i8** %result_s, align 8
  %53 = load i8*, i8** %to_s.addr, align 8
  %54 = load i64, i64* %to_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 %54, i32 1, i1 false)
  %55 = load i64, i64* %to_len.addr, align 8
  %56 = load i8*, i8** %result_s, align 8
  %add.ptr37 = getelementptr i8, i8* %56, i64 %55
  store i8* %add.ptr37, i8** %result_s, align 8
  %57 = load i8*, i8** %next, align 8
  %add.ptr38 = getelementptr i8, i8* %57, i64 1
  store i8* %add.ptr38, i8** %start, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.27
  br label %while.cond

while.end:                                        ; preds = %if.then.23, %while.cond
  %58 = load i8*, i8** %result_s, align 8
  %59 = load i8*, i8** %start, align 8
  %60 = load i8*, i8** %end, align 8
  %61 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast40 = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i8* %61 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 %sub.ptr.sub42, i32 1, i1 false)
  %62 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  store %struct.PyByteArrayObject* %62, %struct.PyByteArrayObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.10, %if.then.5, %if.then
  %63 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %retval
  ret %struct.PyByteArrayObject* %63
}

; Function Attrs: nounwind uwtable
define internal %struct.PyByteArrayObject* @replace_substring(%struct.PyByteArrayObject* %self, i8* %from_s, i64 %from_len, i8* %to_s, i64 %to_len, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyByteArrayObject*, align 8
  %self.addr = alloca %struct.PyByteArrayObject*, align 8
  %from_s.addr = alloca i8*, align 8
  %from_len.addr = alloca i64, align 8
  %to_s.addr = alloca i8*, align 8
  %to_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  %self_s = alloca i8*, align 8
  %result_s = alloca i8*, align 8
  %start = alloca i8*, align 8
  %next = alloca i8*, align 8
  %end = alloca i8*, align 8
  %self_len = alloca i64, align 8
  %result_len = alloca i64, align 8
  %count = alloca i64, align 8
  %offset = alloca i64, align 8
  %result = alloca %struct.PyByteArrayObject*, align 8
  store %struct.PyByteArrayObject* %self, %struct.PyByteArrayObject** %self.addr, align 8
  store i8* %from_s, i8** %from_s.addr, align 8
  store i64 %from_len, i64* %from_len.addr, align 8
  store i8* %to_s, i8** %to_s.addr, align 8
  store i64 %to_len, i64* %to_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %1 = bitcast %struct.PyByteArrayObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %3, i32 0, i32 3
  %4 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %self_s, align 8
  %5 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %6 = bitcast %struct.PyByteArrayObject* %5 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size1, align 8
  store i64 %7, i64* %self_len, align 8
  %8 = load i8*, i8** %self_s, align 8
  %9 = load i64, i64* %self_len, align 8
  %10 = load i8*, i8** %from_s.addr, align 8
  %11 = load i64, i64* %from_len.addr, align 8
  %12 = load i64, i64* %maxcount.addr, align 8
  %call = call i64 @stringlib_count(i8* %8, i64 %9, i8* %10, i64 %11, i64 %12)
  store i64 %call, i64* %count, align 8
  %13 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %14 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %self.addr, align 8
  %call2 = call %struct.PyByteArrayObject* @return_self(%struct.PyByteArrayObject* %14)
  store %struct.PyByteArrayObject* %call2, %struct.PyByteArrayObject** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %15 = load i64, i64* %to_len.addr, align 8
  %16 = load i64, i64* %from_len.addr, align 8
  %sub = sub i64 %15, %16
  %17 = load i64, i64* %self_len, align 8
  %sub3 = sub i64 9223372036854775807, %17
  %18 = load i64, i64* %count, align 8
  %div = sdiv i64 %sub3, %18
  %cmp4 = icmp sgt i64 %sub, %div
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %19 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.105, i32 0, i32 0))
  store %struct.PyByteArrayObject* null, %struct.PyByteArrayObject** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %20 = load i64, i64* %self_len, align 8
  %21 = load i64, i64* %count, align 8
  %22 = load i64, i64* %to_len.addr, align 8
  %23 = load i64, i64* %from_len.addr, align 8
  %sub7 = sub i64 %22, %23
  %mul = mul i64 %21, %sub7
  %add = add i64 %20, %mul
  store i64 %add, i64* %result_len, align 8
  %24 = load i64, i64* %result_len, align 8
  %call8 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 %24)
  %25 = bitcast %struct._object* %call8 to %struct.PyByteArrayObject*
  store %struct.PyByteArrayObject* %25, %struct.PyByteArrayObject** %result, align 8
  %cmp9 = icmp eq %struct.PyByteArrayObject* %25, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store %struct.PyByteArrayObject* null, %struct.PyByteArrayObject** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %26 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %27 = bitcast %struct.PyByteArrayObject* %26 to %struct.PyVarObject*
  %ob_size12 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %27, i32 0, i32 1
  %28 = load i64, i64* %ob_size12, align 8
  %tobool13 = icmp ne i64 %28, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %if.end.11
  %29 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  %ob_start15 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %29, i32 0, i32 3
  %30 = load i8*, i8** %ob_start15, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %if.end.11
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.14
  %cond18 = phi i8* [ %30, %cond.true.14 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.16 ]
  store i8* %cond18, i8** %result_s, align 8
  %31 = load i8*, i8** %self_s, align 8
  store i8* %31, i8** %start, align 8
  %32 = load i8*, i8** %self_s, align 8
  %33 = load i64, i64* %self_len, align 8
  %add.ptr = getelementptr i8, i8* %32, i64 %33
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.38, %cond.end.17
  %34 = load i64, i64* %count, align 8
  %dec = add i64 %34, -1
  store i64 %dec, i64* %count, align 8
  %cmp19 = icmp sgt i64 %34, 0
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i8*, i8** %start, align 8
  %36 = load i8*, i8** %end, align 8
  %37 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %38 = load i8*, i8** %from_s.addr, align 8
  %39 = load i64, i64* %from_len.addr, align 8
  %call20 = call i64 @stringlib_find(i8* %35, i64 %sub.ptr.sub, i8* %38, i64 %39, i64 0)
  store i64 %call20, i64* %offset, align 8
  %40 = load i64, i64* %offset, align 8
  %cmp21 = icmp eq i64 %40, -1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.body
  br label %while.end

if.end.23:                                        ; preds = %while.body
  %41 = load i8*, i8** %start, align 8
  %42 = load i64, i64* %offset, align 8
  %add.ptr24 = getelementptr i8, i8* %41, i64 %42
  store i8* %add.ptr24, i8** %next, align 8
  %43 = load i8*, i8** %next, align 8
  %44 = load i8*, i8** %start, align 8
  %cmp25 = icmp eq i8* %43, %44
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.23
  %45 = load i8*, i8** %result_s, align 8
  %46 = load i8*, i8** %to_s.addr, align 8
  %47 = load i64, i64* %to_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 %47, i32 1, i1 false)
  %48 = load i64, i64* %to_len.addr, align 8
  %49 = load i8*, i8** %result_s, align 8
  %add.ptr27 = getelementptr i8, i8* %49, i64 %48
  store i8* %add.ptr27, i8** %result_s, align 8
  %50 = load i64, i64* %from_len.addr, align 8
  %51 = load i8*, i8** %start, align 8
  %add.ptr28 = getelementptr i8, i8* %51, i64 %50
  store i8* %add.ptr28, i8** %start, align 8
  br label %if.end.38

if.else:                                          ; preds = %if.end.23
  %52 = load i8*, i8** %result_s, align 8
  %53 = load i8*, i8** %start, align 8
  %54 = load i8*, i8** %next, align 8
  %55 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast29 = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %55 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 %sub.ptr.sub31, i32 1, i1 false)
  %56 = load i8*, i8** %next, align 8
  %57 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast32 = ptrtoint i8* %56 to i64
  %sub.ptr.rhs.cast33 = ptrtoint i8* %57 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %58 = load i8*, i8** %result_s, align 8
  %add.ptr35 = getelementptr i8, i8* %58, i64 %sub.ptr.sub34
  store i8* %add.ptr35, i8** %result_s, align 8
  %59 = load i8*, i8** %result_s, align 8
  %60 = load i8*, i8** %to_s.addr, align 8
  %61 = load i64, i64* %to_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 %61, i32 1, i1 false)
  %62 = load i64, i64* %to_len.addr, align 8
  %63 = load i8*, i8** %result_s, align 8
  %add.ptr36 = getelementptr i8, i8* %63, i64 %62
  store i8* %add.ptr36, i8** %result_s, align 8
  %64 = load i8*, i8** %next, align 8
  %65 = load i64, i64* %from_len.addr, align 8
  %add.ptr37 = getelementptr i8, i8* %64, i64 %65
  store i8* %add.ptr37, i8** %start, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.26
  br label %while.cond

while.end:                                        ; preds = %if.then.22, %while.cond
  %66 = load i8*, i8** %result_s, align 8
  %67 = load i8*, i8** %start, align 8
  %68 = load i8*, i8** %end, align 8
  %69 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast39 = ptrtoint i8* %68 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i8* %69 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 %sub.ptr.sub41, i32 1, i1 false)
  %70 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %result, align 8
  store %struct.PyByteArrayObject* %70, %struct.PyByteArrayObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.10, %if.then.5, %if.then
  %71 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %retval
  ret %struct.PyByteArrayObject* %71
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @countchar(i8* %target, i64 %target_len, i8 signext %c, i64 %maxcount) #3 {
entry:
  %target.addr = alloca i8*, align 8
  %target_len.addr = alloca i64, align 8
  %c.addr = alloca i8, align 1
  %maxcount.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  store i8* %target, i8** %target.addr, align 8
  store i64 %target_len, i64* %target_len.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i64 %maxcount, i64* %maxcount.addr, align 8
  store i64 0, i64* %count, align 8
  %0 = load i8*, i8** %target.addr, align 8
  store i8* %0, i8** %start, align 8
  %1 = load i8*, i8** %target.addr, align 8
  %2 = load i64, i64* %target_len.addr, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i8*, i8** %start, align 8
  %4 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %4 to i32
  %5 = load i8*, i8** %end, align 8
  %6 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i8* @memchr(i8* %3, i32 %conv, i64 %sub.ptr.sub) #7
  store i8* %call, i8** %start, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, i64* %count, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %count, align 8
  %8 = load i64, i64* %count, align 8
  %9 = load i64, i64* %maxcount.addr, align 8
  %cmp2 = icmp sge i64 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %10 = load i8*, i8** %start, align 8
  %add.ptr4 = getelementptr i8, i8* %10, i64 1
  store i8* %add.ptr4, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %11 = load i64, i64* %count, align 8
  ret i64 %11
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_rpartition(%struct._object* %str_obj, i8* %str, i64 %str_len, %struct._object* %sep_obj, i8* %sep, i64 %sep_len) #3 {
entry:
  %retval = alloca %struct._object*, align 8
  %str_obj.addr = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %sep_obj.addr = alloca %struct._object*, align 8
  %sep.addr = alloca i8*, align 8
  %sep_len.addr = alloca i64, align 8
  %out = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %str_obj, %struct._object** %str_obj.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store %struct._object* %sep_obj, %struct._object** %sep_obj.addr, align 8
  store i8* %sep, i8** %sep.addr, align 8
  store i64 %sep_len, i64* %sep_len.addr, align 8
  %0 = load i64, i64* %sep_len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._object* @PyTuple_New(i64 3)
  store %struct._object* %call, %struct._object** %out, align 8
  %2 = load %struct._object*, %struct._object** %out, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i64, i64* %str_len.addr, align 8
  %5 = load i8*, i8** %sep.addr, align 8
  %6 = load i64, i64* %sep_len.addr, align 8
  %call3 = call i64 @fastsearch(i8* %3, i64 %4, i8* %5, i64 %6, i64 -1, i32 2)
  store i64 %call3, i64* %pos, align 8
  %7 = load i64, i64* %pos, align 8
  %cmp4 = icmp slt i64 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.20

if.then.5:                                        ; preds = %if.end.2
  %call6 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 0)
  %8 = load %struct._object*, %struct._object** %out, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %call6, %struct._object** %arrayidx, align 8
  %call7 = call %struct._object* @PyByteArray_FromStringAndSize(i8* null, i64 0)
  %10 = load %struct._object*, %struct._object** %out, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item8 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item8, i32 0, i64 1
  store %struct._object* %call7, %struct._object** %arrayidx9, align 8
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i64, i64* %str_len.addr, align 8
  %call10 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %12, i64 %13)
  %14 = load %struct._object*, %struct._object** %out, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item11 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx12 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item11, i32 0, i64 2
  store %struct._object* %call10, %struct._object** %arrayidx12, align 8
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool14 = icmp ne %struct._object* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.then.5
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %16 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.5
  %23 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.2
  %24 = load i8*, i8** %str.addr, align 8
  %25 = load i64, i64* %pos, align 8
  %call21 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %24, i64 %25)
  %26 = load %struct._object*, %struct._object** %out, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*
  %ob_item22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item22, i32 0, i64 0
  store %struct._object* %call21, %struct._object** %arrayidx23, align 8
  %28 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt24, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %ob_refcnt24, align 8
  %30 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %31 = load %struct._object*, %struct._object** %out, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*
  %ob_item25 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1
  %arrayidx26 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item25, i32 0, i64 1
  store %struct._object* %30, %struct._object** %arrayidx26, align 8
  %33 = load i64, i64* %sep_len.addr, align 8
  %34 = load i64, i64* %pos, align 8
  %add = add i64 %34, %33
  store i64 %add, i64* %pos, align 8
  %35 = load i8*, i8** %str.addr, align 8
  %36 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr i8, i8* %35, i64 %36
  %37 = load i64, i64* %str_len.addr, align 8
  %38 = load i64, i64* %pos, align 8
  %sub = sub i64 %37, %38
  %call27 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub)
  %39 = load %struct._object*, %struct._object** %out, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*
  %ob_item28 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1
  %arrayidx29 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item28, i32 0, i64 2
  store %struct._object* %call27, %struct._object** %arrayidx29, align 8
  %call30 = call %struct._object* @PyErr_Occurred()
  %tobool31 = icmp ne %struct._object* %call30, null
  br i1 %tobool31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %if.end.20
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %41 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp34, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %43, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %46(%struct._object* %47)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.20
  %48 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %48, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.44, %do.end.43, %if.end.19, %do.end, %if.then.1, %if.then
  %49 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %49
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_rsplit_whitespace(%struct._object* %str_obj, i8* %str, i64 %str_len, i64 %maxcount) #3 {
entry:
  %retval = alloca %struct._object*, align 8
  %str_obj.addr = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %list = alloca %struct._object*, align 8
  %sub = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp110 = alloca %struct._object*, align 8
  %_py_decref_tmp123 = alloca %struct._object*, align 8
  %_py_decref_tmp145 = alloca %struct._object*, align 8
  store %struct._object* %str_obj, %struct._object** %str_obj.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  store i64 0, i64* %count, align 8
  %0 = load i64, i64* %maxcount.addr, align 8
  %cmp = icmp sge i64 %0, 12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %maxcount.addr, align 8
  %add = add i64 %1, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 12, %cond.true ], [ %add, %cond.false ]
  %call = call %struct._object* @PyList_New(i64 %cond)
  store %struct._object* %call, %struct._object** %list, align 8
  %2 = load %struct._object*, %struct._object** %list, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %3 = load i64, i64* %str_len.addr, align 8
  %sub2 = sub i64 %3, 1
  store i64 %sub2, i64* %j, align 8
  store i64 %sub2, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.68, %if.end
  %4 = load i64, i64* %maxcount.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %maxcount.addr, align 8
  %cmp3 = icmp sgt i64 %4, 0
  br i1 %cmp3, label %while.body, label %while.end.69

while.body:                                       ; preds = %while.cond
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.9, %while.body
  %5 = load i64, i64* %i, align 8
  %cmp5 = icmp sge i64 %5, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.4
  %6 = load i64, i64* %i, align 8
  %7 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr i8, i8* %7, i64 %6
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %and = and i32 %conv, 255
  %conv6 = trunc i32 %and to i8
  %idxprom = zext i8 %conv6 to i64
  %arrayidx7 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %9, 8
  %tobool = icmp ne i32 %and8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.4
  %10 = phi i1 [ false, %while.cond.4 ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %land.end
  %11 = load i64, i64* %i, align 8
  %dec10 = add i64 %11, -1
  store i64 %dec10, i64* %i, align 8
  br label %while.cond.4

while.end:                                        ; preds = %land.end
  %12 = load i64, i64* %i, align 8
  %cmp11 = icmp slt i64 %12, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.end
  br label %while.end.69

if.end.14:                                        ; preds = %while.end
  %13 = load i64, i64* %i, align 8
  store i64 %13, i64* %j, align 8
  %14 = load i64, i64* %i, align 8
  %dec15 = add i64 %14, -1
  store i64 %dec15, i64* %i, align 8
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.29, %if.end.14
  %15 = load i64, i64* %i, align 8
  %cmp17 = icmp sge i64 %15, 0
  br i1 %cmp17, label %land.rhs.19, label %land.end.28

land.rhs.19:                                      ; preds = %while.cond.16
  %16 = load i64, i64* %i, align 8
  %17 = load i8*, i8** %str.addr, align 8
  %arrayidx20 = getelementptr i8, i8* %17, i64 %16
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %18 to i32
  %and22 = and i32 %conv21, 255
  %conv23 = trunc i32 %and22 to i8
  %idxprom24 = zext i8 %conv23 to i64
  %arrayidx25 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom24
  %19 = load i32, i32* %arrayidx25, align 4
  %and26 = and i32 %19, 8
  %tobool27 = icmp ne i32 %and26, 0
  %lnot = xor i1 %tobool27, true
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.19, %while.cond.16
  %20 = phi i1 [ false, %while.cond.16 ], [ %lnot, %land.rhs.19 ]
  br i1 %20, label %while.body.29, label %while.end.31

while.body.29:                                    ; preds = %land.end.28
  %21 = load i64, i64* %i, align 8
  %dec30 = add i64 %21, -1
  store i64 %dec30, i64* %i, align 8
  br label %while.cond.16

while.end.31:                                     ; preds = %land.end.28
  %22 = load i8*, i8** %str.addr, align 8
  %23 = load i64, i64* %i, align 8
  %add32 = add i64 %23, 1
  %add.ptr = getelementptr i8, i8* %22, i64 %add32
  %24 = load i64, i64* %j, align 8
  %add33 = add i64 %24, 1
  %25 = load i64, i64* %i, align 8
  %add34 = add i64 %25, 1
  %sub35 = sub i64 %add33, %add34
  %call36 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub35)
  store %struct._object* %call36, %struct._object** %sub, align 8
  %26 = load %struct._object*, %struct._object** %sub, align 8
  %cmp37 = icmp eq %struct._object* %26, null
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %while.end.31
  br label %onError

if.end.40:                                        ; preds = %while.end.31
  %27 = load i64, i64* %count, align 8
  %cmp41 = icmp slt i64 %27, 12
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.end.40
  %28 = load %struct._object*, %struct._object** %sub, align 8
  %29 = load i64, i64* %count, align 8
  %30 = load %struct._object*, %struct._object** %list, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %31, i32 0, i32 1
  %32 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx44 = getelementptr %struct._object*, %struct._object** %32, i64 %29
  store %struct._object* %28, %struct._object** %arrayidx44, align 8
  br label %if.end.68

if.else:                                          ; preds = %if.end.40
  %33 = load %struct._object*, %struct._object** %list, align 8
  %34 = load %struct._object*, %struct._object** %sub, align 8
  %call45 = call i32 @PyList_Append(%struct._object* %33, %struct._object* %34)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.54

if.then.47:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.47
  %35 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %dec48 = add i64 %37, -1
  store i64 %dec48, i64* %ob_refcnt, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body
  br label %if.end.53

if.else.52:                                       ; preds = %do.body
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end

do.end:                                           ; preds = %if.end.53
  br label %onError

if.else.54:                                       ; preds = %if.else
  br label %do.body.55

do.body.55:                                       ; preds = %if.else.54
  %42 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp56, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %44, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.55
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.55
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %47(%struct._object* %48)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.43
  %49 = load i64, i64* %count, align 8
  %inc = add i64 %49, 1
  store i64 %inc, i64* %count, align 8
  br label %while.cond

while.end.69:                                     ; preds = %if.then.13, %while.cond
  %50 = load i64, i64* %i, align 8
  %cmp70 = icmp sge i64 %50, 0
  br i1 %cmp70, label %if.then.72, label %if.end.138

if.then.72:                                       ; preds = %while.end.69
  br label %while.cond.73

while.cond.73:                                    ; preds = %while.body.86, %if.then.72
  %51 = load i64, i64* %i, align 8
  %cmp74 = icmp sge i64 %51, 0
  br i1 %cmp74, label %land.rhs.76, label %land.end.85

land.rhs.76:                                      ; preds = %while.cond.73
  %52 = load i64, i64* %i, align 8
  %53 = load i8*, i8** %str.addr, align 8
  %arrayidx77 = getelementptr i8, i8* %53, i64 %52
  %54 = load i8, i8* %arrayidx77, align 1
  %conv78 = sext i8 %54 to i32
  %and79 = and i32 %conv78, 255
  %conv80 = trunc i32 %and79 to i8
  %idxprom81 = zext i8 %conv80 to i64
  %arrayidx82 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom81
  %55 = load i32, i32* %arrayidx82, align 4
  %and83 = and i32 %55, 8
  %tobool84 = icmp ne i32 %and83, 0
  br label %land.end.85

land.end.85:                                      ; preds = %land.rhs.76, %while.cond.73
  %56 = phi i1 [ false, %while.cond.73 ], [ %tobool84, %land.rhs.76 ]
  br i1 %56, label %while.body.86, label %while.end.88

while.body.86:                                    ; preds = %land.end.85
  %57 = load i64, i64* %i, align 8
  %dec87 = add i64 %57, -1
  store i64 %dec87, i64* %i, align 8
  br label %while.cond.73

while.end.88:                                     ; preds = %land.end.85
  %58 = load i64, i64* %i, align 8
  %cmp89 = icmp sge i64 %58, 0
  br i1 %cmp89, label %if.then.91, label %if.end.137

if.then.91:                                       ; preds = %while.end.88
  %59 = load i8*, i8** %str.addr, align 8
  %add.ptr92 = getelementptr i8, i8* %59, i64 0
  %60 = load i64, i64* %i, align 8
  %add93 = add i64 %60, 1
  %sub94 = sub i64 %add93, 0
  %call95 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr92, i64 %sub94)
  store %struct._object* %call95, %struct._object** %sub, align 8
  %61 = load %struct._object*, %struct._object** %sub, align 8
  %cmp96 = icmp eq %struct._object* %61, null
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.then.91
  br label %onError

if.end.99:                                        ; preds = %if.then.91
  %62 = load i64, i64* %count, align 8
  %cmp100 = icmp slt i64 %62, 12
  br i1 %cmp100, label %if.then.102, label %if.else.105

if.then.102:                                      ; preds = %if.end.99
  %63 = load %struct._object*, %struct._object** %sub, align 8
  %64 = load i64, i64* %count, align 8
  %65 = load %struct._object*, %struct._object** %list, align 8
  %66 = bitcast %struct._object* %65 to %struct.PyListObject*
  %ob_item103 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %66, i32 0, i32 1
  %67 = load %struct._object**, %struct._object*** %ob_item103, align 8
  %arrayidx104 = getelementptr %struct._object*, %struct._object** %67, i64 %64
  store %struct._object* %63, %struct._object** %arrayidx104, align 8
  br label %if.end.135

if.else.105:                                      ; preds = %if.end.99
  %68 = load %struct._object*, %struct._object** %list, align 8
  %69 = load %struct._object*, %struct._object** %sub, align 8
  %call106 = call i32 @PyList_Append(%struct._object* %68, %struct._object* %69)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then.108, label %if.else.121

if.then.108:                                      ; preds = %if.else.105
  br label %do.body.109

do.body.109:                                      ; preds = %if.then.108
  %70 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp110, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  %ob_refcnt111 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt111, align 8
  %dec112 = add i64 %72, -1
  store i64 %dec112, i64* %ob_refcnt111, align 8
  %cmp113 = icmp ne i64 %dec112, 0
  br i1 %cmp113, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %do.body.109
  br label %if.end.119

if.else.116:                                      ; preds = %do.body.109
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  %ob_type117 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type117, align 8
  %tp_dealloc118 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc118, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  call void %75(%struct._object* %76)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.115
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  br label %onError

if.else.121:                                      ; preds = %if.else.105
  br label %do.body.122

do.body.122:                                      ; preds = %if.else.121
  %77 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %77, %struct._object** %_py_decref_tmp123, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8
  %ob_refcnt124 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt124, align 8
  %dec125 = add i64 %79, -1
  store i64 %dec125, i64* %ob_refcnt124, align 8
  %cmp126 = icmp ne i64 %dec125, 0
  br i1 %cmp126, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %do.body.122
  br label %if.end.132

if.else.129:                                      ; preds = %do.body.122
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8
  %tp_dealloc131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc131, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8
  call void %82(%struct._object* %83)
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.129, %if.then.128
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  br label %if.end.134

if.end.134:                                       ; preds = %do.end.133
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.102
  %84 = load i64, i64* %count, align 8
  %inc136 = add i64 %84, 1
  store i64 %inc136, i64* %count, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.135, %while.end.88
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %while.end.69
  %85 = load i64, i64* %count, align 8
  %86 = load %struct._object*, %struct._object** %list, align 8
  %87 = bitcast %struct._object* %86 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %87, i32 0, i32 1
  store i64 %85, i64* %ob_size, align 8
  %88 = load %struct._object*, %struct._object** %list, align 8
  %call139 = call i32 @PyList_Reverse(%struct._object* %88)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.138
  br label %onError

if.end.143:                                       ; preds = %if.end.138
  %89 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %89, %struct._object** %retval
  br label %return

onError:                                          ; preds = %if.then.142, %do.end.120, %if.then.98, %do.end, %if.then.39
  br label %do.body.144

do.body.144:                                      ; preds = %onError
  %90 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %90, %struct._object** %_py_decref_tmp145, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  %ob_refcnt146 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt146, align 8
  %dec147 = add i64 %92, -1
  store i64 %dec147, i64* %ob_refcnt146, align 8
  %cmp148 = icmp ne i64 %dec147, 0
  br i1 %cmp148, label %if.then.150, label %if.else.151

if.then.150:                                      ; preds = %do.body.144
  br label %if.end.154

if.else.151:                                      ; preds = %do.body.144
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  %ob_type152 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type152, align 8
  %tp_dealloc153 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc153, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  call void %95(%struct._object* %96)
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.151, %if.then.150
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.154
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.155, %if.end.143, %if.then
  %97 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %97
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_rsplit(%struct._object* %str_obj, i8* %str, i64 %str_len, i8* %sep, i64 %sep_len, i64 %maxcount) #3 {
entry:
  %retval = alloca %struct._object*, align 8
  %str_obj.addr = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %sep.addr = alloca i8*, align 8
  %sep_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  %j = alloca i64, align 8
  %pos = alloca i64, align 8
  %count = alloca i64, align 8
  %list = alloca %struct._object*, align 8
  %sub = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %_py_decref_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp91 = alloca %struct._object*, align 8
  store %struct._object* %str_obj, %struct._object** %str_obj.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store i8* %sep, i8** %sep.addr, align 8
  store i64 %sep_len, i64* %sep_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  store i64 0, i64* %count, align 8
  %0 = load i64, i64* %sep_len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %sep_len.addr, align 8
  %cmp1 = icmp eq i64 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %3 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i64, i64* %str_len.addr, align 8
  %6 = load i8*, i8** %sep.addr, align 8
  %arrayidx = getelementptr i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %8 = load i64, i64* %maxcount.addr, align 8
  %call = call %struct._object* @stringlib_rsplit_char(%struct._object* %3, i8* %4, i64 %5, i8 signext %7, i64 %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end
  %9 = load i64, i64* %maxcount.addr, align 8
  %cmp4 = icmp sge i64 %9, 12
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  %10 = load i64, i64* %maxcount.addr, align 8
  %add = add i64 %10, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 12, %cond.true ], [ %add, %cond.false ]
  %call5 = call %struct._object* @PyList_New(i64 %cond)
  store %struct._object* %call5, %struct._object** %list, align 8
  %11 = load %struct._object*, %struct._object** %list, align 8
  %cmp6 = icmp eq %struct._object* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %cond.end
  %12 = load i64, i64* %str_len.addr, align 8
  store i64 %12, i64* %j, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %if.end.8
  %13 = load i64, i64* %maxcount.addr, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %maxcount.addr, align 8
  %cmp9 = icmp sgt i64 %13, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i8*, i8** %str.addr, align 8
  %15 = load i64, i64* %j, align 8
  %16 = load i8*, i8** %sep.addr, align 8
  %17 = load i64, i64* %sep_len.addr, align 8
  %call10 = call i64 @fastsearch(i8* %14, i64 %15, i8* %16, i64 %17, i64 -1, i32 2)
  store i64 %call10, i64* %pos, align 8
  %18 = load i64, i64* %pos, align 8
  %cmp11 = icmp slt i64 %18, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body
  br label %while.end

if.end.13:                                        ; preds = %while.body
  %19 = load i8*, i8** %str.addr, align 8
  %20 = load i64, i64* %pos, align 8
  %21 = load i64, i64* %sep_len.addr, align 8
  %add14 = add i64 %20, %21
  %add.ptr = getelementptr i8, i8* %19, i64 %add14
  %22 = load i64, i64* %j, align 8
  %23 = load i64, i64* %pos, align 8
  %24 = load i64, i64* %sep_len.addr, align 8
  %add15 = add i64 %23, %24
  %sub16 = sub i64 %22, %add15
  %call17 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub16)
  store %struct._object* %call17, %struct._object** %sub, align 8
  %25 = load %struct._object*, %struct._object** %sub, align 8
  %cmp18 = icmp eq %struct._object* %25, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.13
  br label %onError

if.end.20:                                        ; preds = %if.end.13
  %26 = load i64, i64* %count, align 8
  %cmp21 = icmp slt i64 %26, 12
  br i1 %cmp21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.end.20
  %27 = load %struct._object*, %struct._object** %sub, align 8
  %28 = load i64, i64* %count, align 8
  %29 = load %struct._object*, %struct._object** %list, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %30, i32 0, i32 1
  %31 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx23 = getelementptr %struct._object*, %struct._object** %31, i64 %28
  store %struct._object* %27, %struct._object** %arrayidx23, align 8
  br label %if.end.45

if.else.24:                                       ; preds = %if.end.20
  %32 = load %struct._object*, %struct._object** %list, align 8
  %33 = load %struct._object*, %struct._object** %sub, align 8
  %call25 = call i32 @PyList_Append(%struct._object* %32, %struct._object* %33)
  %tobool = icmp ne i32 %call25, 0
  br i1 %tobool, label %if.then.26, label %if.else.32

if.then.26:                                       ; preds = %if.else.24
  br label %do.body

do.body:                                          ; preds = %if.then.26
  %34 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt, align 8
  %dec27 = add i64 %36, -1
  store i64 %dec27, i64* %ob_refcnt, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body
  br label %if.end.31

if.else.30:                                       ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %39(%struct._object* %40)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.31
  br label %onError

if.else.32:                                       ; preds = %if.else.24
  br label %do.body.33

do.body.33:                                       ; preds = %if.else.32
  %41 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp34, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %43, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %46(%struct._object* %47)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.22
  %48 = load i64, i64* %count, align 8
  %inc = add i64 %48, 1
  store i64 %inc, i64* %count, align 8
  %49 = load i64, i64* %pos, align 8
  store i64 %49, i64* %j, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.12, %while.cond
  %50 = load i8*, i8** %str.addr, align 8
  %add.ptr46 = getelementptr i8, i8* %50, i64 0
  %51 = load i64, i64* %j, align 8
  %sub47 = sub i64 %51, 0
  %call48 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr46, i64 %sub47)
  store %struct._object* %call48, %struct._object** %sub, align 8
  %52 = load %struct._object*, %struct._object** %sub, align 8
  %cmp49 = icmp eq %struct._object* %52, null
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %while.end
  br label %onError

if.end.51:                                        ; preds = %while.end
  %53 = load i64, i64* %count, align 8
  %cmp52 = icmp slt i64 %53, 12
  br i1 %cmp52, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %if.end.51
  %54 = load %struct._object*, %struct._object** %sub, align 8
  %55 = load i64, i64* %count, align 8
  %56 = load %struct._object*, %struct._object** %list, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyListObject*
  %ob_item54 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %57, i32 0, i32 1
  %58 = load %struct._object**, %struct._object*** %ob_item54, align 8
  %arrayidx55 = getelementptr %struct._object*, %struct._object** %58, i64 %55
  store %struct._object* %54, %struct._object** %arrayidx55, align 8
  br label %if.end.84

if.else.56:                                       ; preds = %if.end.51
  %59 = load %struct._object*, %struct._object** %list, align 8
  %60 = load %struct._object*, %struct._object** %sub, align 8
  %call57 = call i32 @PyList_Append(%struct._object* %59, %struct._object* %60)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.71

if.then.59:                                       ; preds = %if.else.56
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %61 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp61, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %63, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.60
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %66(%struct._object* %67)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %onError

if.else.71:                                       ; preds = %if.else.56
  br label %do.body.72

do.body.72:                                       ; preds = %if.else.71
  %68 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp73, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt74, align 8
  %dec75 = add i64 %70, -1
  store i64 %dec75, i64* %ob_refcnt74, align 8
  %cmp76 = icmp ne i64 %dec75, 0
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %do.body.72
  br label %if.end.81

if.else.78:                                       ; preds = %do.body.72
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  call void %73(%struct._object* %74)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.77
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  br label %if.end.83

if.end.83:                                        ; preds = %do.end.82
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.53
  %75 = load i64, i64* %count, align 8
  %inc85 = add i64 %75, 1
  store i64 %inc85, i64* %count, align 8
  %76 = load i64, i64* %count, align 8
  %77 = load %struct._object*, %struct._object** %list, align 8
  %78 = bitcast %struct._object* %77 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %78, i32 0, i32 1
  store i64 %76, i64* %ob_size, align 8
  %79 = load %struct._object*, %struct._object** %list, align 8
  %call86 = call i32 @PyList_Reverse(%struct._object* %79)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.84
  br label %onError

if.end.89:                                        ; preds = %if.end.84
  %80 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %80, %struct._object** %retval
  br label %return

onError:                                          ; preds = %if.then.88, %do.end.70, %if.then.50, %do.end, %if.then.19
  br label %do.body.90

do.body.90:                                       ; preds = %onError
  %81 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp91, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt92, align 8
  %dec93 = add i64 %83, -1
  store i64 %dec93, i64* %ob_refcnt92, align 8
  %cmp94 = icmp ne i64 %dec93, 0
  br i1 %cmp94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %do.body.90
  br label %if.end.99

if.else.96:                                       ; preds = %do.body.90
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  call void %86(%struct._object* %87)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.100, %if.end.89, %if.then.7, %if.then.2, %if.then
  %88 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %88
}

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare i32 @PyList_Reverse(%struct._object*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_rsplit_char(%struct._object* %str_obj, i8* %str, i64 %str_len, i8 signext %ch, i64 %maxcount) #3 {
entry:
  %retval = alloca %struct._object*, align 8
  %str_obj.addr = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %ch.addr = alloca i8, align 1
  %maxcount.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %list = alloca %struct._object*, align 8
  %sub = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  store %struct._object* %str_obj, %struct._object** %str_obj.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store i8 %ch, i8* %ch.addr, align 1
  store i64 %maxcount, i64* %maxcount.addr, align 8
  store i64 0, i64* %count, align 8
  %0 = load i64, i64* %maxcount.addr, align 8
  %cmp = icmp sge i64 %0, 12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %maxcount.addr, align 8
  %add = add i64 %1, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 12, %cond.true ], [ %add, %cond.false ]
  %call = call %struct._object* @PyList_New(i64 %cond)
  store %struct._object* %call, %struct._object** %list, align 8
  %2 = load %struct._object*, %struct._object** %list, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %3 = load i64, i64* %str_len.addr, align 8
  %sub2 = sub i64 %3, 1
  store i64 %sub2, i64* %j, align 8
  store i64 %sub2, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %4 = load i64, i64* %i, align 8
  %cmp3 = icmp sge i64 %4, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i64, i64* %maxcount.addr, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %maxcount.addr, align 8
  %cmp4 = icmp sgt i64 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i64, i64* %i, align 8
  %cmp5 = icmp sge i64 %7, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %9 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr i8, i8* %9, i64 %8
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %11 = load i8, i8* %ch.addr, align 1
  %conv6 = sext i8 %11 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br i1 %cmp7, label %if.then.9, label %if.end.47

if.then.9:                                        ; preds = %for.body
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i64, i64* %i, align 8
  %add10 = add i64 %13, 1
  %add.ptr = getelementptr i8, i8* %12, i64 %add10
  %14 = load i64, i64* %j, align 8
  %add11 = add i64 %14, 1
  %15 = load i64, i64* %i, align 8
  %add12 = add i64 %15, 1
  %sub13 = sub i64 %add11, %add12
  %call14 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub13)
  store %struct._object* %call14, %struct._object** %sub, align 8
  %16 = load %struct._object*, %struct._object** %sub, align 8
  %cmp15 = icmp eq %struct._object* %16, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.9
  br label %onError

if.end.18:                                        ; preds = %if.then.9
  %17 = load i64, i64* %count, align 8
  %cmp19 = icmp slt i64 %17, 12
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.18
  %18 = load %struct._object*, %struct._object** %sub, align 8
  %19 = load i64, i64* %count, align 8
  %20 = load %struct._object*, %struct._object** %list, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %21, i32 0, i32 1
  %22 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx22 = getelementptr %struct._object*, %struct._object** %22, i64 %19
  store %struct._object* %18, %struct._object** %arrayidx22, align 8
  br label %if.end.45

if.else:                                          ; preds = %if.end.18
  %23 = load %struct._object*, %struct._object** %list, align 8
  %24 = load %struct._object*, %struct._object** %sub, align 8
  %call23 = call i32 @PyList_Append(%struct._object* %23, %struct._object* %24)
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.then.24, label %if.else.31

if.then.24:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.24
  %25 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec25 = add i64 %27, -1
  store i64 %dec25, i64* %ob_refcnt, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body
  br label %if.end.30

if.else.29:                                       ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.30
  br label %onError

if.else.31:                                       ; preds = %if.else
  br label %do.body.32

do.body.32:                                       ; preds = %if.else.31
  %32 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp33, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %34, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.32
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.32
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %37(%struct._object* %38)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.21
  %39 = load i64, i64* %count, align 8
  %inc = add i64 %39, 1
  store i64 %inc, i64* %count, align 8
  %40 = load i64, i64* %i, align 8
  %sub46 = sub i64 %40, 1
  store i64 %sub46, i64* %i, align 8
  store i64 %sub46, i64* %j, align 8
  br label %for.end

if.end.47:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %41 = load i64, i64* %i, align 8
  %dec48 = add i64 %41, -1
  store i64 %dec48, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.45, %for.cond
  br label %while.cond

while.end:                                        ; preds = %land.end
  %42 = load i64, i64* %j, align 8
  %cmp49 = icmp sge i64 %42, -1
  br i1 %cmp49, label %if.then.51, label %if.end.97

if.then.51:                                       ; preds = %while.end
  %43 = load i8*, i8** %str.addr, align 8
  %add.ptr52 = getelementptr i8, i8* %43, i64 0
  %44 = load i64, i64* %j, align 8
  %add53 = add i64 %44, 1
  %sub54 = sub i64 %add53, 0
  %call55 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr52, i64 %sub54)
  store %struct._object* %call55, %struct._object** %sub, align 8
  %45 = load %struct._object*, %struct._object** %sub, align 8
  %cmp56 = icmp eq %struct._object* %45, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.51
  br label %onError

if.end.59:                                        ; preds = %if.then.51
  %46 = load i64, i64* %count, align 8
  %cmp60 = icmp slt i64 %46, 12
  br i1 %cmp60, label %if.then.62, label %if.else.65

if.then.62:                                       ; preds = %if.end.59
  %47 = load %struct._object*, %struct._object** %sub, align 8
  %48 = load i64, i64* %count, align 8
  %49 = load %struct._object*, %struct._object** %list, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyListObject*
  %ob_item63 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %50, i32 0, i32 1
  %51 = load %struct._object**, %struct._object*** %ob_item63, align 8
  %arrayidx64 = getelementptr %struct._object*, %struct._object** %51, i64 %48
  store %struct._object* %47, %struct._object** %arrayidx64, align 8
  br label %if.end.95

if.else.65:                                       ; preds = %if.end.59
  %52 = load %struct._object*, %struct._object** %list, align 8
  %53 = load %struct._object*, %struct._object** %sub, align 8
  %call66 = call i32 @PyList_Append(%struct._object* %52, %struct._object* %53)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.else.81

if.then.68:                                       ; preds = %if.else.65
  br label %do.body.69

do.body.69:                                       ; preds = %if.then.68
  %54 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp70, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt71, align 8
  %dec72 = add i64 %56, -1
  store i64 %dec72, i64* %ob_refcnt71, align 8
  %cmp73 = icmp ne i64 %dec72, 0
  br i1 %cmp73, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body.69
  br label %if.end.79

if.else.76:                                       ; preds = %do.body.69
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  call void %59(%struct._object* %60)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  br label %onError

if.else.81:                                       ; preds = %if.else.65
  br label %do.body.82

do.body.82:                                       ; preds = %if.else.81
  %61 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp83, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt84, align 8
  %dec85 = add i64 %63, -1
  store i64 %dec85, i64* %ob_refcnt84, align 8
  %cmp86 = icmp ne i64 %dec85, 0
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %do.body.82
  br label %if.end.92

if.else.89:                                       ; preds = %do.body.82
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  call void %66(%struct._object* %67)
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.88
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  br label %if.end.94

if.end.94:                                        ; preds = %do.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.62
  %68 = load i64, i64* %count, align 8
  %inc96 = add i64 %68, 1
  store i64 %inc96, i64* %count, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.95, %while.end
  %69 = load i64, i64* %count, align 8
  %70 = load %struct._object*, %struct._object** %list, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %71, i32 0, i32 1
  store i64 %69, i64* %ob_size, align 8
  %72 = load %struct._object*, %struct._object** %list, align 8
  %call98 = call i32 @PyList_Reverse(%struct._object* %72)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.97
  br label %onError

if.end.102:                                       ; preds = %if.end.97
  %73 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %73, %struct._object** %retval
  br label %return

onError:                                          ; preds = %if.then.101, %do.end.80, %if.then.58, %do.end, %if.then.17
  br label %do.body.103

do.body.103:                                      ; preds = %onError
  %74 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %74, %struct._object** %_py_decref_tmp104, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt105, align 8
  %dec106 = add i64 %76, -1
  store i64 %dec106, i64* %ob_refcnt105, align 8
  %cmp107 = icmp ne i64 %dec106, 0
  br i1 %cmp107, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %do.body.103
  br label %if.end.113

if.else.110:                                      ; preds = %do.body.103
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  call void %79(%struct._object* %80)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.109
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.114, %if.end.102, %if.then
  %81 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %81
}

; Function Attrs: nounwind uwtable
define internal i64 @rstrip_helper(i8* %myptr, i64 %mysize, i8* %argptr, i64 %argsize) #0 {
entry:
  %myptr.addr = alloca i8*, align 8
  %mysize.addr = alloca i64, align 8
  %argptr.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %myptr, i8** %myptr.addr, align 8
  store i64 %mysize, i64* %mysize.addr, align 8
  store i8* %argptr, i8** %argptr.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %0 = load i64, i64* %mysize.addr, align 8
  %sub = sub i64 %0, 1
  store i64 %sub, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %i, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %argptr.addr, align 8
  %3 = load i64, i64* %i, align 8
  %4 = load i8*, i8** %myptr.addr, align 8
  %arrayidx = getelementptr i8, i8* %4, i64 %3
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @memchr(i8* %2, i32 %conv, i64 %6) #7
  %tobool = icmp ne i8* %call, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i64, i64* %i, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i64, i64* %i, align 8
  %add = add i64 %9, 1
  ret i64 %add
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_split_whitespace(%struct._object* %str_obj, i8* %str, i64 %str_len, i64 %maxcount) #3 {
entry:
  %retval = alloca %struct._object*, align 8
  %str_obj.addr = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %list = alloca %struct._object*, align 8
  %sub = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp105 = alloca %struct._object*, align 8
  %_py_decref_tmp118 = alloca %struct._object*, align 8
  %_py_decref_tmp135 = alloca %struct._object*, align 8
  store %struct._object* %str_obj, %struct._object** %str_obj.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  store i64 0, i64* %count, align 8
  %0 = load i64, i64* %maxcount.addr, align 8
  %cmp = icmp sge i64 %0, 12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %maxcount.addr, align 8
  %add = add i64 %1, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 12, %cond.true ], [ %add, %cond.false ]
  %call = call %struct._object* @PyList_New(i64 %cond)
  store %struct._object* %call, %struct._object** %list, align 8
  %2 = load %struct._object*, %struct._object** %list, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.63, %if.end
  %3 = load i64, i64* %maxcount.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %maxcount.addr, align 8
  %cmp2 = icmp sgt i64 %3, 0
  br i1 %cmp2, label %while.body, label %while.end.65

while.body:                                       ; preds = %while.cond
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.8, %while.body
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %str_len.addr, align 8
  %cmp4 = icmp slt i64 %4, %5
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.3
  %6 = load i64, i64* %i, align 8
  %7 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr i8, i8* %7, i64 %6
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %and = and i32 %conv, 255
  %conv5 = trunc i32 %and to i8
  %idxprom = zext i8 %conv5 to i64
  %arrayidx6 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx6, align 4
  %and7 = and i32 %9, 8
  %tobool = icmp ne i32 %and7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.3
  %10 = phi i1 [ false, %while.cond.3 ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %land.end
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond.3

while.end:                                        ; preds = %land.end
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %str_len.addr, align 8
  %cmp9 = icmp eq i64 %12, %13
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.end
  br label %while.end.65

if.end.12:                                        ; preds = %while.end
  %14 = load i64, i64* %i, align 8
  store i64 %14, i64* %j, align 8
  %15 = load i64, i64* %i, align 8
  %inc13 = add i64 %15, 1
  store i64 %inc13, i64* %i, align 8
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.27, %if.end.12
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %str_len.addr, align 8
  %cmp15 = icmp slt i64 %16, %17
  br i1 %cmp15, label %land.rhs.17, label %land.end.26

land.rhs.17:                                      ; preds = %while.cond.14
  %18 = load i64, i64* %i, align 8
  %19 = load i8*, i8** %str.addr, align 8
  %arrayidx18 = getelementptr i8, i8* %19, i64 %18
  %20 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %20 to i32
  %and20 = and i32 %conv19, 255
  %conv21 = trunc i32 %and20 to i8
  %idxprom22 = zext i8 %conv21 to i64
  %arrayidx23 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom22
  %21 = load i32, i32* %arrayidx23, align 4
  %and24 = and i32 %21, 8
  %tobool25 = icmp ne i32 %and24, 0
  %lnot = xor i1 %tobool25, true
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.17, %while.cond.14
  %22 = phi i1 [ false, %while.cond.14 ], [ %lnot, %land.rhs.17 ]
  br i1 %22, label %while.body.27, label %while.end.29

while.body.27:                                    ; preds = %land.end.26
  %23 = load i64, i64* %i, align 8
  %inc28 = add i64 %23, 1
  store i64 %inc28, i64* %i, align 8
  br label %while.cond.14

while.end.29:                                     ; preds = %land.end.26
  %24 = load i8*, i8** %str.addr, align 8
  %25 = load i64, i64* %j, align 8
  %add.ptr = getelementptr i8, i8* %24, i64 %25
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %j, align 8
  %sub30 = sub i64 %26, %27
  %call31 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub30)
  store %struct._object* %call31, %struct._object** %sub, align 8
  %28 = load %struct._object*, %struct._object** %sub, align 8
  %cmp32 = icmp eq %struct._object* %28, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %while.end.29
  br label %onError

if.end.35:                                        ; preds = %while.end.29
  %29 = load i64, i64* %count, align 8
  %cmp36 = icmp slt i64 %29, 12
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.35
  %30 = load %struct._object*, %struct._object** %sub, align 8
  %31 = load i64, i64* %count, align 8
  %32 = load %struct._object*, %struct._object** %list, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %33, i32 0, i32 1
  %34 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx39 = getelementptr %struct._object*, %struct._object** %34, i64 %31
  store %struct._object* %30, %struct._object** %arrayidx39, align 8
  br label %if.end.63

if.else:                                          ; preds = %if.end.35
  %35 = load %struct._object*, %struct._object** %list, align 8
  %36 = load %struct._object*, %struct._object** %sub, align 8
  %call40 = call i32 @PyList_Append(%struct._object* %35, %struct._object* %36)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.49

if.then.42:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.42
  %37 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt, align 8
  %dec43 = add i64 %39, -1
  store i64 %dec43, i64* %ob_refcnt, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body
  br label %if.end.48

if.else.47:                                       ; preds = %do.body
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %42(%struct._object* %43)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end

do.end:                                           ; preds = %if.end.48
  br label %onError

if.else.49:                                       ; preds = %if.else
  br label %do.body.50

do.body.50:                                       ; preds = %if.else.49
  %44 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp51, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %46, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.50
  br label %if.end.60

if.else.57:                                       ; preds = %do.body.50
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %49(%struct._object* %50)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  br label %if.end.62

if.end.62:                                        ; preds = %do.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.38
  %51 = load i64, i64* %count, align 8
  %inc64 = add i64 %51, 1
  store i64 %inc64, i64* %count, align 8
  br label %while.cond

while.end.65:                                     ; preds = %if.then.11, %while.cond
  %52 = load i64, i64* %i, align 8
  %53 = load i64, i64* %str_len.addr, align 8
  %cmp66 = icmp slt i64 %52, %53
  br i1 %cmp66, label %if.then.68, label %if.end.133

if.then.68:                                       ; preds = %while.end.65
  br label %while.cond.69

while.cond.69:                                    ; preds = %while.body.82, %if.then.68
  %54 = load i64, i64* %i, align 8
  %55 = load i64, i64* %str_len.addr, align 8
  %cmp70 = icmp slt i64 %54, %55
  br i1 %cmp70, label %land.rhs.72, label %land.end.81

land.rhs.72:                                      ; preds = %while.cond.69
  %56 = load i64, i64* %i, align 8
  %57 = load i8*, i8** %str.addr, align 8
  %arrayidx73 = getelementptr i8, i8* %57, i64 %56
  %58 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %58 to i32
  %and75 = and i32 %conv74, 255
  %conv76 = trunc i32 %and75 to i8
  %idxprom77 = zext i8 %conv76 to i64
  %arrayidx78 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom77
  %59 = load i32, i32* %arrayidx78, align 4
  %and79 = and i32 %59, 8
  %tobool80 = icmp ne i32 %and79, 0
  br label %land.end.81

land.end.81:                                      ; preds = %land.rhs.72, %while.cond.69
  %60 = phi i1 [ false, %while.cond.69 ], [ %tobool80, %land.rhs.72 ]
  br i1 %60, label %while.body.82, label %while.end.84

while.body.82:                                    ; preds = %land.end.81
  %61 = load i64, i64* %i, align 8
  %inc83 = add i64 %61, 1
  store i64 %inc83, i64* %i, align 8
  br label %while.cond.69

while.end.84:                                     ; preds = %land.end.81
  %62 = load i64, i64* %i, align 8
  %63 = load i64, i64* %str_len.addr, align 8
  %cmp85 = icmp ne i64 %62, %63
  br i1 %cmp85, label %if.then.87, label %if.end.132

if.then.87:                                       ; preds = %while.end.84
  %64 = load i8*, i8** %str.addr, align 8
  %65 = load i64, i64* %i, align 8
  %add.ptr88 = getelementptr i8, i8* %64, i64 %65
  %66 = load i64, i64* %str_len.addr, align 8
  %67 = load i64, i64* %i, align 8
  %sub89 = sub i64 %66, %67
  %call90 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr88, i64 %sub89)
  store %struct._object* %call90, %struct._object** %sub, align 8
  %68 = load %struct._object*, %struct._object** %sub, align 8
  %cmp91 = icmp eq %struct._object* %68, null
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.then.87
  br label %onError

if.end.94:                                        ; preds = %if.then.87
  %69 = load i64, i64* %count, align 8
  %cmp95 = icmp slt i64 %69, 12
  br i1 %cmp95, label %if.then.97, label %if.else.100

if.then.97:                                       ; preds = %if.end.94
  %70 = load %struct._object*, %struct._object** %sub, align 8
  %71 = load i64, i64* %count, align 8
  %72 = load %struct._object*, %struct._object** %list, align 8
  %73 = bitcast %struct._object* %72 to %struct.PyListObject*
  %ob_item98 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %73, i32 0, i32 1
  %74 = load %struct._object**, %struct._object*** %ob_item98, align 8
  %arrayidx99 = getelementptr %struct._object*, %struct._object** %74, i64 %71
  store %struct._object* %70, %struct._object** %arrayidx99, align 8
  br label %if.end.130

if.else.100:                                      ; preds = %if.end.94
  %75 = load %struct._object*, %struct._object** %list, align 8
  %76 = load %struct._object*, %struct._object** %sub, align 8
  %call101 = call i32 @PyList_Append(%struct._object* %75, %struct._object* %76)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.else.116

if.then.103:                                      ; preds = %if.else.100
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.103
  %77 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %77, %struct._object** %_py_decref_tmp105, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt106, align 8
  %dec107 = add i64 %79, -1
  store i64 %dec107, i64* %ob_refcnt106, align 8
  %cmp108 = icmp ne i64 %dec107, 0
  br i1 %cmp108, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %do.body.104
  br label %if.end.114

if.else.111:                                      ; preds = %do.body.104
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  %ob_type112 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type112, align 8
  %tp_dealloc113 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc113, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  call void %82(%struct._object* %83)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.110
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  br label %onError

if.else.116:                                      ; preds = %if.else.100
  br label %do.body.117

do.body.117:                                      ; preds = %if.else.116
  %84 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %84, %struct._object** %_py_decref_tmp118, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt119, align 8
  %dec120 = add i64 %86, -1
  store i64 %dec120, i64* %ob_refcnt119, align 8
  %cmp121 = icmp ne i64 %dec120, 0
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %do.body.117
  br label %if.end.127

if.else.124:                                      ; preds = %do.body.117
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_type125 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type125, align 8
  %tp_dealloc126 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc126, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  call void %89(%struct._object* %90)
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.123
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.127
  br label %if.end.129

if.end.129:                                       ; preds = %do.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.97
  %91 = load i64, i64* %count, align 8
  %inc131 = add i64 %91, 1
  store i64 %inc131, i64* %count, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.130, %while.end.84
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %while.end.65
  %92 = load i64, i64* %count, align 8
  %93 = load %struct._object*, %struct._object** %list, align 8
  %94 = bitcast %struct._object* %93 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %94, i32 0, i32 1
  store i64 %92, i64* %ob_size, align 8
  %95 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %95, %struct._object** %retval
  br label %return

onError:                                          ; preds = %do.end.115, %if.then.93, %do.end, %if.then.34
  br label %do.body.134

do.body.134:                                      ; preds = %onError
  %96 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %96, %struct._object** %_py_decref_tmp135, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  %ob_refcnt136 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0
  %98 = load i64, i64* %ob_refcnt136, align 8
  %dec137 = add i64 %98, -1
  store i64 %dec137, i64* %ob_refcnt136, align 8
  %cmp138 = icmp ne i64 %dec137, 0
  br i1 %cmp138, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %do.body.134
  br label %if.end.144

if.else.141:                                      ; preds = %do.body.134
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  %ob_type142 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type142, align 8
  %tp_dealloc143 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc143, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  call void %101(%struct._object* %102)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.141, %if.then.140
  br label %do.end.145

do.end.145:                                       ; preds = %if.end.144
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.145, %if.end.133, %if.then
  %103 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %103
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_split(%struct._object* %str_obj, i8* %str, i64 %str_len, i8* %sep, i64 %sep_len, i64 %maxcount) #3 {
entry:
  %retval = alloca %struct._object*, align 8
  %str_obj.addr = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %sep.addr = alloca i8*, align 8
  %sep_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %pos = alloca i64, align 8
  %count = alloca i64, align 8
  %list = alloca %struct._object*, align 8
  %sub = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  store %struct._object* %str_obj, %struct._object** %str_obj.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store i8* %sep, i8** %sep.addr, align 8
  store i64 %sep_len, i64* %sep_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  store i64 0, i64* %count, align 8
  %0 = load i64, i64* %sep_len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %sep_len.addr, align 8
  %cmp1 = icmp eq i64 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %3 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i64, i64* %str_len.addr, align 8
  %6 = load i8*, i8** %sep.addr, align 8
  %arrayidx = getelementptr i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %8 = load i64, i64* %maxcount.addr, align 8
  %call = call %struct._object* @stringlib_split_char(%struct._object* %3, i8* %4, i64 %5, i8 signext %7, i64 %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end
  %9 = load i64, i64* %maxcount.addr, align 8
  %cmp4 = icmp sge i64 %9, 12
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  %10 = load i64, i64* %maxcount.addr, align 8
  %add = add i64 %10, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 12, %cond.true ], [ %add, %cond.false ]
  %call5 = call %struct._object* @PyList_New(i64 %cond)
  store %struct._object* %call5, %struct._object** %list, align 8
  %11 = load %struct._object*, %struct._object** %list, align 8
  %cmp6 = icmp eq %struct._object* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %cond.end
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %if.end.8
  %12 = load i64, i64* %maxcount.addr, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %maxcount.addr, align 8
  %cmp9 = icmp sgt i64 %12, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %13, i64 %14
  %15 = load i64, i64* %str_len.addr, align 8
  %16 = load i64, i64* %i, align 8
  %sub10 = sub i64 %15, %16
  %17 = load i8*, i8** %sep.addr, align 8
  %18 = load i64, i64* %sep_len.addr, align 8
  %call11 = call i64 @fastsearch(i8* %add.ptr, i64 %sub10, i8* %17, i64 %18, i64 -1, i32 1)
  store i64 %call11, i64* %pos, align 8
  %19 = load i64, i64* %pos, align 8
  %cmp12 = icmp slt i64 %19, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.body
  br label %while.end

if.end.14:                                        ; preds = %while.body
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* %pos, align 8
  %add15 = add i64 %20, %21
  store i64 %add15, i64* %j, align 8
  %22 = load i8*, i8** %str.addr, align 8
  %23 = load i64, i64* %i, align 8
  %add.ptr16 = getelementptr i8, i8* %22, i64 %23
  %24 = load i64, i64* %j, align 8
  %25 = load i64, i64* %i, align 8
  %sub17 = sub i64 %24, %25
  %call18 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr16, i64 %sub17)
  store %struct._object* %call18, %struct._object** %sub, align 8
  %26 = load %struct._object*, %struct._object** %sub, align 8
  %cmp19 = icmp eq %struct._object* %26, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.14
  br label %onError

if.end.21:                                        ; preds = %if.end.14
  %27 = load i64, i64* %count, align 8
  %cmp22 = icmp slt i64 %27, 12
  br i1 %cmp22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.end.21
  %28 = load %struct._object*, %struct._object** %sub, align 8
  %29 = load i64, i64* %count, align 8
  %30 = load %struct._object*, %struct._object** %list, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %31, i32 0, i32 1
  %32 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx24 = getelementptr %struct._object*, %struct._object** %32, i64 %29
  store %struct._object* %28, %struct._object** %arrayidx24, align 8
  br label %if.end.46

if.else.25:                                       ; preds = %if.end.21
  %33 = load %struct._object*, %struct._object** %list, align 8
  %34 = load %struct._object*, %struct._object** %sub, align 8
  %call26 = call i32 @PyList_Append(%struct._object* %33, %struct._object* %34)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.then.27, label %if.else.33

if.then.27:                                       ; preds = %if.else.25
  br label %do.body

do.body:                                          ; preds = %if.then.27
  %35 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %dec28 = add i64 %37, -1
  store i64 %dec28, i64* %ob_refcnt, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body
  br label %if.end.32

if.else.31:                                       ; preds = %do.body
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.32
  br label %onError

if.else.33:                                       ; preds = %if.else.25
  br label %do.body.34

do.body.34:                                       ; preds = %if.else.33
  %42 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp35, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %44, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %47(%struct._object* %48)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.23
  %49 = load i64, i64* %count, align 8
  %inc = add i64 %49, 1
  store i64 %inc, i64* %count, align 8
  %50 = load i64, i64* %j, align 8
  %51 = load i64, i64* %sep_len.addr, align 8
  %add47 = add i64 %50, %51
  store i64 %add47, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.13, %while.cond
  %52 = load i8*, i8** %str.addr, align 8
  %53 = load i64, i64* %i, align 8
  %add.ptr48 = getelementptr i8, i8* %52, i64 %53
  %54 = load i64, i64* %str_len.addr, align 8
  %55 = load i64, i64* %i, align 8
  %sub49 = sub i64 %54, %55
  %call50 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr48, i64 %sub49)
  store %struct._object* %call50, %struct._object** %sub, align 8
  %56 = load %struct._object*, %struct._object** %sub, align 8
  %cmp51 = icmp eq %struct._object* %56, null
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %while.end
  br label %onError

if.end.53:                                        ; preds = %while.end
  %57 = load i64, i64* %count, align 8
  %cmp54 = icmp slt i64 %57, 12
  br i1 %cmp54, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.end.53
  %58 = load %struct._object*, %struct._object** %sub, align 8
  %59 = load i64, i64* %count, align 8
  %60 = load %struct._object*, %struct._object** %list, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyListObject*
  %ob_item56 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %61, i32 0, i32 1
  %62 = load %struct._object**, %struct._object*** %ob_item56, align 8
  %arrayidx57 = getelementptr %struct._object*, %struct._object** %62, i64 %59
  store %struct._object* %58, %struct._object** %arrayidx57, align 8
  br label %if.end.86

if.else.58:                                       ; preds = %if.end.53
  %63 = load %struct._object*, %struct._object** %list, align 8
  %64 = load %struct._object*, %struct._object** %sub, align 8
  %call59 = call i32 @PyList_Append(%struct._object* %63, %struct._object* %64)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.73

if.then.61:                                       ; preds = %if.else.58
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %65 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp63, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %67, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.62
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.62
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %70(%struct._object* %71)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %onError

if.else.73:                                       ; preds = %if.else.58
  br label %do.body.74

do.body.74:                                       ; preds = %if.else.73
  %72 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp75, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %74, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.74
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %77(%struct._object* %78)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %if.end.85

if.end.85:                                        ; preds = %do.end.84
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.55
  %79 = load i64, i64* %count, align 8
  %inc87 = add i64 %79, 1
  store i64 %inc87, i64* %count, align 8
  %80 = load i64, i64* %count, align 8
  %81 = load %struct._object*, %struct._object** %list, align 8
  %82 = bitcast %struct._object* %81 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %82, i32 0, i32 1
  store i64 %80, i64* %ob_size, align 8
  %83 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %83, %struct._object** %retval
  br label %return

onError:                                          ; preds = %do.end.72, %if.then.52, %do.end, %if.then.20
  br label %do.body.88

do.body.88:                                       ; preds = %onError
  %84 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %84, %struct._object** %_py_decref_tmp89, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt90, align 8
  %dec91 = add i64 %86, -1
  store i64 %dec91, i64* %ob_refcnt90, align 8
  %cmp92 = icmp ne i64 %dec91, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.88
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  call void %89(%struct._object* %90)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.98, %if.end.86, %if.then.7, %if.then.2, %if.then
  %91 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %91
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_split_char(%struct._object* %str_obj, i8* %str, i64 %str_len, i8 signext %ch, i64 %maxcount) #3 {
entry:
  %retval = alloca %struct._object*, align 8
  %str_obj.addr = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %ch.addr = alloca i8, align 1
  %maxcount.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %list = alloca %struct._object*, align 8
  %sub = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  store %struct._object* %str_obj, %struct._object** %str_obj.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store i8 %ch, i8* %ch.addr, align 1
  store i64 %maxcount, i64* %maxcount.addr, align 8
  store i64 0, i64* %count, align 8
  %0 = load i64, i64* %maxcount.addr, align 8
  %cmp = icmp sge i64 %0, 12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %maxcount.addr, align 8
  %add = add i64 %1, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 12, %cond.true ], [ %add, %cond.false ]
  %call = call %struct._object* @PyList_New(i64 %cond)
  store %struct._object* %call, %struct._object** %list, align 8
  %2 = load %struct._object*, %struct._object** %list, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %3 = load i64, i64* %j, align 8
  %4 = load i64, i64* %str_len.addr, align 8
  %cmp2 = icmp slt i64 %3, %4
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i64, i64* %maxcount.addr, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %maxcount.addr, align 8
  %cmp3 = icmp sgt i64 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i64, i64* %j, align 8
  %8 = load i64, i64* %str_len.addr, align 8
  %cmp4 = icmp slt i64 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %j, align 8
  %10 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr i8, i8* %10, i64 %9
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %12 = load i8, i8* %ch.addr, align 1
  %conv5 = sext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end.43

if.then.8:                                        ; preds = %for.body
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %13, i64 %14
  %15 = load i64, i64* %j, align 8
  %16 = load i64, i64* %i, align 8
  %sub9 = sub i64 %15, %16
  %call10 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub9)
  store %struct._object* %call10, %struct._object** %sub, align 8
  %17 = load %struct._object*, %struct._object** %sub, align 8
  %cmp11 = icmp eq %struct._object* %17, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.8
  br label %onError

if.end.14:                                        ; preds = %if.then.8
  %18 = load i64, i64* %count, align 8
  %cmp15 = icmp slt i64 %18, 12
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.14
  %19 = load %struct._object*, %struct._object** %sub, align 8
  %20 = load i64, i64* %count, align 8
  %21 = load %struct._object*, %struct._object** %list, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %22, i32 0, i32 1
  %23 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx18 = getelementptr %struct._object*, %struct._object** %23, i64 %20
  store %struct._object* %19, %struct._object** %arrayidx18, align 8
  br label %if.end.41

if.else:                                          ; preds = %if.end.14
  %24 = load %struct._object*, %struct._object** %list, align 8
  %25 = load %struct._object*, %struct._object** %sub, align 8
  %call19 = call i32 @PyList_Append(%struct._object* %24, %struct._object* %25)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then.20, label %if.else.27

if.then.20:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %26 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %dec21 = add i64 %28, -1
  store i64 %dec21, i64* %ob_refcnt, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body
  br label %if.end.26

if.else.25:                                       ; preds = %do.body
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %31(%struct._object* %32)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.26
  br label %onError

if.else.27:                                       ; preds = %if.else
  br label %do.body.28

do.body.28:                                       ; preds = %if.else.27
  %33 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp29, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %35, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.28
  br label %if.end.38

if.else.35:                                       ; preds = %do.body.28
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %38(%struct._object* %39)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.17
  %40 = load i64, i64* %count, align 8
  %inc = add i64 %40, 1
  store i64 %inc, i64* %count, align 8
  %41 = load i64, i64* %j, align 8
  %add42 = add i64 %41, 1
  store i64 %add42, i64* %j, align 8
  store i64 %add42, i64* %i, align 8
  br label %for.end

if.end.43:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %42 = load i64, i64* %j, align 8
  %inc44 = add i64 %42, 1
  store i64 %inc44, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.41, %for.cond
  br label %while.cond

while.end:                                        ; preds = %land.end
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* %str_len.addr, align 8
  %cmp45 = icmp sle i64 %43, %44
  br i1 %cmp45, label %if.then.47, label %if.end.92

if.then.47:                                       ; preds = %while.end
  %45 = load i8*, i8** %str.addr, align 8
  %46 = load i64, i64* %i, align 8
  %add.ptr48 = getelementptr i8, i8* %45, i64 %46
  %47 = load i64, i64* %str_len.addr, align 8
  %48 = load i64, i64* %i, align 8
  %sub49 = sub i64 %47, %48
  %call50 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr48, i64 %sub49)
  store %struct._object* %call50, %struct._object** %sub, align 8
  %49 = load %struct._object*, %struct._object** %sub, align 8
  %cmp51 = icmp eq %struct._object* %49, null
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.47
  br label %onError

if.end.54:                                        ; preds = %if.then.47
  %50 = load i64, i64* %count, align 8
  %cmp55 = icmp slt i64 %50, 12
  br i1 %cmp55, label %if.then.57, label %if.else.60

if.then.57:                                       ; preds = %if.end.54
  %51 = load %struct._object*, %struct._object** %sub, align 8
  %52 = load i64, i64* %count, align 8
  %53 = load %struct._object*, %struct._object** %list, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyListObject*
  %ob_item58 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %54, i32 0, i32 1
  %55 = load %struct._object**, %struct._object*** %ob_item58, align 8
  %arrayidx59 = getelementptr %struct._object*, %struct._object** %55, i64 %52
  store %struct._object* %51, %struct._object** %arrayidx59, align 8
  br label %if.end.90

if.else.60:                                       ; preds = %if.end.54
  %56 = load %struct._object*, %struct._object** %list, align 8
  %57 = load %struct._object*, %struct._object** %sub, align 8
  %call61 = call i32 @PyList_Append(%struct._object* %56, %struct._object* %57)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.else.76

if.then.63:                                       ; preds = %if.else.60
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.63
  %58 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp65, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %60, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.64
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.64
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %63(%struct._object* %64)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %onError

if.else.76:                                       ; preds = %if.else.60
  br label %do.body.77

do.body.77:                                       ; preds = %if.else.76
  %65 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp78, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %67, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %do.body.77
  br label %if.end.87

if.else.84:                                       ; preds = %do.body.77
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %70(%struct._object* %71)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.83
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  br label %if.end.89

if.end.89:                                        ; preds = %do.end.88
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.57
  %72 = load i64, i64* %count, align 8
  %inc91 = add i64 %72, 1
  store i64 %inc91, i64* %count, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.90, %while.end
  %73 = load i64, i64* %count, align 8
  %74 = load %struct._object*, %struct._object** %list, align 8
  %75 = bitcast %struct._object* %74 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %75, i32 0, i32 1
  store i64 %73, i64* %ob_size, align 8
  %76 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %76, %struct._object** %retval
  br label %return

onError:                                          ; preds = %do.end.75, %if.then.53, %do.end, %if.then.13
  br label %do.body.93

do.body.93:                                       ; preds = %onError
  %77 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %77, %struct._object** %_py_decref_tmp94, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt95, align 8
  %dec96 = add i64 %79, -1
  store i64 %dec96, i64* %ob_refcnt95, align 8
  %cmp97 = icmp ne i64 %dec96, 0
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.93
  br label %if.end.103

if.else.100:                                      ; preds = %do.body.93
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  call void %82(%struct._object* %83)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.104, %if.end.92, %if.then
  %84 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %84
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_splitlines(%struct._object* %str_obj, i8* %str, i64 %str_len, i32 %keepends) #3 {
entry:
  %retval = alloca %struct._object*, align 8
  %str_obj.addr = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %str_len.addr = alloca i64, align 8
  %keepends.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %list = alloca %struct._object*, align 8
  %sub = alloca %struct._object*, align 8
  %eol = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  store %struct._object* %str_obj, %struct._object** %str_obj.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %str_len, i64* %str_len.addr, align 8
  store i32 %keepends, i32* %keepends.addr, align 4
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %list, align 8
  %0 = load %struct._object*, %struct._object** %list, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.58, %if.end
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %str_len.addr, align 8
  %cmp1 = icmp slt i64 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %str_len.addr, align 8
  %cmp2 = icmp slt i64 %3, %4
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i64, i64* %i, align 8
  %6 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr i8, i8* %6, i64 %5
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 10
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load i64, i64* %i, align 8
  %9 = load i8*, i8** %str.addr, align 8
  %arrayidx5 = getelementptr i8, i8* %9, i64 %8
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %11 = phi i1 [ true, %land.rhs ], [ %cmp7, %lor.rhs ]
  %lnot = xor i1 %11, true
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %lnot, %lor.end ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i64, i64* %i, align 8
  store i64 %14, i64* %eol, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %str_len.addr, align 8
  %cmp9 = icmp slt i64 %15, %16
  br i1 %cmp9, label %if.then.11, label %if.end.30

if.then.11:                                       ; preds = %while.end
  %17 = load i64, i64* %i, align 8
  %18 = load i8*, i8** %str.addr, align 8
  %arrayidx12 = getelementptr i8, i8* %18, i64 %17
  %19 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %19 to i32
  %cmp14 = icmp eq i32 %conv13, 13
  br i1 %cmp14, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.11
  %20 = load i64, i64* %i, align 8
  %add = add i64 %20, 1
  %21 = load i64, i64* %str_len.addr, align 8
  %cmp16 = icmp slt i64 %add, %21
  br i1 %cmp16, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %22 = load i64, i64* %i, align 8
  %add19 = add i64 %22, 1
  %23 = load i8*, i8** %str.addr, align 8
  %arrayidx20 = getelementptr i8, i8* %23, i64 %add19
  %24 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %24 to i32
  %cmp22 = icmp eq i32 %conv21, 10
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true.18
  %25 = load i64, i64* %i, align 8
  %add25 = add i64 %25, 2
  store i64 %add25, i64* %i, align 8
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true.18, %land.lhs.true, %if.then.11
  %26 = load i64, i64* %i, align 8
  %inc26 = add i64 %26, 1
  store i64 %inc26, i64* %i, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.24
  %27 = load i32, i32* %keepends.addr, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.27
  %28 = load i64, i64* %i, align 8
  store i64 %28, i64* %eol, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.27
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %while.end
  %29 = load i8*, i8** %str.addr, align 8
  %30 = load i64, i64* %j, align 8
  %add.ptr = getelementptr i8, i8* %29, i64 %30
  %31 = load i64, i64* %eol, align 8
  %32 = load i64, i64* %j, align 8
  %sub31 = sub i64 %31, %32
  %call32 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub31)
  store %struct._object* %call32, %struct._object** %sub, align 8
  %33 = load %struct._object*, %struct._object** %sub, align 8
  %cmp33 = icmp eq %struct._object* %33, null
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.30
  br label %onError

if.end.36:                                        ; preds = %if.end.30
  %34 = load %struct._object*, %struct._object** %list, align 8
  %35 = load %struct._object*, %struct._object** %sub, align 8
  %call37 = call i32 @PyList_Append(%struct._object* %34, %struct._object* %35)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.45

if.then.39:                                       ; preds = %if.end.36
  br label %do.body

do.body:                                          ; preds = %if.then.39
  %36 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp40 = icmp ne i64 %dec, 0
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body
  br label %if.end.44

if.else.43:                                       ; preds = %do.body
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end

do.end:                                           ; preds = %if.end.44
  br label %onError

if.else.45:                                       ; preds = %if.end.36
  br label %do.body.46

do.body.46:                                       ; preds = %if.else.45
  %43 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp47, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt48, align 8
  %dec49 = add i64 %45, -1
  store i64 %dec49, i64* %ob_refcnt48, align 8
  %cmp50 = icmp ne i64 %dec49, 0
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.46
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.46
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  call void %48(%struct._object* %49)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  br label %if.end.58

if.end.58:                                        ; preds = %do.end.57
  %50 = load i64, i64* %i, align 8
  store i64 %50, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %51, %struct._object** %retval
  br label %return

onError:                                          ; preds = %do.end, %if.then.35
  br label %do.body.59

do.body.59:                                       ; preds = %onError
  %52 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp60, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %54, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.59
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.59
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  call void %57(%struct._object* %58)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.70, %for.end, %if.then
  %59 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %59
}

declare void @_Py_bytes_swapcase(i8*, i8*, i64) #1

declare void @_Py_bytes_title(i8*, i8*, i64) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare void @_Py_bytes_upper(i8*, i8*, i64) #1

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare i32 @PyBuffer_ToContiguous(i8*, %struct.bufferinfo*, i64, i8 signext) #1

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearrayiter_length_hint(%struct.bytesiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.bytesiterobject*, align 8
  %len = alloca i64, align 8
  store %struct.bytesiterobject* %it, %struct.bytesiterobject** %it.addr, align 8
  store i64 0, i64* %len, align 8
  %0 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %0, i32 0, i32 2
  %1 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %it_seq, align 8
  %tobool = icmp ne %struct.PyByteArrayObject* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %2, i32 0, i32 2
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %it_seq1, align 8
  %4 = bitcast %struct.PyByteArrayObject* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %6 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %6, i32 0, i32 1
  %7 = load i64, i64* %it_index, align 8
  %sub = sub i64 %5, %7
  store i64 %sub, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearrayiter_reduce(%struct.bytesiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.bytesiterobject*, align 8
  %u = alloca %struct._object*, align 8
  store %struct.bytesiterobject* %it, %struct.bytesiterobject** %it.addr, align 8
  %0 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %0, i32 0, i32 2
  %1 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %it_seq, align 8
  %cmp = icmp ne %struct.PyByteArrayObject* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0))
  %2 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %2, i32 0, i32 2
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %it_seq1, align 8
  %4 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %4, i32 0, i32 1
  %5 = load i64, i64* %it_index, align 8
  %call2 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0), %struct._object* %call, %struct.PyByteArrayObject* %3, i64 %5)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call3 = call %struct._object* @PyUnicode_FromUnicode(i32* null, i64 0)
  store %struct._object* %call3, %struct._object** %u, align 8
  %6 = load %struct._object*, %struct._object** %u, align 8
  %cmp4 = icmp eq %struct._object* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %call6 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0))
  %7 = load %struct._object*, %struct._object** %u, align 8
  %call7 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), %struct._object* %call6, %struct._object* %7)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then.5, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytearrayiter_setstate(%struct.bytesiterobject* %it, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.bytesiterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  store %struct.bytesiterobject* %it, %struct.bytesiterobject** %it.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %0)
  store i64 %call, i64* %index, align 8
  %1 = load i64, i64* %index, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %2, i32 0, i32 2
  %3 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %it_seq, align 8
  %cmp2 = icmp ne %struct.PyByteArrayObject* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.end
  %4 = load i64, i64* %index, align 8
  %cmp4 = icmp slt i64 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  store i64 0, i64* %index, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.then.3
  %5 = load i64, i64* %index, align 8
  %6 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_seq6 = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %6, i32 0, i32 2
  %7 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %it_seq6, align 8
  %8 = bitcast %struct.PyByteArrayObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %cmp7 = icmp sgt i64 %5, %9
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.else
  %10 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_seq9 = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %10, i32 0, i32 2
  %11 = load %struct.PyByteArrayObject*, %struct.PyByteArrayObject** %it_seq9, align 8
  %12 = bitcast %struct.PyByteArrayObject* %11 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size10, align 8
  store i64 %13, i64* %index, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  %14 = load i64, i64* %index, align 8
  %15 = load %struct.bytesiterobject*, %struct.bytesiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.bytesiterobject, %struct.bytesiterobject* %15, i32 0, i32 1
  store i64 %14, i64* %it_index, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

declare %struct._object* @_PyObject_GetBuiltin(i8*) #1

declare %struct._object* @PyUnicode_FromUnicode(i32*, i64) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare void @_PyErr_BadInternalCall(i8*, i32) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
