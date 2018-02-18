; ModuleID = './bytesobject.bc'
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
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%union._gc_head = type { %struct.anon.0 }
%struct.anon.0 = type { %union._gc_head*, %union._gc_head*, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.striterobject = type { %struct._object, i64, %struct.PyBytesObject* }

@PyExc_SystemError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [50 x i8] c"Negative size passed to PyBytes_FromStringAndSize\00", align 1
@nullstring = internal global %struct.PyBytesObject* null, align 8
@characters = internal global [256 x %struct.PyBytesObject*] zeroinitializer, align 16
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"byte string is too large\00", align 1
@PyBytes_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i64 33, i64 1, void (%struct._object*)* @bytes_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @bytes_repr, %struct.PyNumberMethods* null, %struct.PySequenceMethods* @bytes_as_sequence, %struct.PyMappingMethods* @bytes_as_mapping, i64 (%struct._object*)* bitcast (i64 (%struct.PyBytesObject*)* @bytes_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* @bytes_str, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* @bytes_as_buffer, i64 134480896, i8* getelementptr inbounds ([459 x i8], [459 x i8]* @bytes_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct.PyBytesObject*, i32)* @bytes_richcompare to %struct._object* (%struct._object*, %struct._object*, i32)*), i64 0, %struct._object* (%struct._object*)* @bytes_iter, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([41 x %struct.PyMethodDef], [41 x %struct.PyMethodDef]* @bytes_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @PyBaseObject_Type, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @bytes_new, void (i8*)* @PyObject_Free, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"byte string is too long\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@.str.3 = private unnamed_addr constant [70 x i8] c"PyBytes_FromFormatV(): %c format expects an integer in range [0; 255]\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%zd\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"Trailing \5C in string\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"invalid \5Cx escape at position %d\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"decoding error; unknown error handling code: %.400s\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.19 = private unnamed_addr constant [29 x i8] c"expected bytes, %.200s found\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Objects/bytesobject.c\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"expected bytes with no null\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"bytes object is too large to make repr\00", align 1
@Py_hexdigits = external global i8*, align 8
@.str.23 = private unnamed_addr constant [39 x i8] c"cannot convert unicode object to bytes\00", align 1
@PyList_Type = external global %struct._typeobject, align 8
@.str.24 = private unnamed_addr constant [31 x i8] c"bytes must be in range(0, 256)\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@bytes_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct.PyBytesObject*)* @bytes_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* @bytes_concat, %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.PyBytesObject*, i64)* @bytes_repeat to %struct._object* (%struct._object*, i64)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.PyBytesObject*, i64)* @bytes_item to %struct._object* (%struct._object*, i64)*), i8* null, i32 (%struct._object*, i64, %struct._object*)* null, i8* null, i32 (%struct._object*, %struct._object*)* @bytes_contains, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@bytes_as_mapping = internal global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct.PyBytesObject*)* @bytes_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_subscript to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* null }, align 8
@bytes_as_buffer = internal global %struct.PyBufferProcs { i32 (%struct._object*, %struct.bufferinfo*, i32)* bitcast (i32 (%struct.PyBytesObject*, %struct.bufferinfo*, i32)* @bytes_buffer_getbuffer to i32 (%struct._object*, %struct.bufferinfo*, i32)*), void (%struct._object*, %struct.bufferinfo*)* null }, align 8
@bytes_doc = internal global [459 x i8] c"bytes(iterable_of_ints) -> bytes\0Abytes(string, encoding[, errors]) -> bytes\0Abytes(bytes_or_buffer) -> immutable copy of bytes_or_buffer\0Abytes(int) -> bytes object of size given by the parameter initialized with null bytes\0Abytes() -> empty bytes object\0A\0AConstruct an immutable array of bytes from:\0A  - an iterable yielding integers in range(256)\0A  - a text string encoded using the specified encoding\0A  - any object implementing the buffer API.\0A  - an integer\00", align 16
@bytes_methods = internal global [41 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*)* @bytes_getnewargs to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_capitalize to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_capitalize__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stringlib_center, i32 1, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @center__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_count to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([199 x i8], [199 x i8]* @count__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @bytes_decode to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([428 x i8], [428 x i8]* @decode__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_endswith to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([264 x i8], [264 x i8]* @endswith__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @stringlib_expandtabs to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @expandtabs__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_find to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([238 x i8], [238 x i8]* @find__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @bytes_fromhex, i32 17, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @fromhex_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_index to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @index__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_isalnum to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_isalnum__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_isalpha to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_isalpha__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_isdigit to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_isdigit__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_islower to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_islower__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_isspace to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_isspace__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_istitle to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_istitle__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_isupper to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_isupper__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @bytes_join, i32 8, i8* getelementptr inbounds ([164 x i8], [164 x i8]* @join__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stringlib_ljust, i32 1, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @ljust__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_lower to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_lower__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_lstrip to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @lstrip__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @bytes_maketrans, i32 33, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_maketrans__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_partition to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([221 x i8], [221 x i8]* @partition__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_replace to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([198 x i8], [198 x i8]* @replace__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_rfind to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @rfind__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_rindex to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @rindex__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stringlib_rjust, i32 1, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @rjust__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_rpartition to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([248 x i8], [248 x i8]* @rpartition__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*, %struct._object*)* @bytes_rsplit to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([339 x i8], [339 x i8]* @rsplit__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_rstrip to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @rstrip__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*, %struct._object*)* @bytes_split to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([302 x i8], [302 x i8]* @split__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @bytes_splitlines to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @splitlines__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_startswith to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @startswith__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_strip to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @strip__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_swapcase to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_swapcase__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_title to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_title__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*, %struct._object*)* @bytes_translate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([272 x i8], [272 x i8]* @translate__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @stringlib_upper to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_Py_upper__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @stringlib_zfill, i32 1, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @zfill__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBytesObject*)* @bytes_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @sizeof__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyBaseObject_Type = external global %struct._typeobject, align 8
@.str.26 = private unnamed_addr constant [15 x i8] c"bytes_iterator\00", align 1
@striter_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.striterobject*)* @striter_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.striterobject*)* @striter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.striterobject*, %struct._object*)* @striter_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyBytesIter_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.striterobject*)* @striter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.striterobject*, i32 (%struct._object*, i8*)*, i8*)* @striter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.striterobject*)* @striter_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @striter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.27 = private unnamed_addr constant [26 x i8] c"can only join an iterable\00", align 1
@.str.28 = private unnamed_addr constant [98 x i8] c"sequence item %zd: expected bytes, bytearray, or an object with the buffer interface, %.80s found\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"join() result is too long\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.30 = private unnamed_addr constant [39 x i8] c"sequence changed size during iteration\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"Type %.100s doesn't support the buffer API\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"repeated bytes are too long\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.33 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"byte must be in range(0, 256)\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"byte indices must be integers, not %.200s\00", align 1
@Py_BytesWarningFlag = external global i32, align 4
@PyExc_BytesWarning = external global %struct._object*, align 8
@.str.37 = private unnamed_addr constant [26 x i8] c"str() on a bytes instance\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.38 = private unnamed_addr constant [36 x i8] c"Comparison between bytes and string\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.39 = private unnamed_addr constant [15 x i8] c"__getnewargs__\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"capitalize\00", align 1
@_Py_capitalize__doc__ = external constant [0 x i8], align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@center__doc__ = internal global [163 x i8] c"B.center(width[, fillchar]) -> copy of B\0A\0AReturn B centered in a string of length width.  Padding is\0Adone using the specified fill character (default is a space).\00", align 16
@.str.42 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@count__doc__ = internal global [199 x i8] c"B.count(sub[, start[, end]]) -> int\0A\0AReturn the number of non-overlapping occurrences of substring sub in\0Astring B[start:end].  Optional arguments start and end are interpreted\0Aas in slice notation.\00", align 16
@.str.43 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@decode__doc__ = internal global [428 x i8] c"B.decode(encoding='utf-8', errors='strict') -> str\0A\0ADecode B using the codec registered for encoding. Default encoding\0Ais 'utf-8'. errors may be given to set a different error\0Ahandling scheme.  Default is 'strict' meaning that encoding errors raise\0Aa UnicodeDecodeError.  Other possible values are 'ignore' and 'replace'\0Aas well as any other name registerd with codecs.register_error that is\0Aable to handle UnicodeDecodeErrors.\00", align 16
@.str.44 = private unnamed_addr constant [9 x i8] c"endswith\00", align 1
@endswith__doc__ = internal global [264 x i8] c"B.endswith(suffix[, start[, end]]) -> bool\0A\0AReturn True if B ends with the specified suffix, False otherwise.\0AWith optional start, test B beginning at that position.\0AWith optional end, stop comparing B at that position.\0Asuffix can also be a tuple of bytes to try.\00", align 16
@.str.45 = private unnamed_addr constant [11 x i8] c"expandtabs\00", align 1
@expandtabs__doc__ = internal global [173 x i8] c"B.expandtabs(tabsize=8) -> copy of B\0A\0AReturn a copy of B where all tab characters are expanded using spaces.\0AIf tabsize is not given, a tab size of 8 characters is assumed.\00", align 16
@.str.46 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@find__doc__ = internal global [238 x i8] c"B.find(sub[, start[, end]]) -> int\0A\0AReturn the lowest index in B where substring sub is found,\0Asuch that sub is contained within B[start:end].  Optional\0Aarguments start and end are interpreted as in slice notation.\0A\0AReturn -1 on failure.\00", align 16
@.str.47 = private unnamed_addr constant [8 x i8] c"fromhex\00", align 1
@fromhex_doc = internal global [187 x i8] c"bytes.fromhex(string) -> bytes\0A\0ACreate a bytes object from a string of hexadecimal numbers.\0ASpaces between two numbers are accepted.\0AExample: bytes.fromhex('B9 01EF') -> b'\5Cxb9\5Cx01\5Cxef'.\00", align 16
@.str.48 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@index__doc__ = internal global [105 x i8] c"B.index(sub[, start[, end]]) -> int\0A\0ALike B.find() but raise ValueError when the substring is not found.\00", align 16
@.str.49 = private unnamed_addr constant [8 x i8] c"isalnum\00", align 1
@_Py_isalnum__doc__ = external constant [0 x i8], align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"isalpha\00", align 1
@_Py_isalpha__doc__ = external constant [0 x i8], align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"isdigit\00", align 1
@_Py_isdigit__doc__ = external constant [0 x i8], align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"islower\00", align 1
@_Py_islower__doc__ = external constant [0 x i8], align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"isspace\00", align 1
@_Py_isspace__doc__ = external constant [0 x i8], align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"istitle\00", align 1
@_Py_istitle__doc__ = external constant [0 x i8], align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"isupper\00", align 1
@_Py_isupper__doc__ = external constant [0 x i8], align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@join__doc__ = internal global [164 x i8] c"B.join(iterable_of_bytes) -> bytes\0A\0AConcatenate any number of bytes objects, with B in between each pair.\0AExample: b'.'.join([b'ab', b'pq', b'rs']) -> b'ab.pq.rs'.\00", align 16
@.str.57 = private unnamed_addr constant [6 x i8] c"ljust\00", align 1
@ljust__doc__ = internal global [167 x i8] c"B.ljust(width[, fillchar]) -> copy of B\0A\0AReturn B left justified in a string of length width. Padding is\0Adone using the specified fill character (default is a space).\00", align 16
@.str.58 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@_Py_lower__doc__ = external constant [0 x i8], align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"lstrip\00", align 1
@lstrip__doc__ = internal global [135 x i8] c"B.lstrip([bytes]) -> bytes\0A\0AStrip leading bytes contained in the argument.\0AIf the argument is omitted, strip leading ASCII whitespace.\00", align 16
@.str.60 = private unnamed_addr constant [10 x i8] c"maketrans\00", align 1
@_Py_maketrans__doc__ = external constant [0 x i8], align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"partition\00", align 1
@partition__doc__ = internal global [221 x i8] c"B.partition(sep) -> (head, sep, tail)\0A\0ASearch for the separator sep in B, and return the part before it,\0Athe separator itself, and the part after it.  If the separator is not\0Afound, returns B and two empty bytes objects.\00", align 16
@replace__doc__ = internal global [198 x i8] c"B.replace(old, new[, count]) -> bytes\0A\0AReturn a copy of B with all occurrences of subsection\0Aold replaced by new.  If the optional argument count is\0Agiven, only first count occurances are replaced.\00", align 16
@.str.62 = private unnamed_addr constant [6 x i8] c"rfind\00", align 1
@rfind__doc__ = internal global [240 x i8] c"B.rfind(sub[, start[, end]]) -> int\0A\0AReturn the highest index in B where substring sub is found,\0Asuch that sub is contained within B[start:end].  Optional\0Aarguments start and end are interpreted as in slice notation.\0A\0AReturn -1 on failure.\00", align 16
@.str.63 = private unnamed_addr constant [7 x i8] c"rindex\00", align 1
@rindex__doc__ = internal global [107 x i8] c"B.rindex(sub[, start[, end]]) -> int\0A\0ALike B.rfind() but raise ValueError when the substring is not found.\00", align 16
@.str.64 = private unnamed_addr constant [6 x i8] c"rjust\00", align 1
@rjust__doc__ = internal global [167 x i8] c"B.rjust(width[, fillchar]) -> copy of B\0A\0AReturn B right justified in a string of length width. Padding is\0Adone using the specified fill character (default is a space)\00", align 16
@.str.65 = private unnamed_addr constant [11 x i8] c"rpartition\00", align 1
@rpartition__doc__ = internal global [248 x i8] c"B.rpartition(sep) -> (head, sep, tail)\0A\0ASearch for the separator sep in B, starting at the end of B,\0Aand return the part before it, the separator itself, and the\0Apart after it.  If the separator is not found, returns two empty\0Abytes objects and B.\00", align 16
@.str.66 = private unnamed_addr constant [7 x i8] c"rsplit\00", align 1
@rsplit__doc__ = internal global [339 x i8] c"B.rsplit(sep=None, maxsplit=-1) -> list of bytes\0A\0AReturn a list of the sections in B, using sep as the delimiter,\0Astarting at the end of B and working to the front.\0AIf sep is not given, B is split on ASCII whitespace characters\0A(space, tab, return, newline, formfeed, vertical tab).\0AIf maxsplit is given, at most maxsplit splits are done.\00", align 16
@.str.67 = private unnamed_addr constant [7 x i8] c"rstrip\00", align 1
@rstrip__doc__ = internal global [137 x i8] c"B.rstrip([bytes]) -> bytes\0A\0AStrip trailing bytes contained in the argument.\0AIf the argument is omitted, strip trailing ASCII whitespace.\00", align 16
@.str.68 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@split__doc__ = internal global [302 x i8] c"B.split(sep=None, maxsplit=-1) -> list of bytes\0A\0AReturn a list of the sections in B, using sep as the delimiter.\0AIf sep is not specified or is None, B is split on ASCII whitespace\0Acharacters (space, tab, return, newline, formfeed, vertical tab).\0AIf maxsplit is given, at most maxsplit splits are done.\00", align 16
@.str.69 = private unnamed_addr constant [11 x i8] c"splitlines\00", align 1
@splitlines__doc__ = internal global [191 x i8] c"B.splitlines([keepends]) -> list of lines\0A\0AReturn a list of the lines in B, breaking at line boundaries.\0ALine breaks are not included in the resulting list unless keepends\0Ais given and true.\00", align 16
@.str.70 = private unnamed_addr constant [11 x i8] c"startswith\00", align 1
@startswith__doc__ = internal global [268 x i8] c"B.startswith(prefix[, start[, end]]) -> bool\0A\0AReturn True if B starts with the specified prefix, False otherwise.\0AWith optional start, test B beginning at that position.\0AWith optional end, stop comparing B at that position.\0Aprefix can also be a tuple of bytes to try.\00", align 16
@.str.71 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@strip__doc__ = internal global [160 x i8] c"B.strip([bytes]) -> bytes\0A\0AStrip leading and trailing bytes contained in the argument.\0AIf the argument is omitted, strip leading and trailing ASCII whitespace.\00", align 16
@.str.72 = private unnamed_addr constant [9 x i8] c"swapcase\00", align 1
@_Py_swapcase__doc__ = external constant [0 x i8], align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@_Py_title__doc__ = external constant [0 x i8], align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"translate\00", align 1
@translate__doc__ = internal global [272 x i8] c"B.translate(table[, deletechars]) -> bytes\0A\0AReturn a copy of B, where all characters occurring in the\0Aoptional argument deletechars are removed, and the remaining\0Acharacters have been mapped through the given translation\0Atable, which must be a bytes object of length 256.\00", align 16
@.str.75 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@_Py_upper__doc__ = external constant [0 x i8], align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"zfill\00", align 1
@zfill__doc__ = internal global [139 x i8] c"B.zfill(width) -> copy of B\0A\0APad a numeric string B with zeros on the left, to fill a field\0Aof the specified width.  B is never truncated.\00", align 16
@.str.77 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@sizeof__doc__ = internal global [48 x i8] c"B.__sizeof__() -> size of B in memory, in bytes\00", align 16
@.str.78 = private unnamed_addr constant [5 x i8] c"(y#)\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"n|c:center\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@bytes_decode.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i8* null], align 16
@.str.80 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"|ss:decode\00", align 1
@.str.83 = private unnamed_addr constant [61 x i8] c"endswith first arg must be bytes or a tuple of bytes, not %s\00", align 1
@stringlib_expandtabs.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* null], align 16
@.str.84 = private unnamed_addr constant [8 x i8] c"tabsize\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"|i:expandtabs\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"result too long\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"find/rfind/index/rindex\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"U:fromhex\00", align 1
@.str.89 = private unnamed_addr constant [62 x i8] c"non-hexadecimal number found in fromhex() arg at position %zd\00", align 1
@_Py_ctype_tolower = external constant [256 x i8], align 16
@.str.90 = private unnamed_addr constant [20 x i8] c"substring not found\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"n|c:ljust\00", align 1
@stripformat = internal global [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0)], align 16
@.str.92 = private unnamed_addr constant [10 x i8] c"|O:lstrip\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"|O:rstrip\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"|O:strip\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"empty separator\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"OO|n:replace\00", align 1
@.str.97 = private unnamed_addr constant [31 x i8] c"replacement bytes are too long\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"n|c:rjust\00", align 1
@bytes_rsplit.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0), i8* null], align 16
@.str.99 = private unnamed_addr constant [4 x i8] c"sep\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"maxsplit\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"|On:rsplit\00", align 1
@bytes_split.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0), i8* null], align 16
@.str.102 = private unnamed_addr constant [10 x i8] c"|On:split\00", align 1
@bytes_splitlines.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i8* null], align 16
@.str.103 = private unnamed_addr constant [9 x i8] c"keepends\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"|i:splitlines\00", align 1
@.str.105 = private unnamed_addr constant [63 x i8] c"startswith first arg must be bytes or a tuple of bytes, not %s\00", align 1
@.str.106 = private unnamed_addr constant [46 x i8] c"translation table must be 256 characters long\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"n:zfill\00", align 1
@bytes_new.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i8* null], align 16
@.str.108 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@bytes_new.PyId___bytes__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0), %struct._object* null }, align 8
@.str.109 = private unnamed_addr constant [10 x i8] c"__bytes__\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"|Oss:bytes\00", align 1
@.str.111 = private unnamed_addr constant [45 x i8] c"encoding or errors without sequence argument\00", align 1
@.str.112 = private unnamed_addr constant [36 x i8] c"string argument without an encoding\00", align 1
@.str.113 = private unnamed_addr constant [43 x i8] c"__bytes__ returned non-bytes (type %.200s)\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"negative count\00", align 1
@.str.115 = private unnamed_addr constant [45 x i8] c"encoding or errors without a string argument\00", align 1
@.str.116 = private unnamed_addr constant [30 x i8] c"can't concat %.100s to %.100s\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal global [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@.str.118 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.119 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@setstate_doc = internal global [38 x i8] c"Set state information for unpickling.\00", align 16
@.str.120 = private unnamed_addr constant [6 x i8] c"N(O)n\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"N(N)\00", align 1
@.str.123 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8

; Function Attrs: nounwind uwtable
define %struct._object* @PyBytes_FromStringAndSize(i8* %str, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %op = alloca %struct.PyBytesObject*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** @nullstring, align 8
  store %struct.PyBytesObject* %3, %struct.PyBytesObject** %op, align 8
  %cmp2 = icmp ne %struct.PyBytesObject* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %4 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %5 = bitcast %struct.PyBytesObject* %4 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %8 = bitcast %struct.PyBytesObject* %7 to %struct._object*
  store %struct._object* %8, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %9 = load i64, i64* %size.addr, align 8
  %cmp5 = icmp eq i64 %9, 1
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.14

land.lhs.true.6:                                  ; preds = %if.end.4
  %10 = load i8*, i8** %str.addr, align 8
  %cmp7 = icmp ne i8* %10, null
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.14

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr [256 x %struct.PyBytesObject*], [256 x %struct.PyBytesObject*]* @characters, i32 0, i64 %idxprom
  %13 = load %struct.PyBytesObject*, %struct.PyBytesObject** %arrayidx, align 8
  store %struct.PyBytesObject* %13, %struct.PyBytesObject** %op, align 8
  %cmp9 = icmp ne %struct.PyBytesObject* %13, null
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %land.lhs.true.8
  %14 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %15 = bitcast %struct.PyBytesObject* %14 to %struct._object*
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt12, align 8
  %inc13 = add i64 %16, 1
  store i64 %inc13, i64* %ob_refcnt12, align 8
  %17 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %18 = bitcast %struct.PyBytesObject* %17 to %struct._object*
  store %struct._object* %18, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.8, %land.lhs.true.6, %if.end.4
  %19 = load i64, i64* %size.addr, align 8
  %cmp15 = icmp ugt i64 %19, 9223372036854775774
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  %20 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %21 = load i64, i64* %size.addr, align 8
  %add = add i64 33, %21
  %call = call i8* @PyObject_Malloc(i64 %add)
  %22 = bitcast i8* %call to %struct.PyBytesObject*
  store %struct.PyBytesObject* %22, %struct.PyBytesObject** %op, align 8
  %23 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %cmp19 = icmp eq %struct.PyBytesObject* %23, null
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.18
  %call22 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call22, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %24 = load i64, i64* %size.addr, align 8
  %25 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %26 = bitcast %struct.PyBytesObject* %25 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %26, i32 0, i32 1
  store i64 %24, i64* %ob_size, align 8
  %27 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %28 = bitcast %struct.PyBytesObject* %27 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  store %struct._typeobject* @PyBytes_Type, %struct._typeobject** %ob_type, align 8
  %29 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %30 = bitcast %struct.PyBytesObject* %29 to %struct._object*
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  store i64 1, i64* %ob_refcnt24, align 8
  %31 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %32 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_shash = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %32, i32 0, i32 1
  store i64 -1, i64* %ob_shash, align 8
  %33 = load i8*, i8** %str.addr, align 8
  %cmp25 = icmp ne i8* %33, null
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  %34 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %34, i32 0, i32 2
  %35 = bitcast [1 x i8]* %ob_sval to i8*
  %36 = load i8*, i8** %str.addr, align 8
  %37 = load i64, i64* %size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 %37, i32 1, i1 false)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.23
  %38 = load i64, i64* %size.addr, align 8
  %39 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_sval29 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %39, i32 0, i32 2
  %arrayidx30 = getelementptr [1 x i8], [1 x i8]* %ob_sval29, i32 0, i64 %38
  store i8 0, i8* %arrayidx30, align 1
  %40 = load i64, i64* %size.addr, align 8
  %cmp31 = icmp eq i64 %40, 0
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.end.28
  %41 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  store %struct.PyBytesObject* %41, %struct.PyBytesObject** @nullstring, align 8
  %42 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %43 = bitcast %struct.PyBytesObject* %42 to %struct._object*
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt34, align 8
  %inc35 = add i64 %44, 1
  store i64 %inc35, i64* %ob_refcnt34, align 8
  br label %if.end.49

if.else:                                          ; preds = %if.end.28
  %45 = load i64, i64* %size.addr, align 8
  %cmp36 = icmp eq i64 %45, 1
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.48

land.lhs.true.38:                                 ; preds = %if.else
  %46 = load i8*, i8** %str.addr, align 8
  %cmp39 = icmp ne i8* %46, null
  br i1 %cmp39, label %if.then.41, label %if.end.48

if.then.41:                                       ; preds = %land.lhs.true.38
  %47 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %48 = load i8*, i8** %str.addr, align 8
  %49 = load i8, i8* %48, align 1
  %conv42 = sext i8 %49 to i32
  %and43 = and i32 %conv42, 255
  %idxprom44 = sext i32 %and43 to i64
  %arrayidx45 = getelementptr [256 x %struct.PyBytesObject*], [256 x %struct.PyBytesObject*]* @characters, i32 0, i64 %idxprom44
  store %struct.PyBytesObject* %47, %struct.PyBytesObject** %arrayidx45, align 8
  %50 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %51 = bitcast %struct.PyBytesObject* %50 to %struct._object*
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt46, align 8
  %inc47 = add i64 %52, 1
  store i64 %inc47, i64* %ob_refcnt46, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.41, %land.lhs.true.38, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.33
  %53 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %54 = bitcast %struct.PyBytesObject* %53 to %struct._object*
  store %struct._object* %54, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.21, %if.then.17, %if.then.11, %if.then.3, %if.then
  %55 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %55
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i8* @PyObject_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyBytes_FromString(i8* %str) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  %op = alloca %struct.PyBytesObject*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  store i64 %call, i64* %size, align 8
  %1 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %1, 9223372036854775774
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %size, align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.PyBytesObject*, %struct.PyBytesObject** @nullstring, align 8
  store %struct.PyBytesObject* %4, %struct.PyBytesObject** %op, align 8
  %cmp2 = icmp ne %struct.PyBytesObject* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %6 = bitcast %struct.PyBytesObject* %5 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %9 = bitcast %struct.PyBytesObject* %8 to %struct._object*
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %10 = load i64, i64* %size, align 8
  %cmp5 = icmp eq i64 %10, 1
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.12

land.lhs.true.6:                                  ; preds = %if.end.4
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr [256 x %struct.PyBytesObject*], [256 x %struct.PyBytesObject*]* @characters, i32 0, i64 %idxprom
  %13 = load %struct.PyBytesObject*, %struct.PyBytesObject** %arrayidx, align 8
  store %struct.PyBytesObject* %13, %struct.PyBytesObject** %op, align 8
  %cmp7 = icmp ne %struct.PyBytesObject* %13, null
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %land.lhs.true.6
  %14 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %15 = bitcast %struct.PyBytesObject* %14 to %struct._object*
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt10, align 8
  %inc11 = add i64 %16, 1
  store i64 %inc11, i64* %ob_refcnt10, align 8
  %17 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %18 = bitcast %struct.PyBytesObject* %17 to %struct._object*
  store %struct._object* %18, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true.6, %if.end.4
  %19 = load i64, i64* %size, align 8
  %add = add i64 33, %19
  %call13 = call i8* @PyObject_Malloc(i64 %add)
  %20 = bitcast i8* %call13 to %struct.PyBytesObject*
  store %struct.PyBytesObject* %20, %struct.PyBytesObject** %op, align 8
  %21 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %cmp14 = icmp eq %struct.PyBytesObject* %21, null
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.12
  %call17 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.12
  %22 = load i64, i64* %size, align 8
  %23 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %24 = bitcast %struct.PyBytesObject* %23 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %24, i32 0, i32 1
  store i64 %22, i64* %ob_size, align 8
  %25 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %26 = bitcast %struct.PyBytesObject* %25 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  store %struct._typeobject* @PyBytes_Type, %struct._typeobject** %ob_type, align 8
  %27 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %28 = bitcast %struct.PyBytesObject* %27 to %struct._object*
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  store i64 1, i64* %ob_refcnt19, align 8
  %29 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %30 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_shash = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %30, i32 0, i32 1
  store i64 -1, i64* %ob_shash, align 8
  %31 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %31, i32 0, i32 2
  %32 = bitcast [1 x i8]* %ob_sval to i8*
  %33 = load i8*, i8** %str.addr, align 8
  %34 = load i64, i64* %size, align 8
  %add20 = add i64 %34, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 %add20, i32 1, i1 false)
  %35 = load i64, i64* %size, align 8
  %cmp21 = icmp eq i64 %35, 0
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.18
  %36 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  store %struct.PyBytesObject* %36, %struct.PyBytesObject** @nullstring, align 8
  %37 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %38 = bitcast %struct.PyBytesObject* %37 to %struct._object*
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt24, align 8
  %inc25 = add i64 %39, 1
  store i64 %inc25, i64* %ob_refcnt24, align 8
  br label %if.end.36

if.else:                                          ; preds = %if.end.18
  %40 = load i64, i64* %size, align 8
  %cmp26 = icmp eq i64 %40, 1
  br i1 %cmp26, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %if.else
  %41 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %42 = load i8*, i8** %str.addr, align 8
  %43 = load i8, i8* %42, align 1
  %conv29 = sext i8 %43 to i32
  %and30 = and i32 %conv29, 255
  %idxprom31 = sext i32 %and30 to i64
  %arrayidx32 = getelementptr [256 x %struct.PyBytesObject*], [256 x %struct.PyBytesObject*]* @characters, i32 0, i64 %idxprom31
  store %struct.PyBytesObject* %41, %struct.PyBytesObject** %arrayidx32, align 8
  %44 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %45 = bitcast %struct.PyBytesObject* %44 to %struct._object*
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt33, align 8
  %inc34 = add i64 %46, 1
  store i64 %inc34, i64* %ob_refcnt33, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.28, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.23
  %47 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %48 = bitcast %struct.PyBytesObject* %47 to %struct._object*
  store %struct._object* %48, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.16, %if.then.9, %if.then.3, %if.then
  %49 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %49
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyBytes_FromFormatV(i8* %format, %struct.__va_list_tag* %vargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %vargs.addr = alloca %struct.__va_list_tag*, align 8
  %count = alloca [1 x %struct.__va_list_tag], align 16
  %n = alloca i64, align 8
  %f = alloca i8*, align 8
  %s = alloca i8*, align 8
  %string = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %p97 = alloca i8*, align 8
  %i = alloca i64, align 8
  %longflag = alloca i32, align 4
  %size_tflag = alloca i32, align 4
  %c187 = alloca i32, align 4
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %vargs, %struct.__va_list_tag** %vargs.addr, align 8
  store i64 0, i64* %n, align 8
  %0 = bitcast [1 x %struct.__va_list_tag]* %count to i8*
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %vargs.addr, align 8
  %2 = bitcast %struct.__va_list_tag* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %2, i64 24, i32 8, i1 false)
  %3 = load i8*, i8** %format.addr, align 8
  store i8* %3, i8** %f, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8*, i8** %f, align 8
  %5 = load i8, i8* %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %f, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i8*, i8** %f, align 8
  store i8* %8, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load i8*, i8** %f, align 8
  %incdec.ptr = getelementptr i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %f, align 8
  %10 = load i8, i8* %incdec.ptr, align 1
  %conv2 = sext i8 %10 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br i1 %tobool3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %11 = load i8*, i8** %f, align 8
  %12 = load i8, i8* %11, align 1
  %conv4 = sext i8 %12 to i32
  %cmp5 = icmp ne i32 %conv4, 37
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %13 = load i8*, i8** %f, align 8
  %14 = load i8, i8* %13, align 1
  %conv7 = sext i8 %14 to i32
  %and = and i32 %conv7, 255
  %conv8 = trunc i32 %and to i8
  %idxprom = zext i8 %conv8 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %and9 = and i32 %15, 3
  %tobool10 = icmp ne i32 %and9, 0
  %lnot = xor i1 %tobool10, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %16 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load i8*, i8** %f, align 8
  %18 = load i8, i8* %17, align 1
  %conv11 = sext i8 %18 to i32
  %cmp12 = icmp eq i32 %conv11, 108
  br i1 %cmp12, label %land.lhs.true.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %19 = load i8*, i8** %f, align 8
  %20 = load i8, i8* %19, align 1
  %conv14 = sext i8 %20 to i32
  %cmp15 = icmp eq i32 %conv14, 122
  br i1 %cmp15, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %lor.lhs.false, %while.end
  %21 = load i8*, i8** %f, align 8
  %arrayidx18 = getelementptr i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %22 to i32
  %cmp20 = icmp eq i32 %conv19, 100
  br i1 %cmp20, label %if.then.27, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %land.lhs.true.17
  %23 = load i8*, i8** %f, align 8
  %arrayidx23 = getelementptr i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %24 to i32
  %cmp25 = icmp eq i32 %conv24, 117
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %lor.lhs.false.22, %land.lhs.true.17
  %25 = load i8*, i8** %f, align 8
  %incdec.ptr28 = getelementptr i8, i8* %25, i32 1
  store i8* %incdec.ptr28, i8** %f, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.27, %lor.lhs.false.22, %lor.lhs.false
  %26 = load i8*, i8** %f, align 8
  %27 = load i8, i8* %26, align 1
  %conv29 = sext i8 %27 to i32
  switch i32 %conv29, label %sw.default [
    i32 99, label %sw.bb
    i32 37, label %sw.bb.37
    i32 100, label %sw.bb.39
    i32 117, label %sw.bb.39
    i32 105, label %sw.bb.39
    i32 120, label %sw.bb.39
    i32 115, label %sw.bb.52
    i32 112, label %sw.bb.66
  ]

sw.bb:                                            ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %count, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 3
  %reg_save_area = load i8*, i8** %28
  %29 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %30 = bitcast i8* %29 to i32*
  %31 = add i32 %gp_offset, 8
  store i32 %31, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %32 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %30, %vaarg.in_reg ], [ %32, %vaarg.in_mem ]
  %33 = load i32, i32* %vaarg.addr
  store i32 %33, i32* %c, align 4
  %34 = load i32, i32* %c, align 4
  %cmp30 = icmp slt i32 %34, 0
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %vaarg.end
  %35 = load i32, i32* %c, align 4
  %cmp33 = icmp sgt i32 %35, 255
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false.32, %vaarg.end
  %36 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %lor.lhs.false.32
  %37 = load i64, i64* %n, align 8
  %inc = add i64 %37, 1
  store i64 %inc, i64* %n, align 8
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end
  %38 = load i64, i64* %n, align 8
  %inc38 = add i64 %38, 1
  store i64 %inc38, i64* %n, align 8
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end, %if.end, %if.end, %if.end
  %arraydecay40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %count, i32 0, i32 0
  %gp_offset_p41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay40, i32 0, i32 0
  %gp_offset42 = load i32, i32* %gp_offset_p41
  %fits_in_gp43 = icmp ule i32 %gp_offset42, 40
  br i1 %fits_in_gp43, label %vaarg.in_reg.44, label %vaarg.in_mem.46

vaarg.in_reg.44:                                  ; preds = %sw.bb.39
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay40, i32 0, i32 3
  %reg_save_area45 = load i8*, i8** %39
  %40 = getelementptr i8, i8* %reg_save_area45, i32 %gp_offset42
  %41 = bitcast i8* %40 to i32*
  %42 = add i32 %gp_offset42, 8
  store i32 %42, i32* %gp_offset_p41
  br label %vaarg.end.50

vaarg.in_mem.46:                                  ; preds = %sw.bb.39
  %overflow_arg_area_p47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay40, i32 0, i32 2
  %overflow_arg_area48 = load i8*, i8** %overflow_arg_area_p47
  %43 = bitcast i8* %overflow_arg_area48 to i32*
  %overflow_arg_area.next49 = getelementptr i8, i8* %overflow_arg_area48, i32 8
  store i8* %overflow_arg_area.next49, i8** %overflow_arg_area_p47
  br label %vaarg.end.50

vaarg.end.50:                                     ; preds = %vaarg.in_mem.46, %vaarg.in_reg.44
  %vaarg.addr51 = phi i32* [ %41, %vaarg.in_reg.44 ], [ %43, %vaarg.in_mem.46 ]
  %44 = load i32, i32* %vaarg.addr51
  %45 = load i64, i64* %n, align 8
  %add = add i64 %45, 20
  store i64 %add, i64* %n, align 8
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end
  %arraydecay53 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %count, i32 0, i32 0
  %gp_offset_p54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay53, i32 0, i32 0
  %gp_offset55 = load i32, i32* %gp_offset_p54
  %fits_in_gp56 = icmp ule i32 %gp_offset55, 40
  br i1 %fits_in_gp56, label %vaarg.in_reg.57, label %vaarg.in_mem.59

vaarg.in_reg.57:                                  ; preds = %sw.bb.52
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay53, i32 0, i32 3
  %reg_save_area58 = load i8*, i8** %46
  %47 = getelementptr i8, i8* %reg_save_area58, i32 %gp_offset55
  %48 = bitcast i8* %47 to i8**
  %49 = add i32 %gp_offset55, 8
  store i32 %49, i32* %gp_offset_p54
  br label %vaarg.end.63

vaarg.in_mem.59:                                  ; preds = %sw.bb.52
  %overflow_arg_area_p60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay53, i32 0, i32 2
  %overflow_arg_area61 = load i8*, i8** %overflow_arg_area_p60
  %50 = bitcast i8* %overflow_arg_area61 to i8**
  %overflow_arg_area.next62 = getelementptr i8, i8* %overflow_arg_area61, i32 8
  store i8* %overflow_arg_area.next62, i8** %overflow_arg_area_p60
  br label %vaarg.end.63

vaarg.end.63:                                     ; preds = %vaarg.in_mem.59, %vaarg.in_reg.57
  %vaarg.addr64 = phi i8** [ %48, %vaarg.in_reg.57 ], [ %50, %vaarg.in_mem.59 ]
  %51 = load i8*, i8** %vaarg.addr64
  store i8* %51, i8** %s, align 8
  %52 = load i8*, i8** %s, align 8
  %call = call i64 @strlen(i8* %52) #7
  %53 = load i64, i64* %n, align 8
  %add65 = add i64 %53, %call
  store i64 %add65, i64* %n, align 8
  br label %sw.epilog

sw.bb.66:                                         ; preds = %if.end
  %arraydecay67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %count, i32 0, i32 0
  %gp_offset_p68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay67, i32 0, i32 0
  %gp_offset69 = load i32, i32* %gp_offset_p68
  %fits_in_gp70 = icmp ule i32 %gp_offset69, 40
  br i1 %fits_in_gp70, label %vaarg.in_reg.71, label %vaarg.in_mem.73

vaarg.in_reg.71:                                  ; preds = %sw.bb.66
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay67, i32 0, i32 3
  %reg_save_area72 = load i8*, i8** %54
  %55 = getelementptr i8, i8* %reg_save_area72, i32 %gp_offset69
  %56 = bitcast i8* %55 to i32*
  %57 = add i32 %gp_offset69, 8
  store i32 %57, i32* %gp_offset_p68
  br label %vaarg.end.77

vaarg.in_mem.73:                                  ; preds = %sw.bb.66
  %overflow_arg_area_p74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay67, i32 0, i32 2
  %overflow_arg_area75 = load i8*, i8** %overflow_arg_area_p74
  %58 = bitcast i8* %overflow_arg_area75 to i32*
  %overflow_arg_area.next76 = getelementptr i8, i8* %overflow_arg_area75, i32 8
  store i8* %overflow_arg_area.next76, i8** %overflow_arg_area_p74
  br label %vaarg.end.77

vaarg.end.77:                                     ; preds = %vaarg.in_mem.73, %vaarg.in_reg.71
  %vaarg.addr78 = phi i32* [ %56, %vaarg.in_reg.71 ], [ %58, %vaarg.in_mem.73 ]
  %59 = load i32, i32* %vaarg.addr78
  %60 = load i64, i64* %n, align 8
  %add79 = add i64 %60, 19
  store i64 %add79, i64* %n, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %61 = load i8*, i8** %p, align 8
  %call80 = call i64 @strlen(i8* %61) #7
  %62 = load i64, i64* %n, align 8
  %add81 = add i64 %62, %call80
  store i64 %add81, i64* %n, align 8
  br label %expand

sw.epilog:                                        ; preds = %vaarg.end.77, %vaarg.end.63, %vaarg.end.50, %sw.bb.37, %if.end.36
  br label %if.end.83

if.else:                                          ; preds = %for.body
  %63 = load i64, i64* %n, align 8
  %inc82 = add i64 %63, 1
  store i64 %inc82, i64* %n, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.else, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.83
  %64 = load i8*, i8** %f, align 8
  %incdec.ptr84 = getelementptr i8, i8* %64, i32 1
  store i8* %incdec.ptr84, i8** %f, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %expand

expand:                                           ; preds = %for.end, %sw.default
  %65 = load i64, i64* %n, align 8
  %call85 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %65)
  store %struct._object* %call85, %struct._object** %string, align 8
  %66 = load %struct._object*, %struct._object** %string, align 8
  %tobool86 = icmp ne %struct._object* %66, null
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %expand
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.88:                                        ; preds = %expand
  %67 = load %struct._object*, %struct._object** %string, align 8
  %call89 = call i8* @PyBytes_AsString(%struct._object* %67)
  store i8* %call89, i8** %s, align 8
  %68 = load i8*, i8** %format.addr, align 8
  store i8* %68, i8** %f, align 8
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.389, %if.end.88
  %69 = load i8*, i8** %f, align 8
  %70 = load i8, i8* %69, align 1
  %tobool91 = icmp ne i8 %70, 0
  br i1 %tobool91, label %for.body.92, label %for.end.391

for.body.92:                                      ; preds = %for.cond.90
  %71 = load i8*, i8** %f, align 8
  %72 = load i8, i8* %71, align 1
  %conv93 = sext i8 %72 to i32
  %cmp94 = icmp eq i32 %conv93, 37
  br i1 %cmp94, label %if.then.96, label %if.else.386

if.then.96:                                       ; preds = %for.body.92
  %73 = load i8*, i8** %f, align 8
  %incdec.ptr98 = getelementptr i8, i8* %73, i32 1
  store i8* %incdec.ptr98, i8** %f, align 8
  store i8* %73, i8** %p97, align 8
  store i32 0, i32* %longflag, align 4
  store i32 0, i32* %size_tflag, align 4
  store i64 0, i64* %n, align 8
  br label %while.cond.99

while.cond.99:                                    ; preds = %while.body.107, %if.then.96
  %74 = load i8*, i8** %f, align 8
  %75 = load i8, i8* %74, align 1
  %conv100 = sext i8 %75 to i32
  %and101 = and i32 %conv100, 255
  %conv102 = trunc i32 %and101 to i8
  %idxprom103 = zext i8 %conv102 to i64
  %arrayidx104 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom103
  %76 = load i32, i32* %arrayidx104, align 4
  %and105 = and i32 %76, 4
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %while.body.107, label %while.end.111

while.body.107:                                   ; preds = %while.cond.99
  %77 = load i64, i64* %n, align 8
  %mul = mul i64 %77, 10
  %78 = load i8*, i8** %f, align 8
  %incdec.ptr108 = getelementptr i8, i8* %78, i32 1
  store i8* %incdec.ptr108, i8** %f, align 8
  %79 = load i8, i8* %78, align 1
  %conv109 = sext i8 %79 to i64
  %add110 = add i64 %mul, %conv109
  %sub = sub i64 %add110, 48
  store i64 %sub, i64* %n, align 8
  br label %while.cond.99

while.end.111:                                    ; preds = %while.cond.99
  %80 = load i8*, i8** %f, align 8
  %81 = load i8, i8* %80, align 1
  %conv112 = sext i8 %81 to i32
  %cmp113 = icmp eq i32 %conv112, 46
  br i1 %cmp113, label %if.then.115, label %if.end.132

if.then.115:                                      ; preds = %while.end.111
  %82 = load i8*, i8** %f, align 8
  %incdec.ptr116 = getelementptr i8, i8* %82, i32 1
  store i8* %incdec.ptr116, i8** %f, align 8
  store i64 0, i64* %n, align 8
  br label %while.cond.117

while.cond.117:                                   ; preds = %while.body.125, %if.then.115
  %83 = load i8*, i8** %f, align 8
  %84 = load i8, i8* %83, align 1
  %conv118 = sext i8 %84 to i32
  %and119 = and i32 %conv118, 255
  %conv120 = trunc i32 %and119 to i8
  %idxprom121 = zext i8 %conv120 to i64
  %arrayidx122 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom121
  %85 = load i32, i32* %arrayidx122, align 4
  %and123 = and i32 %85, 4
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %while.body.125, label %while.end.131

while.body.125:                                   ; preds = %while.cond.117
  %86 = load i64, i64* %n, align 8
  %mul126 = mul i64 %86, 10
  %87 = load i8*, i8** %f, align 8
  %incdec.ptr127 = getelementptr i8, i8* %87, i32 1
  store i8* %incdec.ptr127, i8** %f, align 8
  %88 = load i8, i8* %87, align 1
  %conv128 = sext i8 %88 to i64
  %add129 = add i64 %mul126, %conv128
  %sub130 = sub i64 %add129, 48
  store i64 %sub130, i64* %n, align 8
  br label %while.cond.117

while.end.131:                                    ; preds = %while.cond.117
  br label %if.end.132

if.end.132:                                       ; preds = %while.end.131, %while.end.111
  br label %while.cond.133

while.cond.133:                                   ; preds = %while.body.150, %if.end.132
  %89 = load i8*, i8** %f, align 8
  %90 = load i8, i8* %89, align 1
  %conv134 = sext i8 %90 to i32
  %tobool135 = icmp ne i32 %conv134, 0
  br i1 %tobool135, label %land.lhs.true.136, label %land.end.149

land.lhs.true.136:                                ; preds = %while.cond.133
  %91 = load i8*, i8** %f, align 8
  %92 = load i8, i8* %91, align 1
  %conv137 = sext i8 %92 to i32
  %cmp138 = icmp ne i32 %conv137, 37
  br i1 %cmp138, label %land.rhs.140, label %land.end.149

land.rhs.140:                                     ; preds = %land.lhs.true.136
  %93 = load i8*, i8** %f, align 8
  %94 = load i8, i8* %93, align 1
  %conv141 = sext i8 %94 to i32
  %and142 = and i32 %conv141, 255
  %conv143 = trunc i32 %and142 to i8
  %idxprom144 = zext i8 %conv143 to i64
  %arrayidx145 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom144
  %95 = load i32, i32* %arrayidx145, align 4
  %and146 = and i32 %95, 3
  %tobool147 = icmp ne i32 %and146, 0
  %lnot148 = xor i1 %tobool147, true
  br label %land.end.149

land.end.149:                                     ; preds = %land.rhs.140, %land.lhs.true.136, %while.cond.133
  %96 = phi i1 [ false, %land.lhs.true.136 ], [ false, %while.cond.133 ], [ %lnot148, %land.rhs.140 ]
  br i1 %96, label %while.body.150, label %while.end.152

while.body.150:                                   ; preds = %land.end.149
  %97 = load i8*, i8** %f, align 8
  %incdec.ptr151 = getelementptr i8, i8* %97, i32 1
  store i8* %incdec.ptr151, i8** %f, align 8
  br label %while.cond.133

while.end.152:                                    ; preds = %land.end.149
  %98 = load i8*, i8** %f, align 8
  %99 = load i8, i8* %98, align 1
  %conv153 = sext i8 %99 to i32
  %cmp154 = icmp eq i32 %conv153, 108
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.168

land.lhs.true.156:                                ; preds = %while.end.152
  %100 = load i8*, i8** %f, align 8
  %arrayidx157 = getelementptr i8, i8* %100, i64 1
  %101 = load i8, i8* %arrayidx157, align 1
  %conv158 = sext i8 %101 to i32
  %cmp159 = icmp eq i32 %conv158, 100
  br i1 %cmp159, label %if.then.166, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %land.lhs.true.156
  %102 = load i8*, i8** %f, align 8
  %arrayidx162 = getelementptr i8, i8* %102, i64 1
  %103 = load i8, i8* %arrayidx162, align 1
  %conv163 = sext i8 %103 to i32
  %cmp164 = icmp eq i32 %conv163, 117
  br i1 %cmp164, label %if.then.166, label %if.end.168

if.then.166:                                      ; preds = %lor.lhs.false.161, %land.lhs.true.156
  store i32 1, i32* %longflag, align 4
  %104 = load i8*, i8** %f, align 8
  %incdec.ptr167 = getelementptr i8, i8* %104, i32 1
  store i8* %incdec.ptr167, i8** %f, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.166, %lor.lhs.false.161, %while.end.152
  %105 = load i8*, i8** %f, align 8
  %106 = load i8, i8* %105, align 1
  %conv169 = sext i8 %106 to i32
  %cmp170 = icmp eq i32 %conv169, 122
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.184

land.lhs.true.172:                                ; preds = %if.end.168
  %107 = load i8*, i8** %f, align 8
  %arrayidx173 = getelementptr i8, i8* %107, i64 1
  %108 = load i8, i8* %arrayidx173, align 1
  %conv174 = sext i8 %108 to i32
  %cmp175 = icmp eq i32 %conv174, 100
  br i1 %cmp175, label %if.then.182, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %land.lhs.true.172
  %109 = load i8*, i8** %f, align 8
  %arrayidx178 = getelementptr i8, i8* %109, i64 1
  %110 = load i8, i8* %arrayidx178, align 1
  %conv179 = sext i8 %110 to i32
  %cmp180 = icmp eq i32 %conv179, 117
  br i1 %cmp180, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %lor.lhs.false.177, %land.lhs.true.172
  store i32 1, i32* %size_tflag, align 4
  %111 = load i8*, i8** %f, align 8
  %incdec.ptr183 = getelementptr i8, i8* %111, i32 1
  store i8* %incdec.ptr183, i8** %f, align 8
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.182, %lor.lhs.false.177, %if.end.168
  %112 = load i8*, i8** %f, align 8
  %113 = load i8, i8* %112, align 1
  %conv185 = sext i8 %113 to i32
  switch i32 %conv185, label %sw.default.381 [
    i32 99, label %sw.bb.186
    i32 100, label %sw.bb.201
    i32 117, label %sw.bb.247
    i32 105, label %sw.bb.294
    i32 120, label %sw.bb.309
    i32 115, label %sw.bb.324
    i32 112, label %sw.bb.345
    i32 37, label %sw.bb.379
  ]

sw.bb.186:                                        ; preds = %if.end.184
  %114 = load %struct.__va_list_tag*, %struct.__va_list_tag** %vargs.addr, align 8
  %gp_offset_p188 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %114, i32 0, i32 0
  %gp_offset189 = load i32, i32* %gp_offset_p188
  %fits_in_gp190 = icmp ule i32 %gp_offset189, 40
  br i1 %fits_in_gp190, label %vaarg.in_reg.191, label %vaarg.in_mem.193

vaarg.in_reg.191:                                 ; preds = %sw.bb.186
  %115 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %114, i32 0, i32 3
  %reg_save_area192 = load i8*, i8** %115
  %116 = getelementptr i8, i8* %reg_save_area192, i32 %gp_offset189
  %117 = bitcast i8* %116 to i32*
  %118 = add i32 %gp_offset189, 8
  store i32 %118, i32* %gp_offset_p188
  br label %vaarg.end.197

vaarg.in_mem.193:                                 ; preds = %sw.bb.186
  %overflow_arg_area_p194 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %114, i32 0, i32 2
  %overflow_arg_area195 = load i8*, i8** %overflow_arg_area_p194
  %119 = bitcast i8* %overflow_arg_area195 to i32*
  %overflow_arg_area.next196 = getelementptr i8, i8* %overflow_arg_area195, i32 8
  store i8* %overflow_arg_area.next196, i8** %overflow_arg_area_p194
  br label %vaarg.end.197

vaarg.end.197:                                    ; preds = %vaarg.in_mem.193, %vaarg.in_reg.191
  %vaarg.addr198 = phi i32* [ %117, %vaarg.in_reg.191 ], [ %119, %vaarg.in_mem.193 ]
  %120 = load i32, i32* %vaarg.addr198
  store i32 %120, i32* %c187, align 4
  %121 = load i32, i32* %c187, align 4
  %conv199 = trunc i32 %121 to i8
  %122 = load i8*, i8** %s, align 8
  %incdec.ptr200 = getelementptr i8, i8* %122, i32 1
  store i8* %incdec.ptr200, i8** %s, align 8
  store i8 %conv199, i8* %122, align 1
  br label %sw.epilog.385

sw.bb.201:                                        ; preds = %if.end.184
  %123 = load i32, i32* %longflag, align 4
  %tobool202 = icmp ne i32 %123, 0
  br i1 %tobool202, label %if.then.203, label %if.else.216

if.then.203:                                      ; preds = %sw.bb.201
  %124 = load i8*, i8** %s, align 8
  %125 = load %struct.__va_list_tag*, %struct.__va_list_tag** %vargs.addr, align 8
  %gp_offset_p204 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %125, i32 0, i32 0
  %gp_offset205 = load i32, i32* %gp_offset_p204
  %fits_in_gp206 = icmp ule i32 %gp_offset205, 40
  br i1 %fits_in_gp206, label %vaarg.in_reg.207, label %vaarg.in_mem.209

vaarg.in_reg.207:                                 ; preds = %if.then.203
  %126 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %125, i32 0, i32 3
  %reg_save_area208 = load i8*, i8** %126
  %127 = getelementptr i8, i8* %reg_save_area208, i32 %gp_offset205
  %128 = bitcast i8* %127 to i64*
  %129 = add i32 %gp_offset205, 8
  store i32 %129, i32* %gp_offset_p204
  br label %vaarg.end.213

vaarg.in_mem.209:                                 ; preds = %if.then.203
  %overflow_arg_area_p210 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %125, i32 0, i32 2
  %overflow_arg_area211 = load i8*, i8** %overflow_arg_area_p210
  %130 = bitcast i8* %overflow_arg_area211 to i64*
  %overflow_arg_area.next212 = getelementptr i8, i8* %overflow_arg_area211, i32 8
  store i8* %overflow_arg_area.next212, i8** %overflow_arg_area_p210
  br label %vaarg.end.213

vaarg.end.213:                                    ; preds = %vaarg.in_mem.209, %vaarg.in_reg.207
  %vaarg.addr214 = phi i64* [ %128, %vaarg.in_reg.207 ], [ %130, %vaarg.in_mem.209 ]
  %131 = load i64, i64* %vaarg.addr214
  %call215 = call i32 (i8*, i8*, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 %131) #2
  br label %if.end.245

if.else.216:                                      ; preds = %sw.bb.201
  %132 = load i32, i32* %size_tflag, align 4
  %tobool217 = icmp ne i32 %132, 0
  br i1 %tobool217, label %if.then.218, label %if.else.231

if.then.218:                                      ; preds = %if.else.216
  %133 = load i8*, i8** %s, align 8
  %134 = load %struct.__va_list_tag*, %struct.__va_list_tag** %vargs.addr, align 8
  %gp_offset_p219 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 0
  %gp_offset220 = load i32, i32* %gp_offset_p219
  %fits_in_gp221 = icmp ule i32 %gp_offset220, 40
  br i1 %fits_in_gp221, label %vaarg.in_reg.222, label %vaarg.in_mem.224

vaarg.in_reg.222:                                 ; preds = %if.then.218
  %135 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 3
  %reg_save_area223 = load i8*, i8** %135
  %136 = getelementptr i8, i8* %reg_save_area223, i32 %gp_offset220
  %137 = bitcast i8* %136 to i64*
  %138 = add i32 %gp_offset220, 8
  store i32 %138, i32* %gp_offset_p219
  br label %vaarg.end.228

vaarg.in_mem.224:                                 ; preds = %if.then.218
  %overflow_arg_area_p225 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 2
  %overflow_arg_area226 = load i8*, i8** %overflow_arg_area_p225
  %139 = bitcast i8* %overflow_arg_area226 to i64*
  %overflow_arg_area.next227 = getelementptr i8, i8* %overflow_arg_area226, i32 8
  store i8* %overflow_arg_area.next227, i8** %overflow_arg_area_p225
  br label %vaarg.end.228

vaarg.end.228:                                    ; preds = %vaarg.in_mem.224, %vaarg.in_reg.222
  %vaarg.addr229 = phi i64* [ %137, %vaarg.in_reg.222 ], [ %139, %vaarg.in_mem.224 ]
  %140 = load i64, i64* %vaarg.addr229
  %call230 = call i32 (i8*, i8*, ...) @sprintf(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i64 %140) #2
  br label %if.end.244

if.else.231:                                      ; preds = %if.else.216
  %141 = load i8*, i8** %s, align 8
  %142 = load %struct.__va_list_tag*, %struct.__va_list_tag** %vargs.addr, align 8
  %gp_offset_p232 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %142, i32 0, i32 0
  %gp_offset233 = load i32, i32* %gp_offset_p232
  %fits_in_gp234 = icmp ule i32 %gp_offset233, 40
  br i1 %fits_in_gp234, label %vaarg.in_reg.235, label %vaarg.in_mem.237

vaarg.in_reg.235:                                 ; preds = %if.else.231
  %143 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %142, i32 0, i32 3
  %reg_save_area236 = load i8*, i8** %143
  %144 = getelementptr i8, i8* %reg_save_area236, i32 %gp_offset233
  %145 = bitcast i8* %144 to i32*
  %146 = add i32 %gp_offset233, 8
  store i32 %146, i32* %gp_offset_p232
  br label %vaarg.end.241

vaarg.in_mem.237:                                 ; preds = %if.else.231
  %overflow_arg_area_p238 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %142, i32 0, i32 2
  %overflow_arg_area239 = load i8*, i8** %overflow_arg_area_p238
  %147 = bitcast i8* %overflow_arg_area239 to i32*
  %overflow_arg_area.next240 = getelementptr i8, i8* %overflow_arg_area239, i32 8
  store i8* %overflow_arg_area.next240, i8** %overflow_arg_area_p238
  br label %vaarg.end.241

vaarg.end.241:                                    ; preds = %vaarg.in_mem.237, %vaarg.in_reg.235
  %vaarg.addr242 = phi i32* [ %145, %vaarg.in_reg.235 ], [ %147, %vaarg.in_mem.237 ]
  %148 = load i32, i32* %vaarg.addr242
  %call243 = call i32 (i8*, i8*, ...) @sprintf(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 %148) #2
  br label %if.end.244

if.end.244:                                       ; preds = %vaarg.end.241, %vaarg.end.228
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %vaarg.end.213
  %149 = load i8*, i8** %s, align 8
  %call246 = call i64 @strlen(i8* %149) #7
  %150 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr i8, i8* %150, i64 %call246
  store i8* %add.ptr, i8** %s, align 8
  br label %sw.epilog.385

sw.bb.247:                                        ; preds = %if.end.184
  %151 = load i32, i32* %longflag, align 4
  %tobool248 = icmp ne i32 %151, 0
  br i1 %tobool248, label %if.then.249, label %if.else.262

if.then.249:                                      ; preds = %sw.bb.247
  %152 = load i8*, i8** %s, align 8
  %153 = load %struct.__va_list_tag*, %struct.__va_list_tag** %vargs.addr, align 8
  %gp_offset_p250 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %153, i32 0, i32 0
  %gp_offset251 = load i32, i32* %gp_offset_p250
  %fits_in_gp252 = icmp ule i32 %gp_offset251, 40
  br i1 %fits_in_gp252, label %vaarg.in_reg.253, label %vaarg.in_mem.255

vaarg.in_reg.253:                                 ; preds = %if.then.249
  %154 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %153, i32 0, i32 3
  %reg_save_area254 = load i8*, i8** %154
  %155 = getelementptr i8, i8* %reg_save_area254, i32 %gp_offset251
  %156 = bitcast i8* %155 to i64*
  %157 = add i32 %gp_offset251, 8
  store i32 %157, i32* %gp_offset_p250
  br label %vaarg.end.259

vaarg.in_mem.255:                                 ; preds = %if.then.249
  %overflow_arg_area_p256 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %153, i32 0, i32 2
  %overflow_arg_area257 = load i8*, i8** %overflow_arg_area_p256
  %158 = bitcast i8* %overflow_arg_area257 to i64*
  %overflow_arg_area.next258 = getelementptr i8, i8* %overflow_arg_area257, i32 8
  store i8* %overflow_arg_area.next258, i8** %overflow_arg_area_p256
  br label %vaarg.end.259

vaarg.end.259:                                    ; preds = %vaarg.in_mem.255, %vaarg.in_reg.253
  %vaarg.addr260 = phi i64* [ %156, %vaarg.in_reg.253 ], [ %158, %vaarg.in_mem.255 ]
  %159 = load i64, i64* %vaarg.addr260
  %call261 = call i32 (i8*, i8*, ...) @sprintf(i8* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i64 %159) #2
  br label %if.end.291

if.else.262:                                      ; preds = %sw.bb.247
  %160 = load i32, i32* %size_tflag, align 4
  %tobool263 = icmp ne i32 %160, 0
  br i1 %tobool263, label %if.then.264, label %if.else.277

if.then.264:                                      ; preds = %if.else.262
  %161 = load i8*, i8** %s, align 8
  %162 = load %struct.__va_list_tag*, %struct.__va_list_tag** %vargs.addr, align 8
  %gp_offset_p265 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %162, i32 0, i32 0
  %gp_offset266 = load i32, i32* %gp_offset_p265
  %fits_in_gp267 = icmp ule i32 %gp_offset266, 40
  br i1 %fits_in_gp267, label %vaarg.in_reg.268, label %vaarg.in_mem.270

vaarg.in_reg.268:                                 ; preds = %if.then.264
  %163 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %162, i32 0, i32 3
  %reg_save_area269 = load i8*, i8** %163
  %164 = getelementptr i8, i8* %reg_save_area269, i32 %gp_offset266
  %165 = bitcast i8* %164 to i64*
  %166 = add i32 %gp_offset266, 8
  store i32 %166, i32* %gp_offset_p265
  br label %vaarg.end.274

vaarg.in_mem.270:                                 ; preds = %if.then.264
  %overflow_arg_area_p271 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %162, i32 0, i32 2
  %overflow_arg_area272 = load i8*, i8** %overflow_arg_area_p271
  %167 = bitcast i8* %overflow_arg_area272 to i64*
  %overflow_arg_area.next273 = getelementptr i8, i8* %overflow_arg_area272, i32 8
  store i8* %overflow_arg_area.next273, i8** %overflow_arg_area_p271
  br label %vaarg.end.274

vaarg.end.274:                                    ; preds = %vaarg.in_mem.270, %vaarg.in_reg.268
  %vaarg.addr275 = phi i64* [ %165, %vaarg.in_reg.268 ], [ %167, %vaarg.in_mem.270 ]
  %168 = load i64, i64* %vaarg.addr275
  %call276 = call i32 (i8*, i8*, ...) @sprintf(i8* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i64 %168) #2
  br label %if.end.290

if.else.277:                                      ; preds = %if.else.262
  %169 = load i8*, i8** %s, align 8
  %170 = load %struct.__va_list_tag*, %struct.__va_list_tag** %vargs.addr, align 8
  %gp_offset_p278 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %170, i32 0, i32 0
  %gp_offset279 = load i32, i32* %gp_offset_p278
  %fits_in_gp280 = icmp ule i32 %gp_offset279, 40
  br i1 %fits_in_gp280, label %vaarg.in_reg.281, label %vaarg.in_mem.283

vaarg.in_reg.281:                                 ; preds = %if.else.277
  %171 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %170, i32 0, i32 3
  %reg_save_area282 = load i8*, i8** %171
  %172 = getelementptr i8, i8* %reg_save_area282, i32 %gp_offset279
  %173 = bitcast i8* %172 to i32*
  %174 = add i32 %gp_offset279, 8
  store i32 %174, i32* %gp_offset_p278
  br label %vaarg.end.287

vaarg.in_mem.283:                                 ; preds = %if.else.277
  %overflow_arg_area_p284 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %170, i32 0, i32 2
  %overflow_arg_area285 = load i8*, i8** %overflow_arg_area_p284
  %175 = bitcast i8* %overflow_arg_area285 to i32*
  %overflow_arg_area.next286 = getelementptr i8, i8* %overflow_arg_area285, i32 8
  store i8* %overflow_arg_area.next286, i8** %overflow_arg_area_p284
  br label %vaarg.end.287

vaarg.end.287:                                    ; preds = %vaarg.in_mem.283, %vaarg.in_reg.281
  %vaarg.addr288 = phi i32* [ %173, %vaarg.in_reg.281 ], [ %175, %vaarg.in_mem.283 ]
  %176 = load i32, i32* %vaarg.addr288
  %call289 = call i32 (i8*, i8*, ...) @sprintf(i8* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %176) #2
  br label %if.end.290

if.end.290:                                       ; preds = %vaarg.end.287, %vaarg.end.274
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %vaarg.end.259
  %177 = load i8*, i8** %s, align 8
  %call292 = call i64 @strlen(i8* %177) #7
  %178 = load i8*, i8** %s, align 8
  %add.ptr293 = getelementptr i8, i8* %178, i64 %call292
  store i8* %add.ptr293, i8** %s, align 8
  br label %sw.epilog.385

sw.bb.294:                                        ; preds = %if.end.184
  %179 = load i8*, i8** %s, align 8
  %180 = load %struct.__va_list_tag*, %struct.__va_list_tag** %vargs.addr, align 8
  %gp_offset_p295 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %180, i32 0, i32 0
  %gp_offset296 = load i32, i32* %gp_offset_p295
  %fits_in_gp297 = icmp ule i32 %gp_offset296, 40
  br i1 %fits_in_gp297, label %vaarg.in_reg.298, label %vaarg.in_mem.300

vaarg.in_reg.298:                                 ; preds = %sw.bb.294
  %181 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %180, i32 0, i32 3
  %reg_save_area299 = load i8*, i8** %181
  %182 = getelementptr i8, i8* %reg_save_area299, i32 %gp_offset296
  %183 = bitcast i8* %182 to i32*
  %184 = add i32 %gp_offset296, 8
  store i32 %184, i32* %gp_offset_p295
  br label %vaarg.end.304

vaarg.in_mem.300:                                 ; preds = %sw.bb.294
  %overflow_arg_area_p301 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %180, i32 0, i32 2
  %overflow_arg_area302 = load i8*, i8** %overflow_arg_area_p301
  %185 = bitcast i8* %overflow_arg_area302 to i32*
  %overflow_arg_area.next303 = getelementptr i8, i8* %overflow_arg_area302, i32 8
  store i8* %overflow_arg_area.next303, i8** %overflow_arg_area_p301
  br label %vaarg.end.304

vaarg.end.304:                                    ; preds = %vaarg.in_mem.300, %vaarg.in_reg.298
  %vaarg.addr305 = phi i32* [ %183, %vaarg.in_reg.298 ], [ %185, %vaarg.in_mem.300 ]
  %186 = load i32, i32* %vaarg.addr305
  %call306 = call i32 (i8*, i8*, ...) @sprintf(i8* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %186) #2
  %187 = load i8*, i8** %s, align 8
  %call307 = call i64 @strlen(i8* %187) #7
  %188 = load i8*, i8** %s, align 8
  %add.ptr308 = getelementptr i8, i8* %188, i64 %call307
  store i8* %add.ptr308, i8** %s, align 8
  br label %sw.epilog.385

sw.bb.309:                                        ; preds = %if.end.184
  %189 = load i8*, i8** %s, align 8
  %190 = load %struct.__va_list_tag*, %struct.__va_list_tag** %vargs.addr, align 8
  %gp_offset_p310 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %190, i32 0, i32 0
  %gp_offset311 = load i32, i32* %gp_offset_p310
  %fits_in_gp312 = icmp ule i32 %gp_offset311, 40
  br i1 %fits_in_gp312, label %vaarg.in_reg.313, label %vaarg.in_mem.315

vaarg.in_reg.313:                                 ; preds = %sw.bb.309
  %191 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %190, i32 0, i32 3
  %reg_save_area314 = load i8*, i8** %191
  %192 = getelementptr i8, i8* %reg_save_area314, i32 %gp_offset311
  %193 = bitcast i8* %192 to i32*
  %194 = add i32 %gp_offset311, 8
  store i32 %194, i32* %gp_offset_p310
  br label %vaarg.end.319

vaarg.in_mem.315:                                 ; preds = %sw.bb.309
  %overflow_arg_area_p316 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %190, i32 0, i32 2
  %overflow_arg_area317 = load i8*, i8** %overflow_arg_area_p316
  %195 = bitcast i8* %overflow_arg_area317 to i32*
  %overflow_arg_area.next318 = getelementptr i8, i8* %overflow_arg_area317, i32 8
  store i8* %overflow_arg_area.next318, i8** %overflow_arg_area_p316
  br label %vaarg.end.319

vaarg.end.319:                                    ; preds = %vaarg.in_mem.315, %vaarg.in_reg.313
  %vaarg.addr320 = phi i32* [ %193, %vaarg.in_reg.313 ], [ %195, %vaarg.in_mem.315 ]
  %196 = load i32, i32* %vaarg.addr320
  %call321 = call i32 (i8*, i8*, ...) @sprintf(i8* %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 %196) #2
  %197 = load i8*, i8** %s, align 8
  %call322 = call i64 @strlen(i8* %197) #7
  %198 = load i8*, i8** %s, align 8
  %add.ptr323 = getelementptr i8, i8* %198, i64 %call322
  store i8* %add.ptr323, i8** %s, align 8
  br label %sw.epilog.385

sw.bb.324:                                        ; preds = %if.end.184
  %199 = load %struct.__va_list_tag*, %struct.__va_list_tag** %vargs.addr, align 8
  %gp_offset_p325 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %199, i32 0, i32 0
  %gp_offset326 = load i32, i32* %gp_offset_p325
  %fits_in_gp327 = icmp ule i32 %gp_offset326, 40
  br i1 %fits_in_gp327, label %vaarg.in_reg.328, label %vaarg.in_mem.330

vaarg.in_reg.328:                                 ; preds = %sw.bb.324
  %200 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %199, i32 0, i32 3
  %reg_save_area329 = load i8*, i8** %200
  %201 = getelementptr i8, i8* %reg_save_area329, i32 %gp_offset326
  %202 = bitcast i8* %201 to i8**
  %203 = add i32 %gp_offset326, 8
  store i32 %203, i32* %gp_offset_p325
  br label %vaarg.end.334

vaarg.in_mem.330:                                 ; preds = %sw.bb.324
  %overflow_arg_area_p331 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %199, i32 0, i32 2
  %overflow_arg_area332 = load i8*, i8** %overflow_arg_area_p331
  %204 = bitcast i8* %overflow_arg_area332 to i8**
  %overflow_arg_area.next333 = getelementptr i8, i8* %overflow_arg_area332, i32 8
  store i8* %overflow_arg_area.next333, i8** %overflow_arg_area_p331
  br label %vaarg.end.334

vaarg.end.334:                                    ; preds = %vaarg.in_mem.330, %vaarg.in_reg.328
  %vaarg.addr335 = phi i8** [ %202, %vaarg.in_reg.328 ], [ %204, %vaarg.in_mem.330 ]
  %205 = load i8*, i8** %vaarg.addr335
  store i8* %205, i8** %p97, align 8
  %206 = load i8*, i8** %p97, align 8
  %call336 = call i64 @strlen(i8* %206) #7
  store i64 %call336, i64* %i, align 8
  %207 = load i64, i64* %n, align 8
  %cmp337 = icmp sgt i64 %207, 0
  br i1 %cmp337, label %land.lhs.true.339, label %if.end.343

land.lhs.true.339:                                ; preds = %vaarg.end.334
  %208 = load i64, i64* %i, align 8
  %209 = load i64, i64* %n, align 8
  %cmp340 = icmp sgt i64 %208, %209
  br i1 %cmp340, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %land.lhs.true.339
  %210 = load i64, i64* %n, align 8
  store i64 %210, i64* %i, align 8
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.342, %land.lhs.true.339, %vaarg.end.334
  %211 = load i8*, i8** %s, align 8
  %212 = load i8*, i8** %p97, align 8
  %213 = load i64, i64* %i, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %211, i8* %212, i64 %213, i32 1, i1 false)
  %214 = load i64, i64* %i, align 8
  %215 = load i8*, i8** %s, align 8
  %add.ptr344 = getelementptr i8, i8* %215, i64 %214
  store i8* %add.ptr344, i8** %s, align 8
  br label %sw.epilog.385

sw.bb.345:                                        ; preds = %if.end.184
  %216 = load i8*, i8** %s, align 8
  %217 = load %struct.__va_list_tag*, %struct.__va_list_tag** %vargs.addr, align 8
  %gp_offset_p346 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %217, i32 0, i32 0
  %gp_offset347 = load i32, i32* %gp_offset_p346
  %fits_in_gp348 = icmp ule i32 %gp_offset347, 40
  br i1 %fits_in_gp348, label %vaarg.in_reg.349, label %vaarg.in_mem.351

vaarg.in_reg.349:                                 ; preds = %sw.bb.345
  %218 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %217, i32 0, i32 3
  %reg_save_area350 = load i8*, i8** %218
  %219 = getelementptr i8, i8* %reg_save_area350, i32 %gp_offset347
  %220 = bitcast i8* %219 to i8**
  %221 = add i32 %gp_offset347, 8
  store i32 %221, i32* %gp_offset_p346
  br label %vaarg.end.355

vaarg.in_mem.351:                                 ; preds = %sw.bb.345
  %overflow_arg_area_p352 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %217, i32 0, i32 2
  %overflow_arg_area353 = load i8*, i8** %overflow_arg_area_p352
  %222 = bitcast i8* %overflow_arg_area353 to i8**
  %overflow_arg_area.next354 = getelementptr i8, i8* %overflow_arg_area353, i32 8
  store i8* %overflow_arg_area.next354, i8** %overflow_arg_area_p352
  br label %vaarg.end.355

vaarg.end.355:                                    ; preds = %vaarg.in_mem.351, %vaarg.in_reg.349
  %vaarg.addr356 = phi i8** [ %220, %vaarg.in_reg.349 ], [ %222, %vaarg.in_mem.351 ]
  %223 = load i8*, i8** %vaarg.addr356
  %call357 = call i32 (i8*, i8*, ...) @sprintf(i8* %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %223) #2
  %224 = load i8*, i8** %s, align 8
  %arrayidx358 = getelementptr i8, i8* %224, i64 1
  %225 = load i8, i8* %arrayidx358, align 1
  %conv359 = sext i8 %225 to i32
  %cmp360 = icmp eq i32 %conv359, 88
  br i1 %cmp360, label %if.then.362, label %if.else.364

if.then.362:                                      ; preds = %vaarg.end.355
  %226 = load i8*, i8** %s, align 8
  %arrayidx363 = getelementptr i8, i8* %226, i64 1
  store i8 120, i8* %arrayidx363, align 1
  br label %if.end.376

if.else.364:                                      ; preds = %vaarg.end.355
  %227 = load i8*, i8** %s, align 8
  %arrayidx365 = getelementptr i8, i8* %227, i64 1
  %228 = load i8, i8* %arrayidx365, align 1
  %conv366 = sext i8 %228 to i32
  %cmp367 = icmp ne i32 %conv366, 120
  br i1 %cmp367, label %if.then.369, label %if.end.375

if.then.369:                                      ; preds = %if.else.364
  %229 = load i8*, i8** %s, align 8
  %add.ptr370 = getelementptr i8, i8* %229, i64 2
  %230 = load i8*, i8** %s, align 8
  %231 = load i8*, i8** %s, align 8
  %call371 = call i64 @strlen(i8* %231) #7
  %add372 = add i64 %call371, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr370, i8* %230, i64 %add372, i32 1, i1 false)
  %232 = load i8*, i8** %s, align 8
  %arrayidx373 = getelementptr i8, i8* %232, i64 0
  store i8 48, i8* %arrayidx373, align 1
  %233 = load i8*, i8** %s, align 8
  %arrayidx374 = getelementptr i8, i8* %233, i64 1
  store i8 120, i8* %arrayidx374, align 1
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.369, %if.else.364
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %if.then.362
  %234 = load i8*, i8** %s, align 8
  %call377 = call i64 @strlen(i8* %234) #7
  %235 = load i8*, i8** %s, align 8
  %add.ptr378 = getelementptr i8, i8* %235, i64 %call377
  store i8* %add.ptr378, i8** %s, align 8
  br label %sw.epilog.385

sw.bb.379:                                        ; preds = %if.end.184
  %236 = load i8*, i8** %s, align 8
  %incdec.ptr380 = getelementptr i8, i8* %236, i32 1
  store i8* %incdec.ptr380, i8** %s, align 8
  store i8 37, i8* %236, align 1
  br label %sw.epilog.385

sw.default.381:                                   ; preds = %if.end.184
  %237 = load i8*, i8** %s, align 8
  %238 = load i8*, i8** %p97, align 8
  %call382 = call i8* @strcpy(i8* %237, i8* %238) #2
  %239 = load i8*, i8** %s, align 8
  %call383 = call i64 @strlen(i8* %239) #7
  %240 = load i8*, i8** %s, align 8
  %add.ptr384 = getelementptr i8, i8* %240, i64 %call383
  store i8* %add.ptr384, i8** %s, align 8
  br label %end

sw.epilog.385:                                    ; preds = %sw.bb.379, %if.end.376, %if.end.343, %vaarg.end.319, %vaarg.end.304, %if.end.291, %if.end.245, %vaarg.end.197
  br label %if.end.388

if.else.386:                                      ; preds = %for.body.92
  %241 = load i8*, i8** %f, align 8
  %242 = load i8, i8* %241, align 1
  %243 = load i8*, i8** %s, align 8
  %incdec.ptr387 = getelementptr i8, i8* %243, i32 1
  store i8* %incdec.ptr387, i8** %s, align 8
  store i8 %242, i8* %243, align 1
  br label %if.end.388

if.end.388:                                       ; preds = %if.else.386, %sw.epilog.385
  br label %for.inc.389

for.inc.389:                                      ; preds = %if.end.388
  %244 = load i8*, i8** %f, align 8
  %incdec.ptr390 = getelementptr i8, i8* %244, i32 1
  store i8* %incdec.ptr390, i8** %f, align 8
  br label %for.cond.90

for.end.391:                                      ; preds = %for.cond.90
  br label %end

end:                                              ; preds = %for.end.391, %sw.default.381
  %245 = load i8*, i8** %s, align 8
  %246 = load %struct._object*, %struct._object** %string, align 8
  %247 = bitcast %struct._object* %246 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %247, i32 0, i32 2
  %arraydecay392 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %245 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay392 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call393 = call i32 @_PyBytes_Resize(%struct._object** %string, i64 %sub.ptr.sub)
  %248 = load %struct._object*, %struct._object** %string, align 8
  store %struct._object* %248, %struct._object** %retval
  br label %return

return:                                           ; preds = %end, %if.then.87, %if.then.35
  %249 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %249
}

; Function Attrs: nounwind uwtable
define i8* @PyBytes_AsString(%struct._object* %op) #0 {
entry:
  %retval = alloca i8*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %4 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8* %6)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %op.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %8, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @_PyBytes_Resize(%struct._object** %pv, i64 %newsize) #0 {
entry:
  %retval = alloca i32, align 4
  %pv.addr = alloca %struct._object**, align 8
  %newsize.addr = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %sv = alloca %struct.PyBytesObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object** %pv, %struct._object*** %pv.addr, align 8
  store i64 %newsize, i64* %newsize.addr, align 8
  %0 = load %struct._object**, %struct._object*** %pv.addr, align 8
  %1 = load %struct._object*, %struct._object** %0, align 8
  store %struct._object* %1, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** %v, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %6, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %7 = load i64, i64* %newsize.addr, align 8
  %cmp3 = icmp slt i64 %7, 0
  br i1 %cmp3, label %if.then, label %if.end.8

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %8 = load %struct._object**, %struct._object*** %pv.addr, align 8
  store %struct._object* null, %struct._object** %8, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %9 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt4, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt4, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i32 2828)
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false.2
  %16 = load %struct._object*, %struct._object** %v, align 8
  %17 = bitcast %struct._object* %16 to i8*
  %18 = load i64, i64* %newsize.addr, align 8
  %add = add i64 33, %18
  %call = call i8* @PyObject_Realloc(i8* %17, i64 %add)
  %19 = bitcast i8* %call to %struct._object*
  %20 = load %struct._object**, %struct._object*** %pv.addr, align 8
  store %struct._object* %19, %struct._object** %20, align 8
  %21 = load %struct._object**, %struct._object*** %pv.addr, align 8
  %22 = load %struct._object*, %struct._object** %21, align 8
  %cmp9 = icmp eq %struct._object* %22, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %23 = load %struct._object*, %struct._object** %v, align 8
  %24 = bitcast %struct._object* %23 to i8*
  call void @PyObject_Free(i8* %24)
  %call11 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %25 = load %struct._object**, %struct._object*** %pv.addr, align 8
  %26 = load %struct._object*, %struct._object** %25, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  store i64 1, i64* %ob_refcnt13, align 8
  %27 = load %struct._object**, %struct._object*** %pv.addr, align 8
  %28 = load %struct._object*, %struct._object** %27, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyBytesObject*
  store %struct.PyBytesObject* %29, %struct.PyBytesObject** %sv, align 8
  %30 = load i64, i64* %newsize.addr, align 8
  %31 = load %struct.PyBytesObject*, %struct.PyBytesObject** %sv, align 8
  %32 = bitcast %struct.PyBytesObject* %31 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  store i64 %30, i64* %ob_size, align 8
  %33 = load i64, i64* %newsize.addr, align 8
  %34 = load %struct.PyBytesObject*, %struct.PyBytesObject** %sv, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %34, i32 0, i32 2
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %ob_sval, i32 0, i64 %33
  store i8 0, i8* %arrayidx, align 1
  %35 = load %struct.PyBytesObject*, %struct.PyBytesObject** %sv, align 8
  %ob_shash = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %35, i32 0, i32 1
  store i64 -1, i64* %ob_shash, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10, %do.end
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyBytes_FromFormat(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %ret = alloca %struct._object*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %call = call %struct._object* @PyBytes_FromFormatV(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store %struct._object* %call, %struct._object** %ret, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load %struct._object*, %struct._object** %ret, align 8
  ret %struct._object* %1
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyBytes_DecodeEscape(i8* %s, i64 %len, i8* %errors, i64 %unicode, i8* %recode_encoding) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %errors.addr = alloca i8*, align 8
  %unicode.addr = alloca i64, align 8
  %recode_encoding.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %p = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %end = alloca i8*, align 8
  %v = alloca %struct._object*, align 8
  %newlen = alloca i64, align 8
  %u = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  %r = alloca i8*, align 8
  %t = alloca i8*, align 8
  %rn = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  %_py_decref_tmp250 = alloca %struct._object*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  store i64 %unicode, i64* %unicode.addr, align 8
  store i8* %recode_encoding, i8** %recode_encoding.addr, align 8
  %0 = load i8*, i8** %recode_encoding.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8
  %mul = mul i64 4, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, i64* %len.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ %2, %cond.false ]
  store i64 %cond, i64* %newlen, align 8
  %3 = load i64, i64* %newlen, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %3)
  store %struct._object* %call, %struct._object** %v, align 8
  %4 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %5 = load %struct._object*, %struct._object** %v, align 8
  %call1 = call i8* @PyBytes_AsString(%struct._object* %5)
  store i8* %call1, i8** %buf, align 8
  store i8* %call1, i8** %p, align 8
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr i8, i8* %6, i64 %7
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.45, %if.end
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8*, i8** %end, align 8
  %cmp2 = icmp ult i8* %8, %9
  br i1 %cmp2, label %while.body, label %while.end.237

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp3 = icmp ne i32 %conv, 92
  br i1 %cmp3, label %if.then.5, label %if.end.46

if.then.5:                                        ; preds = %while.body
  br label %non_esc

non_esc:                                          ; preds = %sw.default, %if.then.5
  %12 = load i8*, i8** %recode_encoding.addr, align 8
  %tobool6 = icmp ne i8* %12, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.42

land.lhs.true:                                    ; preds = %non_esc
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv7 = sext i8 %14 to i32
  %and = and i32 %conv7, 128
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then.9, label %if.else.42

if.then.9:                                        ; preds = %land.lhs.true
  %15 = load i8*, i8** %s.addr, align 8
  store i8* %15, i8** %t, align 8
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.16, %if.then.9
  %16 = load i8*, i8** %t, align 8
  %17 = load i8*, i8** %end, align 8
  %cmp11 = icmp ult i8* %16, %17
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.10
  %18 = load i8*, i8** %t, align 8
  %19 = load i8, i8* %18, align 1
  %conv13 = sext i8 %19 to i32
  %and14 = and i32 %conv13, 128
  %tobool15 = icmp ne i32 %and14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.10
  %20 = phi i1 [ false, %while.cond.10 ], [ %tobool15, %land.rhs ]
  br i1 %20, label %while.body.16, label %while.end

while.body.16:                                    ; preds = %land.end
  %21 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  br label %while.cond.10

while.end:                                        ; preds = %land.end
  %22 = load i8*, i8** %s.addr, align 8
  %23 = load i8*, i8** %t, align 8
  %24 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %25 = load i8*, i8** %errors.addr, align 8
  %call17 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %22, i64 %sub.ptr.sub, i8* %25)
  store %struct._object* %call17, %struct._object** %u, align 8
  %26 = load %struct._object*, %struct._object** %u, align 8
  %tobool18 = icmp ne %struct._object* %26, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %while.end
  br label %failed

if.end.20:                                        ; preds = %while.end
  %27 = load %struct._object*, %struct._object** %u, align 8
  %28 = load i8*, i8** %recode_encoding.addr, align 8
  %29 = load i8*, i8** %errors.addr, align 8
  %call21 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %27, i8* %28, i8* %29)
  store %struct._object* %call21, %struct._object** %w, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.20
  %30 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp22 = icmp ne i64 %dec, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.body
  br label %if.end.25

if.else:                                          ; preds = %do.body
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %35(%struct._object* %36)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.25
  %37 = load %struct._object*, %struct._object** %w, align 8
  %tobool26 = icmp ne %struct._object* %37, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %do.end
  br label %failed

if.end.28:                                        ; preds = %do.end
  %38 = load %struct._object*, %struct._object** %w, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %39, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %r, align 8
  %40 = load %struct._object*, %struct._object** %w, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %41, i32 0, i32 1
  %42 = load i64, i64* %ob_size, align 8
  store i64 %42, i64* %rn, align 8
  %43 = load i8*, i8** %p, align 8
  %44 = load i8*, i8** %r, align 8
  %45 = load i64, i64* %rn, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 %45, i32 1, i1 false)
  %46 = load i64, i64* %rn, align 8
  %47 = load i8*, i8** %p, align 8
  %add.ptr29 = getelementptr i8, i8* %47, i64 %46
  store i8* %add.ptr29, i8** %p, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.28
  %48 = load %struct._object*, %struct._object** %w, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp31, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %50, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.30
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.30
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %53(%struct._object* %54)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  %55 = load i8*, i8** %t, align 8
  store i8* %55, i8** %s.addr, align 8
  br label %if.end.45

if.else.42:                                       ; preds = %land.lhs.true, %non_esc
  %56 = load i8*, i8** %s.addr, align 8
  %incdec.ptr43 = getelementptr i8, i8* %56, i32 1
  store i8* %incdec.ptr43, i8** %s.addr, align 8
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** %p, align 8
  %incdec.ptr44 = getelementptr i8, i8* %58, i32 1
  store i8* %incdec.ptr44, i8** %p, align 8
  store i8 %57, i8* %58, align 1
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %do.end.41
  br label %while.cond

if.end.46:                                        ; preds = %while.body
  %59 = load i8*, i8** %s.addr, align 8
  %incdec.ptr47 = getelementptr i8, i8* %59, i32 1
  store i8* %incdec.ptr47, i8** %s.addr, align 8
  %60 = load i8*, i8** %s.addr, align 8
  %61 = load i8*, i8** %end, align 8
  %cmp48 = icmp eq i8* %60, %61
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.46
  %62 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0))
  br label %failed

if.end.51:                                        ; preds = %if.end.46
  %63 = load i8*, i8** %s.addr, align 8
  %incdec.ptr52 = getelementptr i8, i8* %63, i32 1
  store i8* %incdec.ptr52, i8** %s.addr, align 8
  %64 = load i8, i8* %63, align 1
  %conv53 = sext i8 %64 to i32
  switch i32 %conv53, label %sw.default [
    i32 10, label %sw.bb
    i32 92, label %sw.bb.54
    i32 39, label %sw.bb.56
    i32 34, label %sw.bb.58
    i32 98, label %sw.bb.60
    i32 102, label %sw.bb.62
    i32 116, label %sw.bb.64
    i32 110, label %sw.bb.66
    i32 114, label %sw.bb.68
    i32 118, label %sw.bb.70
    i32 97, label %sw.bb.72
    i32 48, label %sw.bb.74
    i32 49, label %sw.bb.74
    i32 50, label %sw.bb.74
    i32 51, label %sw.bb.74
    i32 52, label %sw.bb.74
    i32 53, label %sw.bb.74
    i32 54, label %sw.bb.74
    i32 55, label %sw.bb.74
    i32 120, label %sw.bb.110
  ]

sw.bb:                                            ; preds = %if.end.51
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.end.51
  %65 = load i8*, i8** %p, align 8
  %incdec.ptr55 = getelementptr i8, i8* %65, i32 1
  store i8* %incdec.ptr55, i8** %p, align 8
  store i8 92, i8* %65, align 1
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.end.51
  %66 = load i8*, i8** %p, align 8
  %incdec.ptr57 = getelementptr i8, i8* %66, i32 1
  store i8* %incdec.ptr57, i8** %p, align 8
  store i8 39, i8* %66, align 1
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.51
  %67 = load i8*, i8** %p, align 8
  %incdec.ptr59 = getelementptr i8, i8* %67, i32 1
  store i8* %incdec.ptr59, i8** %p, align 8
  store i8 34, i8* %67, align 1
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.51
  %68 = load i8*, i8** %p, align 8
  %incdec.ptr61 = getelementptr i8, i8* %68, i32 1
  store i8* %incdec.ptr61, i8** %p, align 8
  store i8 8, i8* %68, align 1
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end.51
  %69 = load i8*, i8** %p, align 8
  %incdec.ptr63 = getelementptr i8, i8* %69, i32 1
  store i8* %incdec.ptr63, i8** %p, align 8
  store i8 12, i8* %69, align 1
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.end.51
  %70 = load i8*, i8** %p, align 8
  %incdec.ptr65 = getelementptr i8, i8* %70, i32 1
  store i8* %incdec.ptr65, i8** %p, align 8
  store i8 9, i8* %70, align 1
  br label %sw.epilog

sw.bb.66:                                         ; preds = %if.end.51
  %71 = load i8*, i8** %p, align 8
  %incdec.ptr67 = getelementptr i8, i8* %71, i32 1
  store i8* %incdec.ptr67, i8** %p, align 8
  store i8 10, i8* %71, align 1
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.end.51
  %72 = load i8*, i8** %p, align 8
  %incdec.ptr69 = getelementptr i8, i8* %72, i32 1
  store i8* %incdec.ptr69, i8** %p, align 8
  store i8 13, i8* %72, align 1
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.end.51
  %73 = load i8*, i8** %p, align 8
  %incdec.ptr71 = getelementptr i8, i8* %73, i32 1
  store i8* %incdec.ptr71, i8** %p, align 8
  store i8 11, i8* %73, align 1
  br label %sw.epilog

sw.bb.72:                                         ; preds = %if.end.51
  %74 = load i8*, i8** %p, align 8
  %incdec.ptr73 = getelementptr i8, i8* %74, i32 1
  store i8* %incdec.ptr73, i8** %p, align 8
  store i8 7, i8* %74, align 1
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.end.51, %if.end.51, %if.end.51, %if.end.51, %if.end.51, %if.end.51, %if.end.51, %if.end.51
  %75 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr i8, i8* %75, i64 -1
  %76 = load i8, i8* %arrayidx, align 1
  %conv75 = sext i8 %76 to i32
  %sub = sub i32 %conv75, 48
  store i32 %sub, i32* %c, align 4
  %77 = load i8*, i8** %s.addr, align 8
  %78 = load i8*, i8** %end, align 8
  %cmp76 = icmp ult i8* %77, %78
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.107

land.lhs.true.78:                                 ; preds = %sw.bb.74
  %79 = load i8*, i8** %s.addr, align 8
  %80 = load i8, i8* %79, align 1
  %conv79 = sext i8 %80 to i32
  %cmp80 = icmp sle i32 48, %conv79
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.107

land.lhs.true.82:                                 ; preds = %land.lhs.true.78
  %81 = load i8*, i8** %s.addr, align 8
  %82 = load i8, i8* %81, align 1
  %conv83 = sext i8 %82 to i32
  %cmp84 = icmp sle i32 %conv83, 55
  br i1 %cmp84, label %if.then.86, label %if.end.107

if.then.86:                                       ; preds = %land.lhs.true.82
  %83 = load i32, i32* %c, align 4
  %shl = shl i32 %83, 3
  %84 = load i8*, i8** %s.addr, align 8
  %incdec.ptr87 = getelementptr i8, i8* %84, i32 1
  store i8* %incdec.ptr87, i8** %s.addr, align 8
  %85 = load i8, i8* %84, align 1
  %conv88 = sext i8 %85 to i32
  %add = add i32 %shl, %conv88
  %sub89 = sub i32 %add, 48
  store i32 %sub89, i32* %c, align 4
  %86 = load i8*, i8** %s.addr, align 8
  %87 = load i8*, i8** %end, align 8
  %cmp90 = icmp ult i8* %86, %87
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.106

land.lhs.true.92:                                 ; preds = %if.then.86
  %88 = load i8*, i8** %s.addr, align 8
  %89 = load i8, i8* %88, align 1
  %conv93 = sext i8 %89 to i32
  %cmp94 = icmp sle i32 48, %conv93
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.106

land.lhs.true.96:                                 ; preds = %land.lhs.true.92
  %90 = load i8*, i8** %s.addr, align 8
  %91 = load i8, i8* %90, align 1
  %conv97 = sext i8 %91 to i32
  %cmp98 = icmp sle i32 %conv97, 55
  br i1 %cmp98, label %if.then.100, label %if.end.106

if.then.100:                                      ; preds = %land.lhs.true.96
  %92 = load i32, i32* %c, align 4
  %shl101 = shl i32 %92, 3
  %93 = load i8*, i8** %s.addr, align 8
  %incdec.ptr102 = getelementptr i8, i8* %93, i32 1
  store i8* %incdec.ptr102, i8** %s.addr, align 8
  %94 = load i8, i8* %93, align 1
  %conv103 = sext i8 %94 to i32
  %add104 = add i32 %shl101, %conv103
  %sub105 = sub i32 %add104, 48
  store i32 %sub105, i32* %c, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.100, %land.lhs.true.96, %land.lhs.true.92, %if.then.86
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %land.lhs.true.82, %land.lhs.true.78, %sw.bb.74
  %95 = load i32, i32* %c, align 4
  %conv108 = trunc i32 %95 to i8
  %96 = load i8*, i8** %p, align 8
  %incdec.ptr109 = getelementptr i8, i8* %96, i32 1
  store i8* %incdec.ptr109, i8** %p, align 8
  store i8 %conv108, i8* %96, align 1
  br label %sw.epilog

sw.bb.110:                                        ; preds = %if.end.51
  %97 = load i8*, i8** %s.addr, align 8
  %add.ptr111 = getelementptr i8, i8* %97, i64 1
  %98 = load i8*, i8** %end, align 8
  %cmp112 = icmp ult i8* %add.ptr111, %98
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.194

land.lhs.true.114:                                ; preds = %sw.bb.110
  %99 = load i8*, i8** %s.addr, align 8
  %arrayidx115 = getelementptr i8, i8* %99, i64 0
  %100 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %100 to i32
  %and117 = and i32 %conv116, 255
  %conv118 = trunc i32 %and117 to i8
  %idxprom = zext i8 %conv118 to i64
  %arrayidx119 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %101 = load i32, i32* %arrayidx119, align 4
  %and120 = and i32 %101, 16
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %land.lhs.true.122, label %if.end.194

land.lhs.true.122:                                ; preds = %land.lhs.true.114
  %102 = load i8*, i8** %s.addr, align 8
  %arrayidx123 = getelementptr i8, i8* %102, i64 1
  %103 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %103 to i32
  %and125 = and i32 %conv124, 255
  %conv126 = trunc i32 %and125 to i8
  %idxprom127 = zext i8 %conv126 to i64
  %arrayidx128 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom127
  %104 = load i32, i32* %arrayidx128, align 4
  %and129 = and i32 %104, 16
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.194

if.then.131:                                      ; preds = %land.lhs.true.122
  store i32 0, i32* %x, align 4
  %105 = load i8*, i8** %s.addr, align 8
  %106 = load i8, i8* %105, align 1
  %conv132 = sext i8 %106 to i32
  %and133 = and i32 %conv132, 255
  %conv134 = trunc i32 %and133 to i8
  %conv135 = zext i8 %conv134 to i32
  store i32 %conv135, i32* %c, align 4
  %107 = load i8*, i8** %s.addr, align 8
  %incdec.ptr136 = getelementptr i8, i8* %107, i32 1
  store i8* %incdec.ptr136, i8** %s.addr, align 8
  %108 = load i32, i32* %c, align 4
  %and137 = and i32 %108, 255
  %conv138 = trunc i32 %and137 to i8
  %idxprom139 = zext i8 %conv138 to i64
  %arrayidx140 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom139
  %109 = load i32, i32* %arrayidx140, align 4
  %and141 = and i32 %109, 4
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.then.143, label %if.else.145

if.then.143:                                      ; preds = %if.then.131
  %110 = load i32, i32* %c, align 4
  %sub144 = sub i32 %110, 48
  store i32 %sub144, i32* %x, align 4
  br label %if.end.159

if.else.145:                                      ; preds = %if.then.131
  %111 = load i32, i32* %c, align 4
  %and146 = and i32 %111, 255
  %conv147 = trunc i32 %and146 to i8
  %idxprom148 = zext i8 %conv147 to i64
  %arrayidx149 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom148
  %112 = load i32, i32* %arrayidx149, align 4
  %and150 = and i32 %112, 1
  %tobool151 = icmp ne i32 %and150, 0
  br i1 %tobool151, label %if.then.152, label %if.else.155

if.then.152:                                      ; preds = %if.else.145
  %113 = load i32, i32* %c, align 4
  %add153 = add i32 10, %113
  %sub154 = sub i32 %add153, 97
  store i32 %sub154, i32* %x, align 4
  br label %if.end.158

if.else.155:                                      ; preds = %if.else.145
  %114 = load i32, i32* %c, align 4
  %add156 = add i32 10, %114
  %sub157 = sub i32 %add156, 65
  store i32 %sub157, i32* %x, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.152
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.143
  %115 = load i32, i32* %x, align 4
  %shl160 = shl i32 %115, 4
  store i32 %shl160, i32* %x, align 4
  %116 = load i8*, i8** %s.addr, align 8
  %117 = load i8, i8* %116, align 1
  %conv161 = sext i8 %117 to i32
  %and162 = and i32 %conv161, 255
  %conv163 = trunc i32 %and162 to i8
  %conv164 = zext i8 %conv163 to i32
  store i32 %conv164, i32* %c, align 4
  %118 = load i8*, i8** %s.addr, align 8
  %incdec.ptr165 = getelementptr i8, i8* %118, i32 1
  store i8* %incdec.ptr165, i8** %s.addr, align 8
  %119 = load i32, i32* %c, align 4
  %and166 = and i32 %119, 255
  %conv167 = trunc i32 %and166 to i8
  %idxprom168 = zext i8 %conv167 to i64
  %arrayidx169 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom168
  %120 = load i32, i32* %arrayidx169, align 4
  %and170 = and i32 %120, 4
  %tobool171 = icmp ne i32 %and170, 0
  br i1 %tobool171, label %if.then.172, label %if.else.175

if.then.172:                                      ; preds = %if.end.159
  %121 = load i32, i32* %c, align 4
  %sub173 = sub i32 %121, 48
  %122 = load i32, i32* %x, align 4
  %add174 = add i32 %122, %sub173
  store i32 %add174, i32* %x, align 4
  br label %if.end.191

if.else.175:                                      ; preds = %if.end.159
  %123 = load i32, i32* %c, align 4
  %and176 = and i32 %123, 255
  %conv177 = trunc i32 %and176 to i8
  %idxprom178 = zext i8 %conv177 to i64
  %arrayidx179 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom178
  %124 = load i32, i32* %arrayidx179, align 4
  %and180 = and i32 %124, 1
  %tobool181 = icmp ne i32 %and180, 0
  br i1 %tobool181, label %if.then.182, label %if.else.186

if.then.182:                                      ; preds = %if.else.175
  %125 = load i32, i32* %c, align 4
  %add183 = add i32 10, %125
  %sub184 = sub i32 %add183, 97
  %126 = load i32, i32* %x, align 4
  %add185 = add i32 %126, %sub184
  store i32 %add185, i32* %x, align 4
  br label %if.end.190

if.else.186:                                      ; preds = %if.else.175
  %127 = load i32, i32* %c, align 4
  %add187 = add i32 10, %127
  %sub188 = sub i32 %add187, 65
  %128 = load i32, i32* %x, align 4
  %add189 = add i32 %128, %sub188
  store i32 %add189, i32* %x, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.186, %if.then.182
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.172
  %129 = load i32, i32* %x, align 4
  %conv192 = trunc i32 %129 to i8
  %130 = load i8*, i8** %p, align 8
  %incdec.ptr193 = getelementptr i8, i8* %130, i32 1
  store i8* %incdec.ptr193, i8** %p, align 8
  store i8 %conv192, i8* %130, align 1
  br label %sw.epilog

if.end.194:                                       ; preds = %land.lhs.true.122, %land.lhs.true.114, %sw.bb.110
  %131 = load i8*, i8** %errors.addr, align 8
  %tobool195 = icmp ne i8* %131, null
  br i1 %tobool195, label %lor.lhs.false, label %if.then.199

lor.lhs.false:                                    ; preds = %if.end.194
  %132 = load i8*, i8** %errors.addr, align 8
  %call196 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)) #7
  %cmp197 = icmp eq i32 %call196, 0
  br i1 %cmp197, label %if.then.199, label %if.end.206

if.then.199:                                      ; preds = %lor.lhs.false, %if.end.194
  %133 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %134 = load i8*, i8** %s.addr, align 8
  %add.ptr200 = getelementptr i8, i8* %134, i64 -2
  %135 = load i8*, i8** %end, align 8
  %136 = load i64, i64* %len.addr, align 8
  %idx.neg = sub i64 0, %136
  %add.ptr201 = getelementptr i8, i8* %135, i64 %idx.neg
  %sub.ptr.lhs.cast202 = ptrtoint i8* %add.ptr200 to i64
  %sub.ptr.rhs.cast203 = ptrtoint i8* %add.ptr201 to i64
  %sub.ptr.sub204 = sub i64 %sub.ptr.lhs.cast202, %sub.ptr.rhs.cast203
  %call205 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i64 %sub.ptr.sub204)
  br label %failed

if.end.206:                                       ; preds = %lor.lhs.false
  %137 = load i8*, i8** %errors.addr, align 8
  %call207 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #7
  %cmp208 = icmp eq i32 %call207, 0
  br i1 %cmp208, label %if.then.210, label %if.else.212

if.then.210:                                      ; preds = %if.end.206
  %138 = load i8*, i8** %p, align 8
  %incdec.ptr211 = getelementptr i8, i8* %138, i32 1
  store i8* %incdec.ptr211, i8** %p, align 8
  store i8 63, i8* %138, align 1
  br label %if.end.220

if.else.212:                                      ; preds = %if.end.206
  %139 = load i8*, i8** %errors.addr, align 8
  %call213 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #7
  %cmp214 = icmp eq i32 %call213, 0
  br i1 %cmp214, label %if.then.216, label %if.else.217

if.then.216:                                      ; preds = %if.else.212
  br label %if.end.219

if.else.217:                                      ; preds = %if.else.212
  %140 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %141 = load i8*, i8** %errors.addr, align 8
  %call218 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %140, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i32 0, i32 0), i8* %141)
  br label %failed

if.end.219:                                       ; preds = %if.then.216
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.then.210
  %142 = load i8*, i8** %s.addr, align 8
  %143 = load i8*, i8** %end, align 8
  %cmp221 = icmp ult i8* %142, %143
  br i1 %cmp221, label %land.lhs.true.223, label %if.end.234

land.lhs.true.223:                                ; preds = %if.end.220
  %144 = load i8*, i8** %s.addr, align 8
  %arrayidx224 = getelementptr i8, i8* %144, i64 0
  %145 = load i8, i8* %arrayidx224, align 1
  %conv225 = sext i8 %145 to i32
  %and226 = and i32 %conv225, 255
  %conv227 = trunc i32 %and226 to i8
  %idxprom228 = zext i8 %conv227 to i64
  %arrayidx229 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom228
  %146 = load i32, i32* %arrayidx229, align 4
  %and230 = and i32 %146, 16
  %tobool231 = icmp ne i32 %and230, 0
  br i1 %tobool231, label %if.then.232, label %if.end.234

if.then.232:                                      ; preds = %land.lhs.true.223
  %147 = load i8*, i8** %s.addr, align 8
  %incdec.ptr233 = getelementptr i8, i8* %147, i32 1
  store i8* %incdec.ptr233, i8** %s.addr, align 8
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.232, %land.lhs.true.223, %if.end.220
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.51
  %148 = load i8*, i8** %p, align 8
  %incdec.ptr235 = getelementptr i8, i8* %148, i32 1
  store i8* %incdec.ptr235, i8** %p, align 8
  store i8 92, i8* %148, align 1
  %149 = load i8*, i8** %s.addr, align 8
  %incdec.ptr236 = getelementptr i8, i8* %149, i32 -1
  store i8* %incdec.ptr236, i8** %s.addr, align 8
  br label %non_esc

sw.epilog:                                        ; preds = %if.end.234, %if.end.191, %if.end.107, %sw.bb.72, %sw.bb.70, %sw.bb.68, %sw.bb.66, %sw.bb.64, %sw.bb.62, %sw.bb.60, %sw.bb.58, %sw.bb.56, %sw.bb.54, %sw.bb
  br label %while.cond

while.end.237:                                    ; preds = %while.cond
  %150 = load i8*, i8** %p, align 8
  %151 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast238 = ptrtoint i8* %150 to i64
  %sub.ptr.rhs.cast239 = ptrtoint i8* %151 to i64
  %sub.ptr.sub240 = sub i64 %sub.ptr.lhs.cast238, %sub.ptr.rhs.cast239
  %152 = load i64, i64* %newlen, align 8
  %cmp241 = icmp slt i64 %sub.ptr.sub240, %152
  br i1 %cmp241, label %if.then.243, label %if.end.248

if.then.243:                                      ; preds = %while.end.237
  %153 = load i8*, i8** %p, align 8
  %154 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast244 = ptrtoint i8* %153 to i64
  %sub.ptr.rhs.cast245 = ptrtoint i8* %154 to i64
  %sub.ptr.sub246 = sub i64 %sub.ptr.lhs.cast244, %sub.ptr.rhs.cast245
  %call247 = call i32 @_PyBytes_Resize(%struct._object** %v, i64 %sub.ptr.sub246)
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.243, %while.end.237
  %155 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %155, %struct._object** %retval
  br label %return

failed:                                           ; preds = %if.else.217, %if.then.199, %if.then.50, %if.then.27, %if.then.19
  br label %do.body.249

do.body.249:                                      ; preds = %failed
  %156 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %156, %struct._object** %_py_decref_tmp250, align 8
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp250, align 8
  %ob_refcnt251 = getelementptr inbounds %struct._object, %struct._object* %157, i32 0, i32 0
  %158 = load i64, i64* %ob_refcnt251, align 8
  %dec252 = add i64 %158, -1
  store i64 %dec252, i64* %ob_refcnt251, align 8
  %cmp253 = icmp ne i64 %dec252, 0
  br i1 %cmp253, label %if.then.255, label %if.else.256

if.then.255:                                      ; preds = %do.body.249
  br label %if.end.259

if.else.256:                                      ; preds = %do.body.249
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp250, align 8
  %ob_type257 = getelementptr inbounds %struct._object, %struct._object* %159, i32 0, i32 1
  %160 = load %struct._typeobject*, %struct._typeobject** %ob_type257, align 8
  %tp_dealloc258 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %160, i32 0, i32 4
  %161 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc258, align 8
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp250, align 8
  call void %161(%struct._object* %162)
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.256, %if.then.255
  br label %do.end.260

do.end.260:                                       ; preds = %if.end.259
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.260, %if.end.248, %if.then
  %163 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %163
}

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #1

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i64 @PyBytes_Size(%struct._object* %op) #0 {
entry:
  %retval = alloca i64, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %4 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8* %6)
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %op.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  store i64 %9, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i32 @PyBytes_AsStringAndSize(%struct._object* %obj, i8** %s, i64* %len) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %s.addr = alloca i8**, align 8
  %len.addr = alloca i64*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8** %s, i8*** %s.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  %0 = load i8**, i8*** %s.addr, align 8
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i32 556)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 134217728
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8* %7)
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %9, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %10 = load i8**, i8*** %s.addr, align 8
  store i8* %arraydecay, i8** %10, align 8
  %11 = load i64*, i64** %len.addr, align 8
  %cmp5 = icmp ne i64* %11, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size, align 8
  %15 = load i64*, i64** %len.addr, align 8
  store i64 %14, i64* %15, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.end.4
  %16 = load i8**, i8*** %s.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %call7 = call i64 @strlen(i8* %17) #7
  %18 = load %struct._object*, %struct._object** %obj.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size8, align 8
  %cmp9 = icmp ne i64 %call7, %20
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.else
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10, %if.then.2, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyBytes_Repr(%struct._object* %obj, i32 %smartquotes) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %smartquotes.addr = alloca i32, align 4
  %op = alloca %struct.PyBytesObject*, align 8
  %i = alloca i64, align 8
  %length = alloca i64, align 8
  %newsize = alloca i64, align 8
  %squotes = alloca i64, align 8
  %dquotes = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %quote = alloca i8, align 1
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %c = alloca i8, align 1
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i32 %smartquotes, i32* %smartquotes.addr, align 4
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBytesObject*
  store %struct.PyBytesObject* %1, %struct.PyBytesObject** %op, align 8
  %2 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %3 = bitcast %struct.PyBytesObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  store i64 %4, i64* %length, align 8
  store i64 0, i64* %dquotes, align 8
  store i64 0, i64* %squotes, align 8
  store i64 3, i64* %newsize, align 8
  %5 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %s, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %length, align 8
  %cmp = icmp slt i64 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %9 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr i8, i8* %9, i64 %8
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 39, label %sw.bb
    i32 34, label %sw.bb.2
    i32 92, label %sw.bb.5
    i32 9, label %sw.bb.5
    i32 10, label %sw.bb.5
    i32 13, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %for.body
  %11 = load i64, i64* %squotes, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %squotes, align 8
  %12 = load i64, i64* %newsize, align 8
  %inc1 = add i64 %12, 1
  store i64 %inc1, i64* %newsize, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %for.body
  %13 = load i64, i64* %dquotes, align 8
  %inc3 = add i64 %13, 1
  store i64 %inc3, i64* %dquotes, align 8
  %14 = load i64, i64* %newsize, align 8
  %inc4 = add i64 %14, 1
  store i64 %inc4, i64* %newsize, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body, %for.body, %for.body, %for.body
  %15 = load i64, i64* %newsize, align 8
  %add = add i64 %15, 2
  store i64 %add, i64* %newsize, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %16 = load i64, i64* %i, align 8
  %17 = load i8*, i8** %s, align 8
  %arrayidx6 = getelementptr i8, i8* %17, i64 %16
  %18 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %18 to i32
  %cmp8 = icmp slt i32 %conv7, 32
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default
  %19 = load i64, i64* %i, align 8
  %20 = load i8*, i8** %s, align 8
  %arrayidx10 = getelementptr i8, i8* %20, i64 %19
  %21 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %21 to i32
  %cmp12 = icmp sge i32 %conv11, 127
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %sw.default
  %22 = load i64, i64* %newsize, align 8
  %add14 = add i64 %22, 4
  store i64 %add14, i64* %newsize, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %23 = load i64, i64* %newsize, align 8
  %inc15 = add i64 %23, 1
  store i64 %inc15, i64* %newsize, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.5, %sw.bb.2, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %24 = load i64, i64* %i, align 8
  %inc16 = add i64 %24, 1
  store i64 %inc16, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 39, i8* %quote, align 1
  %25 = load i32, i32* %smartquotes.addr, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %for.end
  %26 = load i64, i64* %squotes, align 8
  %tobool17 = icmp ne i64 %26, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.21

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %27 = load i64, i64* %dquotes, align 8
  %tobool19 = icmp ne i64 %27, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.18
  store i8 34, i8* %quote, align 1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true.18, %land.lhs.true, %for.end
  %28 = load i64, i64* %squotes, align 8
  %tobool22 = icmp ne i64 %28, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.29

land.lhs.true.23:                                 ; preds = %if.end.21
  %29 = load i8, i8* %quote, align 1
  %conv24 = zext i8 %29 to i32
  %cmp25 = icmp eq i32 %conv24, 39
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %land.lhs.true.23
  %30 = load i64, i64* %squotes, align 8
  %31 = load i64, i64* %newsize, align 8
  %add28 = add i64 %31, %30
  store i64 %add28, i64* %newsize, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %land.lhs.true.23, %if.end.21
  %32 = load i64, i64* %newsize, align 8
  %cmp30 = icmp ugt i64 %32, 9223372036854775726
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  %33 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.29
  %34 = load i64, i64* %newsize, align 8
  %call = call %struct._object* @PyUnicode_New(i64 %34, i32 127)
  store %struct._object* %call, %struct._object** %v, align 8
  %35 = load %struct._object*, %struct._object** %v, align 8
  %cmp34 = icmp eq %struct._object* %35, null
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.33
  %36 = load %struct._object*, %struct._object** %v, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %37, i32 0, i32 3
  %38 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %38, align 4
  %bf.lshr = lshr i32 %bf.load, 5
  %bf.clear = and i32 %bf.lshr, 1
  %tobool38 = icmp ne i32 %bf.clear, 0
  br i1 %tobool38, label %cond.true, label %cond.false.46

cond.true:                                        ; preds = %if.end.37
  %39 = load %struct._object*, %struct._object** %v, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyASCIIObject*
  %state39 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %40, i32 0, i32 3
  %41 = bitcast %struct.anon* %state39 to i32*
  %bf.load40 = load i32, i32* %41, align 4
  %bf.lshr41 = lshr i32 %bf.load40, 6
  %bf.clear42 = and i32 %bf.lshr41, 1
  %tobool43 = icmp ne i32 %bf.clear42, 0
  br i1 %tobool43, label %cond.true.44, label %cond.false

cond.true.44:                                     ; preds = %cond.true
  %42 = load %struct._object*, %struct._object** %v, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %43, i64 1
  %44 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %45 = load %struct._object*, %struct._object** %v, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyCompactUnicodeObject*
  %add.ptr45 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %46, i64 1
  %47 = bitcast %struct.PyCompactUnicodeObject* %add.ptr45 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.44
  %cond = phi i8* [ %44, %cond.true.44 ], [ %47, %cond.false ]
  br label %cond.end.47

cond.false.46:                                    ; preds = %if.end.37
  %48 = load %struct._object*, %struct._object** %v, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %49, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %50 = load i8*, i8** %any, align 8
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.end
  %cond48 = phi i8* [ %cond, %cond.end ], [ %50, %cond.false.46 ]
  store i8* %cond48, i8** %p, align 8
  %51 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %51, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 98, i8* %51, align 1
  %52 = load i8, i8* %quote, align 1
  %53 = load i8*, i8** %p, align 8
  %incdec.ptr49 = getelementptr i8, i8* %53, i32 1
  store i8* %incdec.ptr49, i8** %p, align 8
  store i8 %52, i8* %53, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.114, %cond.end.47
  %54 = load i64, i64* %i, align 8
  %55 = load i64, i64* %length, align 8
  %cmp51 = icmp slt i64 %54, %55
  br i1 %cmp51, label %for.body.53, label %for.end.116

for.body.53:                                      ; preds = %for.cond.50
  %56 = load i64, i64* %i, align 8
  %57 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_sval54 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %57, i32 0, i32 2
  %arrayidx55 = getelementptr [1 x i8], [1 x i8]* %ob_sval54, i32 0, i64 %56
  %58 = load i8, i8* %arrayidx55, align 1
  store i8 %58, i8* %c, align 1
  %59 = load i8, i8* %c, align 1
  %conv56 = zext i8 %59 to i32
  %60 = load i8, i8* %quote, align 1
  %conv57 = zext i8 %60 to i32
  %cmp58 = icmp eq i32 %conv56, %conv57
  br i1 %cmp58, label %if.then.64, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %for.body.53
  %61 = load i8, i8* %c, align 1
  %conv61 = zext i8 %61 to i32
  %cmp62 = icmp eq i32 %conv61, 92
  br i1 %cmp62, label %if.then.64, label %if.else.67

if.then.64:                                       ; preds = %lor.lhs.false.60, %for.body.53
  %62 = load i8*, i8** %p, align 8
  %incdec.ptr65 = getelementptr i8, i8* %62, i32 1
  store i8* %incdec.ptr65, i8** %p, align 8
  store i8 92, i8* %62, align 1
  %63 = load i8, i8* %c, align 1
  %64 = load i8*, i8** %p, align 8
  %incdec.ptr66 = getelementptr i8, i8* %64, i32 1
  store i8* %incdec.ptr66, i8** %p, align 8
  store i8 %63, i8* %64, align 1
  br label %if.end.113

if.else.67:                                       ; preds = %lor.lhs.false.60
  %65 = load i8, i8* %c, align 1
  %conv68 = zext i8 %65 to i32
  %cmp69 = icmp eq i32 %conv68, 9
  br i1 %cmp69, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %if.else.67
  %66 = load i8*, i8** %p, align 8
  %incdec.ptr72 = getelementptr i8, i8* %66, i32 1
  store i8* %incdec.ptr72, i8** %p, align 8
  store i8 92, i8* %66, align 1
  %67 = load i8*, i8** %p, align 8
  %incdec.ptr73 = getelementptr i8, i8* %67, i32 1
  store i8* %incdec.ptr73, i8** %p, align 8
  store i8 116, i8* %67, align 1
  br label %if.end.112

if.else.74:                                       ; preds = %if.else.67
  %68 = load i8, i8* %c, align 1
  %conv75 = zext i8 %68 to i32
  %cmp76 = icmp eq i32 %conv75, 10
  br i1 %cmp76, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %if.else.74
  %69 = load i8*, i8** %p, align 8
  %incdec.ptr79 = getelementptr i8, i8* %69, i32 1
  store i8* %incdec.ptr79, i8** %p, align 8
  store i8 92, i8* %69, align 1
  %70 = load i8*, i8** %p, align 8
  %incdec.ptr80 = getelementptr i8, i8* %70, i32 1
  store i8* %incdec.ptr80, i8** %p, align 8
  store i8 110, i8* %70, align 1
  br label %if.end.111

if.else.81:                                       ; preds = %if.else.74
  %71 = load i8, i8* %c, align 1
  %conv82 = zext i8 %71 to i32
  %cmp83 = icmp eq i32 %conv82, 13
  br i1 %cmp83, label %if.then.85, label %if.else.88

if.then.85:                                       ; preds = %if.else.81
  %72 = load i8*, i8** %p, align 8
  %incdec.ptr86 = getelementptr i8, i8* %72, i32 1
  store i8* %incdec.ptr86, i8** %p, align 8
  store i8 92, i8* %72, align 1
  %73 = load i8*, i8** %p, align 8
  %incdec.ptr87 = getelementptr i8, i8* %73, i32 1
  store i8* %incdec.ptr87, i8** %p, align 8
  store i8 114, i8* %73, align 1
  br label %if.end.110

if.else.88:                                       ; preds = %if.else.81
  %74 = load i8, i8* %c, align 1
  %conv89 = zext i8 %74 to i32
  %cmp90 = icmp slt i32 %conv89, 32
  br i1 %cmp90, label %if.then.96, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %if.else.88
  %75 = load i8, i8* %c, align 1
  %conv93 = zext i8 %75 to i32
  %cmp94 = icmp sge i32 %conv93, 127
  br i1 %cmp94, label %if.then.96, label %if.else.107

if.then.96:                                       ; preds = %lor.lhs.false.92, %if.else.88
  %76 = load i8*, i8** %p, align 8
  %incdec.ptr97 = getelementptr i8, i8* %76, i32 1
  store i8* %incdec.ptr97, i8** %p, align 8
  store i8 92, i8* %76, align 1
  %77 = load i8*, i8** %p, align 8
  %incdec.ptr98 = getelementptr i8, i8* %77, i32 1
  store i8* %incdec.ptr98, i8** %p, align 8
  store i8 120, i8* %77, align 1
  %78 = load i8, i8* %c, align 1
  %conv99 = zext i8 %78 to i32
  %and = and i32 %conv99, 240
  %shr = ashr i32 %and, 4
  %idxprom = sext i32 %shr to i64
  %79 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx100 = getelementptr i8, i8* %79, i64 %idxprom
  %80 = load i8, i8* %arrayidx100, align 1
  %81 = load i8*, i8** %p, align 8
  %incdec.ptr101 = getelementptr i8, i8* %81, i32 1
  store i8* %incdec.ptr101, i8** %p, align 8
  store i8 %80, i8* %81, align 1
  %82 = load i8, i8* %c, align 1
  %conv102 = zext i8 %82 to i32
  %and103 = and i32 %conv102, 15
  %idxprom104 = sext i32 %and103 to i64
  %83 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx105 = getelementptr i8, i8* %83, i64 %idxprom104
  %84 = load i8, i8* %arrayidx105, align 1
  %85 = load i8*, i8** %p, align 8
  %incdec.ptr106 = getelementptr i8, i8* %85, i32 1
  store i8* %incdec.ptr106, i8** %p, align 8
  store i8 %84, i8* %85, align 1
  br label %if.end.109

if.else.107:                                      ; preds = %lor.lhs.false.92
  %86 = load i8, i8* %c, align 1
  %87 = load i8*, i8** %p, align 8
  %incdec.ptr108 = getelementptr i8, i8* %87, i32 1
  store i8* %incdec.ptr108, i8** %p, align 8
  store i8 %86, i8* %87, align 1
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.107, %if.then.96
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.85
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.78
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.71
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.64
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.113
  %88 = load i64, i64* %i, align 8
  %inc115 = add i64 %88, 1
  store i64 %inc115, i64* %i, align 8
  br label %for.cond.50

for.end.116:                                      ; preds = %for.cond.50
  %89 = load i8, i8* %quote, align 1
  %90 = load i8*, i8** %p, align 8
  %incdec.ptr117 = getelementptr i8, i8* %90, i32 1
  store i8* %incdec.ptr117, i8** %p, align 8
  store i8 %89, i8* %90, align 1
  %91 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %91, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.116, %if.then.36, %if.then.32
  %92 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %92
}

declare %struct._object* @PyUnicode_New(i64, i32) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyBytes_Join(%struct._object* %sep, %struct._object* %x) #0 {
entry:
  %sep.addr = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  store %struct._object* %sep, %struct._object** %sep.addr, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  %0 = load %struct._object*, %struct._object** %sep.addr, align 8
  %1 = load %struct._object*, %struct._object** %x.addr, align 8
  %call = call %struct._object* @bytes_join(%struct._object* %0, %struct._object* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_join(%struct._object* %self, %struct._object* %iterable) #0 {
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
define %struct._object* @PyBytes_FromObject(%struct._object* %x) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca %struct._object*, align 8
  %new = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %view = alloca %struct.bufferinfo, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %value97 = alloca i64, align 8
  %_py_decref_tmp108 = alloca %struct._object*, align 8
  %_py_decref_tmp127 = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %value165 = alloca i64, align 8
  %_py_decref_tmp177 = alloca %struct._object*, align 8
  %_py_decref_tmp220 = alloca %struct._object*, align 8
  %_py_xdecref_tmp232 = alloca %struct._object*, align 8
  %_py_decref_tmp237 = alloca %struct._object*, align 8
  %_py_xdecref_tmp251 = alloca %struct._object*, align 8
  %_py_decref_tmp256 = alloca %struct._object*, align 8
  store %struct._object* %x, %struct._object** %x.addr, align 8
  %0 = load %struct._object*, %struct._object** %x.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i32 2560)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %2, @PyBytes_Type
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %x.addr, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 18
  %8 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp5 = icmp ne %struct.PyBufferProcs* %8, null
  br i1 %cmp5, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_as_buffer7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 18
  %11 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer7, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %11, i32 0, i32 0
  %12 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp8 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %12, null
  br i1 %cmp8, label %if.then.9, label %if.end.31

if.then.9:                                        ; preds = %land.lhs.true
  %13 = load %struct._object*, %struct._object** %x.addr, align 8
  %call = call i32 @PyObject_GetBuffer(%struct._object* %13, %struct.bufferinfo* %view, i32 284)
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.9
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %14 = load i64, i64* %len, align 8
  %call13 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %14)
  store %struct._object* %call13, %struct._object** %new, align 8
  %15 = load %struct._object*, %struct._object** %new, align 8
  %tobool = icmp ne %struct._object* %15, null
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  br label %fail

if.end.15:                                        ; preds = %if.end.12
  %16 = load %struct._object*, %struct._object** %new, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %17, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %len16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %18 = load i64, i64* %len16, align 8
  %call17 = call i32 @PyBuffer_ToContiguous(i8* %arraydecay, %struct.bufferinfo* %view, i64 %18, i8 signext 67)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  br label %fail

if.end.20:                                        ; preds = %if.end.15
  call void @PyBuffer_Release(%struct.bufferinfo* %view)
  %19 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.19, %if.then.14
  br label %do.body

do.body:                                          ; preds = %fail
  %20 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %20, %struct._object** %_py_xdecref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp21 = icmp ne %struct._object* %21, null
  br i1 %cmp21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %do.body
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt24, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt24, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body.23
  br label %if.end.28

if.else:                                          ; preds = %do.body.23
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.26
  br label %do.end

do.end:                                           ; preds = %if.end.28
  br label %if.end.29

if.end.29:                                        ; preds = %do.end, %do.body
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  call void @PyBuffer_Release(%struct.bufferinfo* %view)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true, %if.end.3
  %29 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 19
  %31 = load i64, i64* %tp_flags, align 8
  %and = and i64 %31, 268435456
  %cmp33 = icmp ne i64 %and, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  %32 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.31
  %33 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %cmp37 = icmp eq %struct._typeobject* %34, @PyList_Type
  br i1 %cmp37, label %if.then.38, label %if.end.81

if.then.38:                                       ; preds = %if.end.35
  %35 = load %struct._object*, %struct._object** %x.addr, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %36, i32 0, i32 1
  %37 = load i64, i64* %ob_size, align 8
  %call39 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %37)
  store %struct._object* %call39, %struct._object** %new, align 8
  %38 = load %struct._object*, %struct._object** %new, align 8
  %cmp40 = icmp eq %struct._object* %38, null
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.38
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.42:                                        ; preds = %if.then.38
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.42
  %39 = load i64, i64* %i, align 8
  %40 = load %struct._object*, %struct._object** %x.addr, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyVarObject*
  %ob_size43 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %41, i32 0, i32 1
  %42 = load i64, i64* %ob_size43, align 8
  %cmp44 = icmp slt i64 %39, %42
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i64, i64* %i, align 8
  %44 = load %struct._object*, %struct._object** %x.addr, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %45, i32 0, i32 1
  %46 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %46, i64 %43
  %47 = load %struct._object*, %struct._object** %arrayidx, align 8
  %48 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call45 = call i64 @PyNumber_AsSsize_t(%struct._object* %47, %struct._object* %48)
  store i64 %call45, i64* %value, align 8
  %49 = load i64, i64* %value, align 8
  %cmp46 = icmp eq i64 %49, -1
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.62

land.lhs.true.47:                                 ; preds = %for.body
  %call48 = call %struct._object* @PyErr_Occurred()
  %tobool49 = icmp ne %struct._object* %call48, null
  br i1 %tobool49, label %if.then.50, label %if.end.62

if.then.50:                                       ; preds = %land.lhs.true.47
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.50
  %50 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp52, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt53, align 8
  %dec54 = add i64 %52, -1
  store i64 %dec54, i64* %ob_refcnt53, align 8
  %cmp55 = icmp ne i64 %dec54, 0
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.51
  br label %if.end.60

if.else.57:                                       ; preds = %do.body.51
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  call void %55(%struct._object* %56)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.62:                                        ; preds = %land.lhs.true.47, %for.body
  %57 = load i64, i64* %value, align 8
  %cmp63 = icmp slt i64 %57, 0
  br i1 %cmp63, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.62
  %58 = load i64, i64* %value, align 8
  %cmp64 = icmp sge i64 %58, 256
  br i1 %cmp64, label %if.then.65, label %if.end.77

if.then.65:                                       ; preds = %lor.lhs.false, %if.end.62
  %59 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0))
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.65
  %60 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp67, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %62, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %65(%struct._object* %66)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.77:                                        ; preds = %lor.lhs.false
  %67 = load i64, i64* %value, align 8
  %conv = trunc i64 %67 to i8
  %68 = load i64, i64* %i, align 8
  %69 = load %struct._object*, %struct._object** %new, align 8
  %70 = bitcast %struct._object* %69 to %struct.PyBytesObject*
  %ob_sval78 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %70, i32 0, i32 2
  %arrayidx79 = getelementptr [1 x i8], [1 x i8]* %ob_sval78, i32 0, i64 %68
  store i8 %conv, i8* %arrayidx79, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %71 = load i64, i64* %i, align 8
  %inc80 = add i64 %71, 1
  store i64 %inc80, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %72, %struct._object** %retval
  br label %return

if.end.81:                                        ; preds = %if.end.35
  %73 = load %struct._object*, %struct._object** %x.addr, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %cmp83 = icmp eq %struct._typeobject* %74, @PyTuple_Type
  br i1 %cmp83, label %if.then.85, label %if.end.145

if.then.85:                                       ; preds = %if.end.81
  %75 = load %struct._object*, %struct._object** %x.addr, align 8
  %76 = bitcast %struct._object* %75 to %struct.PyVarObject*
  %ob_size86 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %76, i32 0, i32 1
  %77 = load i64, i64* %ob_size86, align 8
  %call87 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %77)
  store %struct._object* %call87, %struct._object** %new, align 8
  %78 = load %struct._object*, %struct._object** %new, align 8
  %cmp88 = icmp eq %struct._object* %78, null
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.then.85
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.91:                                        ; preds = %if.then.85
  store i64 0, i64* %i, align 8
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.142, %if.end.91
  %79 = load i64, i64* %i, align 8
  %80 = load %struct._object*, %struct._object** %x.addr, align 8
  %81 = bitcast %struct._object* %80 to %struct.PyVarObject*
  %ob_size93 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %81, i32 0, i32 1
  %82 = load i64, i64* %ob_size93, align 8
  %cmp94 = icmp slt i64 %79, %82
  br i1 %cmp94, label %for.body.96, label %for.end.144

for.body.96:                                      ; preds = %for.cond.92
  %83 = load i64, i64* %i, align 8
  %84 = load %struct._object*, %struct._object** %x.addr, align 8
  %85 = bitcast %struct._object* %84 to %struct.PyTupleObject*
  %ob_item98 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %85, i32 0, i32 1
  %arrayidx99 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item98, i32 0, i64 %83
  %86 = load %struct._object*, %struct._object** %arrayidx99, align 8
  %87 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call100 = call i64 @PyNumber_AsSsize_t(%struct._object* %86, %struct._object* %87)
  store i64 %call100, i64* %value97, align 8
  %88 = load i64, i64* %value97, align 8
  %cmp101 = icmp eq i64 %88, -1
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.119

land.lhs.true.103:                                ; preds = %for.body.96
  %call104 = call %struct._object* @PyErr_Occurred()
  %tobool105 = icmp ne %struct._object* %call104, null
  br i1 %tobool105, label %if.then.106, label %if.end.119

if.then.106:                                      ; preds = %land.lhs.true.103
  br label %do.body.107

do.body.107:                                      ; preds = %if.then.106
  %89 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp108, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt109, align 8
  %dec110 = add i64 %91, -1
  store i64 %dec110, i64* %ob_refcnt109, align 8
  %cmp111 = icmp ne i64 %dec110, 0
  br i1 %cmp111, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %do.body.107
  br label %if.end.117

if.else.114:                                      ; preds = %do.body.107
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  call void %94(%struct._object* %95)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.114, %if.then.113
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.119:                                       ; preds = %land.lhs.true.103, %for.body.96
  %96 = load i64, i64* %value97, align 8
  %cmp120 = icmp slt i64 %96, 0
  br i1 %cmp120, label %if.then.125, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %if.end.119
  %97 = load i64, i64* %value97, align 8
  %cmp123 = icmp sge i64 %97, 256
  br i1 %cmp123, label %if.then.125, label %if.end.138

if.then.125:                                      ; preds = %lor.lhs.false.122, %if.end.119
  %98 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0))
  br label %do.body.126

do.body.126:                                      ; preds = %if.then.125
  %99 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %99, %struct._object** %_py_decref_tmp127, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  %ob_refcnt128 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0
  %101 = load i64, i64* %ob_refcnt128, align 8
  %dec129 = add i64 %101, -1
  store i64 %dec129, i64* %ob_refcnt128, align 8
  %cmp130 = icmp ne i64 %dec129, 0
  br i1 %cmp130, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %do.body.126
  br label %if.end.136

if.else.133:                                      ; preds = %do.body.126
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  %ob_type134 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type134, align 8
  %tp_dealloc135 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 4
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc135, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  call void %104(%struct._object* %105)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.133, %if.then.132
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.138:                                       ; preds = %lor.lhs.false.122
  %106 = load i64, i64* %value97, align 8
  %conv139 = trunc i64 %106 to i8
  %107 = load i64, i64* %i, align 8
  %108 = load %struct._object*, %struct._object** %new, align 8
  %109 = bitcast %struct._object* %108 to %struct.PyBytesObject*
  %ob_sval140 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %109, i32 0, i32 2
  %arrayidx141 = getelementptr [1 x i8], [1 x i8]* %ob_sval140, i32 0, i64 %107
  store i8 %conv139, i8* %arrayidx141, align 1
  br label %for.inc.142

for.inc.142:                                      ; preds = %if.end.138
  %110 = load i64, i64* %i, align 8
  %inc143 = add i64 %110, 1
  store i64 %inc143, i64* %i, align 8
  br label %for.cond.92

for.end.144:                                      ; preds = %for.cond.92
  %111 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %111, %struct._object** %retval
  br label %return

if.end.145:                                       ; preds = %if.end.81
  %112 = load %struct._object*, %struct._object** %x.addr, align 8
  %call146 = call i64 @PyObject_LengthHint(%struct._object* %112, i64 64)
  store i64 %call146, i64* %size, align 8
  %113 = load i64, i64* %size, align 8
  %cmp147 = icmp eq i64 %113, -1
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.153

land.lhs.true.149:                                ; preds = %if.end.145
  %call150 = call %struct._object* @PyErr_Occurred()
  %tobool151 = icmp ne %struct._object* %call150, null
  br i1 %tobool151, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %land.lhs.true.149
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.153:                                       ; preds = %land.lhs.true.149, %if.end.145
  %114 = load i64, i64* %size, align 8
  %add = add i64 %114, 1
  store i64 %add, i64* %size, align 8
  %115 = load i64, i64* %size, align 8
  %call154 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %115)
  store %struct._object* %call154, %struct._object** %new, align 8
  %116 = load %struct._object*, %struct._object** %new, align 8
  %cmp155 = icmp eq %struct._object* %116, null
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.153
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.158:                                       ; preds = %if.end.153
  %117 = load %struct._object*, %struct._object** %x.addr, align 8
  %call159 = call %struct._object* @PyObject_GetIter(%struct._object* %117)
  store %struct._object* %call159, %struct._object** %it, align 8
  %118 = load %struct._object*, %struct._object** %it, align 8
  %cmp160 = icmp eq %struct._object* %118, null
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.end.158
  br label %error

if.end.163:                                       ; preds = %if.end.158
  store i64 0, i64* %i, align 8
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.215, %if.end.163
  %119 = load %struct._object*, %struct._object** %it, align 8
  %call166 = call %struct._object* @PyIter_Next(%struct._object* %119)
  store %struct._object* %call166, %struct._object** %item, align 8
  %120 = load %struct._object*, %struct._object** %item, align 8
  %cmp167 = icmp eq %struct._object* %120, null
  br i1 %cmp167, label %if.then.169, label %if.end.174

if.then.169:                                      ; preds = %for.cond.164
  %call170 = call %struct._object* @PyErr_Occurred()
  %tobool171 = icmp ne %struct._object* %call170, null
  br i1 %tobool171, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.then.169
  br label %error

if.end.173:                                       ; preds = %if.then.169
  br label %for.end.217

if.end.174:                                       ; preds = %for.cond.164
  %121 = load %struct._object*, %struct._object** %item, align 8
  %122 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call175 = call i64 @PyNumber_AsSsize_t(%struct._object* %121, %struct._object* %122)
  store i64 %call175, i64* %value165, align 8
  br label %do.body.176

do.body.176:                                      ; preds = %if.end.174
  %123 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %123, %struct._object** %_py_decref_tmp177, align 8
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8
  %ob_refcnt178 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 0
  %125 = load i64, i64* %ob_refcnt178, align 8
  %dec179 = add i64 %125, -1
  store i64 %dec179, i64* %ob_refcnt178, align 8
  %cmp180 = icmp ne i64 %dec179, 0
  br i1 %cmp180, label %if.then.182, label %if.else.183

if.then.182:                                      ; preds = %do.body.176
  br label %if.end.186

if.else.183:                                      ; preds = %do.body.176
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8
  %ob_type184 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 1
  %127 = load %struct._typeobject*, %struct._typeobject** %ob_type184, align 8
  %tp_dealloc185 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %127, i32 0, i32 4
  %128 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc185, align 8
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8
  call void %128(%struct._object* %129)
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.183, %if.then.182
  br label %do.end.187

do.end.187:                                       ; preds = %if.end.186
  %130 = load i64, i64* %value165, align 8
  %cmp188 = icmp eq i64 %130, -1
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.194

land.lhs.true.190:                                ; preds = %do.end.187
  %call191 = call %struct._object* @PyErr_Occurred()
  %tobool192 = icmp ne %struct._object* %call191, null
  br i1 %tobool192, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %land.lhs.true.190
  br label %error

if.end.194:                                       ; preds = %land.lhs.true.190, %do.end.187
  %131 = load i64, i64* %value165, align 8
  %cmp195 = icmp slt i64 %131, 0
  br i1 %cmp195, label %if.then.200, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %if.end.194
  %132 = load i64, i64* %value165, align 8
  %cmp198 = icmp sge i64 %132, 256
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %lor.lhs.false.197, %if.end.194
  %133 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0))
  br label %error

if.end.201:                                       ; preds = %lor.lhs.false.197
  %134 = load i64, i64* %i, align 8
  %135 = load i64, i64* %size, align 8
  %cmp202 = icmp sge i64 %134, %135
  br i1 %cmp202, label %if.then.204, label %if.end.211

if.then.204:                                      ; preds = %if.end.201
  %136 = load i64, i64* %size, align 8
  %mul = mul i64 2, %136
  %add205 = add i64 %mul, 1
  store i64 %add205, i64* %size, align 8
  %137 = load i64, i64* %size, align 8
  %call206 = call i32 @_PyBytes_Resize(%struct._object** %new, i64 %137)
  %cmp207 = icmp slt i32 %call206, 0
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.then.204
  br label %error

if.end.210:                                       ; preds = %if.then.204
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.201
  %138 = load i64, i64* %value165, align 8
  %conv212 = trunc i64 %138 to i8
  %139 = load i64, i64* %i, align 8
  %140 = load %struct._object*, %struct._object** %new, align 8
  %141 = bitcast %struct._object* %140 to %struct.PyBytesObject*
  %ob_sval213 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %141, i32 0, i32 2
  %arrayidx214 = getelementptr [1 x i8], [1 x i8]* %ob_sval213, i32 0, i64 %139
  store i8 %conv212, i8* %arrayidx214, align 1
  br label %for.inc.215

for.inc.215:                                      ; preds = %if.end.211
  %142 = load i64, i64* %i, align 8
  %inc216 = add i64 %142, 1
  store i64 %inc216, i64* %i, align 8
  br label %for.cond.164

for.end.217:                                      ; preds = %if.end.173
  %143 = load i64, i64* %i, align 8
  %call218 = call i32 @_PyBytes_Resize(%struct._object** %new, i64 %143)
  br label %do.body.219

do.body.219:                                      ; preds = %for.end.217
  %144 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %144, %struct._object** %_py_decref_tmp220, align 8
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  %ob_refcnt221 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 0
  %146 = load i64, i64* %ob_refcnt221, align 8
  %dec222 = add i64 %146, -1
  store i64 %dec222, i64* %ob_refcnt221, align 8
  %cmp223 = icmp ne i64 %dec222, 0
  br i1 %cmp223, label %if.then.225, label %if.else.226

if.then.225:                                      ; preds = %do.body.219
  br label %if.end.229

if.else.226:                                      ; preds = %do.body.219
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  %ob_type227 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 1
  %148 = load %struct._typeobject*, %struct._typeobject** %ob_type227, align 8
  %tp_dealloc228 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %148, i32 0, i32 4
  %149 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc228, align 8
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  call void %149(%struct._object* %150)
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.226, %if.then.225
  br label %do.end.230

do.end.230:                                       ; preds = %if.end.229
  %151 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %151, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.209, %if.then.200, %if.then.193, %if.then.172, %if.then.162
  br label %do.body.231

do.body.231:                                      ; preds = %error
  %152 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %152, %struct._object** %_py_xdecref_tmp232, align 8
  %153 = load %struct._object*, %struct._object** %_py_xdecref_tmp232, align 8
  %cmp233 = icmp ne %struct._object* %153, null
  br i1 %cmp233, label %if.then.235, label %if.end.248

if.then.235:                                      ; preds = %do.body.231
  br label %do.body.236

do.body.236:                                      ; preds = %if.then.235
  %154 = load %struct._object*, %struct._object** %_py_xdecref_tmp232, align 8
  store %struct._object* %154, %struct._object** %_py_decref_tmp237, align 8
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp237, align 8
  %ob_refcnt238 = getelementptr inbounds %struct._object, %struct._object* %155, i32 0, i32 0
  %156 = load i64, i64* %ob_refcnt238, align 8
  %dec239 = add i64 %156, -1
  store i64 %dec239, i64* %ob_refcnt238, align 8
  %cmp240 = icmp ne i64 %dec239, 0
  br i1 %cmp240, label %if.then.242, label %if.else.243

if.then.242:                                      ; preds = %do.body.236
  br label %if.end.246

if.else.243:                                      ; preds = %do.body.236
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp237, align 8
  %ob_type244 = getelementptr inbounds %struct._object, %struct._object* %157, i32 0, i32 1
  %158 = load %struct._typeobject*, %struct._typeobject** %ob_type244, align 8
  %tp_dealloc245 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %158, i32 0, i32 4
  %159 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc245, align 8
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp237, align 8
  call void %159(%struct._object* %160)
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.243, %if.then.242
  br label %do.end.247

do.end.247:                                       ; preds = %if.end.246
  br label %if.end.248

if.end.248:                                       ; preds = %do.end.247, %do.body.231
  br label %do.end.249

do.end.249:                                       ; preds = %if.end.248
  br label %do.body.250

do.body.250:                                      ; preds = %do.end.249
  %161 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %161, %struct._object** %_py_xdecref_tmp251, align 8
  %162 = load %struct._object*, %struct._object** %_py_xdecref_tmp251, align 8
  %cmp252 = icmp ne %struct._object* %162, null
  br i1 %cmp252, label %if.then.254, label %if.end.267

if.then.254:                                      ; preds = %do.body.250
  br label %do.body.255

do.body.255:                                      ; preds = %if.then.254
  %163 = load %struct._object*, %struct._object** %_py_xdecref_tmp251, align 8
  store %struct._object* %163, %struct._object** %_py_decref_tmp256, align 8
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp256, align 8
  %ob_refcnt257 = getelementptr inbounds %struct._object, %struct._object* %164, i32 0, i32 0
  %165 = load i64, i64* %ob_refcnt257, align 8
  %dec258 = add i64 %165, -1
  store i64 %dec258, i64* %ob_refcnt257, align 8
  %cmp259 = icmp ne i64 %dec258, 0
  br i1 %cmp259, label %if.then.261, label %if.else.262

if.then.261:                                      ; preds = %do.body.255
  br label %if.end.265

if.else.262:                                      ; preds = %do.body.255
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp256, align 8
  %ob_type263 = getelementptr inbounds %struct._object, %struct._object* %166, i32 0, i32 1
  %167 = load %struct._typeobject*, %struct._typeobject** %ob_type263, align 8
  %tp_dealloc264 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %167, i32 0, i32 4
  %168 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc264, align 8
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp256, align 8
  call void %168(%struct._object* %169)
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.262, %if.then.261
  br label %do.end.266

do.end.266:                                       ; preds = %if.end.265
  br label %if.end.267

if.end.267:                                       ; preds = %do.end.266, %do.body.250
  br label %do.end.268

do.end.268:                                       ; preds = %if.end.267
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.268, %do.end.230, %if.then.157, %if.then.152, %for.end.144, %do.end.137, %do.end.118, %if.then.90, %for.end, %do.end.76, %do.end.61, %if.then.41, %if.then.34, %do.end.30, %if.end.20, %if.then.11, %if.then.2, %if.then
  %170 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %170
}

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare i32 @PyBuffer_ToContiguous(i8*, %struct.bufferinfo*, i64, i8 signext) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i64 @PyObject_LengthHint(%struct._object*, i64) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @bytes_dealloc(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 38
  %2 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %4 = bitcast %struct._object* %3 to i8*
  call void %2(i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_repr(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %call = call %struct._object* @PyBytes_Repr(%struct._object* %0, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i64 @bytes_hash(%struct.PyBytesObject* %a) #0 {
entry:
  %a.addr = alloca %struct.PyBytesObject*, align 8
  store %struct.PyBytesObject* %a, %struct.PyBytesObject** %a.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %ob_shash = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %0, i32 0, i32 1
  %1 = load i64, i64* %ob_shash, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %4 = bitcast %struct.PyBytesObject* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %call = call i64 @_Py_HashBytes(i8* %arraydecay, i64 %5)
  %6 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %ob_shash1 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %6, i32 0, i32 1
  store i64 %call, i64* %ob_shash1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %ob_shash2 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_shash2, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_str(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load i32, i32* @Py_BytesWarningFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_BytesWarning, align 8
  %call = call i32 @PyErr_WarnEx(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0), i64 1)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %call4 = call %struct._object* @bytes_repr(%struct._object* %2)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_richcompare(%struct.PyBytesObject* %a, %struct.PyBytesObject* %b, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyBytesObject*, align 8
  %b.addr = alloca %struct.PyBytesObject*, align 8
  %op.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %len_a = alloca i64, align 8
  %len_b = alloca i64, align 8
  %min_len = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %eq = alloca i32, align 4
  store %struct.PyBytesObject* %a, %struct.PyBytesObject** %a.addr, align 8
  store %struct.PyBytesObject* %b, %struct.PyBytesObject** %b.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %1 = bitcast %struct.PyBytesObject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.PyBytesObject*, %struct.PyBytesObject** %b.addr, align 8
  %5 = bitcast %struct.PyBytesObject* %4 to %struct._object*
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags2, align 8
  %and3 = and i64 %7, 134217728
  %cmp4 = icmp ne i64 %and3, 0
  br i1 %cmp4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* @Py_BytesWarningFlag, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true.5, label %if.end.17

land.lhs.true.5:                                  ; preds = %if.then
  %9 = load i32, i32* %op.addr, align 4
  %cmp6 = icmp eq i32 %9, 2
  br i1 %cmp6, label %land.lhs.true.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5
  %10 = load i32, i32* %op.addr, align 4
  %cmp7 = icmp eq i32 %10, 3
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.17

land.lhs.true.8:                                  ; preds = %lor.lhs.false, %land.lhs.true.5
  %11 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %12 = bitcast %struct.PyBytesObject* %11 to %struct._object*
  %call = call i32 @PyObject_IsInstance(%struct._object* %12, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.then.13, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true.8
  %13 = load %struct.PyBytesObject*, %struct.PyBytesObject** %b.addr, align 8
  %14 = bitcast %struct.PyBytesObject* %13 to %struct._object*
  %call11 = call i32 @PyObject_IsInstance(%struct._object* %14, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0))
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %lor.lhs.false.10, %land.lhs.true.8
  %15 = load %struct._object*, %struct._object** @PyExc_BytesWarning, align 8
  %call14 = call i32 @PyErr_WarnEx(%struct._object* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0), i64 1)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %lor.lhs.false.10, %lor.lhs.false, %if.then
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %result, align 8
  br label %if.end.91

if.else:                                          ; preds = %land.lhs.true
  %16 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %17 = load %struct.PyBytesObject*, %struct.PyBytesObject** %b.addr, align 8
  %cmp18 = icmp eq %struct.PyBytesObject* %16, %17
  br i1 %cmp18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.else
  %18 = load i32, i32* %op.addr, align 4
  switch i32 %18, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 3, label %sw.bb.20
    i32 0, label %sw.bb.20
    i32 4, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.then.19, %if.then.19, %if.then.19
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %result, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then.19, %if.then.19, %if.then.19
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %result, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.19
  %call21 = call i32 @PyErr_BadArgument()
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.20, %sw.bb
  br label %if.end.90

if.else.22:                                       ; preds = %if.else
  %19 = load i32, i32* %op.addr, align 4
  %cmp23 = icmp eq i32 %19, 2
  br i1 %cmp23, label %if.then.26, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.else.22
  %20 = load i32, i32* %op.addr, align 4
  %cmp25 = icmp eq i32 %20, 3
  br i1 %cmp25, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %lor.lhs.false.24, %if.else.22
  %21 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %22 = load %struct.PyBytesObject*, %struct.PyBytesObject** %b.addr, align 8
  %call27 = call i32 @bytes_compare_eq(%struct.PyBytesObject* %21, %struct.PyBytesObject* %22)
  store i32 %call27, i32* %eq, align 4
  %23 = load i32, i32* %op.addr, align 4
  %cmp28 = icmp eq i32 %23, 3
  %conv = zext i1 %cmp28 to i32
  %24 = load i32, i32* %eq, align 4
  %xor = xor i32 %24, %conv
  store i32 %xor, i32* %eq, align 4
  %25 = load i32, i32* %eq, align 4
  %tobool29 = icmp ne i32 %25, 0
  %cond = select i1 %tobool29, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %result, align 8
  br label %if.end.89

if.else.30:                                       ; preds = %lor.lhs.false.24
  %26 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %27 = bitcast %struct.PyBytesObject* %26 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %27, i32 0, i32 1
  %28 = load i64, i64* %ob_size, align 8
  store i64 %28, i64* %len_a, align 8
  %29 = load %struct.PyBytesObject*, %struct.PyBytesObject** %b.addr, align 8
  %30 = bitcast %struct.PyBytesObject* %29 to %struct.PyVarObject*
  %ob_size31 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %30, i32 0, i32 1
  %31 = load i64, i64* %ob_size31, align 8
  store i64 %31, i64* %len_b, align 8
  %32 = load i64, i64* %len_a, align 8
  %33 = load i64, i64* %len_b, align 8
  %cmp32 = icmp sgt i64 %32, %33
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.30
  %34 = load i64, i64* %len_b, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.30
  %35 = load i64, i64* %len_a, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond34 = phi i64 [ %34, %cond.true ], [ %35, %cond.false ]
  store i64 %cond34, i64* %min_len, align 8
  %36 = load i64, i64* %min_len, align 8
  %cmp35 = icmp sgt i64 %36, 0
  br i1 %cmp35, label %if.then.37, label %if.else.57

if.then.37:                                       ; preds = %cond.end
  %37 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %37, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %38 = load i8, i8* %arraydecay, align 1
  %conv38 = sext i8 %38 to i32
  %and39 = and i32 %conv38, 255
  %conv40 = trunc i32 %and39 to i8
  %conv41 = zext i8 %conv40 to i32
  %39 = load %struct.PyBytesObject*, %struct.PyBytesObject** %b.addr, align 8
  %ob_sval42 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %39, i32 0, i32 2
  %arraydecay43 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval42, i32 0, i32 0
  %40 = load i8, i8* %arraydecay43, align 1
  %conv44 = sext i8 %40 to i32
  %and45 = and i32 %conv44, 255
  %conv46 = trunc i32 %and45 to i8
  %conv47 = zext i8 %conv46 to i32
  %sub = sub i32 %conv41, %conv47
  store i32 %sub, i32* %c, align 4
  %41 = load i32, i32* %c, align 4
  %cmp48 = icmp eq i32 %41, 0
  br i1 %cmp48, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.then.37
  %42 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %ob_sval51 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %42, i32 0, i32 2
  %arraydecay52 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval51, i32 0, i32 0
  %43 = load %struct.PyBytesObject*, %struct.PyBytesObject** %b.addr, align 8
  %ob_sval53 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %43, i32 0, i32 2
  %arraydecay54 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval53, i32 0, i32 0
  %44 = load i64, i64* %min_len, align 8
  %call55 = call i32 @memcmp(i8* %arraydecay52, i8* %arraydecay54, i64 %44) #7
  store i32 %call55, i32* %c, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %if.then.37
  br label %if.end.58

if.else.57:                                       ; preds = %cond.end
  store i32 0, i32* %c, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.end.56
  %45 = load i32, i32* %c, align 4
  %cmp59 = icmp eq i32 %45, 0
  br i1 %cmp59, label %if.then.61, label %if.end.71

if.then.61:                                       ; preds = %if.end.58
  %46 = load i64, i64* %len_a, align 8
  %47 = load i64, i64* %len_b, align 8
  %cmp62 = icmp slt i64 %46, %47
  br i1 %cmp62, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %if.then.61
  br label %cond.end.69

cond.false.65:                                    ; preds = %if.then.61
  %48 = load i64, i64* %len_a, align 8
  %49 = load i64, i64* %len_b, align 8
  %cmp66 = icmp sgt i64 %48, %49
  %cond68 = select i1 %cmp66, i32 1, i32 0
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.65, %cond.true.64
  %cond70 = phi i32 [ -1, %cond.true.64 ], [ %cond68, %cond.false.65 ]
  store i32 %cond70, i32* %c, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %cond.end.69, %if.end.58
  %50 = load i32, i32* %op.addr, align 4
  switch i32 %50, label %sw.default.84 [
    i32 0, label %sw.bb.72
    i32 1, label %sw.bb.75
    i32 4, label %sw.bb.78
    i32 5, label %sw.bb.81
  ]

sw.bb.72:                                         ; preds = %if.end.71
  %51 = load i32, i32* %c, align 4
  %cmp73 = icmp slt i32 %51, 0
  %conv74 = zext i1 %cmp73 to i32
  store i32 %conv74, i32* %c, align 4
  br label %sw.epilog.86

sw.bb.75:                                         ; preds = %if.end.71
  %52 = load i32, i32* %c, align 4
  %cmp76 = icmp sle i32 %52, 0
  %conv77 = zext i1 %cmp76 to i32
  store i32 %conv77, i32* %c, align 4
  br label %sw.epilog.86

sw.bb.78:                                         ; preds = %if.end.71
  %53 = load i32, i32* %c, align 4
  %cmp79 = icmp sgt i32 %53, 0
  %conv80 = zext i1 %cmp79 to i32
  store i32 %conv80, i32* %c, align 4
  br label %sw.epilog.86

sw.bb.81:                                         ; preds = %if.end.71
  %54 = load i32, i32* %c, align 4
  %cmp82 = icmp sge i32 %54, 0
  %conv83 = zext i1 %cmp82 to i32
  store i32 %conv83, i32* %c, align 4
  br label %sw.epilog.86

sw.default.84:                                    ; preds = %if.end.71
  %call85 = call i32 @PyErr_BadArgument()
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog.86:                                     ; preds = %sw.bb.81, %sw.bb.78, %sw.bb.75, %sw.bb.72
  %55 = load i32, i32* %c, align 4
  %tobool87 = icmp ne i32 %55, 0
  %cond88 = select i1 %tobool87, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond88, %struct._object** %result, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %sw.epilog.86, %if.then.26
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %sw.epilog
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.17
  %56 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %57, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %58 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %58, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.91, %sw.default.84, %sw.default, %if.then.16
  %59 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %59
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_iter(%struct._object* %seq) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %it = alloca %struct.striterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  %0 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i32 3001)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyBytesIter_Type)
  %3 = bitcast %struct._object* %call to %struct.striterobject*
  store %struct.striterobject* %3, %struct.striterobject** %it, align 8
  %4 = load %struct.striterobject*, %struct.striterobject** %it, align 8
  %cmp1 = icmp eq %struct.striterobject* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.striterobject*, %struct.striterobject** %it, align 8
  %it_index = getelementptr inbounds %struct.striterobject, %struct.striterobject* %5, i32 0, i32 1
  store i64 0, i64* %it_index, align 8
  %6 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct._object*, %struct._object** %seq.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyBytesObject*
  %10 = load %struct.striterobject*, %struct.striterobject** %it, align 8
  %it_seq = getelementptr inbounds %struct.striterobject, %struct.striterobject* %10, i32 0, i32 2
  store %struct.PyBytesObject* %9, %struct.PyBytesObject** %it_seq, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %11 = load %struct.striterobject*, %struct.striterobject** %it, align 8
  %12 = bitcast %struct.striterobject* %11 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %12, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %13 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %14 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %14, 1
  %cmp4 = icmp ne i64 %shr, -2
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.123, i32 0, i32 0)) #8
  unreachable

if.end.6:                                         ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.end.6
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %15 to %struct.anon.0*
  %gc_refs9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc8, i32 0, i32 2
  %16 = load i64, i64* %gc_refs9, align 8
  %and10 = and i64 %16, 1
  %or = or i64 %and10, -6
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc11 = bitcast %union._gc_head* %17 to %struct.anon.0*
  %gc_refs12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc11, i32 0, i32 2
  store i64 %or, i64* %gc_refs12, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.7
  %18 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %19 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc13 = bitcast %union._gc_head* %19 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc13, i32 0, i32 0
  store %union._gc_head* %18, %union._gc_head** %gc_next, align 8
  %20 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc14 = bitcast %union._gc_head* %20 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc14, i32 0, i32 1
  %21 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %22 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc15 = bitcast %union._gc_head* %22 to %struct.anon.0*
  %gc_prev16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc15, i32 0, i32 1
  store %union._gc_head* %21, %union._gc_head** %gc_prev16, align 8
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc17 = bitcast %union._gc_head* %24 to %struct.anon.0*
  %gc_prev18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc17, i32 0, i32 1
  %25 = load %union._gc_head*, %union._gc_head** %gc_prev18, align 8
  %gc19 = bitcast %union._gc_head* %25 to %struct.anon.0*
  %gc_next20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc19, i32 0, i32 0
  store %union._gc_head* %23, %union._gc_head** %gc_next20, align 8
  %26 = load %union._gc_head*, %union._gc_head** %g, align 8
  %27 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc21 = bitcast %union._gc_head* %27 to %struct.anon.0*
  %gc_prev22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc21, i32 0, i32 1
  store %union._gc_head* %26, %union._gc_head** %gc_prev22, align 8
  br label %do.end.23

do.end.23:                                        ; preds = %do.end
  %28 = load %struct.striterobject*, %struct.striterobject** %it, align 8
  %29 = bitcast %struct.striterobject* %28 to %struct._object*
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.23, %if.then.2, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  %new = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %x, align 8
  store i8* null, i8** %encoding, align 8
  store i8* null, i8** %errors, align 8
  store %struct._object* null, %struct._object** %new, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp ne %struct._typeobject* %0, @PyBytes_Type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @str_subtype_new(%struct._typeobject* %1, %struct._object* %2, %struct._object* %3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call1 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %4, %struct._object* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @bytes_new.kwlist, i32 0, i32 0), %struct._object** %x, i8** %encoding, i8** %errors)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %x, align 8
  %cmp4 = icmp eq %struct._object* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.end.3
  %7 = load i8*, i8** %encoding, align 8
  %cmp6 = icmp ne i8* %7, null
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.5
  %8 = load i8*, i8** %errors, align 8
  %cmp7 = icmp ne i8* %8, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.then.5
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.111, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  %call10 = call %struct._object* @PyBytes_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0))
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %x, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19
  %12 = load i64, i64* %tp_flags, align 8
  %and = and i64 %12, 268435456
  %cmp12 = icmp ne i64 %and, 0
  br i1 %cmp12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end.11
  %13 = load i8*, i8** %encoding, align 8
  %cmp14 = icmp eq i8* %13, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.112, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.13
  %15 = load %struct._object*, %struct._object** %x, align 8
  %16 = load i8*, i8** %encoding, align 8
  %17 = load i8*, i8** %errors, align 8
  %call17 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %15, i8* %16, i8* %17)
  store %struct._object* %call17, %struct._object** %new, align 8
  %18 = load %struct._object*, %struct._object** %new, align 8
  %cmp18 = icmp eq %struct._object* %18, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %19 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.11
  %20 = load %struct._object*, %struct._object** %x, align 8
  %call22 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %20, %struct._Py_Identifier* @bytes_new.PyId___bytes__)
  store %struct._object* %call22, %struct._object** %func, align 8
  %21 = load %struct._object*, %struct._object** %func, align 8
  %cmp23 = icmp ne %struct._object* %21, null
  br i1 %cmp23, label %if.then.24, label %if.else.52

if.then.24:                                       ; preds = %if.end.21
  %22 = load %struct._object*, %struct._object** %func, align 8
  %call25 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %22, i8* null)
  store %struct._object* %call25, %struct._object** %new, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.24
  %23 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %do.body
  br label %if.end.29

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.29
  %30 = load %struct._object*, %struct._object** %new, align 8
  %cmp30 = icmp eq %struct._object* %30, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %do.end
  %31 = load %struct._object*, %struct._object** %new, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_flags34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 19
  %33 = load i64, i64* %tp_flags34, align 8
  %and35 = and i64 %33, 134217728
  %cmp36 = icmp ne i64 %and35, 0
  br i1 %cmp36, label %if.end.51, label %if.then.37

if.then.37:                                       ; preds = %if.end.32
  %34 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %35 = load %struct._object*, %struct._object** %new, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 1
  %37 = load i8*, i8** %tp_name, align 8
  %call39 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.113, i32 0, i32 0), i8* %37)
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.37
  %38 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp41, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %40, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.40
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %43(%struct._object* %44)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.51:                                        ; preds = %if.end.32
  %45 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %45, %struct._object** %retval
  br label %return

if.else.52:                                       ; preds = %if.end.21
  %call53 = call %struct._object* @PyErr_Occurred()
  %tobool54 = icmp ne %struct._object* %call53, null
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.else.52
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.56:                                        ; preds = %if.else.52
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56
  %46 = load %struct._object*, %struct._object** %x, align 8
  %47 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call58 = call i64 @PyNumber_AsSsize_t(%struct._object* %46, %struct._object* %47)
  store i64 %call58, i64* %size, align 8
  %48 = load i64, i64* %size, align 8
  %cmp59 = icmp eq i64 %48, -1
  br i1 %cmp59, label %land.lhs.true, label %if.else.67

land.lhs.true:                                    ; preds = %if.end.57
  %call60 = call %struct._object* @PyErr_Occurred()
  %tobool61 = icmp ne %struct._object* %call60, null
  br i1 %tobool61, label %if.then.62, label %if.else.67

if.then.62:                                       ; preds = %land.lhs.true
  %49 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call63 = call i32 @PyErr_ExceptionMatches(%struct._object* %49)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.62
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.62
  call void @PyErr_Clear()
  br label %if.end.78

if.else.67:                                       ; preds = %land.lhs.true, %if.end.57
  %50 = load i64, i64* %size, align 8
  %cmp68 = icmp slt i64 %50, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.else.67
  %51 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.114, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.70:                                       ; preds = %if.else.67
  %52 = load i64, i64* %size, align 8
  %call71 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %52)
  store %struct._object* %call71, %struct._object** %new, align 8
  %53 = load %struct._object*, %struct._object** %new, align 8
  %cmp72 = icmp eq %struct._object* %53, null
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.else.70
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.74:                                        ; preds = %if.else.70
  %54 = load i64, i64* %size, align 8
  %cmp75 = icmp sgt i64 %54, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.74
  %55 = load %struct._object*, %struct._object** %new, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %56, i32 0, i32 2
  %57 = bitcast [1 x i8]* %ob_sval to i8*
  %58 = load i64, i64* %size, align 8
  call void @llvm.memset.p0i8.i64(i8* %57, i8 0, i64 %58, i32 1, i1 false)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.74
  %59 = load %struct._object*, %struct._object** %new, align 8
  store %struct._object* %59, %struct._object** %retval
  br label %return

if.end.78:                                        ; preds = %if.end.66
  %60 = load i8*, i8** %encoding, align 8
  %cmp79 = icmp ne i8* %60, null
  br i1 %cmp79, label %if.then.82, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %if.end.78
  %61 = load i8*, i8** %errors, align 8
  %cmp81 = icmp ne i8* %61, null
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %lor.lhs.false.80, %if.end.78
  %62 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.115, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.83:                                        ; preds = %lor.lhs.false.80
  %63 = load %struct._object*, %struct._object** %x, align 8
  %call84 = call %struct._object* @PyBytes_FromObject(%struct._object* %63)
  store %struct._object* %call84, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.83, %if.then.82, %if.end.77, %if.then.73, %if.then.69, %if.then.65, %if.then.55, %if.end.51, %do.end.50, %if.then.31, %if.end.20, %if.then.19, %if.then.15, %if.end.9, %if.then.8, %if.then.2, %if.then
  %64 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %64
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define void @PyBytes_Concat(%struct._object** %pv, %struct._object* %w) #0 {
entry:
  %pv.addr = alloca %struct._object**, align 8
  %w.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct._object** %pv, %struct._object*** %pv.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object**, %struct._object*** %pv.addr, align 8
  %1 = load %struct._object*, %struct._object** %0, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %3 = load %struct._object**, %struct._object*** %pv.addr, align 8
  %4 = load %struct._object*, %struct._object** %3, align 8
  store %struct._object* %4, %struct._object** %_py_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp3 = icmp ne %struct._object* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %do.body
  %6 = load %struct._object**, %struct._object*** %pv.addr, align 8
  store %struct._object* null, %struct._object** %6, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8

if.else:                                          ; preds = %do.body.5
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %return

if.end.11:                                        ; preds = %if.end
  %14 = load %struct._object**, %struct._object*** %pv.addr, align 8
  %15 = load %struct._object*, %struct._object** %14, align 8
  %16 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @bytes_concat(%struct._object* %15, %struct._object* %16)
  store %struct._object* %call, %struct._object** %v, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.11
  %17 = load %struct._object**, %struct._object*** %pv.addr, align 8
  %18 = load %struct._object*, %struct._object** %17, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp13, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %20, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %23(%struct._object* %24)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %25 = load %struct._object*, %struct._object** %v, align 8
  %26 = load %struct._object**, %struct._object*** %pv.addr, align 8
  store %struct._object* %25, %struct._object** %26, align 8
  br label %return

return:                                           ; preds = %do.end.22, %do.end.10, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_concat(%struct._object* %a, %struct._object* %b) #0 {
entry:
  %a.addr = alloca %struct._object*, align 8
  %b.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %va = alloca %struct.bufferinfo, align 8
  %vb = alloca %struct.bufferinfo, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  store %struct._object* %b, %struct._object** %b.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
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
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.116, i32 0, i32 0), i8* %5, i8* %8)
  br label %done

if.end:                                           ; preds = %lor.lhs.false
  %len7 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %va, i32 0, i32 2
  %9 = load i64, i64* %len7, align 8
  %cmp8 = icmp eq i64 %9, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %b.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %cmp10 = icmp eq %struct._typeobject* %11, @PyBytes_Type
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  %12 = load %struct._object*, %struct._object** %b.addr, align 8
  store %struct._object* %12, %struct._object** %result, align 8
  %13 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %done

if.end.12:                                        ; preds = %land.lhs.true, %if.end
  %len13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vb, i32 0, i32 2
  %15 = load i64, i64* %len13, align 8
  %cmp14 = icmp eq i64 %15, 0
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.21

land.lhs.true.15:                                 ; preds = %if.end.12
  %16 = load %struct._object*, %struct._object** %a.addr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %cmp17 = icmp eq %struct._typeobject* %17, @PyBytes_Type
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %land.lhs.true.15
  %18 = load %struct._object*, %struct._object** %a.addr, align 8
  store %struct._object* %18, %struct._object** %result, align 8
  %19 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt19, align 8
  %inc20 = add i64 %20, 1
  store i64 %inc20, i64* %ob_refcnt19, align 8
  br label %done

if.end.21:                                        ; preds = %land.lhs.true.15, %if.end.12
  %len22 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %va, i32 0, i32 2
  %21 = load i64, i64* %len22, align 8
  %len23 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vb, i32 0, i32 2
  %22 = load i64, i64* %len23, align 8
  %add = add i64 %21, %22
  store i64 %add, i64* %size, align 8
  %23 = load i64, i64* %size, align 8
  %cmp24 = icmp slt i64 %23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.21
  %call26 = call %struct._object* @PyErr_NoMemory()
  br label %done

if.end.27:                                        ; preds = %if.end.21
  %24 = load i64, i64* %size, align 8
  %call28 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %24)
  store %struct._object* %call28, %struct._object** %result, align 8
  %25 = load %struct._object*, %struct._object** %result, align 8
  %cmp29 = icmp ne %struct._object* %25, null
  br i1 %cmp29, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %if.end.27
  %26 = load %struct._object*, %struct._object** %result, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %27, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %va, i32 0, i32 0
  %28 = load i8*, i8** %buf, align 8
  %len31 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %va, i32 0, i32 2
  %29 = load i64, i64* %len31, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* %28, i64 %29, i32 1, i1 false)
  %30 = load %struct._object*, %struct._object** %result, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyBytesObject*
  %ob_sval32 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %31, i32 0, i32 2
  %arraydecay33 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval32, i32 0, i32 0
  %len34 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %va, i32 0, i32 2
  %32 = load i64, i64* %len34, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay33, i64 %32
  %buf35 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vb, i32 0, i32 0
  %33 = load i8*, i8** %buf35, align 8
  %len36 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vb, i32 0, i32 2
  %34 = load i64, i64* %len36, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %33, i64 %34, i32 1, i1 false)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.30, %if.end.27
  br label %done

done:                                             ; preds = %if.end.37, %if.then.25, %if.then.18, %if.then.11, %if.then
  %len38 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %va, i32 0, i32 2
  %35 = load i64, i64* %len38, align 8
  %cmp39 = icmp ne i64 %35, -1
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %done
  call void @PyBuffer_Release(%struct.bufferinfo* %va)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %done
  %len42 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vb, i32 0, i32 2
  %36 = load i64, i64* %len42, align 8
  %cmp43 = icmp ne i64 %36, -1
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  call void @PyBuffer_Release(%struct.bufferinfo* %vb)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.41
  %37 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define void @PyBytes_ConcatAndDel(%struct._object** %pv, %struct._object* %w) #0 {
entry:
  %pv.addr = alloca %struct._object**, align 8
  %w.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object** %pv, %struct._object*** %pv.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object**, %struct._object*** %pv.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  call void @PyBytes_Concat(%struct._object** %0, %struct._object* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  ret void
}

declare i8* @PyObject_Realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @PyBytes_Fini() #0 {
entry:
  %i = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp10 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [256 x %struct.PyBytesObject*], [256 x %struct.PyBytesObject*]* @characters, i32 0, i64 %idxprom
  %2 = load %struct.PyBytesObject*, %struct.PyBytesObject** %arrayidx, align 8
  %3 = bitcast %struct.PyBytesObject* %2 to %struct._object*
  store %struct._object* %3, %struct._object** %_py_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp1 = icmp ne %struct._object* %4, null
  br i1 %cmp1, label %if.then, label %if.end.7

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr [256 x %struct.PyBytesObject*], [256 x %struct.PyBytesObject*]* @characters, i32 0, i64 %idxprom2
  store %struct.PyBytesObject* null, %struct.PyBytesObject** %arrayidx3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end

if.else:                                          ; preds = %do.body.4
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %do.end.8
  %13 = load i32, i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.9

do.body.9:                                        ; preds = %for.end
  %14 = load %struct.PyBytesObject*, %struct.PyBytesObject** @nullstring, align 8
  %15 = bitcast %struct.PyBytesObject* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %_py_tmp10, align 8
  %16 = load %struct._object*, %struct._object** %_py_tmp10, align 8
  %cmp11 = icmp ne %struct._object* %16, null
  br i1 %cmp11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %do.body.9
  store %struct.PyBytesObject* null, %struct.PyBytesObject** @nullstring, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %17 = load %struct._object*, %struct._object** %_py_tmp10, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp14, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %19, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %22(%struct._object* %23)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %do.body.9
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @striter_dealloc(%struct.striterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.striterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.striterobject* %it, %struct.striterobject** %it.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %1 = bitcast %struct.striterobject* %0 to %union._gc_head*
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
  %14 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.striterobject, %struct.striterobject* %14, i32 0, i32 2
  %15 = load %struct.PyBytesObject*, %struct.PyBytesObject** %it_seq, align 8
  %16 = bitcast %struct.PyBytesObject* %15 to %struct._object*
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
  %25 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %26 = bitcast %struct.striterobject* %25 to i8*
  call void @PyObject_GC_Del(i8* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @striter_traverse(%struct.striterobject* %it, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.striterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.striterobject* %it, %struct.striterobject** %it.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.striterobject, %struct.striterobject* %0, i32 0, i32 2
  %1 = load %struct.PyBytesObject*, %struct.PyBytesObject** %it_seq, align 8
  %tobool = icmp ne %struct.PyBytesObject* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.striterobject, %struct.striterobject* %3, i32 0, i32 2
  %4 = load %struct.PyBytesObject*, %struct.PyBytesObject** %it_seq1, align 8
  %5 = bitcast %struct.PyBytesObject* %4 to %struct._object*
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
define internal %struct._object* @striter_next(%struct.striterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.striterobject*, align 8
  %seq = alloca %struct.PyBytesObject*, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.striterobject* %it, %struct.striterobject** %it.addr, align 8
  %0 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.striterobject, %struct.striterobject* %0, i32 0, i32 2
  %1 = load %struct.PyBytesObject*, %struct.PyBytesObject** %it_seq, align 8
  store %struct.PyBytesObject* %1, %struct.PyBytesObject** %seq, align 8
  %2 = load %struct.PyBytesObject*, %struct.PyBytesObject** %seq, align 8
  %cmp = icmp eq %struct.PyBytesObject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.striterobject, %struct.striterobject* %3, i32 0, i32 1
  %4 = load i64, i64* %it_index, align 8
  %5 = load %struct.PyBytesObject*, %struct.PyBytesObject** %seq, align 8
  %6 = bitcast %struct.PyBytesObject* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp slt i64 %4, %7
  br i1 %cmp1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_index3 = getelementptr inbounds %struct.striterobject, %struct.striterobject* %8, i32 0, i32 1
  %9 = load i64, i64* %it_index3, align 8
  %10 = load %struct.PyBytesObject*, %struct.PyBytesObject** %seq, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %10, i32 0, i32 2
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %ob_sval, i32 0, i64 %9
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %item, align 8
  %12 = load %struct._object*, %struct._object** %item, align 8
  %cmp4 = icmp ne %struct._object* %12, null
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.2
  %13 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_index7 = getelementptr inbounds %struct.striterobject, %struct.striterobject* %13, i32 0, i32 1
  %14 = load i64, i64* %it_index7, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %it_index7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.2
  %15 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %16 = load %struct.PyBytesObject*, %struct.PyBytesObject** %seq, align 8
  %17 = bitcast %struct.PyBytesObject* %16 to %struct._object*
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %24 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_seq14 = getelementptr inbounds %struct.striterobject, %struct.striterobject* %24, i32 0, i32 2
  store %struct.PyBytesObject* null, %struct.PyBytesObject** %it_seq14, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.8, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_bytes_join(%struct._object* %sep, %struct._object* %iterable) #5 {
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
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  %itemlen = alloca i64, align 8
  %n = alloca i64, align 8
  %q = alloca i8*, align 8
  %n134 = alloca i64, align 8
  %q135 = alloca i8*, align 8
  %_py_decref_tmp149 = alloca %struct._object*, align 8
  store %struct._object* %sep, %struct._object** %sep.addr, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  %0 = load %struct._object*, %struct._object** %sep.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %sepstr, align 8
  %2 = load %struct._object*, %struct._object** %sep.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  store i64 %4, i64* %seplen, align 8
  store %struct._object* null, %struct._object** %res, align 8
  store i64 0, i64* %seqlen, align 8
  store i64 0, i64* %sz, align 8
  store %struct.bufferinfo* null, %struct.bufferinfo** %buffers, align 8
  %5 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call = call %struct._object* @PySequence_Fast(%struct._object* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %seq, align 8
  %6 = load %struct._object*, %struct._object** %seq, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags, align 8
  %and = and i64 %9, 33554432
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %seq, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size2, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %seq, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %15, %cond.false ]
  store i64 %cond, i64* %seqlen, align 8
  %16 = load i64, i64* %seqlen, align 8
  %cmp4 = icmp eq i64 %16, 0
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %17 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %call10 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 0)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %cond.end
  %24 = load i64, i64* %seqlen, align 8
  %cmp12 = icmp eq i64 %24, 1
  br i1 %cmp12, label %if.then.13, label %if.end.40

if.then.13:                                       ; preds = %if.end.11
  %25 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_flags15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 19
  %27 = load i64, i64* %tp_flags15, align 8
  %and16 = and i64 %27, 33554432
  %cmp17 = icmp ne i64 %and16, 0
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.then.13
  %28 = load %struct._object*, %struct._object** %seq, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %29, i32 0, i32 1
  %30 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %30, i64 0
  %31 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end.22

cond.false.19:                                    ; preds = %if.then.13
  %32 = load %struct._object*, %struct._object** %seq, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyTupleObject*
  %ob_item20 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %33, i32 0, i32 1
  %arrayidx21 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item20, i32 0, i64 0
  %34 = load %struct._object*, %struct._object** %arrayidx21, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.18
  %cond23 = phi %struct._object* [ %31, %cond.true.18 ], [ %34, %cond.false.19 ]
  store %struct._object* %cond23, %struct._object** %item, align 8
  %35 = load %struct._object*, %struct._object** %item, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %cmp25 = icmp eq %struct._typeobject* %36, @PyBytes_Type
  br i1 %cmp25, label %if.then.26, label %if.end.39

if.then.26:                                       ; preds = %cond.end.22
  %37 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt27, align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* %ob_refcnt27, align 8
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.26
  %39 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp29, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %41, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %44(%struct._object* %45)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %46 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %46, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %cond.end.22
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.11
  %47 = load i64, i64* %seqlen, align 8
  %cmp41 = icmp sgt i64 %47, 10
  br i1 %cmp41, label %if.then.42, label %if.else.64

if.then.42:                                       ; preds = %if.end.40
  %48 = load i64, i64* %seqlen, align 8
  %cmp43 = icmp ugt i64 %48, 115292150460684697
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.then.42
  br label %cond.end.47

cond.false.45:                                    ; preds = %if.then.42
  %49 = load i64, i64* %seqlen, align 8
  %mul = mul i64 %49, 80
  %call46 = call i8* @PyMem_Malloc(i64 %mul)
  %50 = bitcast i8* %call46 to %struct.bufferinfo*
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.44
  %cond48 = phi %struct.bufferinfo* [ null, %cond.true.44 ], [ %50, %cond.false.45 ]
  store %struct.bufferinfo* %cond48, %struct.bufferinfo** %buffers, align 8
  %51 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %cmp49 = icmp eq %struct.bufferinfo* %51, null
  br i1 %cmp49, label %if.then.50, label %if.end.63

if.then.50:                                       ; preds = %cond.end.47
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.50
  %52 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp52, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt53, align 8
  %dec54 = add i64 %54, -1
  store i64 %dec54, i64* %ob_refcnt53, align 8
  %cmp55 = icmp ne i64 %dec54, 0
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.51
  br label %if.end.60

if.else.57:                                       ; preds = %do.body.51
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  call void %57(%struct._object* %58)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  %call62 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.63:                                        ; preds = %cond.end.47
  br label %if.end.66

if.else.64:                                       ; preds = %if.end.40
  %arraydecay65 = getelementptr inbounds [10 x %struct.bufferinfo], [10 x %struct.bufferinfo]* %static_buffers, i32 0, i32 0
  store %struct.bufferinfo* %arraydecay65, %struct.bufferinfo** %buffers, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.end.63
  store i64 0, i64* %i, align 8
  store i64 0, i64* %nbufs, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.66
  %59 = load i64, i64* %i, align 8
  %60 = load i64, i64* %seqlen, align 8
  %cmp67 = icmp slt i64 %59, %60
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_flags69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 19
  %63 = load i64, i64* %tp_flags69, align 8
  %and70 = and i64 %63, 33554432
  %cmp71 = icmp ne i64 %and70, 0
  br i1 %cmp71, label %cond.true.72, label %cond.false.75

cond.true.72:                                     ; preds = %for.body
  %64 = load i64, i64* %i, align 8
  %65 = load %struct._object*, %struct._object** %seq, align 8
  %66 = bitcast %struct._object* %65 to %struct.PyListObject*
  %ob_item73 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %66, i32 0, i32 1
  %67 = load %struct._object**, %struct._object*** %ob_item73, align 8
  %arrayidx74 = getelementptr %struct._object*, %struct._object** %67, i64 %64
  %68 = load %struct._object*, %struct._object** %arrayidx74, align 8
  br label %cond.end.78

cond.false.75:                                    ; preds = %for.body
  %69 = load i64, i64* %i, align 8
  %70 = load %struct._object*, %struct._object** %seq, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyTupleObject*
  %ob_item76 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %71, i32 0, i32 1
  %arrayidx77 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item76, i32 0, i64 %69
  %72 = load %struct._object*, %struct._object** %arrayidx77, align 8
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.75, %cond.true.72
  %cond79 = phi %struct._object* [ %68, %cond.true.72 ], [ %72, %cond.false.75 ]
  store %struct._object* %cond79, %struct._object** %item, align 8
  %73 = load %struct._object*, %struct._object** %item, align 8
  %74 = load i64, i64* %i, align 8
  %75 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx80 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %75, i64 %74
  %call81 = call i64 @_getbuffer(%struct._object* %73, %struct.bufferinfo* %arrayidx80)
  %cmp82 = icmp slt i64 %call81, 0
  br i1 %cmp82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %cond.end.78
  %76 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %77 = load i64, i64* %i, align 8
  %78 = load %struct._object*, %struct._object** %item, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 1
  %80 = load i8*, i8** %tp_name, align 8
  %call85 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %76, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.28, i32 0, i32 0), i64 %77, i8* %80)
  br label %error

if.end.86:                                        ; preds = %cond.end.78
  %81 = load i64, i64* %i, align 8
  %add = add i64 %81, 1
  store i64 %add, i64* %nbufs, align 8
  %82 = load i64, i64* %i, align 8
  %83 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx87 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %83, i64 %82
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx87, i32 0, i32 2
  %84 = load i64, i64* %len, align 8
  store i64 %84, i64* %itemlen, align 8
  %85 = load i64, i64* %itemlen, align 8
  %86 = load i64, i64* %sz, align 8
  %sub = sub i64 9223372036854775807, %86
  %cmp88 = icmp sgt i64 %85, %sub
  br i1 %cmp88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.86
  %87 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0))
  br label %error

if.end.90:                                        ; preds = %if.end.86
  %88 = load i64, i64* %itemlen, align 8
  %89 = load i64, i64* %sz, align 8
  %add91 = add i64 %89, %88
  store i64 %add91, i64* %sz, align 8
  %90 = load i64, i64* %i, align 8
  %cmp92 = icmp ne i64 %90, 0
  br i1 %cmp92, label %if.then.93, label %if.end.99

if.then.93:                                       ; preds = %if.end.90
  %91 = load i64, i64* %seplen, align 8
  %92 = load i64, i64* %sz, align 8
  %sub94 = sub i64 9223372036854775807, %92
  %cmp95 = icmp sgt i64 %91, %sub94
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.93
  %93 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0))
  br label %error

if.end.97:                                        ; preds = %if.then.93
  %94 = load i64, i64* %seplen, align 8
  %95 = load i64, i64* %sz, align 8
  %add98 = add i64 %95, %94
  store i64 %add98, i64* %sz, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.97, %if.end.90
  %96 = load i64, i64* %seqlen, align 8
  %97 = load %struct._object*, %struct._object** %seq, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_flags101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 19
  %99 = load i64, i64* %tp_flags101, align 8
  %and102 = and i64 %99, 33554432
  %cmp103 = icmp ne i64 %and102, 0
  br i1 %cmp103, label %cond.true.104, label %cond.false.106

cond.true.104:                                    ; preds = %if.end.99
  %100 = load %struct._object*, %struct._object** %seq, align 8
  %101 = bitcast %struct._object* %100 to %struct.PyVarObject*
  %ob_size105 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %101, i32 0, i32 1
  %102 = load i64, i64* %ob_size105, align 8
  br label %cond.end.108

cond.false.106:                                   ; preds = %if.end.99
  %103 = load %struct._object*, %struct._object** %seq, align 8
  %104 = bitcast %struct._object* %103 to %struct.PyVarObject*
  %ob_size107 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %104, i32 0, i32 1
  %105 = load i64, i64* %ob_size107, align 8
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.106, %cond.true.104
  %cond109 = phi i64 [ %102, %cond.true.104 ], [ %105, %cond.false.106 ]
  %cmp110 = icmp ne i64 %96, %cond109
  br i1 %cmp110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %cond.end.108
  %106 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i32 0, i32 0))
  br label %error

if.end.112:                                       ; preds = %cond.end.108
  br label %for.inc

for.inc:                                          ; preds = %if.end.112
  %107 = load i64, i64* %i, align 8
  %inc113 = add i64 %107, 1
  store i64 %inc113, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %108 = load i64, i64* %sz, align 8
  %call114 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %108)
  store %struct._object* %call114, %struct._object** %res, align 8
  %109 = load %struct._object*, %struct._object** %res, align 8
  %cmp115 = icmp eq %struct._object* %109, null
  br i1 %cmp115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %for.end
  br label %error

if.end.117:                                       ; preds = %for.end
  %110 = load %struct._object*, %struct._object** %res, align 8
  %111 = bitcast %struct._object* %110 to %struct.PyBytesObject*
  %ob_sval118 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %111, i32 0, i32 2
  %arraydecay119 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval118, i32 0, i32 0
  store i8* %arraydecay119, i8** %p, align 8
  %112 = load i64, i64* %seplen, align 8
  %tobool = icmp ne i64 %112, 0
  br i1 %tobool, label %if.end.130, label %if.then.120

if.then.120:                                      ; preds = %if.end.117
  store i64 0, i64* %i, align 8
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.127, %if.then.120
  %113 = load i64, i64* %i, align 8
  %114 = load i64, i64* %nbufs, align 8
  %cmp122 = icmp slt i64 %113, %114
  br i1 %cmp122, label %for.body.123, label %for.end.129

for.body.123:                                     ; preds = %for.cond.121
  %115 = load i64, i64* %i, align 8
  %116 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx124 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %116, i64 %115
  %len125 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx124, i32 0, i32 2
  %117 = load i64, i64* %len125, align 8
  store i64 %117, i64* %n, align 8
  %118 = load i64, i64* %i, align 8
  %119 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx126 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %119, i64 %118
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx126, i32 0, i32 0
  %120 = load i8*, i8** %buf, align 8
  store i8* %120, i8** %q, align 8
  %121 = load i8*, i8** %p, align 8
  %122 = load i8*, i8** %q, align 8
  %123 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 %123, i32 1, i1 false)
  %124 = load i64, i64* %n, align 8
  %125 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %125, i64 %124
  store i8* %add.ptr, i8** %p, align 8
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.123
  %126 = load i64, i64* %i, align 8
  %inc128 = add i64 %126, 1
  store i64 %inc128, i64* %i, align 8
  br label %for.cond.121

for.end.129:                                      ; preds = %for.cond.121
  br label %done

if.end.130:                                       ; preds = %if.end.117
  store i64 0, i64* %i, align 8
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.145, %if.end.130
  %127 = load i64, i64* %i, align 8
  %128 = load i64, i64* %nbufs, align 8
  %cmp132 = icmp slt i64 %127, %128
  br i1 %cmp132, label %for.body.133, label %for.end.147

for.body.133:                                     ; preds = %for.cond.131
  %129 = load i64, i64* %i, align 8
  %tobool136 = icmp ne i64 %129, 0
  br i1 %tobool136, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %for.body.133
  %130 = load i8*, i8** %p, align 8
  %131 = load i8*, i8** %sepstr, align 8
  %132 = load i64, i64* %seplen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 %132, i32 1, i1 false)
  %133 = load i64, i64* %seplen, align 8
  %134 = load i8*, i8** %p, align 8
  %add.ptr138 = getelementptr i8, i8* %134, i64 %133
  store i8* %add.ptr138, i8** %p, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %for.body.133
  %135 = load i64, i64* %i, align 8
  %136 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx140 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %136, i64 %135
  %len141 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx140, i32 0, i32 2
  %137 = load i64, i64* %len141, align 8
  store i64 %137, i64* %n134, align 8
  %138 = load i64, i64* %i, align 8
  %139 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx142 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %139, i64 %138
  %buf143 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %arrayidx142, i32 0, i32 0
  %140 = load i8*, i8** %buf143, align 8
  store i8* %140, i8** %q135, align 8
  %141 = load i8*, i8** %p, align 8
  %142 = load i8*, i8** %q135, align 8
  %143 = load i64, i64* %n134, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 %143, i32 1, i1 false)
  %144 = load i64, i64* %n134, align 8
  %145 = load i8*, i8** %p, align 8
  %add.ptr144 = getelementptr i8, i8* %145, i64 %144
  store i8* %add.ptr144, i8** %p, align 8
  br label %for.inc.145

for.inc.145:                                      ; preds = %if.end.139
  %146 = load i64, i64* %i, align 8
  %inc146 = add i64 %146, 1
  store i64 %inc146, i64* %i, align 8
  br label %for.cond.131

for.end.147:                                      ; preds = %for.cond.131
  br label %done

error:                                            ; preds = %if.then.116, %if.then.111, %if.then.96, %if.then.89, %if.then.83
  store %struct._object* null, %struct._object** %res, align 8
  br label %done

done:                                             ; preds = %error, %for.end.147, %for.end.129
  br label %do.body.148

do.body.148:                                      ; preds = %done
  %147 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %147, %struct._object** %_py_decref_tmp149, align 8
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_refcnt150 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 0
  %149 = load i64, i64* %ob_refcnt150, align 8
  %dec151 = add i64 %149, -1
  store i64 %dec151, i64* %ob_refcnt150, align 8
  %cmp152 = icmp ne i64 %dec151, 0
  br i1 %cmp152, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %do.body.148
  br label %if.end.157

if.else.154:                                      ; preds = %do.body.148
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_type155 = getelementptr inbounds %struct._object, %struct._object* %150, i32 0, i32 1
  %151 = load %struct._typeobject*, %struct._typeobject** %ob_type155, align 8
  %tp_dealloc156 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %151, i32 0, i32 4
  %152 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc156, align 8
  %153 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  call void %152(%struct._object* %153)
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.154, %if.then.153
  br label %do.end.158

do.end.158:                                       ; preds = %if.end.157
  store i64 0, i64* %i, align 8
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.163, %do.end.158
  %154 = load i64, i64* %i, align 8
  %155 = load i64, i64* %nbufs, align 8
  %cmp160 = icmp slt i64 %154, %155
  br i1 %cmp160, label %for.body.161, label %for.end.165

for.body.161:                                     ; preds = %for.cond.159
  %156 = load i64, i64* %i, align 8
  %157 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arrayidx162 = getelementptr %struct.bufferinfo, %struct.bufferinfo* %157, i64 %156
  call void @PyBuffer_Release(%struct.bufferinfo* %arrayidx162)
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.body.161
  %158 = load i64, i64* %i, align 8
  %inc164 = add i64 %158, 1
  store i64 %inc164, i64* %i, align 8
  br label %for.cond.159

for.end.165:                                      ; preds = %for.cond.159
  %159 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %arraydecay166 = getelementptr inbounds [10 x %struct.bufferinfo], [10 x %struct.bufferinfo]* %static_buffers, i32 0, i32 0
  %cmp167 = icmp ne %struct.bufferinfo* %159, %arraydecay166
  br i1 %cmp167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %for.end.165
  %160 = load %struct.bufferinfo*, %struct.bufferinfo** %buffers, align 8
  %161 = bitcast %struct.bufferinfo* %160 to i8*
  call void @PyMem_Free(i8* %161)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %for.end.165
  %162 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %162, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.169, %do.end.61, %do.end.38, %do.end, %if.then
  %163 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %163
}

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @_getbuffer(%struct._object* %obj, %struct.bufferinfo* %view) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca %struct._object*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %bufferprocs = alloca %struct.PyBufferProcs*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyBytes_Type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 1
  store %struct._object* %4, %struct._object** %obj1, align 8
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 0
  store i8* %arraydecay, i8** %buf, align 8
  %9 = load %struct._object*, %struct._object** %obj.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size, align 8
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 2
  store i64 %11, i64* %len, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 2
  %14 = load i64, i64* %len2, align 8
  store i64 %14, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 18
  %17 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  store %struct.PyBufferProcs* %17, %struct.PyBufferProcs** %bufferprocs, align 8
  %18 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %bufferprocs, align 8
  %cmp4 = icmp eq %struct.PyBufferProcs* %18, null
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %bufferprocs, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %19, i32 0, i32 0
  %20 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp5 = icmp eq i32 (%struct._object*, %struct.bufferinfo*, i32)* %20, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %22 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 1
  %24 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i32 0, i32 0), i8* %24)
  store i64 -1, i64* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %25 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %bufferprocs, align 8
  %bf_getbuffer9 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %25, i32 0, i32 0
  %26 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer9, align 8
  %27 = load %struct._object*, %struct._object** %obj.addr, align 8
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %call10 = call i32 %26(%struct._object* %27, %struct.bufferinfo* %28, i32 0)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  store i64 -1, i64* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.8
  %29 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %len14 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %29, i32 0, i32 2
  %30 = load i64, i64* %len14, align 8
  store i64 %30, i64* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.6, %if.then
  %31 = load i64, i64* %retval
  ret i64 %31
}

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i64 @bytes_length(%struct.PyBytesObject* %a) #0 {
entry:
  %a.addr = alloca %struct.PyBytesObject*, align 8
  store %struct.PyBytesObject* %a, %struct.PyBytesObject** %a.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %1 = bitcast %struct.PyBytesObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_repeat(%struct.PyBytesObject* %a, i64 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyBytesObject*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %size = alloca i64, align 8
  %op = alloca %struct.PyBytesObject*, align 8
  %nbytes = alloca i64, align 8
  store %struct.PyBytesObject* %a, %struct.PyBytesObject** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %n.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp sgt i64 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %3 = bitcast %struct.PyBytesObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %5 = load i64, i64* %n.addr, align 8
  %div = sdiv i64 9223372036854775807, %5
  %cmp2 = icmp sgt i64 %4, %div
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %7 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %8 = bitcast %struct.PyBytesObject* %7 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size5, align 8
  %10 = load i64, i64* %n.addr, align 8
  %mul = mul i64 %9, %10
  store i64 %mul, i64* %size, align 8
  %11 = load i64, i64* %size, align 8
  %12 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %13 = bitcast %struct.PyBytesObject* %12 to %struct.PyVarObject*
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size6, align 8
  %cmp7 = icmp eq i64 %11, %14
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %if.end.4
  %15 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %16 = bitcast %struct.PyBytesObject* %15 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp9 = icmp eq %struct._typeobject* %17, @PyBytes_Type
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.8
  %18 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %19 = bitcast %struct.PyBytesObject* %18 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %21 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %22 = bitcast %struct.PyBytesObject* %21 to %struct._object*
  store %struct._object* %22, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true.8, %if.end.4
  %23 = load i64, i64* %size, align 8
  store i64 %23, i64* %nbytes, align 8
  %24 = load i64, i64* %nbytes, align 8
  %add = add i64 %24, 33
  %25 = load i64, i64* %nbytes, align 8
  %cmp12 = icmp ule i64 %add, %25
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %26 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %27 = load i64, i64* %nbytes, align 8
  %add15 = add i64 33, %27
  %call = call i8* @PyObject_Malloc(i64 %add15)
  %28 = bitcast i8* %call to %struct.PyBytesObject*
  store %struct.PyBytesObject* %28, %struct.PyBytesObject** %op, align 8
  %29 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %cmp16 = icmp eq %struct.PyBytesObject* %29, null
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.14
  %call18 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call18, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.14
  %30 = load i64, i64* %size, align 8
  %31 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %32 = bitcast %struct.PyBytesObject* %31 to %struct.PyVarObject*
  %ob_size20 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  store i64 %30, i64* %ob_size20, align 8
  %33 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %34 = bitcast %struct.PyBytesObject* %33 to %struct._object*
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  store %struct._typeobject* @PyBytes_Type, %struct._typeobject** %ob_type21, align 8
  %35 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %36 = bitcast %struct.PyBytesObject* %35 to %struct._object*
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  store i64 1, i64* %ob_refcnt22, align 8
  %37 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %38 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_shash = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %38, i32 0, i32 1
  store i64 -1, i64* %ob_shash, align 8
  %39 = load i64, i64* %size, align 8
  %40 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %40, i32 0, i32 2
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %ob_sval, i32 0, i64 %39
  store i8 0, i8* %arrayidx, align 1
  %41 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %42 = bitcast %struct.PyBytesObject* %41 to %struct.PyVarObject*
  %ob_size23 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %42, i32 0, i32 1
  %43 = load i64, i64* %ob_size23, align 8
  %cmp24 = icmp eq i64 %43, 1
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.31

land.lhs.true.25:                                 ; preds = %if.end.19
  %44 = load i64, i64* %n.addr, align 8
  %cmp26 = icmp sgt i64 %44, 0
  br i1 %cmp26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %land.lhs.true.25
  %45 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_sval28 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %45, i32 0, i32 2
  %46 = bitcast [1 x i8]* %ob_sval28 to i8*
  %47 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %ob_sval29 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %47, i32 0, i32 2
  %arrayidx30 = getelementptr [1 x i8], [1 x i8]* %ob_sval29, i32 0, i64 0
  %48 = load i8, i8* %arrayidx30, align 1
  %conv = sext i8 %48 to i32
  %49 = trunc i32 %conv to i8
  %50 = load i64, i64* %n.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %46, i8 %49, i64 %50, i32 1, i1 false)
  %51 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %52 = bitcast %struct.PyBytesObject* %51 to %struct._object*
  store %struct._object* %52, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.25, %if.end.19
  store i64 0, i64* %i, align 8
  %53 = load i64, i64* %i, align 8
  %54 = load i64, i64* %size, align 8
  %cmp32 = icmp slt i64 %53, %54
  br i1 %cmp32, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.end.31
  %55 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_sval35 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %55, i32 0, i32 2
  %56 = bitcast [1 x i8]* %ob_sval35 to i8*
  %57 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %ob_sval36 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %57, i32 0, i32 2
  %58 = bitcast [1 x i8]* %ob_sval36 to i8*
  %59 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %60 = bitcast %struct.PyBytesObject* %59 to %struct.PyVarObject*
  %ob_size37 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %60, i32 0, i32 1
  %61 = load i64, i64* %ob_size37, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %58, i64 %61, i32 1, i1 false)
  %62 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %63 = bitcast %struct.PyBytesObject* %62 to %struct.PyVarObject*
  %ob_size38 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %63, i32 0, i32 1
  %64 = load i64, i64* %ob_size38, align 8
  store i64 %64, i64* %i, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %if.end.31
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end.39
  %65 = load i64, i64* %i, align 8
  %66 = load i64, i64* %size, align 8
  %cmp40 = icmp slt i64 %65, %66
  br i1 %cmp40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %67 = load i64, i64* %i, align 8
  %68 = load i64, i64* %size, align 8
  %69 = load i64, i64* %i, align 8
  %sub = sub i64 %68, %69
  %cmp42 = icmp sle i64 %67, %sub
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %70 = load i64, i64* %i, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %71 = load i64, i64* %size, align 8
  %72 = load i64, i64* %i, align 8
  %sub44 = sub i64 %71, %72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %70, %cond.true ], [ %sub44, %cond.false ]
  store i64 %cond, i64* %j, align 8
  %73 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_sval45 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %73, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval45, i32 0, i32 0
  %74 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %74
  %75 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %ob_sval46 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %75, i32 0, i32 2
  %76 = bitcast [1 x i8]* %ob_sval46 to i8*
  %77 = load i64, i64* %j, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %76, i64 %77, i32 1, i1 false)
  %78 = load i64, i64* %j, align 8
  %79 = load i64, i64* %i, align 8
  %add47 = add i64 %79, %78
  store i64 %add47, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %80 = load %struct.PyBytesObject*, %struct.PyBytesObject** %op, align 8
  %81 = bitcast %struct.PyBytesObject* %80 to %struct._object*
  store %struct._object* %81, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.27, %if.then.17, %if.then.13, %if.then.10, %if.then.3
  %82 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %82
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_item(%struct.PyBytesObject* %a, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.PyBytesObject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.PyBytesObject* %a, %struct.PyBytesObject** %a.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %2 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %3 = bitcast %struct.PyBytesObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp sge i64 %1, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, i64* %i.addr, align 8
  %7 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %ob_sval, i32 0, i64 %6
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal i32 @bytes_contains(%struct._object* %self, %struct._object* %arg) #0 {
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
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end.7

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
  %5 = bitcast %struct._object* %4 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %varg, i32 0, i32 0
  %9 = load i8*, i8** %buf, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %varg, i32 0, i32 2
  %10 = load i64, i64* %len, align 8
  %call5 = call i64 @stringlib_find(i8* %arraydecay, i64 %8, i8* %9, i64 %10, i64 0)
  store i64 %call5, i64* %pos, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %varg)
  %11 = load i64, i64* %pos, align 8
  %cmp6 = icmp sge i64 %11, 0
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %entry
  %12 = load i64, i64* %ival, align 8
  %cmp8 = icmp slt i64 %12, 0
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %13 = load i64, i64* %ival, align 8
  %cmp10 = icmp sge i64 %13, 256
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.7
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  %15 = load %struct._object*, %struct._object** %self.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyBytesObject*
  %ob_sval14 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %16, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval14, i32 0, i32 0
  %17 = load i64, i64* %ival, align 8
  %conv16 = trunc i64 %17 to i32
  %18 = load %struct._object*, %struct._object** %self.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyVarObject*
  %ob_size17 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size17, align 8
  %call18 = call i8* @memchr(i8* %arraydecay15, i32 %conv16, i64 %20) #7
  %cmp19 = icmp ne i8* %call18, null
  %conv20 = zext i1 %cmp19 to i32
  store i32 %conv20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.end, %if.then.4
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct._object* @PyLong_FromLong(i64) #1

declare void @PyErr_Clear() #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stringlib_find(i8* %str, i64 %str_len, i8* %sub, i64 %sub_len, i64 %offset) #5 {
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
declare i8* @memchr(i8*, i32, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fastsearch(i8* %s, i64 %n, i8* %p, i64 %m, i64 %maxcount, i32 %mode) #5 {
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
define internal i64 @stringlib_fastsearch_memchr_1char(i8* %s, i64 %n, i8 signext %ch, i8 zeroext %needle, i64 %maxcount, i32 %mode) #5 {
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
declare i8* @memrchr(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_subscript(%struct.PyBytesObject* %self, %struct._object* %item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %item.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelength = alloca i64, align 8
  %cur = alloca i64, align 8
  %i21 = alloca i64, align 8
  %source_buf = alloca i8*, align 8
  %result_buf = alloca i8*, align 8
  %result = alloca %struct._object*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp = icmp ne %struct.PyNumberMethods* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 33
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp3 = icmp ne %struct._object* (%struct._object*)* %6, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %item.addr, align 8
  %8 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %7, %struct._object* %8)
  store i64 %call, i64* %i, align 8
  %9 = load i64, i64* %i, align 8
  %cmp4 = icmp eq i64 %9, -1
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %if.then
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.5, %if.then
  %10 = load i64, i64* %i, align 8
  %cmp8 = icmp slt i64 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %11 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %12 = bitcast %struct.PyBytesObject* %11 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size, align 8
  %14 = load i64, i64* %i, align 8
  %add = add i64 %14, %13
  store i64 %add, i64* %i, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %15 = load i64, i64* %i, align 8
  %cmp11 = icmp slt i64 %15, 0
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.10
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %18 = bitcast %struct.PyBytesObject* %17 to %struct.PyVarObject*
  %ob_size12 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size12, align 8
  %cmp13 = icmp sge i64 %16, %19
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.10
  %20 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false
  %21 = load i64, i64* %i, align 8
  %22 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %22, i32 0, i32 2
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %ob_sval, i32 0, i64 %21
  %23 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %23 to i64
  %call16 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call16, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %24 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %cmp18 = icmp eq %struct._typeobject* %25, @PySlice_Type
  br i1 %cmp18, label %if.then.20, label %if.else.69

if.then.20:                                       ; preds = %if.else
  %26 = load %struct._object*, %struct._object** %item.addr, align 8
  %27 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %28 = bitcast %struct.PyBytesObject* %27 to %struct.PyVarObject*
  %ob_size22 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %28, i32 0, i32 1
  %29 = load i64, i64* %ob_size22, align 8
  %call23 = call i32 @PySlice_GetIndicesEx(%struct._object* %26, i64 %29, i64* %start, i64* %stop, i64* %step, i64* %slicelength)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.20
  %30 = load i64, i64* %slicelength, align 8
  %cmp28 = icmp sle i64 %30, 0
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.end.27
  %call31 = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0), i64 0)
  store %struct._object* %call31, %struct._object** %retval
  br label %return

if.else.32:                                       ; preds = %if.end.27
  %31 = load i64, i64* %start, align 8
  %cmp33 = icmp eq i64 %31, 0
  br i1 %cmp33, label %land.lhs.true.35, label %if.else.47

land.lhs.true.35:                                 ; preds = %if.else.32
  %32 = load i64, i64* %step, align 8
  %cmp36 = icmp eq i64 %32, 1
  br i1 %cmp36, label %land.lhs.true.38, label %if.else.47

land.lhs.true.38:                                 ; preds = %land.lhs.true.35
  %33 = load i64, i64* %slicelength, align 8
  %34 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %35 = bitcast %struct.PyBytesObject* %34 to %struct.PyVarObject*
  %ob_size39 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %35, i32 0, i32 1
  %36 = load i64, i64* %ob_size39, align 8
  %cmp40 = icmp eq i64 %33, %36
  br i1 %cmp40, label %land.lhs.true.42, label %if.else.47

land.lhs.true.42:                                 ; preds = %land.lhs.true.38
  %37 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %38 = bitcast %struct.PyBytesObject* %37 to %struct._object*
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %cmp44 = icmp eq %struct._typeobject* %39, @PyBytes_Type
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %land.lhs.true.42
  %40 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %41 = bitcast %struct.PyBytesObject* %40 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %42, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %43 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %44 = bitcast %struct.PyBytesObject* %43 to %struct._object*
  store %struct._object* %44, %struct._object** %retval
  br label %return

if.else.47:                                       ; preds = %land.lhs.true.42, %land.lhs.true.38, %land.lhs.true.35, %if.else.32
  %45 = load i64, i64* %step, align 8
  %cmp48 = icmp eq i64 %45, 1
  br i1 %cmp48, label %if.then.50, label %if.else.53

if.then.50:                                       ; preds = %if.else.47
  %46 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval51 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %46, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval51, i32 0, i32 0
  %47 = load i64, i64* %start, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %47
  %48 = load i64, i64* %slicelength, align 8
  %call52 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %48)
  store %struct._object* %call52, %struct._object** %retval
  br label %return

if.else.53:                                       ; preds = %if.else.47
  %49 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval54 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %49, i32 0, i32 2
  %arraydecay55 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval54, i32 0, i32 0
  store i8* %arraydecay55, i8** %source_buf, align 8
  %50 = load i64, i64* %slicelength, align 8
  %call56 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %50)
  store %struct._object* %call56, %struct._object** %result, align 8
  %51 = load %struct._object*, %struct._object** %result, align 8
  %cmp57 = icmp eq %struct._object* %51, null
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.else.53
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.60:                                        ; preds = %if.else.53
  %52 = load %struct._object*, %struct._object** %result, align 8
  %53 = bitcast %struct._object* %52 to %struct.PyBytesObject*
  %ob_sval61 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %53, i32 0, i32 2
  %arraydecay62 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval61, i32 0, i32 0
  store i8* %arraydecay62, i8** %result_buf, align 8
  %54 = load i64, i64* %start, align 8
  store i64 %54, i64* %cur, align 8
  store i64 0, i64* %i21, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.60
  %55 = load i64, i64* %i21, align 8
  %56 = load i64, i64* %slicelength, align 8
  %cmp63 = icmp slt i64 %55, %56
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i64, i64* %cur, align 8
  %58 = load i8*, i8** %source_buf, align 8
  %arrayidx65 = getelementptr i8, i8* %58, i64 %57
  %59 = load i8, i8* %arrayidx65, align 1
  %60 = load i64, i64* %i21, align 8
  %61 = load i8*, i8** %result_buf, align 8
  %arrayidx66 = getelementptr i8, i8* %61, i64 %60
  store i8 %59, i8* %arrayidx66, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i64, i64* %step, align 8
  %63 = load i64, i64* %cur, align 8
  %add67 = add i64 %63, %62
  store i64 %add67, i64* %cur, align 8
  %64 = load i64, i64* %i21, align 8
  %inc68 = add i64 %64, 1
  store i64 %inc68, i64* %i21, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %65, %struct._object** %retval
  br label %return

if.else.69:                                       ; preds = %if.else
  %66 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %67 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 1
  %69 = load i8*, i8** %tp_name, align 8
  %call71 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i32 0, i32 0), i8* %69)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.69, %for.end, %if.then.59, %if.then.50, %if.then.46, %if.then.30, %if.then.26, %if.end.15, %if.then.14, %if.then.7
  %70 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %70
}

declare i32 @PySlice_GetIndicesEx(%struct._object*, i64, i64*, i64*, i64*, i64*) #1

declare i64 @_Py_HashBytes(i8*, i64) #1

declare i32 @PyErr_WarnEx(%struct._object*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @bytes_buffer_getbuffer(%struct.PyBytesObject* %self, %struct.bufferinfo* %view, i32 %flags) #0 {
entry:
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %1 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %2 = bitcast %struct.PyBytesObject* %1 to %struct._object*
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %4 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %5 = bitcast %struct.PyBytesObject* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  %7 = load i32, i32* %flags.addr, align 4
  %call = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %0, %struct._object* %2, i8* %arraydecay, i64 %6, i32 1, i32 %7)
  ret i32 %call
}

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #1

declare i32 @PyObject_IsInstance(%struct._object*, %struct._object*) #1

declare i32 @PyErr_BadArgument() #1

; Function Attrs: nounwind uwtable
define internal i32 @bytes_compare_eq(%struct.PyBytesObject* %a, %struct.PyBytesObject* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.PyBytesObject*, align 8
  %b.addr = alloca %struct.PyBytesObject*, align 8
  %cmp = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct.PyBytesObject* %a, %struct.PyBytesObject** %a.addr, align 8
  store %struct.PyBytesObject* %b, %struct.PyBytesObject** %b.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %1 = bitcast %struct.PyBytesObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %len, align 8
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %b.addr, align 8
  %4 = bitcast %struct.PyBytesObject* %3 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size1, align 8
  %6 = load i64, i64* %len, align 8
  %cmp2 = icmp ne i64 %5, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %ob_sval, i32 0, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %9 = load %struct.PyBytesObject*, %struct.PyBytesObject** %b.addr, align 8
  %ob_sval3 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %9, i32 0, i32 2
  %arrayidx4 = getelementptr [1 x i8], [1 x i8]* %ob_sval3, i32 0, i64 0
  %10 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp ne i32 %conv, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %11 = load %struct.PyBytesObject*, %struct.PyBytesObject** %a.addr, align 8
  %ob_sval10 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval10, i32 0, i32 0
  %12 = load %struct.PyBytesObject*, %struct.PyBytesObject** %b.addr, align 8
  %ob_sval11 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %12, i32 0, i32 2
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval11, i32 0, i32 0
  %13 = load i64, i64* %len, align 8
  %call = call i32 @memcmp(i8* %arraydecay, i8* %arraydecay12, i64 %13) #7
  store i32 %call, i32* %cmp, align 4
  %14 = load i32, i32* %cmp, align 4
  %cmp13 = icmp eq i32 %14, 0
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_getnewargs(%struct.PyBytesObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyBytesObject*, align 8
  store %struct.PyBytesObject* %v, %struct.PyBytesObject** %v.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %v.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %1 = load %struct.PyBytesObject*, %struct.PyBytesObject** %v.addr, align 8
  %2 = bitcast %struct.PyBytesObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i8* %arraydecay, i64 %3)
  ret %struct._object* %call
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
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %2)
  store %struct._object* %call, %struct._object** %newobj, align 8
  %3 = load %struct._object*, %struct._object** %newobj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %newobj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval1 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay2 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval1, i32 0, i32 0
  %8 = load %struct._object*, %struct._object** %self.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size3, align 8
  call void @_Py_bytes_capitalize(i8* %arraydecay, i8* %arraydecay2, i64 %10)
  %11 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
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
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i64* %width, i8* %fillchar)
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
  br i1 %cmp, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %6, @PyBytes_Type
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %10 = load i64, i64* %width, align 8
  %11 = load %struct._object*, %struct._object** %self.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size4, align 8
  %sub = sub i64 %10, %13
  store i64 %sub, i64* %marg, align 8
  %14 = load i64, i64* %marg, align 8
  %div = sdiv i64 %14, 2
  %15 = load i64, i64* %marg, align 8
  %16 = load i64, i64* %width, align 8
  %and = and i64 %15, %16
  %and5 = and i64 %and, 1
  %add = add i64 %div, %and5
  store i64 %add, i64* %left, align 8
  %17 = load %struct._object*, %struct._object** %self.addr, align 8
  %18 = load i64, i64* %left, align 8
  %19 = load i64, i64* %marg, align 8
  %20 = load i64, i64* %left, align 8
  %sub6 = sub i64 %19, %20
  %21 = load i8, i8* %fillchar, align 1
  %call7 = call %struct._object* @pad(%struct._object* %17, i64 %18, i64 %sub6, i8 signext %21)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_count(%struct.PyBytesObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
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
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %str, align 8
  store i64 0, i64* %start, align 8
  store i64 9223372036854775807, i64* %end, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @stringlib_parse_args_finds_byte(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), %struct._object* %1, %struct._object** %sub_obj, i8* %byte, i64* %start, i64* %end)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %sub_obj, align 8
  %tobool1 = icmp ne %struct._object* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %sub_obj, align 8
  %call3 = call i64 @_getbuffer(%struct._object* %3, %struct.bufferinfo* %vsub)
  %cmp = icmp slt i64 %call3, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.2
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsub, i32 0, i32 0
  %4 = load i8*, i8** %buf, align 8
  store i8* %4, i8** %sub, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsub, i32 0, i32 2
  %5 = load i64, i64* %len, align 8
  store i64 %5, i64* %sub_len, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  store i8* %byte, i8** %sub, align 8
  store i64 1, i64* %sub_len, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end.5
  %6 = load i64, i64* %end, align 8
  %7 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %8 = bitcast %struct.PyBytesObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %cmp7 = icmp sgt i64 %6, %9
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.end.6
  %10 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %11 = bitcast %struct.PyBytesObject* %10 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size9, align 8
  store i64 %12, i64* %end, align 8
  br label %if.end.18

if.else.10:                                       ; preds = %if.end.6
  %13 = load i64, i64* %end, align 8
  %cmp11 = icmp slt i64 %13, 0
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.else.10
  %14 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %15 = bitcast %struct.PyBytesObject* %14 to %struct.PyVarObject*
  %ob_size13 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1
  %16 = load i64, i64* %ob_size13, align 8
  %17 = load i64, i64* %end, align 8
  %add = add i64 %17, %16
  store i64 %add, i64* %end, align 8
  %18 = load i64, i64* %end, align 8
  %cmp14 = icmp slt i64 %18, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store i64 0, i64* %end, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.else.10
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.8
  %19 = load i64, i64* %start, align 8
  %cmp19 = icmp slt i64 %19, 0
  br i1 %cmp19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.18
  %20 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %21 = bitcast %struct.PyBytesObject* %20 to %struct.PyVarObject*
  %ob_size21 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size21, align 8
  %23 = load i64, i64* %start, align 8
  %add22 = add i64 %23, %22
  store i64 %add22, i64* %start, align 8
  %24 = load i64, i64* %start, align 8
  %cmp23 = icmp slt i64 %24, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.20
  store i64 0, i64* %start, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.18
  %25 = load i8*, i8** %str, align 8
  %26 = load i64, i64* %start, align 8
  %add.ptr = getelementptr i8, i8* %25, i64 %26
  %27 = load i64, i64* %end, align 8
  %28 = load i64, i64* %start, align 8
  %sub27 = sub i64 %27, %28
  %29 = load i8*, i8** %sub, align 8
  %30 = load i64, i64* %sub_len, align 8
  %call28 = call i64 @stringlib_count(i8* %add.ptr, i64 %sub27, i8* %29, i64 %30, i64 9223372036854775807)
  %call29 = call %struct._object* @PyLong_FromSsize_t(i64 %call28)
  store %struct._object* %call29, %struct._object** %count_obj, align 8
  %31 = load %struct._object*, %struct._object** %sub_obj, align 8
  %tobool30 = icmp ne %struct._object* %31, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.26
  call void @PyBuffer_Release(%struct.bufferinfo* %vsub)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.26
  %32 = load %struct._object*, %struct._object** %count_obj, align 8
  store %struct._object* %32, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.4, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_decode(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
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
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bytes_decode.kwlist, i32 0, i32 0), i8** %encoding, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = load i8*, i8** %encoding, align 8
  %4 = load i8*, i8** %errors, align 8
  %call1 = call %struct._object* @PyUnicode_FromEncodedObject(%struct._object* %2, i8* %3, i8* %4)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_endswith(%struct.PyBytesObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %subobj = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %start, align 8
  store i64 9223372036854775807, i64* %end, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @stringlib_parse_args_finds(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), %struct._object* %0, %struct._object** %subobj, i64* %start, i64* %end)
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
  %8 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load %struct._object*, %struct._object** %subobj, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %13 = load i64, i64* %start, align 8
  %14 = load i64, i64* %end, align 8
  %call3 = call i32 @_bytes_tailmatch(%struct.PyBytesObject* %8, %struct._object* %12, i64 %13, i64 %14, i32 1)
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
  %20 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %21 = load %struct._object*, %struct._object** %subobj, align 8
  %22 = load i64, i64* %start, align 8
  %23 = load i64, i64* %end, align 8
  %call13 = call i32 @_bytes_tailmatch(%struct.PyBytesObject* %20, %struct._object* %21, i64 %22, i64 %23, i32 1)
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
  %call20 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %26, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.83, i32 0, i32 0), i8* %29)
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
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stringlib_expandtabs.kwlist, i32 0, i32 0), i32* %tabsize)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %6
  store i8* %add.ptr, i8** %e, align 8
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyBytesObject*
  %ob_sval1 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %8, i32 0, i32 2
  %arraydecay2 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval1, i32 0, i32 0
  store i8* %arraydecay2, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %e, align 8
  %cmp = icmp ult i8* %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %cmp3 = icmp eq i32 %conv, 9
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %13 = load i32, i32* %tabsize, align 4
  %cmp6 = icmp sgt i32 %13, 0
  br i1 %cmp6, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %if.then.5
  %14 = load i32, i32* %tabsize, align 4
  %conv9 = sext i32 %14 to i64
  %15 = load i64, i64* %j, align 8
  %16 = load i32, i32* %tabsize, align 4
  %conv10 = sext i32 %16 to i64
  %rem = srem i64 %15, %conv10
  %sub = sub i64 %conv9, %rem
  store i64 %sub, i64* %incr, align 8
  %17 = load i64, i64* %j, align 8
  %18 = load i64, i64* %incr, align 8
  %sub11 = sub i64 9223372036854775807, %18
  %cmp12 = icmp sgt i64 %17, %sub11
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.8
  br label %overflow

if.end.15:                                        ; preds = %if.then.8
  %19 = load i64, i64* %incr, align 8
  %20 = load i64, i64* %j, align 8
  %add = add i64 %20, %19
  store i64 %add, i64* %j, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.5
  br label %if.end.35

if.else:                                          ; preds = %for.body
  %21 = load i64, i64* %j, align 8
  %cmp17 = icmp sgt i64 %21, 9223372036854775806
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  br label %overflow

if.end.20:                                        ; preds = %if.else
  %22 = load i64, i64* %j, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %j, align 8
  %23 = load i8*, i8** %p, align 8
  %24 = load i8, i8* %23, align 1
  %conv21 = sext i8 %24 to i32
  %cmp22 = icmp eq i32 %conv21, 10
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %25 = load i8*, i8** %p, align 8
  %26 = load i8, i8* %25, align 1
  %conv24 = sext i8 %26 to i32
  %cmp25 = icmp eq i32 %conv24, 13
  br i1 %cmp25, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.20
  %27 = load i64, i64* %i, align 8
  %28 = load i64, i64* %j, align 8
  %sub28 = sub i64 9223372036854775807, %28
  %cmp29 = icmp sgt i64 %27, %sub28
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.27
  br label %overflow

if.end.32:                                        ; preds = %if.then.27
  %29 = load i64, i64* %j, align 8
  %30 = load i64, i64* %i, align 8
  %add33 = add i64 %30, %29
  store i64 %add33, i64* %i, align 8
  store i64 0, i64* %j, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.32, %lor.lhs.false
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %j, align 8
  %sub36 = sub i64 9223372036854775807, %33
  %cmp37 = icmp sgt i64 %32, %sub36
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.end
  br label %overflow

if.end.40:                                        ; preds = %for.end
  %34 = load i64, i64* %i, align 8
  %35 = load i64, i64* %j, align 8
  %add41 = add i64 %34, %35
  %call42 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add41)
  store %struct._object* %call42, %struct._object** %u, align 8
  %36 = load %struct._object*, %struct._object** %u, align 8
  %tobool43 = icmp ne %struct._object* %36, null
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.end.40
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.45:                                        ; preds = %if.end.40
  store i64 0, i64* %j, align 8
  %37 = load %struct._object*, %struct._object** %u, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyBytesObject*
  %ob_sval46 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %38, i32 0, i32 2
  %arraydecay47 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval46, i32 0, i32 0
  store i8* %arraydecay47, i8** %q, align 8
  %39 = load %struct._object*, %struct._object** %self.addr, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyBytesObject*
  %ob_sval48 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %40, i32 0, i32 2
  %arraydecay49 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval48, i32 0, i32 0
  store i8* %arraydecay49, i8** %p, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.82, %if.end.45
  %41 = load i8*, i8** %p, align 8
  %42 = load i8*, i8** %e, align 8
  %cmp51 = icmp ult i8* %41, %42
  br i1 %cmp51, label %for.body.53, label %for.end.84

for.body.53:                                      ; preds = %for.cond.50
  %43 = load i8*, i8** %p, align 8
  %44 = load i8, i8* %43, align 1
  %conv54 = sext i8 %44 to i32
  %cmp55 = icmp eq i32 %conv54, 9
  br i1 %cmp55, label %if.then.57, label %if.else.69

if.then.57:                                       ; preds = %for.body.53
  %45 = load i32, i32* %tabsize, align 4
  %cmp58 = icmp sgt i32 %45, 0
  br i1 %cmp58, label %if.then.60, label %if.end.68

if.then.60:                                       ; preds = %if.then.57
  %46 = load i32, i32* %tabsize, align 4
  %conv61 = sext i32 %46 to i64
  %47 = load i64, i64* %j, align 8
  %48 = load i32, i32* %tabsize, align 4
  %conv62 = sext i32 %48 to i64
  %rem63 = srem i64 %47, %conv62
  %sub64 = sub i64 %conv61, %rem63
  store i64 %sub64, i64* %i, align 8
  %49 = load i64, i64* %i, align 8
  %50 = load i64, i64* %j, align 8
  %add65 = add i64 %50, %49
  store i64 %add65, i64* %j, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.60
  %51 = load i64, i64* %i, align 8
  %dec = add i64 %51, -1
  store i64 %dec, i64* %i, align 8
  %tobool66 = icmp ne i64 %51, 0
  br i1 %tobool66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load i8*, i8** %q, align 8
  %incdec.ptr67 = getelementptr i8, i8* %52, i32 1
  store i8* %incdec.ptr67, i8** %q, align 8
  store i8 32, i8* %52, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.68

if.end.68:                                        ; preds = %while.end, %if.then.57
  br label %if.end.81

if.else.69:                                       ; preds = %for.body.53
  %53 = load i64, i64* %j, align 8
  %inc70 = add i64 %53, 1
  store i64 %inc70, i64* %j, align 8
  %54 = load i8*, i8** %p, align 8
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %q, align 8
  %incdec.ptr71 = getelementptr i8, i8* %56, i32 1
  store i8* %incdec.ptr71, i8** %q, align 8
  store i8 %55, i8* %56, align 1
  %57 = load i8*, i8** %p, align 8
  %58 = load i8, i8* %57, align 1
  %conv72 = sext i8 %58 to i32
  %cmp73 = icmp eq i32 %conv72, 10
  br i1 %cmp73, label %if.then.79, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %if.else.69
  %59 = load i8*, i8** %p, align 8
  %60 = load i8, i8* %59, align 1
  %conv76 = sext i8 %60 to i32
  %cmp77 = icmp eq i32 %conv76, 13
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %lor.lhs.false.75, %if.else.69
  store i64 0, i64* %j, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %lor.lhs.false.75
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.68
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %61 = load i8*, i8** %p, align 8
  %incdec.ptr83 = getelementptr i8, i8* %61, i32 1
  store i8* %incdec.ptr83, i8** %p, align 8
  br label %for.cond.50

for.end.84:                                       ; preds = %for.cond.50
  %62 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %62, %struct._object** %retval
  br label %return

overflow:                                         ; preds = %if.then.39, %if.then.31, %if.then.19, %if.then.14
  %63 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %overflow, %for.end.84, %if.then.44, %if.then
  %64 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %64
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_find(%struct.PyBytesObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @bytes_find_internal(%struct.PyBytesObject* %0, %struct._object* %1, i32 1)
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
define internal %struct._object* @bytes_fromhex(%struct._object* %cls, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %newstring = alloca %struct._object*, align 8
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
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), %struct._object** %hexobj)
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
  %call30 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %27)
  store %struct._object* %call30, %struct._object** %newstring, align 8
  %28 = load %struct._object*, %struct._object** %newstring, align 8
  %tobool31 = icmp ne %struct._object* %28, null
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %cond.end.28
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %cond.end.28
  %29 = load %struct._object*, %struct._object** %newstring, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %30, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %buf, align 8
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %31 = load i64, i64* %i, align 8
  %32 = load i64, i64* %hexlen, align 8
  %cmp = icmp slt i64 %31, %32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %33 = load i32, i32* %kind, align 4
  %cmp34 = icmp eq i32 %33, 1
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %while.cond
  %34 = load i64, i64* %i, align 8
  %35 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %35, i64 %34
  %36 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %36 to i32
  br label %cond.end.46

cond.false.36:                                    ; preds = %while.cond
  %37 = load i32, i32* %kind, align 4
  %cmp37 = icmp eq i32 %37, 2
  br i1 %cmp37, label %cond.true.39, label %cond.false.42

cond.true.39:                                     ; preds = %cond.false.36
  %38 = load i64, i64* %i, align 8
  %39 = load i8*, i8** %data, align 8
  %40 = bitcast i8* %39 to i16*
  %arrayidx40 = getelementptr i16, i16* %40, i64 %38
  %41 = load i16, i16* %arrayidx40, align 2
  %conv41 = zext i16 %41 to i32
  br label %cond.end.44

cond.false.42:                                    ; preds = %cond.false.36
  %42 = load i64, i64* %i, align 8
  %43 = load i8*, i8** %data, align 8
  %44 = bitcast i8* %43 to i32*
  %arrayidx43 = getelementptr i32, i32* %44, i64 %42
  %45 = load i32, i32* %arrayidx43, align 4
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.42, %cond.true.39
  %cond45 = phi i32 [ %conv41, %cond.true.39 ], [ %45, %cond.false.42 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end.44, %cond.true.35
  %cond47 = phi i32 [ %conv, %cond.true.35 ], [ %cond45, %cond.end.44 ]
  %cmp48 = icmp eq i32 %cond47, 32
  br i1 %cmp48, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end.46
  %46 = load i64, i64* %i, align 8
  %inc = add i64 %46, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %cond.end.46
  %47 = load i64, i64* %i, align 8
  %48 = load i64, i64* %hexlen, align 8
  %cmp50 = icmp sge i64 %47, %48
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %while.end
  br label %for.end

if.end.53:                                        ; preds = %while.end
  %49 = load i32, i32* %kind, align 4
  %cmp54 = icmp eq i32 %49, 1
  br i1 %cmp54, label %cond.true.56, label %cond.false.59

cond.true.56:                                     ; preds = %if.end.53
  %50 = load i64, i64* %i, align 8
  %51 = load i8*, i8** %data, align 8
  %arrayidx57 = getelementptr i8, i8* %51, i64 %50
  %52 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %52 to i32
  br label %cond.end.69

cond.false.59:                                    ; preds = %if.end.53
  %53 = load i32, i32* %kind, align 4
  %cmp60 = icmp eq i32 %53, 2
  br i1 %cmp60, label %cond.true.62, label %cond.false.65

cond.true.62:                                     ; preds = %cond.false.59
  %54 = load i64, i64* %i, align 8
  %55 = load i8*, i8** %data, align 8
  %56 = bitcast i8* %55 to i16*
  %arrayidx63 = getelementptr i16, i16* %56, i64 %54
  %57 = load i16, i16* %arrayidx63, align 2
  %conv64 = zext i16 %57 to i32
  br label %cond.end.67

cond.false.65:                                    ; preds = %cond.false.59
  %58 = load i64, i64* %i, align 8
  %59 = load i8*, i8** %data, align 8
  %60 = bitcast i8* %59 to i32*
  %arrayidx66 = getelementptr i32, i32* %60, i64 %58
  %61 = load i32, i32* %arrayidx66, align 4
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.65, %cond.true.62
  %cond68 = phi i32 [ %conv64, %cond.true.62 ], [ %61, %cond.false.65 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.true.56
  %cond70 = phi i32 [ %conv58, %cond.true.56 ], [ %cond68, %cond.end.67 ]
  %call71 = call i32 @hex_digit_to_int(i32 %cond70)
  store i32 %call71, i32* %top, align 4
  %62 = load i32, i32* %kind, align 4
  %cmp72 = icmp eq i32 %62, 1
  br i1 %cmp72, label %cond.true.74, label %cond.false.77

cond.true.74:                                     ; preds = %cond.end.69
  %63 = load i64, i64* %i, align 8
  %add = add i64 %63, 1
  %64 = load i8*, i8** %data, align 8
  %arrayidx75 = getelementptr i8, i8* %64, i64 %add
  %65 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %65 to i32
  br label %cond.end.89

cond.false.77:                                    ; preds = %cond.end.69
  %66 = load i32, i32* %kind, align 4
  %cmp78 = icmp eq i32 %66, 2
  br i1 %cmp78, label %cond.true.80, label %cond.false.84

cond.true.80:                                     ; preds = %cond.false.77
  %67 = load i64, i64* %i, align 8
  %add81 = add i64 %67, 1
  %68 = load i8*, i8** %data, align 8
  %69 = bitcast i8* %68 to i16*
  %arrayidx82 = getelementptr i16, i16* %69, i64 %add81
  %70 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %70 to i32
  br label %cond.end.87

cond.false.84:                                    ; preds = %cond.false.77
  %71 = load i64, i64* %i, align 8
  %add85 = add i64 %71, 1
  %72 = load i8*, i8** %data, align 8
  %73 = bitcast i8* %72 to i32*
  %arrayidx86 = getelementptr i32, i32* %73, i64 %add85
  %74 = load i32, i32* %arrayidx86, align 4
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.84, %cond.true.80
  %cond88 = phi i32 [ %conv83, %cond.true.80 ], [ %74, %cond.false.84 ]
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end.87, %cond.true.74
  %cond90 = phi i32 [ %conv76, %cond.true.74 ], [ %cond88, %cond.end.87 ]
  %call91 = call i32 @hex_digit_to_int(i32 %cond90)
  store i32 %call91, i32* %bot, align 4
  %75 = load i32, i32* %top, align 4
  %cmp92 = icmp eq i32 %75, -1
  br i1 %cmp92, label %if.then.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.89
  %76 = load i32, i32* %bot, align 4
  %cmp94 = icmp eq i32 %76, -1
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %lor.lhs.false, %cond.end.89
  %77 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %78 = load i64, i64* %i, align 8
  %call97 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %77, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.89, i32 0, i32 0), i64 %78)
  br label %error

if.end.98:                                        ; preds = %lor.lhs.false
  %79 = load i32, i32* %top, align 4
  %shl = shl i32 %79, 4
  %80 = load i32, i32* %bot, align 4
  %add99 = add i32 %shl, %80
  %conv100 = trunc i32 %add99 to i8
  %81 = load i64, i64* %j, align 8
  %inc101 = add i64 %81, 1
  store i64 %inc101, i64* %j, align 8
  %82 = load i8*, i8** %buf, align 8
  %arrayidx102 = getelementptr i8, i8* %82, i64 %81
  store i8 %conv100, i8* %arrayidx102, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.98
  %83 = load i64, i64* %i, align 8
  %add103 = add i64 %83, 2
  store i64 %add103, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.52, %for.cond
  %84 = load i64, i64* %j, align 8
  %85 = load i64, i64* %byteslen, align 8
  %cmp104 = icmp ne i64 %84, %85
  br i1 %cmp104, label %land.lhs.true, label %if.end.110

land.lhs.true:                                    ; preds = %for.end
  %86 = load i64, i64* %j, align 8
  %call106 = call i32 @_PyBytes_Resize(%struct._object** %newstring, i64 %86)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %land.lhs.true
  br label %error

if.end.110:                                       ; preds = %land.lhs.true, %for.end
  %87 = load %struct._object*, %struct._object** %newstring, align 8
  store %struct._object* %87, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.109, %if.then.96
  br label %do.body

do.body:                                          ; preds = %error
  %88 = load %struct._object*, %struct._object** %newstring, align 8
  store %struct._object* %88, %struct._object** %_py_xdecref_tmp, align 8
  %89 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp111 = icmp ne %struct._object* %89, null
  br i1 %cmp111, label %if.then.113, label %if.end.119

if.then.113:                                      ; preds = %do.body
  br label %do.body.114

do.body.114:                                      ; preds = %if.then.113
  %90 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %90, %struct._object** %_py_decref_tmp, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %92, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp115 = icmp ne i64 %dec, 0
  br i1 %cmp115, label %if.then.117, label %if.else

if.then.117:                                      ; preds = %do.body.114
  br label %if.end.118

if.else:                                          ; preds = %do.body.114
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %95(%struct._object* %96)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else, %if.then.117
  br label %do.end

do.end:                                           ; preds = %if.end.118
  br label %if.end.119

if.end.119:                                       ; preds = %do.end, %do.body
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.120, %if.end.110, %if.then.32, %if.then.4, %if.then
  %97 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %97
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_index(%struct.PyBytesObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @bytes_find_internal(%struct.PyBytesObject* %0, %struct._object* %1, i32 1)
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
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0))
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
define internal %struct._object* @stringlib_isalnum(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @_Py_bytes_isalnum(i8* %arraydecay, i64 %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_isalpha(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @_Py_bytes_isalpha(i8* %arraydecay, i64 %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_isdigit(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @_Py_bytes_isdigit(i8* %arraydecay, i64 %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_islower(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @_Py_bytes_islower(i8* %arraydecay, i64 %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_isspace(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @_Py_bytes_isspace(i8* %arraydecay, i64 %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_istitle(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @_Py_bytes_istitle(i8* %arraydecay, i64 %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @stringlib_isupper(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @_Py_bytes_isupper(i8* %arraydecay, i64 %4)
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
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0), i64* %width, i8* %fillchar)
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
  br i1 %cmp, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %6, @PyBytes_Type
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = load i64, i64* %width, align 8
  %12 = load %struct._object*, %struct._object** %self.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size4, align 8
  %sub = sub i64 %11, %14
  %15 = load i8, i8* %fillchar, align 1
  %call5 = call %struct._object* @pad(%struct._object* %10, i64 0, i64 %sub, i8 signext %15)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
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
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %2)
  store %struct._object* %call, %struct._object** %newobj, align 8
  %3 = load %struct._object*, %struct._object** %newobj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %newobj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval1 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay2 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval1, i32 0, i32 0
  %8 = load %struct._object*, %struct._object** %self.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size3, align 8
  call void @_Py_bytes_lower(i8* %arraydecay, i8* %arraydecay2, i64 %10)
  %11 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_lstrip(%struct.PyBytesObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %call = call %struct._object* @do_strip(%struct.PyBytesObject* %3, i32 0)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call %struct._object* @do_argstrip(%struct.PyBytesObject* %4, i32 0, %struct._object* %5)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_maketrans(%struct._object* %null, %struct._object* %args) #0 {
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
define internal %struct._object* @bytes_partition(%struct.PyBytesObject* %self, %struct._object* %sep_obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %sep_obj.addr = alloca %struct._object*, align 8
  %sep = alloca i8*, align 8
  %sep_len = alloca i64, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %sep_obj, %struct._object** %sep_obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %sep, align 8
  %5 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  store i64 %7, i64* %sep_len, align 8
  br label %if.end.2

if.else:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %call = call i32 @PyObject_AsCharBuffer(%struct._object* %8, i8** %sep, i64* %sep_len)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %if.then
  %9 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %10 = bitcast %struct.PyBytesObject* %9 to %struct._object*
  %11 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval3 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %11, i32 0, i32 2
  %arraydecay4 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval3, i32 0, i32 0
  %12 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %13 = bitcast %struct.PyBytesObject* %12 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size5, align 8
  %15 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %16 = load i8*, i8** %sep, align 8
  %17 = load i64, i64* %sep_len, align 8
  %call6 = call %struct._object* @stringlib_partition(%struct._object* %10, i8* %arraydecay4, i64 %14, %struct._object* %15, i8* %16, i64 %17)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_replace(%struct.PyBytesObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %count = alloca i64, align 8
  %from = alloca %struct._object*, align 8
  %to = alloca %struct._object*, align 8
  %from_s = alloca i8*, align 8
  %to_s = alloca i8*, align 8
  %from_len = alloca i64, align 8
  %to_len = alloca i64, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %count, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), %struct._object** %from, %struct._object** %to, i64* %count)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %from, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %from, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %from_s, align 8
  %6 = load %struct._object*, %struct._object** %from, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  store i64 %8, i64* %from_len, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %from, align 8
  %call2 = call i32 @PyObject_AsCharBuffer(%struct._object* %9, i8** %from_s, i64* %from_len)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then.1
  %10 = load %struct._object*, %struct._object** %to, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_flags8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19
  %12 = load i64, i64* %tp_flags8, align 8
  %and9 = and i64 %12, 134217728
  %cmp10 = icmp ne i64 %and9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** %to, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyBytesObject*
  %ob_sval12 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %14, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval12, i32 0, i32 0
  store i8* %arraydecay13, i8** %to_s, align 8
  %15 = load %struct._object*, %struct._object** %to, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*
  %ob_size14 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size14, align 8
  store i64 %17, i64* %to_len, align 8
  br label %if.end.20

if.else.15:                                       ; preds = %if.end.6
  %18 = load %struct._object*, %struct._object** %to, align 8
  %call16 = call i32 @PyObject_AsCharBuffer(%struct._object* %18, i8** %to_s, i64* %to_len)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.else.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.11
  %19 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %20 = load i8*, i8** %from_s, align 8
  %21 = load i64, i64* %from_len, align 8
  %22 = load i8*, i8** %to_s, align 8
  %23 = load i64, i64* %to_len, align 8
  %24 = load i64, i64* %count, align 8
  %call21 = call %struct.PyBytesObject* @replace(%struct.PyBytesObject* %19, i8* %20, i64 %21, i8* %22, i64 %23, i64 %24)
  %25 = bitcast %struct.PyBytesObject* %call21 to %struct._object*
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.18, %if.then.4, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_rfind(%struct.PyBytesObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @bytes_find_internal(%struct.PyBytesObject* %0, %struct._object* %1, i32 -1)
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
define internal %struct._object* @bytes_rindex(%struct.PyBytesObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %result = alloca i64, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @bytes_find_internal(%struct.PyBytesObject* %0, %struct._object* %1, i32 -1)
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
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0))
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
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i64* %width, i8* %fillchar)
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
  br i1 %cmp, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %6, @PyBytes_Type
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = load i64, i64* %width, align 8
  %12 = load %struct._object*, %struct._object** %self.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size4, align 8
  %sub = sub i64 %11, %14
  %15 = load i8, i8* %fillchar, align 1
  %call5 = call %struct._object* @pad(%struct._object* %10, i64 %sub, i64 0, i8 signext %15)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_rpartition(%struct.PyBytesObject* %self, %struct._object* %sep_obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %sep_obj.addr = alloca %struct._object*, align 8
  %sep = alloca i8*, align 8
  %sep_len = alloca i64, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %sep_obj, %struct._object** %sep_obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %sep, align 8
  %5 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  store i64 %7, i64* %sep_len, align 8
  br label %if.end.2

if.else:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %call = call i32 @PyObject_AsCharBuffer(%struct._object* %8, i8** %sep, i64* %sep_len)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %if.then
  %9 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %10 = bitcast %struct.PyBytesObject* %9 to %struct._object*
  %11 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval3 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %11, i32 0, i32 2
  %arraydecay4 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval3, i32 0, i32 0
  %12 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %13 = bitcast %struct.PyBytesObject* %12 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size5, align 8
  %15 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %16 = load i8*, i8** %sep, align 8
  %17 = load i64, i64* %sep_len, align 8
  %call6 = call %struct._object* @stringlib_rpartition(%struct._object* %10, i8* %arraydecay4, i64 %14, %struct._object* %15, i8* %16, i64 %17)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_rsplit(%struct.PyBytesObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %n = alloca i64, align 8
  %maxsplit = alloca i64, align 8
  %s = alloca i8*, align 8
  %sub = alloca i8*, align 8
  %vsub = alloca %struct.bufferinfo, align 8
  %list = alloca %struct._object*, align 8
  %subobj = alloca %struct._object*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %1 = bitcast %struct.PyBytesObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %len, align 8
  store i64 -1, i64* %maxsplit, align 8
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %s, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %subobj, align 8
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %4, %struct._object* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bytes_rsplit.kwlist, i32 0, i32 0), %struct._object** %subobj, i64* %maxsplit)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %maxsplit, align 8
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i64 9223372036854775807, i64* %maxsplit, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %7 = load %struct._object*, %struct._object** %subobj, align 8
  %cmp3 = icmp eq %struct._object* %7, @_Py_NoneStruct
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end.2
  %8 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %9 = bitcast %struct.PyBytesObject* %8 to %struct._object*
  %10 = load i8*, i8** %s, align 8
  %11 = load i64, i64* %len, align 8
  %12 = load i64, i64* %maxsplit, align 8
  %call5 = call %struct._object* @stringlib_rsplit_whitespace(%struct._object* %9, i8* %10, i64 %11, i64 %12)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %13 = load %struct._object*, %struct._object** %subobj, align 8
  %call7 = call i64 @_getbuffer(%struct._object* %13, %struct.bufferinfo* %vsub)
  %cmp8 = icmp slt i64 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsub, i32 0, i32 0
  %14 = load i8*, i8** %buf, align 8
  store i8* %14, i8** %sub, align 8
  %len11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsub, i32 0, i32 2
  %15 = load i64, i64* %len11, align 8
  store i64 %15, i64* %n, align 8
  %16 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %17 = bitcast %struct.PyBytesObject* %16 to %struct._object*
  %18 = load i8*, i8** %s, align 8
  %19 = load i64, i64* %len, align 8
  %20 = load i8*, i8** %sub, align 8
  %21 = load i64, i64* %n, align 8
  %22 = load i64, i64* %maxsplit, align 8
  %call12 = call %struct._object* @stringlib_rsplit(%struct._object* %17, i8* %18, i64 %19, i8* %20, i64 %21, i64 %22)
  store %struct._object* %call12, %struct._object** %list, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %vsub)
  %23 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.4, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_rstrip(%struct.PyBytesObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %call = call %struct._object* @do_strip(%struct.PyBytesObject* %3, i32 1)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call %struct._object* @do_argstrip(%struct.PyBytesObject* %4, i32 1, %struct._object* %5)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_split(%struct.PyBytesObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %n = alloca i64, align 8
  %maxsplit = alloca i64, align 8
  %s = alloca i8*, align 8
  %sub = alloca i8*, align 8
  %vsub = alloca %struct.bufferinfo, align 8
  %list = alloca %struct._object*, align 8
  %subobj = alloca %struct._object*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %1 = bitcast %struct.PyBytesObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %len, align 8
  store i64 -1, i64* %maxsplit, align 8
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %s, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %subobj, align 8
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %4, %struct._object* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bytes_split.kwlist, i32 0, i32 0), %struct._object** %subobj, i64* %maxsplit)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %maxsplit, align 8
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i64 9223372036854775807, i64* %maxsplit, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %7 = load %struct._object*, %struct._object** %subobj, align 8
  %cmp3 = icmp eq %struct._object* %7, @_Py_NoneStruct
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end.2
  %8 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %9 = bitcast %struct.PyBytesObject* %8 to %struct._object*
  %10 = load i8*, i8** %s, align 8
  %11 = load i64, i64* %len, align 8
  %12 = load i64, i64* %maxsplit, align 8
  %call5 = call %struct._object* @stringlib_split_whitespace(%struct._object* %9, i8* %10, i64 %11, i64 %12)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %13 = load %struct._object*, %struct._object** %subobj, align 8
  %call7 = call i64 @_getbuffer(%struct._object* %13, %struct.bufferinfo* %vsub)
  %cmp8 = icmp slt i64 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsub, i32 0, i32 0
  %14 = load i8*, i8** %buf, align 8
  store i8* %14, i8** %sub, align 8
  %len11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsub, i32 0, i32 2
  %15 = load i64, i64* %len11, align 8
  store i64 %15, i64* %n, align 8
  %16 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %17 = bitcast %struct.PyBytesObject* %16 to %struct._object*
  %18 = load i8*, i8** %s, align 8
  %19 = load i64, i64* %len, align 8
  %20 = load i8*, i8** %sub, align 8
  %21 = load i64, i64* %n, align 8
  %22 = load i64, i64* %maxsplit, align 8
  %call12 = call %struct._object* @stringlib_split(%struct._object* %17, i8* %18, i64 %19, i8* %20, i64 %21, i64 %22)
  store %struct._object* %call12, %struct._object** %list, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %vsub)
  %23 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.4, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_splitlines(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
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
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.104, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @bytes_splitlines.kwlist, i32 0, i32 0), i32* %keepends)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %8 = load i32, i32* %keepends, align 4
  %call1 = call %struct._object* @stringlib_splitlines(%struct._object* %2, i8* %arraydecay, i64 %7, i32 %8)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_startswith(%struct.PyBytesObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %subobj = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %start, align 8
  store i64 9223372036854775807, i64* %end, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @stringlib_parse_args_finds(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), %struct._object* %0, %struct._object** %subobj, i64* %start, i64* %end)
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
  %8 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load %struct._object*, %struct._object** %subobj, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %13 = load i64, i64* %start, align 8
  %14 = load i64, i64* %end, align 8
  %call3 = call i32 @_bytes_tailmatch(%struct.PyBytesObject* %8, %struct._object* %12, i64 %13, i64 %14, i32 -1)
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
  %20 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %21 = load %struct._object*, %struct._object** %subobj, align 8
  %22 = load i64, i64* %start, align 8
  %23 = load i64, i64* %end, align 8
  %call13 = call i32 @_bytes_tailmatch(%struct.PyBytesObject* %20, %struct._object* %21, i64 %22, i64 %23, i32 -1)
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
  %call20 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %26, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.105, i32 0, i32 0), i8* %29)
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
define internal %struct._object* @bytes_strip(%struct.PyBytesObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %call = call %struct._object* @do_strip(%struct.PyBytesObject* %3, i32 2)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call %struct._object* @do_argstrip(%struct.PyBytesObject* %4, i32 2, %struct._object* %5)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
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
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %2)
  store %struct._object* %call, %struct._object** %newobj, align 8
  %3 = load %struct._object*, %struct._object** %newobj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %newobj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval1 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay2 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval1, i32 0, i32 0
  %8 = load %struct._object*, %struct._object** %self.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size3, align 8
  call void @_Py_bytes_swapcase(i8* %arraydecay, i8* %arraydecay2, i64 %10)
  %11 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
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
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %2)
  store %struct._object* %call, %struct._object** %newobj, align 8
  %3 = load %struct._object*, %struct._object** %newobj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %newobj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval1 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay2 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval1, i32 0, i32 0
  %8 = load %struct._object*, %struct._object** %self.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size3, align 8
  call void @_Py_bytes_title(i8* %arraydecay, i8* %arraydecay2, i64 %10)
  %11 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_translate(%struct.PyBytesObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %input = alloca i8*, align 8
  %output = alloca i8*, align 8
  %table = alloca i8*, align 8
  %i = alloca i64, align 8
  %c = alloca i64, align 8
  %changed = alloca i64, align 8
  %input_obj = alloca %struct._object*, align 8
  %output_start = alloca i8*, align 8
  %del_table = alloca i8*, align 8
  %inlen = alloca i64, align 8
  %tablen = alloca i64, align 8
  %dellen = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %trans_table = alloca [256 x i32], align 16
  %tableobj = alloca %struct._object*, align 8
  %delobj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp146 = alloca %struct._object*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %changed, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %1 = bitcast %struct.PyBytesObject* %0 to %struct._object*
  store %struct._object* %1, %struct._object** %input_obj, align 8
  store i8* null, i8** %del_table, align 8
  store i64 0, i64* %dellen, align 8
  store %struct._object* null, %struct._object** %delobj, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i64 1, i64 2, %struct._object** %tableobj, %struct._object** %delobj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %tableobj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %tableobj, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %table, align 8
  %8 = load %struct._object*, %struct._object** %tableobj, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size, align 8
  store i64 %10, i64* %tablen, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %tableobj, align 8
  %cmp2 = icmp eq %struct._object* %11, @_Py_NoneStruct
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i8* null, i8** %table, align 8
  store i64 256, i64* %tablen, align 8
  br label %if.end.9

if.else.4:                                        ; preds = %if.else
  %12 = load %struct._object*, %struct._object** %tableobj, align 8
  %call5 = call i32 @PyObject_AsCharBuffer(%struct._object* %12, i8** %table, i64* %tablen)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.else.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.3
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.1
  %13 = load i64, i64* %tablen, align 8
  %cmp11 = icmp ne i64 %13, 256
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.106, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  %15 = load %struct._object*, %struct._object** %delobj, align 8
  %cmp14 = icmp ne %struct._object* %15, null
  br i1 %cmp14, label %if.then.15, label %if.else.30

if.then.15:                                       ; preds = %if.end.13
  %16 = load %struct._object*, %struct._object** %delobj, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_flags17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 19
  %18 = load i64, i64* %tp_flags17, align 8
  %and18 = and i64 %18, 134217728
  %cmp19 = icmp ne i64 %and18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.24

if.then.20:                                       ; preds = %if.then.15
  %19 = load %struct._object*, %struct._object** %delobj, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyBytesObject*
  %ob_sval21 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %20, i32 0, i32 2
  %arraydecay22 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval21, i32 0, i32 0
  store i8* %arraydecay22, i8** %del_table, align 8
  %21 = load %struct._object*, %struct._object** %delobj, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyVarObject*
  %ob_size23 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %22, i32 0, i32 1
  %23 = load i64, i64* %ob_size23, align 8
  store i64 %23, i64* %dellen, align 8
  br label %if.end.29

if.else.24:                                       ; preds = %if.then.15
  %24 = load %struct._object*, %struct._object** %delobj, align 8
  %call25 = call i32 @PyObject_AsCharBuffer(%struct._object* %24, i8** %del_table, i64* %dellen)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else.24
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.else.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.20
  br label %if.end.31

if.else.30:                                       ; preds = %if.end.13
  store i8* null, i8** %del_table, align 8
  store i64 0, i64* %dellen, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.end.29
  %25 = load %struct._object*, %struct._object** %input_obj, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyVarObject*
  %ob_size32 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %26, i32 0, i32 1
  %27 = load i64, i64* %ob_size32, align 8
  store i64 %27, i64* %inlen, align 8
  %28 = load i64, i64* %inlen, align 8
  %call33 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %28)
  store %struct._object* %call33, %struct._object** %result, align 8
  %29 = load %struct._object*, %struct._object** %result, align 8
  %cmp34 = icmp eq %struct._object* %29, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %if.end.31
  %30 = load %struct._object*, %struct._object** %result, align 8
  %call37 = call i8* @PyBytes_AsString(%struct._object* %30)
  store i8* %call37, i8** %output, align 8
  store i8* %call37, i8** %output_start, align 8
  %31 = load %struct._object*, %struct._object** %input_obj, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyBytesObject*
  %ob_sval38 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %32, i32 0, i32 2
  %arraydecay39 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval38, i32 0, i32 0
  store i8* %arraydecay39, i8** %input, align 8
  %33 = load i64, i64* %dellen, align 8
  %cmp40 = icmp eq i64 %33, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end.70

land.lhs.true:                                    ; preds = %if.end.36
  %34 = load i8*, i8** %table, align 8
  %cmp41 = icmp ne i8* %34, null
  br i1 %cmp41, label %if.then.42, label %if.end.70

if.then.42:                                       ; preds = %land.lhs.true
  %35 = load i64, i64* %inlen, align 8
  store i64 %35, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.55, %if.then.42
  %36 = load i64, i64* %i, align 8
  %dec = add i64 %36, -1
  store i64 %dec, i64* %i, align 8
  %cmp43 = icmp sge i64 %dec, 0
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i8*, i8** %input, align 8
  %incdec.ptr = getelementptr i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %input, align 8
  %38 = load i8, i8* %37, align 1
  %conv = sext i8 %38 to i32
  %and44 = and i32 %conv, 255
  %conv45 = trunc i32 %and44 to i8
  %conv46 = zext i8 %conv45 to i64
  store i64 %conv46, i64* %c, align 8
  %39 = load i64, i64* %c, align 8
  %40 = load i8*, i8** %table, align 8
  %arrayidx = getelementptr i8, i8* %40, i64 %39
  %41 = load i8, i8* %arrayidx, align 1
  %42 = load i8*, i8** %output, align 8
  %incdec.ptr47 = getelementptr i8, i8* %42, i32 1
  store i8* %incdec.ptr47, i8** %output, align 8
  store i8 %41, i8* %42, align 1
  %conv48 = sext i8 %41 to i32
  %and49 = and i32 %conv48, 255
  %conv50 = trunc i32 %and49 to i8
  %conv51 = zext i8 %conv50 to i64
  %43 = load i64, i64* %c, align 8
  %cmp52 = icmp ne i64 %conv51, %43
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.body
  store i64 1, i64* %changed, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i64, i64* %changed, align 8
  %tobool56 = icmp ne i64 %44, 0
  br i1 %tobool56, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %45 = load %struct._object*, %struct._object** %input_obj, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %cmp58 = icmp eq %struct._typeobject* %46, @PyBytes_Type
  br i1 %cmp58, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %lor.lhs.false, %for.end
  %47 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %47, %struct._object** %retval
  br label %return

if.end.61:                                        ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.61
  %48 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt, align 8
  %dec62 = add i64 %50, -1
  store i64 %dec62, i64* %ob_refcnt, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body
  br label %if.end.68

if.else.66:                                       ; preds = %do.body
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %53(%struct._object* %54)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end

do.end:                                           ; preds = %if.end.68
  %55 = load %struct._object*, %struct._object** %input_obj, align 8
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt69, align 8
  %inc = add i64 %56, 1
  store i64 %inc, i64* %ob_refcnt69, align 8
  %57 = load %struct._object*, %struct._object** %input_obj, align 8
  store %struct._object* %57, %struct._object** %retval
  br label %return

if.end.70:                                        ; preds = %land.lhs.true, %if.end.36
  %58 = load i8*, i8** %table, align 8
  %cmp71 = icmp eq i8* %58, null
  br i1 %cmp71, label %if.then.73, label %if.else.84

if.then.73:                                       ; preds = %if.end.70
  store i64 0, i64* %i, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc, %if.then.73
  %59 = load i64, i64* %i, align 8
  %cmp75 = icmp slt i64 %59, 256
  br i1 %cmp75, label %for.body.77, label %for.end.83

for.body.77:                                      ; preds = %for.cond.74
  %60 = load i64, i64* %i, align 8
  %and78 = and i64 %60, 255
  %conv79 = trunc i64 %and78 to i8
  %conv80 = zext i8 %conv79 to i32
  %61 = load i64, i64* %i, align 8
  %arrayidx81 = getelementptr [256 x i32], [256 x i32]* %trans_table, i32 0, i64 %61
  store i32 %conv80, i32* %arrayidx81, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.77
  %62 = load i64, i64* %i, align 8
  %inc82 = add i64 %62, 1
  store i64 %inc82, i64* %i, align 8
  br label %for.cond.74

for.end.83:                                       ; preds = %for.cond.74
  br label %if.end.98

if.else.84:                                       ; preds = %if.end.70
  store i64 0, i64* %i, align 8
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.95, %if.else.84
  %63 = load i64, i64* %i, align 8
  %cmp86 = icmp slt i64 %63, 256
  br i1 %cmp86, label %for.body.88, label %for.end.97

for.body.88:                                      ; preds = %for.cond.85
  %64 = load i64, i64* %i, align 8
  %65 = load i8*, i8** %table, align 8
  %arrayidx89 = getelementptr i8, i8* %65, i64 %64
  %66 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %66 to i32
  %and91 = and i32 %conv90, 255
  %conv92 = trunc i32 %and91 to i8
  %conv93 = zext i8 %conv92 to i32
  %67 = load i64, i64* %i, align 8
  %arrayidx94 = getelementptr [256 x i32], [256 x i32]* %trans_table, i32 0, i64 %67
  store i32 %conv93, i32* %arrayidx94, align 4
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.88
  %68 = load i64, i64* %i, align 8
  %inc96 = add i64 %68, 1
  store i64 %inc96, i64* %i, align 8
  br label %for.cond.85

for.end.97:                                       ; preds = %for.cond.85
  br label %if.end.98

if.end.98:                                        ; preds = %for.end.97, %for.end.83
  store i64 0, i64* %i, align 8
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.109, %if.end.98
  %69 = load i64, i64* %i, align 8
  %70 = load i64, i64* %dellen, align 8
  %cmp100 = icmp slt i64 %69, %70
  br i1 %cmp100, label %for.body.102, label %for.end.111

for.body.102:                                     ; preds = %for.cond.99
  %71 = load i64, i64* %i, align 8
  %72 = load i8*, i8** %del_table, align 8
  %arrayidx103 = getelementptr i8, i8* %72, i64 %71
  %73 = load i8, i8* %arrayidx103, align 1
  %conv104 = sext i8 %73 to i32
  %and105 = and i32 %conv104, 255
  %conv106 = trunc i32 %and105 to i8
  %conv107 = zext i8 %conv106 to i32
  %idxprom = sext i32 %conv107 to i64
  %arrayidx108 = getelementptr [256 x i32], [256 x i32]* %trans_table, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx108, align 4
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.102
  %74 = load i64, i64* %i, align 8
  %inc110 = add i64 %74, 1
  store i64 %inc110, i64* %i, align 8
  br label %for.cond.99

for.end.111:                                      ; preds = %for.cond.99
  %75 = load i64, i64* %inlen, align 8
  store i64 %75, i64* %i, align 8
  br label %for.cond.112

for.cond.112:                                     ; preds = %if.end.137, %if.then.135, %for.end.111
  %76 = load i64, i64* %i, align 8
  %dec113 = add i64 %76, -1
  store i64 %dec113, i64* %i, align 8
  %cmp114 = icmp sge i64 %dec113, 0
  br i1 %cmp114, label %for.body.116, label %for.end.138

for.body.116:                                     ; preds = %for.cond.112
  %77 = load i8*, i8** %input, align 8
  %incdec.ptr117 = getelementptr i8, i8* %77, i32 1
  store i8* %incdec.ptr117, i8** %input, align 8
  %78 = load i8, i8* %77, align 1
  %conv118 = sext i8 %78 to i32
  %and119 = and i32 %conv118, 255
  %conv120 = trunc i32 %and119 to i8
  %conv121 = zext i8 %conv120 to i64
  store i64 %conv121, i64* %c, align 8
  %79 = load i64, i64* %c, align 8
  %arrayidx122 = getelementptr [256 x i32], [256 x i32]* %trans_table, i32 0, i64 %79
  %80 = load i32, i32* %arrayidx122, align 4
  %cmp123 = icmp ne i32 %80, -1
  br i1 %cmp123, label %if.then.125, label %if.end.137

if.then.125:                                      ; preds = %for.body.116
  %81 = load i64, i64* %c, align 8
  %arrayidx126 = getelementptr [256 x i32], [256 x i32]* %trans_table, i32 0, i64 %81
  %82 = load i32, i32* %arrayidx126, align 4
  %conv127 = trunc i32 %82 to i8
  %83 = load i8*, i8** %output, align 8
  %incdec.ptr128 = getelementptr i8, i8* %83, i32 1
  store i8* %incdec.ptr128, i8** %output, align 8
  store i8 %conv127, i8* %83, align 1
  %conv129 = sext i8 %conv127 to i32
  %and130 = and i32 %conv129, 255
  %conv131 = trunc i32 %and130 to i8
  %conv132 = zext i8 %conv131 to i64
  %84 = load i64, i64* %c, align 8
  %cmp133 = icmp eq i64 %conv132, %84
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.125
  br label %for.cond.112

if.end.136:                                       ; preds = %if.then.125
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %for.body.116
  store i64 1, i64* %changed, align 8
  br label %for.cond.112

for.end.138:                                      ; preds = %for.cond.112
  %85 = load i64, i64* %changed, align 8
  %tobool139 = icmp ne i64 %85, 0
  br i1 %tobool139, label %if.end.159, label %land.lhs.true.140

land.lhs.true.140:                                ; preds = %for.end.138
  %86 = load %struct._object*, %struct._object** %input_obj, align 8
  %ob_type141 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type141, align 8
  %cmp142 = icmp eq %struct._typeobject* %87, @PyBytes_Type
  br i1 %cmp142, label %if.then.144, label %if.end.159

if.then.144:                                      ; preds = %land.lhs.true.140
  br label %do.body.145

do.body.145:                                      ; preds = %if.then.144
  %88 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp146, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  %ob_refcnt147 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt147, align 8
  %dec148 = add i64 %90, -1
  store i64 %dec148, i64* %ob_refcnt147, align 8
  %cmp149 = icmp ne i64 %dec148, 0
  br i1 %cmp149, label %if.then.151, label %if.else.152

if.then.151:                                      ; preds = %do.body.145
  br label %if.end.155

if.else.152:                                      ; preds = %do.body.145
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  %ob_type153 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type153, align 8
  %tp_dealloc154 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc154, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  call void %93(%struct._object* %94)
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.152, %if.then.151
  br label %do.end.156

do.end.156:                                       ; preds = %if.end.155
  %95 = load %struct._object*, %struct._object** %input_obj, align 8
  %ob_refcnt157 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0
  %96 = load i64, i64* %ob_refcnt157, align 8
  %inc158 = add i64 %96, 1
  store i64 %inc158, i64* %ob_refcnt157, align 8
  %97 = load %struct._object*, %struct._object** %input_obj, align 8
  store %struct._object* %97, %struct._object** %retval
  br label %return

if.end.159:                                       ; preds = %land.lhs.true.140, %for.end.138
  %98 = load i64, i64* %inlen, align 8
  %cmp160 = icmp sgt i64 %98, 0
  br i1 %cmp160, label %if.then.162, label %if.end.164

if.then.162:                                      ; preds = %if.end.159
  %99 = load i8*, i8** %output, align 8
  %100 = load i8*, i8** %output_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %99 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %100 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call163 = call i32 @_PyBytes_Resize(%struct._object** %result, i64 %sub.ptr.sub)
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.162, %if.end.159
  %101 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %101, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.164, %do.end.156, %do.end, %if.then.60, %if.then.35, %if.then.27, %if.then.12, %if.then.7, %if.then
  %102 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %102
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
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %2)
  store %struct._object* %call, %struct._object** %newobj, align 8
  %3 = load %struct._object*, %struct._object** %newobj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %newobj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval1 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay2 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval1, i32 0, i32 0
  %8 = load %struct._object*, %struct._object** %self.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size3, align 8
  call void @_Py_bytes_upper(i8* %arraydecay, i8* %arraydecay2, i64 %10)
  %11 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
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
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i32 0, i32 0), i64* %width)
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
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %6, @PyBytes_Type
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.1
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then.1
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %12 = load %struct._object*, %struct._object** %self.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size4, align 8
  %call5 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay, i64 %14)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %15 = load i64, i64* %width, align 8
  %16 = load %struct._object*, %struct._object** %self.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size7, align 8
  %sub = sub i64 %15, %18
  store i64 %sub, i64* %fill, align 8
  %19 = load %struct._object*, %struct._object** %self.addr, align 8
  %20 = load i64, i64* %fill, align 8
  %call8 = call %struct._object* @pad(%struct._object* %19, i64 %20, i64 0, i8 signext 48)
  store %struct._object* %call8, %struct._object** %s, align 8
  %21 = load %struct._object*, %struct._object** %s, align 8
  %cmp9 = icmp eq %struct._object* %21, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %22 = load %struct._object*, %struct._object** %s, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyBytesObject*
  %ob_sval12 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %23, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval12, i32 0, i32 0
  store i8* %arraydecay13, i8** %p, align 8
  %24 = load i64, i64* %fill, align 8
  %25 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr i8, i8* %25, i64 %24
  %26 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %26 to i32
  %cmp14 = icmp eq i32 %conv, 43
  br i1 %cmp14, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %27 = load i64, i64* %fill, align 8
  %28 = load i8*, i8** %p, align 8
  %arrayidx16 = getelementptr i8, i8* %28, i64 %27
  %29 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %29 to i32
  %cmp18 = icmp eq i32 %conv17, 45
  br i1 %cmp18, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.11
  %30 = load i64, i64* %fill, align 8
  %31 = load i8*, i8** %p, align 8
  %arrayidx21 = getelementptr i8, i8* %31, i64 %30
  %32 = load i8, i8* %arrayidx21, align 1
  %33 = load i8*, i8** %p, align 8
  %arrayidx22 = getelementptr i8, i8* %33, i64 0
  store i8 %32, i8* %arrayidx22, align 1
  %34 = load i64, i64* %fill, align 8
  %35 = load i8*, i8** %p, align 8
  %arrayidx23 = getelementptr i8, i8* %35, i64 %34
  store i8 48, i8* %arrayidx23, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %lor.lhs.false
  %36 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %36, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.10, %if.else, %if.then.3, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bytes_sizeof(%struct.PyBytesObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyBytesObject*, align 8
  %res = alloca i64, align 8
  store %struct.PyBytesObject* %v, %struct.PyBytesObject** %v.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %v.addr, align 8
  %1 = bitcast %struct.PyBytesObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %v.addr, align 8
  %4 = bitcast %struct.PyBytesObject* %3 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_itemsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 3
  %6 = load i64, i64* %tp_itemsize, align 8
  %mul = mul i64 %2, %6
  %add = add i64 33, %mul
  store i64 %add, i64* %res, align 8
  %7 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %7)
  ret %struct._object* %call
}

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

declare void @_Py_bytes_capitalize(i8*, i8*, i64) #1

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @pad(%struct._object* %self, i64 %left, i64 %right, i8 signext %fill) #5 {
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
  br i1 %cmp4, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.3
  %3 = load i64, i64* %right.addr, align 8
  %cmp5 = icmp eq i64 %3, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.9

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp7 = icmp eq %struct._typeobject* %5, @PyBytes_Type
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true.6
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true.6, %land.lhs.true, %if.end.3
  %9 = load i64, i64* %left.addr, align 8
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size, align 8
  %add = add i64 %9, %12
  %13 = load i64, i64* %right.addr, align 8
  %add10 = add i64 %add, %13
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add10)
  store %struct._object* %call, %struct._object** %u, align 8
  %14 = load %struct._object*, %struct._object** %u, align 8
  %tobool = icmp ne %struct._object* %14, null
  br i1 %tobool, label %if.then.11, label %if.end.29

if.then.11:                                       ; preds = %if.end.9
  %15 = load i64, i64* %left.addr, align 8
  %tobool12 = icmp ne i64 %15, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.11
  %16 = load %struct._object*, %struct._object** %u, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %17, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %18 = load i8, i8* %fill.addr, align 1
  %conv = sext i8 %18 to i32
  %19 = trunc i32 %conv to i8
  %20 = load i64, i64* %left.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %arraydecay, i8 %19, i64 %20, i32 1, i1 false)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.11
  %21 = load %struct._object*, %struct._object** %u, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyBytesObject*
  %ob_sval15 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %22, i32 0, i32 2
  %arraydecay16 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval15, i32 0, i32 0
  %23 = load i64, i64* %left.addr, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay16, i64 %23
  %24 = load %struct._object*, %struct._object** %self.addr, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyBytesObject*
  %ob_sval17 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %25, i32 0, i32 2
  %arraydecay18 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval17, i32 0, i32 0
  %26 = load %struct._object*, %struct._object** %self.addr, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyVarObject*
  %ob_size19 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %27, i32 0, i32 1
  %28 = load i64, i64* %ob_size19, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %arraydecay18, i64 %28, i32 1, i1 false)
  %29 = load i64, i64* %right.addr, align 8
  %tobool20 = icmp ne i64 %29, 0
  br i1 %tobool20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.end.14
  %30 = load %struct._object*, %struct._object** %u, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyBytesObject*
  %ob_sval22 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %31, i32 0, i32 2
  %arraydecay23 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval22, i32 0, i32 0
  %32 = load i64, i64* %left.addr, align 8
  %add.ptr24 = getelementptr i8, i8* %arraydecay23, i64 %32
  %33 = load %struct._object*, %struct._object** %self.addr, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyVarObject*
  %ob_size25 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %34, i32 0, i32 1
  %35 = load i64, i64* %ob_size25, align 8
  %add.ptr26 = getelementptr i8, i8* %add.ptr24, i64 %35
  %36 = load i8, i8* %fill.addr, align 1
  %conv27 = sext i8 %36 to i32
  %37 = trunc i32 %conv27 to i8
  %38 = load i64, i64* %right.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %add.ptr26, i8 %37, i64 %38, i32 1, i1 false)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.21, %if.end.14
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.9
  %39 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %39, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.8
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stringlib_parse_args_finds_byte(i8* %function_name, %struct._object* %args, %struct._object** %subobj, i8* %byte, i64* %start, i64* %end) #5 {
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
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0))
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

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stringlib_count(i8* %str, i64 %str_len, i8* %sub, i64 %sub_len, i64 %maxcount) #5 {
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
define internal i32 @stringlib_parse_args_finds(i8* %function_name, %struct._object* %args, %struct._object** %subobj, i64* %start, i64* %end) #5 {
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

declare i32 @PyNumber_Check(%struct._object*) #1

declare i32 @PyErr_GivenExceptionMatches(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare i32 @_PyEval_SliceIndex(%struct._object*, i64*) #1

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @PyUnicode_FromEncodedObject(%struct._object*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_bytes_tailmatch(%struct.PyBytesObject* %self, %struct._object* %substr, i64 %start, i64 %end, i32 %direction) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %substr.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %direction.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %slen = alloca i64, align 8
  %sub = alloca i8*, align 8
  %str = alloca i8*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %substr, %struct._object** %substr.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %1 = bitcast %struct.PyBytesObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %len, align 8
  %3 = load %struct._object*, %struct._object** %substr.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** %substr.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %sub, align 8
  %8 = load %struct._object*, %struct._object** %substr.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size1, align 8
  store i64 %10, i64* %slen, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %11 = load %struct._object*, %struct._object** %substr.addr, align 8
  %call = call i32 @PyObject_AsCharBuffer(%struct._object* %11, i8** %sub, i64* %slen)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %12 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval4 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %12, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval4, i32 0, i32 0
  store i8* %arraydecay5, i8** %str, align 8
  %13 = load i64, i64* %end.addr, align 8
  %14 = load i64, i64* %len, align 8
  %cmp6 = icmp sgt i64 %13, %14
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.end.3
  %15 = load i64, i64* %len, align 8
  store i64 %15, i64* %end.addr, align 8
  br label %if.end.15

if.else.8:                                        ; preds = %if.end.3
  %16 = load i64, i64* %end.addr, align 8
  %cmp9 = icmp slt i64 %16, 0
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.else.8
  %17 = load i64, i64* %len, align 8
  %18 = load i64, i64* %end.addr, align 8
  %add = add i64 %18, %17
  store i64 %add, i64* %end.addr, align 8
  %19 = load i64, i64* %end.addr, align 8
  %cmp11 = icmp slt i64 %19, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  store i64 0, i64* %end.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.else.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.7
  %20 = load i64, i64* %start.addr, align 8
  %cmp16 = icmp slt i64 %20, 0
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.15
  %21 = load i64, i64* %len, align 8
  %22 = load i64, i64* %start.addr, align 8
  %add18 = add i64 %22, %21
  store i64 %add18, i64* %start.addr, align 8
  %23 = load i64, i64* %start.addr, align 8
  %cmp19 = icmp slt i64 %23, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.17
  store i64 0, i64* %start.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.15
  %24 = load i32, i32* %direction.addr, align 4
  %cmp23 = icmp slt i32 %24, 0
  br i1 %cmp23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %if.end.22
  %25 = load i64, i64* %start.addr, align 8
  %26 = load i64, i64* %slen, align 8
  %add25 = add i64 %25, %26
  %27 = load i64, i64* %len, align 8
  %cmp26 = icmp sgt i64 %add25, %27
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.24
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.24
  br label %if.end.40

if.else.29:                                       ; preds = %if.end.22
  %28 = load i64, i64* %end.addr, align 8
  %29 = load i64, i64* %start.addr, align 8
  %sub30 = sub i64 %28, %29
  %30 = load i64, i64* %slen, align 8
  %cmp31 = icmp slt i64 %sub30, %30
  br i1 %cmp31, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.29
  %31 = load i64, i64* %start.addr, align 8
  %32 = load i64, i64* %len, align 8
  %cmp32 = icmp sgt i64 %31, %32
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false, %if.else.29
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false
  %33 = load i64, i64* %end.addr, align 8
  %34 = load i64, i64* %slen, align 8
  %sub35 = sub i64 %33, %34
  %35 = load i64, i64* %start.addr, align 8
  %cmp36 = icmp sgt i64 %sub35, %35
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.34
  %36 = load i64, i64* %end.addr, align 8
  %37 = load i64, i64* %slen, align 8
  %sub38 = sub i64 %36, %37
  store i64 %sub38, i64* %start.addr, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.34
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.28
  %38 = load i64, i64* %end.addr, align 8
  %39 = load i64, i64* %start.addr, align 8
  %sub41 = sub i64 %38, %39
  %40 = load i64, i64* %slen, align 8
  %cmp42 = icmp sge i64 %sub41, %40
  br i1 %cmp42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.end.40
  %41 = load i8*, i8** %str, align 8
  %42 = load i64, i64* %start.addr, align 8
  %add.ptr = getelementptr i8, i8* %41, i64 %42
  %43 = load i8*, i8** %sub, align 8
  %44 = load i64, i64* %slen, align 8
  %call44 = call i32 @memcmp(i8* %add.ptr, i8* %43, i64 %44) #7
  %tobool45 = icmp ne i32 %call44, 0
  %lnot = xor i1 %tobool45, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.40
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.43, %if.then.33, %if.then.27, %if.then.2
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare %struct._object* @PyBool_FromLong(i64) #1

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @bytes_find_internal(%struct.PyBytesObject* %self, %struct._object* %args, i32 %dir) #5 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
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
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  store i64 0, i64* %start, align 8
  store i64 9223372036854775807, i64* %end, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @stringlib_parse_args_finds_byte(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i32 0, i32 0), %struct._object* %0, %struct._object** %subobj, i8* %byte, i64* %start, i64* %end)
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
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.end.6
  %6 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %6, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %7 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %8 = bitcast %struct.PyBytesObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %10 = load i8*, i8** %sub, align 8
  %11 = load i64, i64* %sub_len, align 8
  %12 = load i64, i64* %start, align 8
  %13 = load i64, i64* %end, align 8
  %call9 = call i64 @stringlib_find_slice(i8* %arraydecay, i64 %9, i8* %10, i64 %11, i64 %12, i64 %13)
  store i64 %call9, i64* %res, align 8
  br label %if.end.15

if.else.10:                                       ; preds = %if.end.6
  %14 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval11 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %14, i32 0, i32 2
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval11, i32 0, i32 0
  %15 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %16 = bitcast %struct.PyBytesObject* %15 to %struct.PyVarObject*
  %ob_size13 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size13, align 8
  %18 = load i8*, i8** %sub, align 8
  %19 = load i64, i64* %sub_len, align 8
  %20 = load i64, i64* %start, align 8
  %21 = load i64, i64* %end, align 8
  %call14 = call i64 @stringlib_rfind_slice(i8* %arraydecay12, i64 %17, i8* %18, i64 %19, i64 %20, i64 %21)
  store i64 %call14, i64* %res, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.10, %if.then.8
  %22 = load %struct._object*, %struct._object** %subobj, align 8
  %tobool16 = icmp ne %struct._object* %22, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  call void @PyBuffer_Release(%struct.bufferinfo* %subbuf)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %23 = load i64, i64* %res, align 8
  store i64 %23, i64* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.4, %if.then
  %24 = load i64, i64* %retval
  ret i64 %24
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stringlib_find_slice(i8* %str, i64 %str_len, i8* %sub, i64 %sub_len, i64 %start, i64 %end) #5 {
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
define internal i64 @stringlib_rfind_slice(i8* %str, i64 %str_len, i8* %sub, i64 %sub_len, i64 %start, i64 %end) #5 {
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
define internal i64 @stringlib_rfind(i8* %str, i64 %str_len, i8* %sub, i64 %sub_len, i64 %offset) #5 {
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

declare void @_Py_bytes_lower(i8*, i8*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @do_strip(%struct.PyBytesObject* %self, i32 %striptype) #5 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %striptype.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store i32 %striptype, i32* %striptype.addr, align 4
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %s, align 8
  %1 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %2 = bitcast %struct.PyBytesObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %len, align 8
  store i64 0, i64* %i, align 8
  %4 = load i32, i32* %striptype.addr, align 4
  %cmp = icmp ne i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %len, align 8
  %cmp1 = icmp slt i64 %5, %6
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i64, i64* %i, align 8
  %8 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr i8, i8* %8, i64 %7
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %and = and i32 %conv, 255
  %conv2 = trunc i32 %and to i8
  %idxprom = zext i8 %conv2 to i64
  %arrayidx3 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx3, align 4
  %and4 = and i32 %10, 8
  %tobool = icmp ne i32 %and4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i64, i64* %i, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %13 = load i64, i64* %len, align 8
  store i64 %13, i64* %j, align 8
  %14 = load i32, i32* %striptype.addr, align 4
  %cmp5 = icmp ne i32 %14, 0
  br i1 %cmp5, label %if.then.7, label %if.end.21

if.then.7:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %land.end.19, %if.then.7
  %15 = load i64, i64* %j, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %j, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load i64, i64* %j, align 8
  %17 = load i64, i64* %i, align 8
  %cmp8 = icmp sge i64 %16, %17
  br i1 %cmp8, label %land.rhs.10, label %land.end.19

land.rhs.10:                                      ; preds = %do.cond
  %18 = load i64, i64* %j, align 8
  %19 = load i8*, i8** %s, align 8
  %arrayidx11 = getelementptr i8, i8* %19, i64 %18
  %20 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %20 to i32
  %and13 = and i32 %conv12, 255
  %conv14 = trunc i32 %and13 to i8
  %idxprom15 = zext i8 %conv14 to i64
  %arrayidx16 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom15
  %21 = load i32, i32* %arrayidx16, align 4
  %and17 = and i32 %21, 8
  %tobool18 = icmp ne i32 %and17, 0
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.10, %do.cond
  %22 = phi i1 [ false, %do.cond ], [ %tobool18, %land.rhs.10 ]
  br i1 %22, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.19
  %23 = load i64, i64* %j, align 8
  %inc20 = add i64 %23, 1
  store i64 %inc20, i64* %j, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %do.end, %if.end
  %24 = load i64, i64* %i, align 8
  %cmp22 = icmp eq i64 %24, 0
  br i1 %cmp22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.21
  %25 = load i64, i64* %j, align 8
  %26 = load i64, i64* %len, align 8
  %cmp24 = icmp eq i64 %25, %26
  br i1 %cmp24, label %land.lhs.true.26, label %if.else

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %27 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %28 = bitcast %struct.PyBytesObject* %27 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp27 = icmp eq %struct._typeobject* %29, @PyBytes_Type
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true.26
  %30 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %31 = bitcast %struct.PyBytesObject* %30 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt, align 8
  %inc30 = add i64 %32, 1
  store i64 %inc30, i64* %ob_refcnt, align 8
  %33 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %34 = bitcast %struct.PyBytesObject* %33 to %struct._object*
  store %struct._object* %34, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.26, %land.lhs.true, %if.end.21
  %35 = load i8*, i8** %s, align 8
  %36 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %35, i64 %36
  %37 = load i64, i64* %j, align 8
  %38 = load i64, i64* %i, align 8
  %sub = sub i64 %37, %38
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %sub)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.29
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @do_argstrip(%struct.PyBytesObject* %self, i32 %striptype, %struct._object* %args) #5 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %striptype.addr = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %sep = alloca %struct._object*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store i32 %striptype, i32* %striptype.addr, align 4
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %sep, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load i32, i32* %striptype.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [3 x i8*], [3 x i8*]* @stripformat, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* %2, %struct._object** %sep)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %sep, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %sep, align 8
  %cmp1 = icmp ne %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %land.lhs.true
  %5 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %6 = load i32, i32* %striptype.addr, align 4
  %7 = load %struct._object*, %struct._object** %sep, align 8
  %call3 = call %struct._object* @do_xstrip(%struct.PyBytesObject* %5, i32 %6, %struct._object* %7)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %8 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %9 = load i32, i32* %striptype.addr, align 4
  %call5 = call %struct._object* @do_strip(%struct.PyBytesObject* %8, i32 %9)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @do_xstrip(%struct.PyBytesObject* %self, i32 %striptype, %struct._object* %sepobj) #5 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %striptype.addr = alloca i32, align 4
  %sepobj.addr = alloca %struct._object*, align 8
  %vsep = alloca %struct.bufferinfo, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %sep = alloca i8*, align 8
  %seplen = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store i32 %striptype, i32* %striptype.addr, align 4
  store %struct._object* %sepobj, %struct._object** %sepobj.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %s, align 8
  %1 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %2 = bitcast %struct.PyBytesObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %len, align 8
  %4 = load %struct._object*, %struct._object** %sepobj.addr, align 8
  %call = call i64 @_getbuffer(%struct._object* %4, %struct.bufferinfo* %vsep)
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsep, i32 0, i32 0
  %5 = load i8*, i8** %buf, align 8
  store i8* %5, i8** %sep, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vsep, i32 0, i32 2
  %6 = load i64, i64* %len1, align 8
  store i64 %6, i64* %seplen, align 8
  store i64 0, i64* %i, align 8
  %7 = load i32, i32* %striptype.addr, align 4
  %cmp2 = icmp ne i32 %7, 1
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.3
  %8 = load i64, i64* %i, align 8
  %9 = load i64, i64* %len, align 8
  %cmp4 = icmp slt i64 %8, %9
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load i8*, i8** %sep, align 8
  %11 = load i64, i64* %i, align 8
  %12 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr i8, i8* %12, i64 %11
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %and = and i32 %conv, 255
  %conv5 = trunc i32 %and to i8
  %conv6 = zext i8 %conv5 to i32
  %14 = load i64, i64* %seplen, align 8
  %call7 = call i8* @memchr(i8* %10, i32 %conv6, i64 %14) #7
  %tobool = icmp ne i8* %call7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.8

if.end.8:                                         ; preds = %while.end, %if.end
  %17 = load i64, i64* %len, align 8
  store i64 %17, i64* %j, align 8
  %18 = load i32, i32* %striptype.addr, align 4
  %cmp9 = icmp ne i32 %18, 0
  br i1 %cmp9, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %land.end.22, %if.then.11
  %19 = load i64, i64* %j, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %j, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load i64, i64* %j, align 8
  %21 = load i64, i64* %i, align 8
  %cmp12 = icmp sge i64 %20, %21
  br i1 %cmp12, label %land.rhs.14, label %land.end.22

land.rhs.14:                                      ; preds = %do.cond
  %22 = load i8*, i8** %sep, align 8
  %23 = load i64, i64* %j, align 8
  %24 = load i8*, i8** %s, align 8
  %arrayidx15 = getelementptr i8, i8* %24, i64 %23
  %25 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %25 to i32
  %and17 = and i32 %conv16, 255
  %conv18 = trunc i32 %and17 to i8
  %conv19 = zext i8 %conv18 to i32
  %26 = load i64, i64* %seplen, align 8
  %call20 = call i8* @memchr(i8* %22, i32 %conv19, i64 %26) #7
  %tobool21 = icmp ne i8* %call20, null
  br label %land.end.22

land.end.22:                                      ; preds = %land.rhs.14, %do.cond
  %27 = phi i1 [ false, %do.cond ], [ %tobool21, %land.rhs.14 ]
  br i1 %27, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.22
  %28 = load i64, i64* %j, align 8
  %inc23 = add i64 %28, 1
  store i64 %inc23, i64* %j, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %do.end, %if.end.8
  call void @PyBuffer_Release(%struct.bufferinfo* %vsep)
  %29 = load i64, i64* %i, align 8
  %cmp25 = icmp eq i64 %29, 0
  br i1 %cmp25, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.24
  %30 = load i64, i64* %j, align 8
  %31 = load i64, i64* %len, align 8
  %cmp27 = icmp eq i64 %30, %31
  br i1 %cmp27, label %land.lhs.true.29, label %if.else

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %32 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %33 = bitcast %struct.PyBytesObject* %32 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp30 = icmp eq %struct._typeobject* %34, @PyBytes_Type
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %land.lhs.true.29
  %35 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %36 = bitcast %struct.PyBytesObject* %35 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %inc33 = add i64 %37, 1
  store i64 %inc33, i64* %ob_refcnt, align 8
  %38 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %39 = bitcast %struct.PyBytesObject* %38 to %struct._object*
  store %struct._object* %39, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.29, %land.lhs.true, %if.end.24
  %40 = load i8*, i8** %s, align 8
  %41 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %40, i64 %41
  %42 = load i64, i64* %j, align 8
  %43 = load i64, i64* %i, align 8
  %sub = sub i64 %42, %43
  %call34 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %sub)
  store %struct._object* %call34, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.32, %if.then
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

declare %struct._object* @_Py_bytes_maketrans(%struct._object*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_partition(%struct._object* %str_obj, i8* %str, i64 %str_len, %struct._object* %sep_obj, i8* %sep, i64 %sep_len) #5 {
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
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i32 0, i32 0))
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
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end.2
  %8 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %11 = load %struct._object*, %struct._object** %out, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %10, %struct._object** %arrayidx, align 8
  %13 = load %struct.PyBytesObject*, %struct.PyBytesObject** @nullstring, align 8
  %14 = bitcast %struct.PyBytesObject* %13 to %struct._object*
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt6, align 8
  %inc7 = add i64 %15, 1
  store i64 %inc7, i64* %ob_refcnt6, align 8
  %16 = load %struct.PyBytesObject*, %struct.PyBytesObject** @nullstring, align 8
  %17 = bitcast %struct.PyBytesObject* %16 to %struct._object*
  %18 = load %struct._object*, %struct._object** %out, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*
  %ob_item8 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item8, i32 0, i64 1
  store %struct._object* %17, %struct._object** %arrayidx9, align 8
  %20 = load %struct.PyBytesObject*, %struct.PyBytesObject** @nullstring, align 8
  %21 = bitcast %struct.PyBytesObject* %20 to %struct._object*
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt10, align 8
  %inc11 = add i64 %22, 1
  store i64 %inc11, i64* %ob_refcnt10, align 8
  %23 = load %struct.PyBytesObject*, %struct.PyBytesObject** @nullstring, align 8
  %24 = bitcast %struct.PyBytesObject* %23 to %struct._object*
  %25 = load %struct._object*, %struct._object** %out, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyTupleObject*
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %26, i32 0, i32 1
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 2
  store %struct._object* %24, %struct._object** %arrayidx13, align 8
  %27 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.2
  %28 = load i8*, i8** %str.addr, align 8
  %29 = load i64, i64* %pos, align 8
  %call15 = call %struct._object* @PyBytes_FromStringAndSize(i8* %28, i64 %29)
  %30 = load %struct._object*, %struct._object** %out, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyTupleObject*
  %ob_item16 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %31, i32 0, i32 1
  %arrayidx17 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item16, i32 0, i64 0
  store %struct._object* %call15, %struct._object** %arrayidx17, align 8
  %32 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt18, align 8
  %inc19 = add i64 %33, 1
  store i64 %inc19, i64* %ob_refcnt18, align 8
  %34 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %35 = load %struct._object*, %struct._object** %out, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyTupleObject*
  %ob_item20 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1
  %arrayidx21 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item20, i32 0, i64 1
  store %struct._object* %34, %struct._object** %arrayidx21, align 8
  %37 = load i64, i64* %sep_len.addr, align 8
  %38 = load i64, i64* %pos, align 8
  %add = add i64 %38, %37
  store i64 %add, i64* %pos, align 8
  %39 = load i8*, i8** %str.addr, align 8
  %40 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr i8, i8* %39, i64 %40
  %41 = load i64, i64* %str_len.addr, align 8
  %42 = load i64, i64* %pos, align 8
  %sub = sub i64 %41, %42
  %call22 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %sub)
  %43 = load %struct._object*, %struct._object** %out, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyTupleObject*
  %ob_item23 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %44, i32 0, i32 1
  %arrayidx24 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item23, i32 0, i64 2
  store %struct._object* %call22, %struct._object** %arrayidx24, align 8
  %call25 = call %struct._object* @PyErr_Occurred()
  %tobool26 = icmp ne %struct._object* %call25, null
  br i1 %tobool26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.end.14
  br label %do.body

do.body:                                          ; preds = %if.then.27
  %45 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt28, align 8
  %dec = add i64 %47, -1
  store i64 %dec, i64* %ob_refcnt28, align 8
  %cmp29 = icmp ne i64 %dec, 0
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %do.body
  br label %if.end.31

if.else:                                          ; preds = %do.body
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %50(%struct._object* %51)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.14
  %52 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %52, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %do.end, %if.then.5, %if.then.1, %if.then
  %53 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %53
}

declare %struct._object* @PyTuple_New(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.PyBytesObject* @replace(%struct.PyBytesObject* %self, i8* %from_s, i64 %from_len, i8* %to_s, i64 %to_len, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyBytesObject*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %from_s.addr = alloca i8*, align 8
  %from_len.addr = alloca i64, align 8
  %to_s.addr = alloca i8*, align 8
  %to_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
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
  %2 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %3 = bitcast %struct.PyBytesObject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %lor.lhs.false, %if.else
  %5 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %call = call %struct.PyBytesObject* @return_self(%struct.PyBytesObject* %5)
  store %struct.PyBytesObject* %call, %struct.PyBytesObject** %retval
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
  %9 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %call10 = call %struct.PyBytesObject* @return_self(%struct.PyBytesObject* %9)
  store %struct.PyBytesObject* %call10, %struct.PyBytesObject** %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %lor.lhs.false.6
  %10 = load i64, i64* %from_len.addr, align 8
  %cmp12 = icmp eq i64 %10, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %11 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %12 = load i8*, i8** %to_s.addr, align 8
  %13 = load i64, i64* %to_len.addr, align 8
  %14 = load i64, i64* %maxcount.addr, align 8
  %call14 = call %struct.PyBytesObject* @replace_interleave(%struct.PyBytesObject* %11, i8* %12, i64 %13, i64 %14)
  store %struct.PyBytesObject* %call14, %struct.PyBytesObject** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %15 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %16 = bitcast %struct.PyBytesObject* %15 to %struct.PyVarObject*
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size16, align 8
  %cmp17 = icmp eq i64 %17, 0
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %18 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %call19 = call %struct.PyBytesObject* @return_self(%struct.PyBytesObject* %18)
  store %struct.PyBytesObject* %call19, %struct.PyBytesObject** %retval
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
  %21 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %22 = load i8*, i8** %from_s.addr, align 8
  %arrayidx = getelementptr i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx, align 1
  %24 = load i64, i64* %maxcount.addr, align 8
  %call25 = call %struct.PyBytesObject* @replace_delete_single_character(%struct.PyBytesObject* %21, i8 signext %23, i64 %24)
  store %struct.PyBytesObject* %call25, %struct.PyBytesObject** %retval
  br label %return

if.else.26:                                       ; preds = %if.then.22
  %25 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %26 = load i8*, i8** %from_s.addr, align 8
  %27 = load i64, i64* %from_len.addr, align 8
  %28 = load i64, i64* %maxcount.addr, align 8
  %call27 = call %struct.PyBytesObject* @replace_delete_substring(%struct.PyBytesObject* %25, i8* %26, i64 %27, i64 %28)
  store %struct.PyBytesObject* %call27, %struct.PyBytesObject** %retval
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
  %32 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %33 = load i8*, i8** %from_s.addr, align 8
  %arrayidx33 = getelementptr i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx33, align 1
  %35 = load i8*, i8** %to_s.addr, align 8
  %arrayidx34 = getelementptr i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx34, align 1
  %37 = load i64, i64* %maxcount.addr, align 8
  %call35 = call %struct.PyBytesObject* @replace_single_character_in_place(%struct.PyBytesObject* %32, i8 signext %34, i8 signext %36, i64 %37)
  store %struct.PyBytesObject* %call35, %struct.PyBytesObject** %retval
  br label %return

if.else.36:                                       ; preds = %if.then.30
  %38 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %39 = load i8*, i8** %from_s.addr, align 8
  %40 = load i64, i64* %from_len.addr, align 8
  %41 = load i8*, i8** %to_s.addr, align 8
  %42 = load i64, i64* %to_len.addr, align 8
  %43 = load i64, i64* %maxcount.addr, align 8
  %call37 = call %struct.PyBytesObject* @replace_substring_in_place(%struct.PyBytesObject* %38, i8* %39, i64 %40, i8* %41, i64 %42, i64 %43)
  store %struct.PyBytesObject* %call37, %struct.PyBytesObject** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.28
  %44 = load i64, i64* %from_len.addr, align 8
  %cmp39 = icmp eq i64 %44, 1
  br i1 %cmp39, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %if.end.38
  %45 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %46 = load i8*, i8** %from_s.addr, align 8
  %arrayidx41 = getelementptr i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx41, align 1
  %48 = load i8*, i8** %to_s.addr, align 8
  %49 = load i64, i64* %to_len.addr, align 8
  %50 = load i64, i64* %maxcount.addr, align 8
  %call42 = call %struct.PyBytesObject* @replace_single_character(%struct.PyBytesObject* %45, i8 signext %47, i8* %48, i64 %49, i64 %50)
  store %struct.PyBytesObject* %call42, %struct.PyBytesObject** %retval
  br label %return

if.else.43:                                       ; preds = %if.end.38
  %51 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %52 = load i8*, i8** %from_s.addr, align 8
  %53 = load i64, i64* %from_len.addr, align 8
  %54 = load i8*, i8** %to_s.addr, align 8
  %55 = load i64, i64* %to_len.addr, align 8
  %56 = load i64, i64* %maxcount.addr, align 8
  %call44 = call %struct.PyBytesObject* @replace_substring(%struct.PyBytesObject* %51, i8* %52, i64 %53, i8* %54, i64 %55, i64 %56)
  store %struct.PyBytesObject* %call44, %struct.PyBytesObject** %retval
  br label %return

return:                                           ; preds = %if.else.43, %if.then.40, %if.else.36, %if.then.32, %if.else.26, %if.then.24, %if.then.18, %if.then.13, %if.then.9, %if.then.3
  %57 = load %struct.PyBytesObject*, %struct.PyBytesObject** %retval
  ret %struct.PyBytesObject* %57
}

; Function Attrs: nounwind uwtable
define internal %struct.PyBytesObject* @return_self(%struct.PyBytesObject* %self) #0 {
entry:
  %retval = alloca %struct.PyBytesObject*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %1 = bitcast %struct.PyBytesObject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyBytes_Type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %4 = bitcast %struct.PyBytesObject* %3 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  store %struct.PyBytesObject* %6, %struct.PyBytesObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %8 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %9 = bitcast %struct.PyBytesObject* %8 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay, i64 %10)
  %11 = bitcast %struct._object* %call to %struct.PyBytesObject*
  store %struct.PyBytesObject* %11, %struct.PyBytesObject** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.PyBytesObject*, %struct.PyBytesObject** %retval
  ret %struct.PyBytesObject* %12
}

; Function Attrs: nounwind uwtable
define internal %struct.PyBytesObject* @replace_interleave(%struct.PyBytesObject* %self, i8* %to_s, i64 %to_len, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyBytesObject*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %to_s.addr = alloca i8*, align 8
  %to_len.addr = alloca i64, align 8
  %maxcount.addr = alloca i64, align 8
  %self_s = alloca i8*, align 8
  %result_s = alloca i8*, align 8
  %self_len = alloca i64, align 8
  %result_len = alloca i64, align 8
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %result = alloca %struct.PyBytesObject*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store i8* %to_s, i8** %to_s.addr, align 8
  store i64 %to_len, i64* %to_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %1 = bitcast %struct.PyBytesObject* %0 to %struct.PyVarObject*
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
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.97, i32 0, i32 0))
  store %struct.PyBytesObject* null, %struct.PyBytesObject** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %11 = load i64, i64* %count, align 8
  %12 = load i64, i64* %to_len.addr, align 8
  %mul = mul i64 %11, %12
  %13 = load i64, i64* %self_len, align 8
  %add4 = add i64 %mul, %13
  store i64 %add4, i64* %result_len, align 8
  %14 = load i64, i64* %result_len, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %14)
  %15 = bitcast %struct._object* %call to %struct.PyBytesObject*
  store %struct.PyBytesObject* %15, %struct.PyBytesObject** %result, align 8
  %tobool = icmp ne %struct.PyBytesObject* %15, null
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store %struct.PyBytesObject* null, %struct.PyBytesObject** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %16 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %16, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %self_s, align 8
  %17 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  %ob_sval7 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %17, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval7, i32 0, i32 0
  store i8* %arraydecay8, i8** %result_s, align 8
  %18 = load i8*, i8** %result_s, align 8
  %19 = load i8*, i8** %to_s.addr, align 8
  %20 = load i64, i64* %to_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 %20, i32 1, i1 false)
  %21 = load i64, i64* %to_len.addr, align 8
  %22 = load i8*, i8** %result_s, align 8
  %add.ptr = getelementptr i8, i8* %22, i64 %21
  store i8* %add.ptr, i8** %result_s, align 8
  %23 = load i64, i64* %count, align 8
  %sub9 = sub i64 %23, 1
  store i64 %sub9, i64* %count, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %24 = load i64, i64* %i, align 8
  %25 = load i64, i64* %count, align 8
  %cmp10 = icmp slt i64 %24, %25
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %self_s, align 8
  %incdec.ptr = getelementptr i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %self_s, align 8
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %result_s, align 8
  %incdec.ptr11 = getelementptr i8, i8* %28, i32 1
  store i8* %incdec.ptr11, i8** %result_s, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i8*, i8** %result_s, align 8
  %30 = load i8*, i8** %to_s.addr, align 8
  %31 = load i64, i64* %to_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 %31, i32 1, i1 false)
  %32 = load i64, i64* %to_len.addr, align 8
  %33 = load i8*, i8** %result_s, align 8
  %add.ptr12 = getelementptr i8, i8* %33, i64 %32
  store i8* %add.ptr12, i8** %result_s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, i64* %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i8*, i8** %result_s, align 8
  %36 = load i8*, i8** %self_s, align 8
  %37 = load i64, i64* %self_len, align 8
  %38 = load i64, i64* %i, align 8
  %sub13 = sub i64 %37, %38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 %sub13, i32 1, i1 false)
  %39 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  store %struct.PyBytesObject* %39, %struct.PyBytesObject** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then.2
  %40 = load %struct.PyBytesObject*, %struct.PyBytesObject** %retval
  ret %struct.PyBytesObject* %40
}

; Function Attrs: nounwind uwtable
define internal %struct.PyBytesObject* @replace_delete_single_character(%struct.PyBytesObject* %self, i8 signext %from_c, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyBytesObject*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
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
  %result = alloca %struct.PyBytesObject*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store i8 %from_c, i8* %from_c.addr, align 1
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %1 = bitcast %struct.PyBytesObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %self_len, align 8
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %self_s, align 8
  %4 = load i8*, i8** %self_s, align 8
  %5 = load i64, i64* %self_len, align 8
  %6 = load i8, i8* %from_c.addr, align 1
  %7 = load i64, i64* %maxcount.addr, align 8
  %call = call i64 @countchar(i8* %4, i64 %5, i8 signext %6, i64 %7)
  store i64 %call, i64* %count, align 8
  %8 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %call1 = call %struct.PyBytesObject* @return_self(%struct.PyBytesObject* %9)
  store %struct.PyBytesObject* %call1, %struct.PyBytesObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %self_len, align 8
  %11 = load i64, i64* %count, align 8
  %sub = sub i64 %10, %11
  store i64 %sub, i64* %result_len, align 8
  %12 = load i64, i64* %result_len, align 8
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %12)
  %13 = bitcast %struct._object* %call2 to %struct.PyBytesObject*
  store %struct.PyBytesObject* %13, %struct.PyBytesObject** %result, align 8
  %cmp3 = icmp eq %struct.PyBytesObject* %13, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct.PyBytesObject* null, %struct.PyBytesObject** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %14 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  %ob_sval6 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %14, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval6, i32 0, i32 0
  store i8* %arraydecay7, i8** %result_s, align 8
  %15 = load i8*, i8** %self_s, align 8
  store i8* %15, i8** %start, align 8
  %16 = load i8*, i8** %self_s, align 8
  %17 = load i64, i64* %self_len, align 8
  %add.ptr = getelementptr i8, i8* %16, i64 %17
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %if.end.5
  %18 = load i64, i64* %count, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %count, align 8
  %cmp8 = icmp sgt i64 %18, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8*, i8** %start, align 8
  %20 = load i8, i8* %from_c.addr, align 1
  %conv = sext i8 %20 to i32
  %21 = load i8*, i8** %end, align 8
  %22 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call9 = call i8* @memchr(i8* %19, i32 %conv, i64 %sub.ptr.sub) #7
  store i8* %call9, i8** %next, align 8
  %23 = load i8*, i8** %next, align 8
  %cmp10 = icmp eq i8* %23, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body
  br label %while.end

if.end.13:                                        ; preds = %while.body
  %24 = load i8*, i8** %result_s, align 8
  %25 = load i8*, i8** %start, align 8
  %26 = load i8*, i8** %next, align 8
  %27 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast15 = ptrtoint i8* %27 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 %sub.ptr.sub16, i32 1, i1 false)
  %28 = load i8*, i8** %next, align 8
  %29 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast17 = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast18 = ptrtoint i8* %29 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %30 = load i8*, i8** %result_s, align 8
  %add.ptr20 = getelementptr i8, i8* %30, i64 %sub.ptr.sub19
  store i8* %add.ptr20, i8** %result_s, align 8
  %31 = load i8*, i8** %next, align 8
  %add.ptr21 = getelementptr i8, i8* %31, i64 1
  store i8* %add.ptr21, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.12, %while.cond
  %32 = load i8*, i8** %result_s, align 8
  %33 = load i8*, i8** %start, align 8
  %34 = load i8*, i8** %end, align 8
  %35 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast22 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %35 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 %sub.ptr.sub24, i32 1, i1 false)
  %36 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  store %struct.PyBytesObject* %36, %struct.PyBytesObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.4, %if.then
  %37 = load %struct.PyBytesObject*, %struct.PyBytesObject** %retval
  ret %struct.PyBytesObject* %37
}

; Function Attrs: nounwind uwtable
define internal %struct.PyBytesObject* @replace_delete_substring(%struct.PyBytesObject* %self, i8* %from_s, i64 %from_len, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyBytesObject*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
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
  %result = alloca %struct.PyBytesObject*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store i8* %from_s, i8** %from_s.addr, align 8
  store i64 %from_len, i64* %from_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %1 = bitcast %struct.PyBytesObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %self_len, align 8
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %self_s, align 8
  %4 = load i8*, i8** %self_s, align 8
  %5 = load i64, i64* %self_len, align 8
  %6 = load i8*, i8** %from_s.addr, align 8
  %7 = load i64, i64* %from_len.addr, align 8
  %8 = load i64, i64* %maxcount.addr, align 8
  %call = call i64 @stringlib_count(i8* %4, i64 %5, i8* %6, i64 %7, i64 %8)
  store i64 %call, i64* %count, align 8
  %9 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %call1 = call %struct.PyBytesObject* @return_self(%struct.PyBytesObject* %10)
  store %struct.PyBytesObject* %call1, %struct.PyBytesObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load i64, i64* %self_len, align 8
  %12 = load i64, i64* %count, align 8
  %13 = load i64, i64* %from_len.addr, align 8
  %mul = mul i64 %12, %13
  %sub = sub i64 %11, %mul
  store i64 %sub, i64* %result_len, align 8
  %14 = load i64, i64* %result_len, align 8
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %14)
  %15 = bitcast %struct._object* %call2 to %struct.PyBytesObject*
  store %struct.PyBytesObject* %15, %struct.PyBytesObject** %result, align 8
  %cmp3 = icmp eq %struct.PyBytesObject* %15, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct.PyBytesObject* null, %struct.PyBytesObject** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %16 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  %ob_sval6 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %16, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval6, i32 0, i32 0
  store i8* %arraydecay7, i8** %result_s, align 8
  %17 = load i8*, i8** %self_s, align 8
  store i8* %17, i8** %start, align 8
  %18 = load i8*, i8** %self_s, align 8
  %19 = load i64, i64* %self_len, align 8
  %add.ptr = getelementptr i8, i8* %18, i64 %19
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.end.5
  %20 = load i64, i64* %count, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %count, align 8
  %cmp8 = icmp sgt i64 %20, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i8*, i8** %start, align 8
  %22 = load i8*, i8** %end, align 8
  %23 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %24 = load i8*, i8** %from_s.addr, align 8
  %25 = load i64, i64* %from_len.addr, align 8
  %call9 = call i64 @stringlib_find(i8* %21, i64 %sub.ptr.sub, i8* %24, i64 %25, i64 0)
  store i64 %call9, i64* %offset, align 8
  %26 = load i64, i64* %offset, align 8
  %cmp10 = icmp eq i64 %26, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.body
  br label %while.end

if.end.12:                                        ; preds = %while.body
  %27 = load i8*, i8** %start, align 8
  %28 = load i64, i64* %offset, align 8
  %add.ptr13 = getelementptr i8, i8* %27, i64 %28
  store i8* %add.ptr13, i8** %next, align 8
  %29 = load i8*, i8** %result_s, align 8
  %30 = load i8*, i8** %start, align 8
  %31 = load i8*, i8** %next, align 8
  %32 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast15 = ptrtoint i8* %32 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 %sub.ptr.sub16, i32 1, i1 false)
  %33 = load i8*, i8** %next, align 8
  %34 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast17 = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast18 = ptrtoint i8* %34 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %35 = load i8*, i8** %result_s, align 8
  %add.ptr20 = getelementptr i8, i8* %35, i64 %sub.ptr.sub19
  store i8* %add.ptr20, i8** %result_s, align 8
  %36 = load i8*, i8** %next, align 8
  %37 = load i64, i64* %from_len.addr, align 8
  %add.ptr21 = getelementptr i8, i8* %36, i64 %37
  store i8* %add.ptr21, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.11, %while.cond
  %38 = load i8*, i8** %result_s, align 8
  %39 = load i8*, i8** %start, align 8
  %40 = load i8*, i8** %end, align 8
  %41 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast22 = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %41 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 %sub.ptr.sub24, i32 1, i1 false)
  %42 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  store %struct.PyBytesObject* %42, %struct.PyBytesObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.4, %if.then
  %43 = load %struct.PyBytesObject*, %struct.PyBytesObject** %retval
  ret %struct.PyBytesObject* %43
}

; Function Attrs: nounwind uwtable
define internal %struct.PyBytesObject* @replace_single_character_in_place(%struct.PyBytesObject* %self, i8 signext %from_c, i8 signext %to_c, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyBytesObject*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
  %from_c.addr = alloca i8, align 1
  %to_c.addr = alloca i8, align 1
  %maxcount.addr = alloca i64, align 8
  %self_s = alloca i8*, align 8
  %result_s = alloca i8*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %next = alloca i8*, align 8
  %self_len = alloca i64, align 8
  %result = alloca %struct.PyBytesObject*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store i8 %from_c, i8* %from_c.addr, align 1
  store i8 %to_c, i8* %to_c.addr, align 1
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %self_s, align 8
  %1 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %2 = bitcast %struct.PyBytesObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %self_len, align 8
  %4 = load i8*, i8** %self_s, align 8
  %5 = load i8, i8* %from_c.addr, align 1
  %conv = sext i8 %5 to i32
  %6 = load i64, i64* %self_len, align 8
  %call = call i8* @memchr(i8* %4, i32 %conv, i64 %6) #7
  store i8* %call, i8** %next, align 8
  %7 = load i8*, i8** %next, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %call2 = call %struct.PyBytesObject* @return_self(%struct.PyBytesObject* %8)
  store %struct.PyBytesObject* %call2, %struct.PyBytesObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %self_len, align 8
  %call3 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %9)
  %10 = bitcast %struct._object* %call3 to %struct.PyBytesObject*
  store %struct.PyBytesObject* %10, %struct.PyBytesObject** %result, align 8
  %11 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  %cmp4 = icmp eq %struct.PyBytesObject* %11, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct.PyBytesObject* null, %struct.PyBytesObject** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %12 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  %ob_sval8 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %12, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval8, i32 0, i32 0
  store i8* %arraydecay9, i8** %result_s, align 8
  %13 = load i8*, i8** %result_s, align 8
  %14 = load i8*, i8** %self_s, align 8
  %15 = load i64, i64* %self_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %15, i32 1, i1 false)
  %16 = load i8*, i8** %result_s, align 8
  %17 = load i8*, i8** %next, align 8
  %18 = load i8*, i8** %self_s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr i8, i8* %16, i64 %sub.ptr.sub
  store i8* %add.ptr, i8** %start, align 8
  %19 = load i8, i8* %to_c.addr, align 1
  %20 = load i8*, i8** %start, align 8
  store i8 %19, i8* %20, align 1
  %21 = load i8*, i8** %start, align 8
  %incdec.ptr = getelementptr i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %start, align 8
  %22 = load i8*, i8** %result_s, align 8
  %23 = load i64, i64* %self_len, align 8
  %add.ptr10 = getelementptr i8, i8* %22, i64 %23
  store i8* %add.ptr10, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %if.end.7
  %24 = load i64, i64* %maxcount.addr, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %maxcount.addr, align 8
  %cmp11 = icmp sgt i64 %dec, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i8*, i8** %start, align 8
  %26 = load i8, i8* %from_c.addr, align 1
  %conv13 = sext i8 %26 to i32
  %27 = load i8*, i8** %end, align 8
  %28 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast15 = ptrtoint i8* %28 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %call17 = call i8* @memchr(i8* %25, i32 %conv13, i64 %sub.ptr.sub16) #7
  store i8* %call17, i8** %next, align 8
  %29 = load i8*, i8** %next, align 8
  %cmp18 = icmp eq i8* %29, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.body
  br label %while.end

if.end.21:                                        ; preds = %while.body
  %30 = load i8, i8* %to_c.addr, align 1
  %31 = load i8*, i8** %next, align 8
  store i8 %30, i8* %31, align 1
  %32 = load i8*, i8** %next, align 8
  %add.ptr22 = getelementptr i8, i8* %32, i64 1
  store i8* %add.ptr22, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.20, %while.cond
  %33 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  store %struct.PyBytesObject* %33, %struct.PyBytesObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6, %if.then
  %34 = load %struct.PyBytesObject*, %struct.PyBytesObject** %retval
  ret %struct.PyBytesObject* %34
}

; Function Attrs: nounwind uwtable
define internal %struct.PyBytesObject* @replace_substring_in_place(%struct.PyBytesObject* %self, i8* %from_s, i64 %from_len, i8* %to_s, i64 %to_len, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyBytesObject*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
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
  %result = alloca %struct.PyBytesObject*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store i8* %from_s, i8** %from_s.addr, align 8
  store i64 %from_len, i64* %from_len.addr, align 8
  store i8* %to_s, i8** %to_s.addr, align 8
  store i64 %to_len, i64* %to_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %self_s, align 8
  %1 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %2 = bitcast %struct.PyBytesObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %self_len, align 8
  %4 = load i8*, i8** %self_s, align 8
  %5 = load i64, i64* %self_len, align 8
  %6 = load i8*, i8** %from_s.addr, align 8
  %7 = load i64, i64* %from_len.addr, align 8
  %call = call i64 @stringlib_find(i8* %4, i64 %5, i8* %6, i64 %7, i64 0)
  store i64 %call, i64* %offset, align 8
  %8 = load i64, i64* %offset, align 8
  %cmp = icmp eq i64 %8, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %call1 = call %struct.PyBytesObject* @return_self(%struct.PyBytesObject* %9)
  store %struct.PyBytesObject* %call1, %struct.PyBytesObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %self_len, align 8
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %10)
  %11 = bitcast %struct._object* %call2 to %struct.PyBytesObject*
  store %struct.PyBytesObject* %11, %struct.PyBytesObject** %result, align 8
  %12 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  %cmp3 = icmp eq %struct.PyBytesObject* %12, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct.PyBytesObject* null, %struct.PyBytesObject** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %13 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  %ob_sval6 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %13, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval6, i32 0, i32 0
  store i8* %arraydecay7, i8** %result_s, align 8
  %14 = load i8*, i8** %result_s, align 8
  %15 = load i8*, i8** %self_s, align 8
  %16 = load i64, i64* %self_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 %16, i32 1, i1 false)
  %17 = load i8*, i8** %result_s, align 8
  %18 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %17, i64 %18
  store i8* %add.ptr, i8** %start, align 8
  %19 = load i8*, i8** %start, align 8
  %20 = load i8*, i8** %to_s.addr, align 8
  %21 = load i64, i64* %from_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 %21, i32 1, i1 false)
  %22 = load i64, i64* %from_len.addr, align 8
  %23 = load i8*, i8** %start, align 8
  %add.ptr8 = getelementptr i8, i8* %23, i64 %22
  store i8* %add.ptr8, i8** %start, align 8
  %24 = load i8*, i8** %result_s, align 8
  %25 = load i64, i64* %self_len, align 8
  %add.ptr9 = getelementptr i8, i8* %24, i64 %25
  store i8* %add.ptr9, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %if.end.5
  %26 = load i64, i64* %maxcount.addr, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %maxcount.addr, align 8
  %cmp10 = icmp sgt i64 %dec, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i8*, i8** %start, align 8
  %28 = load i8*, i8** %end, align 8
  %29 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %30 = load i8*, i8** %from_s.addr, align 8
  %31 = load i64, i64* %from_len.addr, align 8
  %call11 = call i64 @stringlib_find(i8* %27, i64 %sub.ptr.sub, i8* %30, i64 %31, i64 0)
  store i64 %call11, i64* %offset, align 8
  %32 = load i64, i64* %offset, align 8
  %cmp12 = icmp eq i64 %32, -1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.body
  br label %while.end

if.end.14:                                        ; preds = %while.body
  %33 = load i8*, i8** %start, align 8
  %34 = load i64, i64* %offset, align 8
  %add.ptr15 = getelementptr i8, i8* %33, i64 %34
  %35 = load i8*, i8** %to_s.addr, align 8
  %36 = load i64, i64* %from_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr15, i8* %35, i64 %36, i32 1, i1 false)
  %37 = load i64, i64* %offset, align 8
  %38 = load i64, i64* %from_len.addr, align 8
  %add = add i64 %37, %38
  %39 = load i8*, i8** %start, align 8
  %add.ptr16 = getelementptr i8, i8* %39, i64 %add
  store i8* %add.ptr16, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.13, %while.cond
  %40 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  store %struct.PyBytesObject* %40, %struct.PyBytesObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.4, %if.then
  %41 = load %struct.PyBytesObject*, %struct.PyBytesObject** %retval
  ret %struct.PyBytesObject* %41
}

; Function Attrs: nounwind uwtable
define internal %struct.PyBytesObject* @replace_single_character(%struct.PyBytesObject* %self, i8 signext %from_c, i8* %to_s, i64 %to_len, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyBytesObject*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
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
  %result = alloca %struct.PyBytesObject*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store i8 %from_c, i8* %from_c.addr, align 1
  store i8* %to_s, i8** %to_s.addr, align 8
  store i64 %to_len, i64* %to_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %self_s, align 8
  %1 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %2 = bitcast %struct.PyBytesObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %self_len, align 8
  %4 = load i8*, i8** %self_s, align 8
  %5 = load i64, i64* %self_len, align 8
  %6 = load i8, i8* %from_c.addr, align 1
  %7 = load i64, i64* %maxcount.addr, align 8
  %call = call i64 @countchar(i8* %4, i64 %5, i8 signext %6, i64 %7)
  store i64 %call, i64* %count, align 8
  %8 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %call1 = call %struct.PyBytesObject* @return_self(%struct.PyBytesObject* %9)
  store %struct.PyBytesObject* %call1, %struct.PyBytesObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %to_len.addr, align 8
  %sub = sub i64 %10, 1
  %11 = load i64, i64* %self_len, align 8
  %sub2 = sub i64 9223372036854775807, %11
  %12 = load i64, i64* %count, align 8
  %div = sdiv i64 %sub2, %12
  %cmp3 = icmp sgt i64 %sub, %div
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %13 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.97, i32 0, i32 0))
  store %struct.PyBytesObject* null, %struct.PyBytesObject** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %14 = load i64, i64* %self_len, align 8
  %15 = load i64, i64* %count, align 8
  %16 = load i64, i64* %to_len.addr, align 8
  %sub6 = sub i64 %16, 1
  %mul = mul i64 %15, %sub6
  %add = add i64 %14, %mul
  store i64 %add, i64* %result_len, align 8
  %17 = load i64, i64* %result_len, align 8
  %call7 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %17)
  %18 = bitcast %struct._object* %call7 to %struct.PyBytesObject*
  store %struct.PyBytesObject* %18, %struct.PyBytesObject** %result, align 8
  %cmp8 = icmp eq %struct.PyBytesObject* %18, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store %struct.PyBytesObject* null, %struct.PyBytesObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %19 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  %ob_sval11 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %19, i32 0, i32 2
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval11, i32 0, i32 0
  store i8* %arraydecay12, i8** %result_s, align 8
  %20 = load i8*, i8** %self_s, align 8
  store i8* %20, i8** %start, align 8
  %21 = load i8*, i8** %self_s, align 8
  %22 = load i64, i64* %self_len, align 8
  %add.ptr = getelementptr i8, i8* %21, i64 %22
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %if.end.10
  %23 = load i64, i64* %count, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %count, align 8
  %cmp13 = icmp sgt i64 %23, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i8*, i8** %start, align 8
  %25 = load i8, i8* %from_c.addr, align 1
  %conv = sext i8 %25 to i32
  %26 = load i8*, i8** %end, align 8
  %27 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call14 = call i8* @memchr(i8* %24, i32 %conv, i64 %sub.ptr.sub) #7
  store i8* %call14, i8** %next, align 8
  %28 = load i8*, i8** %next, align 8
  %cmp15 = icmp eq i8* %28, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body
  br label %while.end

if.end.18:                                        ; preds = %while.body
  %29 = load i8*, i8** %next, align 8
  %30 = load i8*, i8** %start, align 8
  %cmp19 = icmp eq i8* %29, %30
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.18
  %31 = load i8*, i8** %result_s, align 8
  %32 = load i8*, i8** %to_s.addr, align 8
  %33 = load i64, i64* %to_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 %33, i32 1, i1 false)
  %34 = load i64, i64* %to_len.addr, align 8
  %35 = load i8*, i8** %result_s, align 8
  %add.ptr22 = getelementptr i8, i8* %35, i64 %34
  store i8* %add.ptr22, i8** %result_s, align 8
  %36 = load i8*, i8** %start, align 8
  %add.ptr23 = getelementptr i8, i8* %36, i64 1
  store i8* %add.ptr23, i8** %start, align 8
  br label %if.end.33

if.else:                                          ; preds = %if.end.18
  %37 = load i8*, i8** %result_s, align 8
  %38 = load i8*, i8** %start, align 8
  %39 = load i8*, i8** %next, align 8
  %40 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast24 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast25 = ptrtoint i8* %40 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %sub.ptr.sub26, i32 1, i1 false)
  %41 = load i8*, i8** %next, align 8
  %42 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast27 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast28 = ptrtoint i8* %42 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %43 = load i8*, i8** %result_s, align 8
  %add.ptr30 = getelementptr i8, i8* %43, i64 %sub.ptr.sub29
  store i8* %add.ptr30, i8** %result_s, align 8
  %44 = load i8*, i8** %result_s, align 8
  %45 = load i8*, i8** %to_s.addr, align 8
  %46 = load i64, i64* %to_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 %46, i32 1, i1 false)
  %47 = load i64, i64* %to_len.addr, align 8
  %48 = load i8*, i8** %result_s, align 8
  %add.ptr31 = getelementptr i8, i8* %48, i64 %47
  store i8* %add.ptr31, i8** %result_s, align 8
  %49 = load i8*, i8** %next, align 8
  %add.ptr32 = getelementptr i8, i8* %49, i64 1
  store i8* %add.ptr32, i8** %start, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.21
  br label %while.cond

while.end:                                        ; preds = %if.then.17, %while.cond
  %50 = load i8*, i8** %result_s, align 8
  %51 = load i8*, i8** %start, align 8
  %52 = load i8*, i8** %end, align 8
  %53 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast34 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast35 = ptrtoint i8* %53 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 %sub.ptr.sub36, i32 1, i1 false)
  %54 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  store %struct.PyBytesObject* %54, %struct.PyBytesObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.9, %if.then.4, %if.then
  %55 = load %struct.PyBytesObject*, %struct.PyBytesObject** %retval
  ret %struct.PyBytesObject* %55
}

; Function Attrs: nounwind uwtable
define internal %struct.PyBytesObject* @replace_substring(%struct.PyBytesObject* %self, i8* %from_s, i64 %from_len, i8* %to_s, i64 %to_len, i64 %maxcount) #0 {
entry:
  %retval = alloca %struct.PyBytesObject*, align 8
  %self.addr = alloca %struct.PyBytesObject*, align 8
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
  %result = alloca %struct.PyBytesObject*, align 8
  store %struct.PyBytesObject* %self, %struct.PyBytesObject** %self.addr, align 8
  store i8* %from_s, i8** %from_s.addr, align 8
  store i64 %from_len, i64* %from_len.addr, align 8
  store i8* %to_s, i8** %to_s.addr, align 8
  store i64 %to_len, i64* %to_len.addr, align 8
  store i64 %maxcount, i64* %maxcount.addr, align 8
  %0 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %self_s, align 8
  %1 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %2 = bitcast %struct.PyBytesObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %self_len, align 8
  %4 = load i8*, i8** %self_s, align 8
  %5 = load i64, i64* %self_len, align 8
  %6 = load i8*, i8** %from_s.addr, align 8
  %7 = load i64, i64* %from_len.addr, align 8
  %8 = load i64, i64* %maxcount.addr, align 8
  %call = call i64 @stringlib_count(i8* %4, i64 %5, i8* %6, i64 %7, i64 %8)
  store i64 %call, i64* %count, align 8
  %9 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.PyBytesObject*, %struct.PyBytesObject** %self.addr, align 8
  %call1 = call %struct.PyBytesObject* @return_self(%struct.PyBytesObject* %10)
  store %struct.PyBytesObject* %call1, %struct.PyBytesObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load i64, i64* %to_len.addr, align 8
  %12 = load i64, i64* %from_len.addr, align 8
  %sub = sub i64 %11, %12
  %13 = load i64, i64* %self_len, align 8
  %sub2 = sub i64 9223372036854775807, %13
  %14 = load i64, i64* %count, align 8
  %div = sdiv i64 %sub2, %14
  %cmp3 = icmp sgt i64 %sub, %div
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %15 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.97, i32 0, i32 0))
  store %struct.PyBytesObject* null, %struct.PyBytesObject** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %16 = load i64, i64* %self_len, align 8
  %17 = load i64, i64* %count, align 8
  %18 = load i64, i64* %to_len.addr, align 8
  %19 = load i64, i64* %from_len.addr, align 8
  %sub6 = sub i64 %18, %19
  %mul = mul i64 %17, %sub6
  %add = add i64 %16, %mul
  store i64 %add, i64* %result_len, align 8
  %20 = load i64, i64* %result_len, align 8
  %call7 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %20)
  %21 = bitcast %struct._object* %call7 to %struct.PyBytesObject*
  store %struct.PyBytesObject* %21, %struct.PyBytesObject** %result, align 8
  %cmp8 = icmp eq %struct.PyBytesObject* %21, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store %struct.PyBytesObject* null, %struct.PyBytesObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %22 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  %ob_sval11 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %22, i32 0, i32 2
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval11, i32 0, i32 0
  store i8* %arraydecay12, i8** %result_s, align 8
  %23 = load i8*, i8** %self_s, align 8
  store i8* %23, i8** %start, align 8
  %24 = load i8*, i8** %self_s, align 8
  %25 = load i64, i64* %self_len, align 8
  %add.ptr = getelementptr i8, i8* %24, i64 %25
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.end.10
  %26 = load i64, i64* %count, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %count, align 8
  %cmp13 = icmp sgt i64 %26, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i8*, i8** %start, align 8
  %28 = load i8*, i8** %end, align 8
  %29 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %30 = load i8*, i8** %from_s.addr, align 8
  %31 = load i64, i64* %from_len.addr, align 8
  %call14 = call i64 @stringlib_find(i8* %27, i64 %sub.ptr.sub, i8* %30, i64 %31, i64 0)
  store i64 %call14, i64* %offset, align 8
  %32 = load i64, i64* %offset, align 8
  %cmp15 = icmp eq i64 %32, -1
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.body
  br label %while.end

if.end.17:                                        ; preds = %while.body
  %33 = load i8*, i8** %start, align 8
  %34 = load i64, i64* %offset, align 8
  %add.ptr18 = getelementptr i8, i8* %33, i64 %34
  store i8* %add.ptr18, i8** %next, align 8
  %35 = load i8*, i8** %next, align 8
  %36 = load i8*, i8** %start, align 8
  %cmp19 = icmp eq i8* %35, %36
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.17
  %37 = load i8*, i8** %result_s, align 8
  %38 = load i8*, i8** %to_s.addr, align 8
  %39 = load i64, i64* %to_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %39, i32 1, i1 false)
  %40 = load i64, i64* %to_len.addr, align 8
  %41 = load i8*, i8** %result_s, align 8
  %add.ptr21 = getelementptr i8, i8* %41, i64 %40
  store i8* %add.ptr21, i8** %result_s, align 8
  %42 = load i64, i64* %from_len.addr, align 8
  %43 = load i8*, i8** %start, align 8
  %add.ptr22 = getelementptr i8, i8* %43, i64 %42
  store i8* %add.ptr22, i8** %start, align 8
  br label %if.end.32

if.else:                                          ; preds = %if.end.17
  %44 = load i8*, i8** %result_s, align 8
  %45 = load i8*, i8** %start, align 8
  %46 = load i8*, i8** %next, align 8
  %47 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast23 = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %47 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 %sub.ptr.sub25, i32 1, i1 false)
  %48 = load i8*, i8** %next, align 8
  %49 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast26 = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %49 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %50 = load i8*, i8** %result_s, align 8
  %add.ptr29 = getelementptr i8, i8* %50, i64 %sub.ptr.sub28
  store i8* %add.ptr29, i8** %result_s, align 8
  %51 = load i8*, i8** %result_s, align 8
  %52 = load i8*, i8** %to_s.addr, align 8
  %53 = load i64, i64* %to_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 %53, i32 1, i1 false)
  %54 = load i64, i64* %to_len.addr, align 8
  %55 = load i8*, i8** %result_s, align 8
  %add.ptr30 = getelementptr i8, i8* %55, i64 %54
  store i8* %add.ptr30, i8** %result_s, align 8
  %56 = load i8*, i8** %next, align 8
  %57 = load i64, i64* %from_len.addr, align 8
  %add.ptr31 = getelementptr i8, i8* %56, i64 %57
  store i8* %add.ptr31, i8** %start, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.20
  br label %while.cond

while.end:                                        ; preds = %if.then.16, %while.cond
  %58 = load i8*, i8** %result_s, align 8
  %59 = load i8*, i8** %start, align 8
  %60 = load i8*, i8** %end, align 8
  %61 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast33 = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast34 = ptrtoint i8* %61 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 %sub.ptr.sub35, i32 1, i1 false)
  %62 = load %struct.PyBytesObject*, %struct.PyBytesObject** %result, align 8
  store %struct.PyBytesObject* %62, %struct.PyBytesObject** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.9, %if.then.4, %if.then
  %63 = load %struct.PyBytesObject*, %struct.PyBytesObject** %retval
  ret %struct.PyBytesObject* %63
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @countchar(i8* %target, i64 %target_len, i8 signext %c, i64 %maxcount) #5 {
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
define internal %struct._object* @stringlib_rpartition(%struct._object* %str_obj, i8* %str, i64 %str_len, %struct._object* %sep_obj, i8* %sep, i64 %sep_len) #5 {
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
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i32 0, i32 0))
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
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end.2
  %8 = load %struct.PyBytesObject*, %struct.PyBytesObject** @nullstring, align 8
  %9 = bitcast %struct.PyBytesObject* %8 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %11 = load %struct.PyBytesObject*, %struct.PyBytesObject** @nullstring, align 8
  %12 = bitcast %struct.PyBytesObject* %11 to %struct._object*
  %13 = load %struct._object*, %struct._object** %out, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %12, %struct._object** %arrayidx, align 8
  %15 = load %struct.PyBytesObject*, %struct.PyBytesObject** @nullstring, align 8
  %16 = bitcast %struct.PyBytesObject* %15 to %struct._object*
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt6, align 8
  %inc7 = add i64 %17, 1
  store i64 %inc7, i64* %ob_refcnt6, align 8
  %18 = load %struct.PyBytesObject*, %struct.PyBytesObject** @nullstring, align 8
  %19 = bitcast %struct.PyBytesObject* %18 to %struct._object*
  %20 = load %struct._object*, %struct._object** %out, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyTupleObject*
  %ob_item8 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1
  %arrayidx9 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item8, i32 0, i64 1
  store %struct._object* %19, %struct._object** %arrayidx9, align 8
  %22 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt10, align 8
  %inc11 = add i64 %23, 1
  store i64 %inc11, i64* %ob_refcnt10, align 8
  %24 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %25 = load %struct._object*, %struct._object** %out, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyTupleObject*
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %26, i32 0, i32 1
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 2
  store %struct._object* %24, %struct._object** %arrayidx13, align 8
  %27 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.2
  %28 = load i8*, i8** %str.addr, align 8
  %29 = load i64, i64* %pos, align 8
  %call15 = call %struct._object* @PyBytes_FromStringAndSize(i8* %28, i64 %29)
  %30 = load %struct._object*, %struct._object** %out, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyTupleObject*
  %ob_item16 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %31, i32 0, i32 1
  %arrayidx17 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item16, i32 0, i64 0
  store %struct._object* %call15, %struct._object** %arrayidx17, align 8
  %32 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt18, align 8
  %inc19 = add i64 %33, 1
  store i64 %inc19, i64* %ob_refcnt18, align 8
  %34 = load %struct._object*, %struct._object** %sep_obj.addr, align 8
  %35 = load %struct._object*, %struct._object** %out, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyTupleObject*
  %ob_item20 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1
  %arrayidx21 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item20, i32 0, i64 1
  store %struct._object* %34, %struct._object** %arrayidx21, align 8
  %37 = load i64, i64* %sep_len.addr, align 8
  %38 = load i64, i64* %pos, align 8
  %add = add i64 %38, %37
  store i64 %add, i64* %pos, align 8
  %39 = load i8*, i8** %str.addr, align 8
  %40 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr i8, i8* %39, i64 %40
  %41 = load i64, i64* %str_len.addr, align 8
  %42 = load i64, i64* %pos, align 8
  %sub = sub i64 %41, %42
  %call22 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %sub)
  %43 = load %struct._object*, %struct._object** %out, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyTupleObject*
  %ob_item23 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %44, i32 0, i32 1
  %arrayidx24 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item23, i32 0, i64 2
  store %struct._object* %call22, %struct._object** %arrayidx24, align 8
  %call25 = call %struct._object* @PyErr_Occurred()
  %tobool26 = icmp ne %struct._object* %call25, null
  br i1 %tobool26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.end.14
  br label %do.body

do.body:                                          ; preds = %if.then.27
  %45 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt28, align 8
  %dec = add i64 %47, -1
  store i64 %dec, i64* %ob_refcnt28, align 8
  %cmp29 = icmp ne i64 %dec, 0
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %do.body
  br label %if.end.31

if.else:                                          ; preds = %do.body
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %50(%struct._object* %51)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.14
  %52 = load %struct._object*, %struct._object** %out, align 8
  store %struct._object* %52, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %do.end, %if.then.5, %if.then.1, %if.then
  %53 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %53
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_rsplit_whitespace(%struct._object* %str_obj, i8* %str, i64 %str_len, i64 %maxcount) #5 {
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
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  %_py_decref_tmp126 = alloca %struct._object*, align 8
  %_py_decref_tmp139 = alloca %struct._object*, align 8
  %_py_decref_tmp161 = alloca %struct._object*, align 8
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

while.cond:                                       ; preds = %if.end.83, %if.end
  %4 = load i64, i64* %maxcount.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %maxcount.addr, align 8
  %cmp3 = icmp sgt i64 %4, 0
  br i1 %cmp3, label %while.body, label %while.end.85

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
  br label %while.end.85

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
  %22 = load i64, i64* %j, align 8
  %23 = load i64, i64* %str_len.addr, align 8
  %sub32 = sub i64 %23, 1
  %cmp33 = icmp eq i64 %22, %sub32
  br i1 %cmp33, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %while.end.31
  %24 = load i64, i64* %i, align 8
  %cmp35 = icmp slt i64 %24, 0
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.43

land.lhs.true.37:                                 ; preds = %land.lhs.true
  %25 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp38 = icmp eq %struct._typeobject* %26, @PyBytes_Type
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %land.lhs.true.37
  %27 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %29 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %30 = load %struct._object*, %struct._object** %list, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %31, i32 0, i32 1
  %32 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx41 = getelementptr %struct._object*, %struct._object** %32, i64 0
  store %struct._object* %29, %struct._object** %arrayidx41, align 8
  %33 = load i64, i64* %count, align 8
  %inc42 = add i64 %33, 1
  store i64 %inc42, i64* %count, align 8
  br label %while.end.85

if.end.43:                                        ; preds = %land.lhs.true.37, %land.lhs.true, %while.end.31
  %34 = load i8*, i8** %str.addr, align 8
  %35 = load i64, i64* %i, align 8
  %add44 = add i64 %35, 1
  %add.ptr = getelementptr i8, i8* %34, i64 %add44
  %36 = load i64, i64* %j, align 8
  %add45 = add i64 %36, 1
  %37 = load i64, i64* %i, align 8
  %add46 = add i64 %37, 1
  %sub47 = sub i64 %add45, %add46
  %call48 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %sub47)
  store %struct._object* %call48, %struct._object** %sub, align 8
  %38 = load %struct._object*, %struct._object** %sub, align 8
  %cmp49 = icmp eq %struct._object* %38, null
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.43
  br label %onError

if.end.52:                                        ; preds = %if.end.43
  %39 = load i64, i64* %count, align 8
  %cmp53 = icmp slt i64 %39, 12
  br i1 %cmp53, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %if.end.52
  %40 = load %struct._object*, %struct._object** %sub, align 8
  %41 = load i64, i64* %count, align 8
  %42 = load %struct._object*, %struct._object** %list, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyListObject*
  %ob_item56 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %43, i32 0, i32 1
  %44 = load %struct._object**, %struct._object*** %ob_item56, align 8
  %arrayidx57 = getelementptr %struct._object*, %struct._object** %44, i64 %41
  store %struct._object* %40, %struct._object** %arrayidx57, align 8
  br label %if.end.83

if.else:                                          ; preds = %if.end.52
  %45 = load %struct._object*, %struct._object** %list, align 8
  %46 = load %struct._object*, %struct._object** %sub, align 8
  %call58 = call i32 @PyList_Append(%struct._object* %45, %struct._object* %46)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.69

if.then.60:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.60
  %47 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %49, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body
  br label %if.end.68

if.else.66:                                       ; preds = %do.body
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %52(%struct._object* %53)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end

do.end:                                           ; preds = %if.end.68
  br label %onError

if.else.69:                                       ; preds = %if.else
  br label %do.body.70

do.body.70:                                       ; preds = %if.else.69
  %54 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp71, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt72, align 8
  %dec73 = add i64 %56, -1
  store i64 %dec73, i64* %ob_refcnt72, align 8
  %cmp74 = icmp ne i64 %dec73, 0
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %do.body.70
  br label %if.end.80

if.else.77:                                       ; preds = %do.body.70
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  call void %59(%struct._object* %60)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %if.end.82

if.end.82:                                        ; preds = %do.end.81
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.55
  %61 = load i64, i64* %count, align 8
  %inc84 = add i64 %61, 1
  store i64 %inc84, i64* %count, align 8
  br label %while.cond

while.end.85:                                     ; preds = %if.then.40, %if.then.13, %while.cond
  %62 = load i64, i64* %i, align 8
  %cmp86 = icmp sge i64 %62, 0
  br i1 %cmp86, label %if.then.88, label %if.end.154

if.then.88:                                       ; preds = %while.end.85
  br label %while.cond.89

while.cond.89:                                    ; preds = %while.body.102, %if.then.88
  %63 = load i64, i64* %i, align 8
  %cmp90 = icmp sge i64 %63, 0
  br i1 %cmp90, label %land.rhs.92, label %land.end.101

land.rhs.92:                                      ; preds = %while.cond.89
  %64 = load i64, i64* %i, align 8
  %65 = load i8*, i8** %str.addr, align 8
  %arrayidx93 = getelementptr i8, i8* %65, i64 %64
  %66 = load i8, i8* %arrayidx93, align 1
  %conv94 = sext i8 %66 to i32
  %and95 = and i32 %conv94, 255
  %conv96 = trunc i32 %and95 to i8
  %idxprom97 = zext i8 %conv96 to i64
  %arrayidx98 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom97
  %67 = load i32, i32* %arrayidx98, align 4
  %and99 = and i32 %67, 8
  %tobool100 = icmp ne i32 %and99, 0
  br label %land.end.101

land.end.101:                                     ; preds = %land.rhs.92, %while.cond.89
  %68 = phi i1 [ false, %while.cond.89 ], [ %tobool100, %land.rhs.92 ]
  br i1 %68, label %while.body.102, label %while.end.104

while.body.102:                                   ; preds = %land.end.101
  %69 = load i64, i64* %i, align 8
  %dec103 = add i64 %69, -1
  store i64 %dec103, i64* %i, align 8
  br label %while.cond.89

while.end.104:                                    ; preds = %land.end.101
  %70 = load i64, i64* %i, align 8
  %cmp105 = icmp sge i64 %70, 0
  br i1 %cmp105, label %if.then.107, label %if.end.153

if.then.107:                                      ; preds = %while.end.104
  %71 = load i8*, i8** %str.addr, align 8
  %add.ptr108 = getelementptr i8, i8* %71, i64 0
  %72 = load i64, i64* %i, align 8
  %add109 = add i64 %72, 1
  %sub110 = sub i64 %add109, 0
  %call111 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr108, i64 %sub110)
  store %struct._object* %call111, %struct._object** %sub, align 8
  %73 = load %struct._object*, %struct._object** %sub, align 8
  %cmp112 = icmp eq %struct._object* %73, null
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.then.107
  br label %onError

if.end.115:                                       ; preds = %if.then.107
  %74 = load i64, i64* %count, align 8
  %cmp116 = icmp slt i64 %74, 12
  br i1 %cmp116, label %if.then.118, label %if.else.121

if.then.118:                                      ; preds = %if.end.115
  %75 = load %struct._object*, %struct._object** %sub, align 8
  %76 = load i64, i64* %count, align 8
  %77 = load %struct._object*, %struct._object** %list, align 8
  %78 = bitcast %struct._object* %77 to %struct.PyListObject*
  %ob_item119 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %78, i32 0, i32 1
  %79 = load %struct._object**, %struct._object*** %ob_item119, align 8
  %arrayidx120 = getelementptr %struct._object*, %struct._object** %79, i64 %76
  store %struct._object* %75, %struct._object** %arrayidx120, align 8
  br label %if.end.151

if.else.121:                                      ; preds = %if.end.115
  %80 = load %struct._object*, %struct._object** %list, align 8
  %81 = load %struct._object*, %struct._object** %sub, align 8
  %call122 = call i32 @PyList_Append(%struct._object* %80, %struct._object* %81)
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %if.then.124, label %if.else.137

if.then.124:                                      ; preds = %if.else.121
  br label %do.body.125

do.body.125:                                      ; preds = %if.then.124
  %82 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp126, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_refcnt127 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt127, align 8
  %dec128 = add i64 %84, -1
  store i64 %dec128, i64* %ob_refcnt127, align 8
  %cmp129 = icmp ne i64 %dec128, 0
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %do.body.125
  br label %if.end.135

if.else.132:                                      ; preds = %do.body.125
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_type133 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type133, align 8
  %tp_dealloc134 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc134, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  call void %87(%struct._object* %88)
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.131
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  br label %onError

if.else.137:                                      ; preds = %if.else.121
  br label %do.body.138

do.body.138:                                      ; preds = %if.else.137
  %89 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp139, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt140, align 8
  %dec141 = add i64 %91, -1
  store i64 %dec141, i64* %ob_refcnt140, align 8
  %cmp142 = icmp ne i64 %dec141, 0
  br i1 %cmp142, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %do.body.138
  br label %if.end.148

if.else.145:                                      ; preds = %do.body.138
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8
  %tp_dealloc147 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc147, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  call void %94(%struct._object* %95)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.144
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  br label %if.end.150

if.end.150:                                       ; preds = %do.end.149
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.then.118
  %96 = load i64, i64* %count, align 8
  %inc152 = add i64 %96, 1
  store i64 %inc152, i64* %count, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.151, %while.end.104
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %while.end.85
  %97 = load i64, i64* %count, align 8
  %98 = load %struct._object*, %struct._object** %list, align 8
  %99 = bitcast %struct._object* %98 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %99, i32 0, i32 1
  store i64 %97, i64* %ob_size, align 8
  %100 = load %struct._object*, %struct._object** %list, align 8
  %call155 = call i32 @PyList_Reverse(%struct._object* %100)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.154
  br label %onError

if.end.159:                                       ; preds = %if.end.154
  %101 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %101, %struct._object** %retval
  br label %return

onError:                                          ; preds = %if.then.158, %do.end.136, %if.then.114, %do.end, %if.then.51
  br label %do.body.160

do.body.160:                                      ; preds = %onError
  %102 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp161, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  %ob_refcnt162 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt162, align 8
  %dec163 = add i64 %104, -1
  store i64 %dec163, i64* %ob_refcnt162, align 8
  %cmp164 = icmp ne i64 %dec163, 0
  br i1 %cmp164, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %do.body.160
  br label %if.end.170

if.else.167:                                      ; preds = %do.body.160
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  %ob_type168 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type168, align 8
  %tp_dealloc169 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc169, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  call void %107(%struct._object* %108)
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.167, %if.then.166
  br label %do.end.171

do.end.171:                                       ; preds = %if.end.170
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.171, %if.end.159, %if.then
  %109 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %109
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_rsplit(%struct._object* %str_obj, i8* %str, i64 %str_len, i8* %sep, i64 %sep_len, i64 %maxcount) #5 {
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
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  %_py_decref_tmp102 = alloca %struct._object*, align 8
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
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i32 0, i32 0))
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
  %call17 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %sub16)
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
  %50 = load i64, i64* %count, align 8
  %cmp46 = icmp eq i64 %50, 0
  br i1 %cmp46, label %land.lhs.true, label %if.else.55

land.lhs.true:                                    ; preds = %while.end
  %51 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %cmp48 = icmp eq %struct._typeobject* %52, @PyBytes_Type
  br i1 %cmp48, label %if.then.49, label %if.else.55

if.then.49:                                       ; preds = %land.lhs.true
  %53 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt50, align 8
  %inc51 = add i64 %54, 1
  store i64 %inc51, i64* %ob_refcnt50, align 8
  %55 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %56 = load %struct._object*, %struct._object** %list, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyListObject*
  %ob_item52 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %57, i32 0, i32 1
  %58 = load %struct._object**, %struct._object*** %ob_item52, align 8
  %arrayidx53 = getelementptr %struct._object*, %struct._object** %58, i64 0
  store %struct._object* %55, %struct._object** %arrayidx53, align 8
  %59 = load i64, i64* %count, align 8
  %inc54 = add i64 %59, 1
  store i64 %inc54, i64* %count, align 8
  br label %if.end.96

if.else.55:                                       ; preds = %land.lhs.true, %while.end
  %60 = load i8*, i8** %str.addr, align 8
  %add.ptr56 = getelementptr i8, i8* %60, i64 0
  %61 = load i64, i64* %j, align 8
  %sub57 = sub i64 %61, 0
  %call58 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr56, i64 %sub57)
  store %struct._object* %call58, %struct._object** %sub, align 8
  %62 = load %struct._object*, %struct._object** %sub, align 8
  %cmp59 = icmp eq %struct._object* %62, null
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.else.55
  br label %onError

if.end.61:                                        ; preds = %if.else.55
  %63 = load i64, i64* %count, align 8
  %cmp62 = icmp slt i64 %63, 12
  br i1 %cmp62, label %if.then.63, label %if.else.66

if.then.63:                                       ; preds = %if.end.61
  %64 = load %struct._object*, %struct._object** %sub, align 8
  %65 = load i64, i64* %count, align 8
  %66 = load %struct._object*, %struct._object** %list, align 8
  %67 = bitcast %struct._object* %66 to %struct.PyListObject*
  %ob_item64 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %67, i32 0, i32 1
  %68 = load %struct._object**, %struct._object*** %ob_item64, align 8
  %arrayidx65 = getelementptr %struct._object*, %struct._object** %68, i64 %65
  store %struct._object* %64, %struct._object** %arrayidx65, align 8
  br label %if.end.94

if.else.66:                                       ; preds = %if.end.61
  %69 = load %struct._object*, %struct._object** %list, align 8
  %70 = load %struct._object*, %struct._object** %sub, align 8
  %call67 = call i32 @PyList_Append(%struct._object* %69, %struct._object* %70)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.else.81

if.then.69:                                       ; preds = %if.else.66
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  %71 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp71, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt72, align 8
  %dec73 = add i64 %73, -1
  store i64 %dec73, i64* %ob_refcnt72, align 8
  %cmp74 = icmp ne i64 %dec73, 0
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body.70
  br label %if.end.79

if.else.76:                                       ; preds = %do.body.70
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  call void %76(%struct._object* %77)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  br label %onError

if.else.81:                                       ; preds = %if.else.66
  br label %do.body.82

do.body.82:                                       ; preds = %if.else.81
  %78 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %78, %struct._object** %_py_decref_tmp83, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0
  %80 = load i64, i64* %ob_refcnt84, align 8
  %dec85 = add i64 %80, -1
  store i64 %dec85, i64* %ob_refcnt84, align 8
  %cmp86 = icmp ne i64 %dec85, 0
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.82
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.82
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  call void %83(%struct._object* %84)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %if.end.93

if.end.93:                                        ; preds = %do.end.92
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.63
  %85 = load i64, i64* %count, align 8
  %inc95 = add i64 %85, 1
  store i64 %inc95, i64* %count, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.94, %if.then.49
  %86 = load i64, i64* %count, align 8
  %87 = load %struct._object*, %struct._object** %list, align 8
  %88 = bitcast %struct._object* %87 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %88, i32 0, i32 1
  store i64 %86, i64* %ob_size, align 8
  %89 = load %struct._object*, %struct._object** %list, align 8
  %call97 = call i32 @PyList_Reverse(%struct._object* %89)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.96
  br label %onError

if.end.100:                                       ; preds = %if.end.96
  %90 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %90, %struct._object** %retval
  br label %return

onError:                                          ; preds = %if.then.99, %do.end.80, %if.then.60, %do.end, %if.then.19
  br label %do.body.101

do.body.101:                                      ; preds = %onError
  %91 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %91, %struct._object** %_py_decref_tmp102, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0
  %93 = load i64, i64* %ob_refcnt103, align 8
  %dec104 = add i64 %93, -1
  store i64 %dec104, i64* %ob_refcnt103, align 8
  %cmp105 = icmp ne i64 %dec104, 0
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.101
  br label %if.end.110

if.else.107:                                      ; preds = %do.body.101
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  call void %96(%struct._object* %97)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.111, %if.end.100, %if.then.7, %if.then.2, %if.then
  %98 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %98
}

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare i32 @PyList_Reverse(%struct._object*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_rsplit_char(%struct._object* %str_obj, i8* %str, i64 %str_len, i8 signext %ch, i64 %maxcount) #5 {
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
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp117 = alloca %struct._object*, align 8
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
  %call14 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %sub13)
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
  %42 = load i64, i64* %count, align 8
  %cmp49 = icmp eq i64 %42, 0
  br i1 %cmp49, label %land.lhs.true, label %if.else.60

land.lhs.true:                                    ; preds = %while.end
  %43 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %cmp52 = icmp eq %struct._typeobject* %44, @PyBytes_Type
  br i1 %cmp52, label %if.then.54, label %if.else.60

if.then.54:                                       ; preds = %land.lhs.true
  %45 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt55, align 8
  %inc56 = add i64 %46, 1
  store i64 %inc56, i64* %ob_refcnt55, align 8
  %47 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %48 = load %struct._object*, %struct._object** %list, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyListObject*
  %ob_item57 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %49, i32 0, i32 1
  %50 = load %struct._object**, %struct._object*** %ob_item57, align 8
  %arrayidx58 = getelementptr %struct._object*, %struct._object** %50, i64 0
  store %struct._object* %47, %struct._object** %arrayidx58, align 8
  %51 = load i64, i64* %count, align 8
  %inc59 = add i64 %51, 1
  store i64 %inc59, i64* %count, align 8
  br label %if.end.110

if.else.60:                                       ; preds = %land.lhs.true, %while.end
  %52 = load i64, i64* %j, align 8
  %cmp61 = icmp sge i64 %52, -1
  br i1 %cmp61, label %if.then.63, label %if.end.109

if.then.63:                                       ; preds = %if.else.60
  %53 = load i8*, i8** %str.addr, align 8
  %add.ptr64 = getelementptr i8, i8* %53, i64 0
  %54 = load i64, i64* %j, align 8
  %add65 = add i64 %54, 1
  %sub66 = sub i64 %add65, 0
  %call67 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr64, i64 %sub66)
  store %struct._object* %call67, %struct._object** %sub, align 8
  %55 = load %struct._object*, %struct._object** %sub, align 8
  %cmp68 = icmp eq %struct._object* %55, null
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.63
  br label %onError

if.end.71:                                        ; preds = %if.then.63
  %56 = load i64, i64* %count, align 8
  %cmp72 = icmp slt i64 %56, 12
  br i1 %cmp72, label %if.then.74, label %if.else.77

if.then.74:                                       ; preds = %if.end.71
  %57 = load %struct._object*, %struct._object** %sub, align 8
  %58 = load i64, i64* %count, align 8
  %59 = load %struct._object*, %struct._object** %list, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyListObject*
  %ob_item75 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %60, i32 0, i32 1
  %61 = load %struct._object**, %struct._object*** %ob_item75, align 8
  %arrayidx76 = getelementptr %struct._object*, %struct._object** %61, i64 %58
  store %struct._object* %57, %struct._object** %arrayidx76, align 8
  br label %if.end.107

if.else.77:                                       ; preds = %if.end.71
  %62 = load %struct._object*, %struct._object** %list, align 8
  %63 = load %struct._object*, %struct._object** %sub, align 8
  %call78 = call i32 @PyList_Append(%struct._object* %62, %struct._object* %63)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.else.93

if.then.80:                                       ; preds = %if.else.77
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  %64 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp82, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %66, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.81
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.81
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %69(%struct._object* %70)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %onError

if.else.93:                                       ; preds = %if.else.77
  br label %do.body.94

do.body.94:                                       ; preds = %if.else.93
  %71 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp95, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt96, align 8
  %dec97 = add i64 %73, -1
  store i64 %dec97, i64* %ob_refcnt96, align 8
  %cmp98 = icmp ne i64 %dec97, 0
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %do.body.94
  br label %if.end.104

if.else.101:                                      ; preds = %do.body.94
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  call void %76(%struct._object* %77)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %if.end.106

if.end.106:                                       ; preds = %do.end.105
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.74
  %78 = load i64, i64* %count, align 8
  %inc108 = add i64 %78, 1
  store i64 %inc108, i64* %count, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.107, %if.else.60
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.54
  %79 = load i64, i64* %count, align 8
  %80 = load %struct._object*, %struct._object** %list, align 8
  %81 = bitcast %struct._object* %80 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %81, i32 0, i32 1
  store i64 %79, i64* %ob_size, align 8
  %82 = load %struct._object*, %struct._object** %list, align 8
  %call111 = call i32 @PyList_Reverse(%struct._object* %82)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.110
  br label %onError

if.end.115:                                       ; preds = %if.end.110
  %83 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %83, %struct._object** %retval
  br label %return

onError:                                          ; preds = %if.then.114, %do.end.92, %if.then.70, %do.end, %if.then.17
  br label %do.body.116

do.body.116:                                      ; preds = %onError
  %84 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %84, %struct._object** %_py_decref_tmp117, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8
  %ob_refcnt118 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt118, align 8
  %dec119 = add i64 %86, -1
  store i64 %dec119, i64* %ob_refcnt118, align 8
  %cmp120 = icmp ne i64 %dec119, 0
  br i1 %cmp120, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %do.body.116
  br label %if.end.126

if.else.123:                                      ; preds = %do.body.116
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8
  %tp_dealloc125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp117, align 8
  call void %89(%struct._object* %90)
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.122
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.127, %if.end.115, %if.then
  %91 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %91
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_split_whitespace(%struct._object* %str_obj, i8* %str, i64 %str_len, i64 %maxcount) #5 {
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
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp120 = alloca %struct._object*, align 8
  %_py_decref_tmp133 = alloca %struct._object*, align 8
  %_py_decref_tmp150 = alloca %struct._object*, align 8
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

while.cond:                                       ; preds = %if.end.78, %if.end
  %3 = load i64, i64* %maxcount.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %maxcount.addr, align 8
  %cmp2 = icmp sgt i64 %3, 0
  br i1 %cmp2, label %while.body, label %while.end.80

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
  br label %while.end.80

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
  %24 = load i64, i64* %j, align 8
  %cmp30 = icmp eq i64 %24, 0
  br i1 %cmp30, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %while.end.29
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %str_len.addr, align 8
  %cmp32 = icmp eq i64 %25, %26
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.41

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %27 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp35 = icmp eq %struct._typeobject* %28, @PyBytes_Type
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %land.lhs.true.34
  %29 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %inc38 = add i64 %30, 1
  store i64 %inc38, i64* %ob_refcnt, align 8
  %31 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %32 = load %struct._object*, %struct._object** %list, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %33, i32 0, i32 1
  %34 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx39 = getelementptr %struct._object*, %struct._object** %34, i64 0
  store %struct._object* %31, %struct._object** %arrayidx39, align 8
  %35 = load i64, i64* %count, align 8
  %inc40 = add i64 %35, 1
  store i64 %inc40, i64* %count, align 8
  br label %while.end.80

if.end.41:                                        ; preds = %land.lhs.true.34, %land.lhs.true, %while.end.29
  %36 = load i8*, i8** %str.addr, align 8
  %37 = load i64, i64* %j, align 8
  %add.ptr = getelementptr i8, i8* %36, i64 %37
  %38 = load i64, i64* %i, align 8
  %39 = load i64, i64* %j, align 8
  %sub42 = sub i64 %38, %39
  %call43 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %sub42)
  store %struct._object* %call43, %struct._object** %sub, align 8
  %40 = load %struct._object*, %struct._object** %sub, align 8
  %cmp44 = icmp eq %struct._object* %40, null
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.41
  br label %onError

if.end.47:                                        ; preds = %if.end.41
  %41 = load i64, i64* %count, align 8
  %cmp48 = icmp slt i64 %41, 12
  br i1 %cmp48, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.end.47
  %42 = load %struct._object*, %struct._object** %sub, align 8
  %43 = load i64, i64* %count, align 8
  %44 = load %struct._object*, %struct._object** %list, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyListObject*
  %ob_item51 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %45, i32 0, i32 1
  %46 = load %struct._object**, %struct._object*** %ob_item51, align 8
  %arrayidx52 = getelementptr %struct._object*, %struct._object** %46, i64 %43
  store %struct._object* %42, %struct._object** %arrayidx52, align 8
  br label %if.end.78

if.else:                                          ; preds = %if.end.47
  %47 = load %struct._object*, %struct._object** %list, align 8
  %48 = load %struct._object*, %struct._object** %sub, align 8
  %call53 = call i32 @PyList_Append(%struct._object* %47, %struct._object* %48)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.64

if.then.55:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.55
  %49 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %51, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body
  br label %if.end.63

if.else.61:                                       ; preds = %do.body
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %54(%struct._object* %55)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end

do.end:                                           ; preds = %if.end.63
  br label %onError

if.else.64:                                       ; preds = %if.else
  br label %do.body.65

do.body.65:                                       ; preds = %if.else.64
  %56 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp66, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt67, align 8
  %dec68 = add i64 %58, -1
  store i64 %dec68, i64* %ob_refcnt67, align 8
  %cmp69 = icmp ne i64 %dec68, 0
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.65
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.65
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  call void %61(%struct._object* %62)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.50
  %63 = load i64, i64* %count, align 8
  %inc79 = add i64 %63, 1
  store i64 %inc79, i64* %count, align 8
  br label %while.cond

while.end.80:                                     ; preds = %if.then.37, %if.then.11, %while.cond
  %64 = load i64, i64* %i, align 8
  %65 = load i64, i64* %str_len.addr, align 8
  %cmp81 = icmp slt i64 %64, %65
  br i1 %cmp81, label %if.then.83, label %if.end.148

if.then.83:                                       ; preds = %while.end.80
  br label %while.cond.84

while.cond.84:                                    ; preds = %while.body.97, %if.then.83
  %66 = load i64, i64* %i, align 8
  %67 = load i64, i64* %str_len.addr, align 8
  %cmp85 = icmp slt i64 %66, %67
  br i1 %cmp85, label %land.rhs.87, label %land.end.96

land.rhs.87:                                      ; preds = %while.cond.84
  %68 = load i64, i64* %i, align 8
  %69 = load i8*, i8** %str.addr, align 8
  %arrayidx88 = getelementptr i8, i8* %69, i64 %68
  %70 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %70 to i32
  %and90 = and i32 %conv89, 255
  %conv91 = trunc i32 %and90 to i8
  %idxprom92 = zext i8 %conv91 to i64
  %arrayidx93 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom92
  %71 = load i32, i32* %arrayidx93, align 4
  %and94 = and i32 %71, 8
  %tobool95 = icmp ne i32 %and94, 0
  br label %land.end.96

land.end.96:                                      ; preds = %land.rhs.87, %while.cond.84
  %72 = phi i1 [ false, %while.cond.84 ], [ %tobool95, %land.rhs.87 ]
  br i1 %72, label %while.body.97, label %while.end.99

while.body.97:                                    ; preds = %land.end.96
  %73 = load i64, i64* %i, align 8
  %inc98 = add i64 %73, 1
  store i64 %inc98, i64* %i, align 8
  br label %while.cond.84

while.end.99:                                     ; preds = %land.end.96
  %74 = load i64, i64* %i, align 8
  %75 = load i64, i64* %str_len.addr, align 8
  %cmp100 = icmp ne i64 %74, %75
  br i1 %cmp100, label %if.then.102, label %if.end.147

if.then.102:                                      ; preds = %while.end.99
  %76 = load i8*, i8** %str.addr, align 8
  %77 = load i64, i64* %i, align 8
  %add.ptr103 = getelementptr i8, i8* %76, i64 %77
  %78 = load i64, i64* %str_len.addr, align 8
  %79 = load i64, i64* %i, align 8
  %sub104 = sub i64 %78, %79
  %call105 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr103, i64 %sub104)
  store %struct._object* %call105, %struct._object** %sub, align 8
  %80 = load %struct._object*, %struct._object** %sub, align 8
  %cmp106 = icmp eq %struct._object* %80, null
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.then.102
  br label %onError

if.end.109:                                       ; preds = %if.then.102
  %81 = load i64, i64* %count, align 8
  %cmp110 = icmp slt i64 %81, 12
  br i1 %cmp110, label %if.then.112, label %if.else.115

if.then.112:                                      ; preds = %if.end.109
  %82 = load %struct._object*, %struct._object** %sub, align 8
  %83 = load i64, i64* %count, align 8
  %84 = load %struct._object*, %struct._object** %list, align 8
  %85 = bitcast %struct._object* %84 to %struct.PyListObject*
  %ob_item113 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %85, i32 0, i32 1
  %86 = load %struct._object**, %struct._object*** %ob_item113, align 8
  %arrayidx114 = getelementptr %struct._object*, %struct._object** %86, i64 %83
  store %struct._object* %82, %struct._object** %arrayidx114, align 8
  br label %if.end.145

if.else.115:                                      ; preds = %if.end.109
  %87 = load %struct._object*, %struct._object** %list, align 8
  %88 = load %struct._object*, %struct._object** %sub, align 8
  %call116 = call i32 @PyList_Append(%struct._object* %87, %struct._object* %88)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.else.131

if.then.118:                                      ; preds = %if.else.115
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.118
  %89 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp120, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_refcnt121 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt121, align 8
  %dec122 = add i64 %91, -1
  store i64 %dec122, i64* %ob_refcnt121, align 8
  %cmp123 = icmp ne i64 %dec122, 0
  br i1 %cmp123, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %do.body.119
  br label %if.end.129

if.else.126:                                      ; preds = %do.body.119
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_type127 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type127, align 8
  %tp_dealloc128 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc128, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  call void %94(%struct._object* %95)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.125
  br label %do.end.130

do.end.130:                                       ; preds = %if.end.129
  br label %onError

if.else.131:                                      ; preds = %if.else.115
  br label %do.body.132

do.body.132:                                      ; preds = %if.else.131
  %96 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %96, %struct._object** %_py_decref_tmp133, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_refcnt134 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0
  %98 = load i64, i64* %ob_refcnt134, align 8
  %dec135 = add i64 %98, -1
  store i64 %dec135, i64* %ob_refcnt134, align 8
  %cmp136 = icmp ne i64 %dec135, 0
  br i1 %cmp136, label %if.then.138, label %if.else.139

if.then.138:                                      ; preds = %do.body.132
  br label %if.end.142

if.else.139:                                      ; preds = %do.body.132
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_type140 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type140, align 8
  %tp_dealloc141 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc141, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  call void %101(%struct._object* %102)
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.139, %if.then.138
  br label %do.end.143

do.end.143:                                       ; preds = %if.end.142
  br label %if.end.144

if.end.144:                                       ; preds = %do.end.143
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.112
  %103 = load i64, i64* %count, align 8
  %inc146 = add i64 %103, 1
  store i64 %inc146, i64* %count, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.145, %while.end.99
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %while.end.80
  %104 = load i64, i64* %count, align 8
  %105 = load %struct._object*, %struct._object** %list, align 8
  %106 = bitcast %struct._object* %105 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %106, i32 0, i32 1
  store i64 %104, i64* %ob_size, align 8
  %107 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %107, %struct._object** %retval
  br label %return

onError:                                          ; preds = %do.end.130, %if.then.108, %do.end, %if.then.46
  br label %do.body.149

do.body.149:                                      ; preds = %onError
  %108 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %108, %struct._object** %_py_decref_tmp150, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_refcnt151 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0
  %110 = load i64, i64* %ob_refcnt151, align 8
  %dec152 = add i64 %110, -1
  store i64 %dec152, i64* %ob_refcnt151, align 8
  %cmp153 = icmp ne i64 %dec152, 0
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %do.body.149
  br label %if.end.159

if.else.156:                                      ; preds = %do.body.149
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_type157 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type157, align 8
  %tp_dealloc158 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc158, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  call void %113(%struct._object* %114)
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.156, %if.then.155
  br label %do.end.160

do.end.160:                                       ; preds = %if.end.159
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.160, %if.end.148, %if.then
  %115 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %115
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_split(%struct._object* %str_obj, i8* %str, i64 %str_len, i8* %sep, i64 %sep_len, i64 %maxcount) #5 {
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
  %_py_decref_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp100 = alloca %struct._object*, align 8
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
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i32 0, i32 0))
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
  %call18 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr16, i64 %sub17)
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
  %52 = load i64, i64* %count, align 8
  %cmp48 = icmp eq i64 %52, 0
  br i1 %cmp48, label %land.lhs.true, label %if.else.57

land.lhs.true:                                    ; preds = %while.end
  %53 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %cmp50 = icmp eq %struct._typeobject* %54, @PyBytes_Type
  br i1 %cmp50, label %if.then.51, label %if.else.57

if.then.51:                                       ; preds = %land.lhs.true
  %55 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt52, align 8
  %inc53 = add i64 %56, 1
  store i64 %inc53, i64* %ob_refcnt52, align 8
  %57 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %58 = load %struct._object*, %struct._object** %list, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyListObject*
  %ob_item54 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %59, i32 0, i32 1
  %60 = load %struct._object**, %struct._object*** %ob_item54, align 8
  %arrayidx55 = getelementptr %struct._object*, %struct._object** %60, i64 0
  store %struct._object* %57, %struct._object** %arrayidx55, align 8
  %61 = load i64, i64* %count, align 8
  %inc56 = add i64 %61, 1
  store i64 %inc56, i64* %count, align 8
  br label %if.end.98

if.else.57:                                       ; preds = %land.lhs.true, %while.end
  %62 = load i8*, i8** %str.addr, align 8
  %63 = load i64, i64* %i, align 8
  %add.ptr58 = getelementptr i8, i8* %62, i64 %63
  %64 = load i64, i64* %str_len.addr, align 8
  %65 = load i64, i64* %i, align 8
  %sub59 = sub i64 %64, %65
  %call60 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr58, i64 %sub59)
  store %struct._object* %call60, %struct._object** %sub, align 8
  %66 = load %struct._object*, %struct._object** %sub, align 8
  %cmp61 = icmp eq %struct._object* %66, null
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.else.57
  br label %onError

if.end.63:                                        ; preds = %if.else.57
  %67 = load i64, i64* %count, align 8
  %cmp64 = icmp slt i64 %67, 12
  br i1 %cmp64, label %if.then.65, label %if.else.68

if.then.65:                                       ; preds = %if.end.63
  %68 = load %struct._object*, %struct._object** %sub, align 8
  %69 = load i64, i64* %count, align 8
  %70 = load %struct._object*, %struct._object** %list, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyListObject*
  %ob_item66 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %71, i32 0, i32 1
  %72 = load %struct._object**, %struct._object*** %ob_item66, align 8
  %arrayidx67 = getelementptr %struct._object*, %struct._object** %72, i64 %69
  store %struct._object* %68, %struct._object** %arrayidx67, align 8
  br label %if.end.96

if.else.68:                                       ; preds = %if.end.63
  %73 = load %struct._object*, %struct._object** %list, align 8
  %74 = load %struct._object*, %struct._object** %sub, align 8
  %call69 = call i32 @PyList_Append(%struct._object* %73, %struct._object* %74)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.else.83

if.then.71:                                       ; preds = %if.else.68
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.71
  %75 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp73, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt74, align 8
  %dec75 = add i64 %77, -1
  store i64 %dec75, i64* %ob_refcnt74, align 8
  %cmp76 = icmp ne i64 %dec75, 0
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %do.body.72
  br label %if.end.81

if.else.78:                                       ; preds = %do.body.72
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  call void %80(%struct._object* %81)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.77
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  br label %onError

if.else.83:                                       ; preds = %if.else.68
  br label %do.body.84

do.body.84:                                       ; preds = %if.else.83
  %82 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp85, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %84, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %87(%struct._object* %88)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.65
  %89 = load i64, i64* %count, align 8
  %inc97 = add i64 %89, 1
  store i64 %inc97, i64* %count, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.96, %if.then.51
  %90 = load i64, i64* %count, align 8
  %91 = load %struct._object*, %struct._object** %list, align 8
  %92 = bitcast %struct._object* %91 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %92, i32 0, i32 1
  store i64 %90, i64* %ob_size, align 8
  %93 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %93, %struct._object** %retval
  br label %return

onError:                                          ; preds = %do.end.82, %if.then.62, %do.end, %if.then.20
  br label %do.body.99

do.body.99:                                       ; preds = %onError
  %94 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %94, %struct._object** %_py_decref_tmp100, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_refcnt101 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0
  %96 = load i64, i64* %ob_refcnt101, align 8
  %dec102 = add i64 %96, -1
  store i64 %dec102, i64* %ob_refcnt101, align 8
  %cmp103 = icmp ne i64 %dec102, 0
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.99
  br label %if.end.108

if.else.105:                                      ; preds = %do.body.99
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 4
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  call void %99(%struct._object* %100)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.104
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.109, %if.end.98, %if.then.7, %if.then.2, %if.then
  %101 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %101
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_split_char(%struct._object* %str_obj, i8* %str, i64 %str_len, i8 signext %ch, i64 %maxcount) #5 {
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
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp90 = alloca %struct._object*, align 8
  %_py_decref_tmp107 = alloca %struct._object*, align 8
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
  %call10 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %sub9)
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
  %43 = load i64, i64* %count, align 8
  %cmp45 = icmp eq i64 %43, 0
  br i1 %cmp45, label %land.lhs.true, label %if.else.56

land.lhs.true:                                    ; preds = %while.end
  %44 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %cmp48 = icmp eq %struct._typeobject* %45, @PyBytes_Type
  br i1 %cmp48, label %if.then.50, label %if.else.56

if.then.50:                                       ; preds = %land.lhs.true
  %46 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt51, align 8
  %inc52 = add i64 %47, 1
  store i64 %inc52, i64* %ob_refcnt51, align 8
  %48 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %49 = load %struct._object*, %struct._object** %list, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyListObject*
  %ob_item53 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %50, i32 0, i32 1
  %51 = load %struct._object**, %struct._object*** %ob_item53, align 8
  %arrayidx54 = getelementptr %struct._object*, %struct._object** %51, i64 0
  store %struct._object* %48, %struct._object** %arrayidx54, align 8
  %52 = load i64, i64* %count, align 8
  %inc55 = add i64 %52, 1
  store i64 %inc55, i64* %count, align 8
  br label %if.end.105

if.else.56:                                       ; preds = %land.lhs.true, %while.end
  %53 = load i64, i64* %i, align 8
  %54 = load i64, i64* %str_len.addr, align 8
  %cmp57 = icmp sle i64 %53, %54
  br i1 %cmp57, label %if.then.59, label %if.end.104

if.then.59:                                       ; preds = %if.else.56
  %55 = load i8*, i8** %str.addr, align 8
  %56 = load i64, i64* %i, align 8
  %add.ptr60 = getelementptr i8, i8* %55, i64 %56
  %57 = load i64, i64* %str_len.addr, align 8
  %58 = load i64, i64* %i, align 8
  %sub61 = sub i64 %57, %58
  %call62 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr60, i64 %sub61)
  store %struct._object* %call62, %struct._object** %sub, align 8
  %59 = load %struct._object*, %struct._object** %sub, align 8
  %cmp63 = icmp eq %struct._object* %59, null
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.59
  br label %onError

if.end.66:                                        ; preds = %if.then.59
  %60 = load i64, i64* %count, align 8
  %cmp67 = icmp slt i64 %60, 12
  br i1 %cmp67, label %if.then.69, label %if.else.72

if.then.69:                                       ; preds = %if.end.66
  %61 = load %struct._object*, %struct._object** %sub, align 8
  %62 = load i64, i64* %count, align 8
  %63 = load %struct._object*, %struct._object** %list, align 8
  %64 = bitcast %struct._object* %63 to %struct.PyListObject*
  %ob_item70 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %64, i32 0, i32 1
  %65 = load %struct._object**, %struct._object*** %ob_item70, align 8
  %arrayidx71 = getelementptr %struct._object*, %struct._object** %65, i64 %62
  store %struct._object* %61, %struct._object** %arrayidx71, align 8
  br label %if.end.102

if.else.72:                                       ; preds = %if.end.66
  %66 = load %struct._object*, %struct._object** %list, align 8
  %67 = load %struct._object*, %struct._object** %sub, align 8
  %call73 = call i32 @PyList_Append(%struct._object* %66, %struct._object* %67)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.else.88

if.then.75:                                       ; preds = %if.else.72
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.75
  %68 = load %struct._object*, %struct._object** %sub, align 8
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
  br label %onError

if.else.88:                                       ; preds = %if.else.72
  br label %do.body.89

do.body.89:                                       ; preds = %if.else.88
  %75 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp90, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt91, align 8
  %dec92 = add i64 %77, -1
  store i64 %dec92, i64* %ob_refcnt91, align 8
  %cmp93 = icmp ne i64 %dec92, 0
  br i1 %cmp93, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %do.body.89
  br label %if.end.99

if.else.96:                                       ; preds = %do.body.89
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  call void %80(%struct._object* %81)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %if.end.101

if.end.101:                                       ; preds = %do.end.100
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.69
  %82 = load i64, i64* %count, align 8
  %inc103 = add i64 %82, 1
  store i64 %inc103, i64* %count, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.102, %if.else.56
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.50
  %83 = load i64, i64* %count, align 8
  %84 = load %struct._object*, %struct._object** %list, align 8
  %85 = bitcast %struct._object* %84 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %85, i32 0, i32 1
  store i64 %83, i64* %ob_size, align 8
  %86 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %86, %struct._object** %retval
  br label %return

onError:                                          ; preds = %do.end.87, %if.then.65, %do.end, %if.then.13
  br label %do.body.106

do.body.106:                                      ; preds = %onError
  %87 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %87, %struct._object** %_py_decref_tmp107, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0
  %89 = load i64, i64* %ob_refcnt108, align 8
  %dec109 = add i64 %89, -1
  store i64 %dec109, i64* %ob_refcnt108, align 8
  %cmp110 = icmp ne i64 %dec109, 0
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %do.body.106
  br label %if.end.116

if.else.113:                                      ; preds = %do.body.106
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  call void %92(%struct._object* %93)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.117, %if.end.105, %if.then
  %94 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %94
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @stringlib_splitlines(%struct._object* %str_obj, i8* %str, i64 %str_len, i32 %keepends) #5 {
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
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
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

for.cond:                                         ; preds = %if.end.73, %if.end
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
  %29 = load i64, i64* %j, align 8
  %cmp31 = icmp eq i64 %29, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.44

land.lhs.true.33:                                 ; preds = %if.end.30
  %30 = load i64, i64* %eol, align 8
  %31 = load i64, i64* %str_len.addr, align 8
  %cmp34 = icmp eq i64 %30, %31
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.44

land.lhs.true.36:                                 ; preds = %land.lhs.true.33
  %32 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp37 = icmp eq %struct._typeobject* %33, @PyBytes_Type
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %land.lhs.true.36
  %34 = load %struct._object*, %struct._object** %list, align 8
  %35 = load %struct._object*, %struct._object** %str_obj.addr, align 8
  %call40 = call i32 @PyList_Append(%struct._object* %34, %struct._object* %35)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.39
  br label %onError

if.end.43:                                        ; preds = %if.then.39
  br label %for.end

if.end.44:                                        ; preds = %land.lhs.true.36, %land.lhs.true.33, %if.end.30
  %36 = load i8*, i8** %str.addr, align 8
  %37 = load i64, i64* %j, align 8
  %add.ptr = getelementptr i8, i8* %36, i64 %37
  %38 = load i64, i64* %eol, align 8
  %39 = load i64, i64* %j, align 8
  %sub45 = sub i64 %38, %39
  %call46 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %sub45)
  store %struct._object* %call46, %struct._object** %sub, align 8
  %40 = load %struct._object*, %struct._object** %sub, align 8
  %cmp47 = icmp eq %struct._object* %40, null
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.44
  br label %onError

if.end.50:                                        ; preds = %if.end.44
  %41 = load %struct._object*, %struct._object** %list, align 8
  %42 = load %struct._object*, %struct._object** %sub, align 8
  %call51 = call i32 @PyList_Append(%struct._object* %41, %struct._object* %42)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.60

if.then.53:                                       ; preds = %if.end.50
  br label %do.body

do.body:                                          ; preds = %if.then.53
  %43 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %45, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp54 = icmp ne i64 %dec, 0
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body
  br label %if.end.59

if.else.57:                                       ; preds = %do.body
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %48(%struct._object* %49)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end

do.end:                                           ; preds = %if.end.59
  br label %onError

if.else.60:                                       ; preds = %if.end.50
  br label %do.body.61

do.body.61:                                       ; preds = %if.else.60
  %50 = load %struct._object*, %struct._object** %sub, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp62, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %52, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.61
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.61
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %55(%struct._object* %56)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %if.end.73

if.end.73:                                        ; preds = %do.end.72
  %57 = load i64, i64* %i, align 8
  store i64 %57, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.43, %for.cond
  %58 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %58, %struct._object** %retval
  br label %return

onError:                                          ; preds = %do.end, %if.then.49, %if.then.42
  br label %do.body.74

do.body.74:                                       ; preds = %onError
  %59 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp75, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %61, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.74
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.74
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %64(%struct._object* %65)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.85, %for.end, %if.then
  %66 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %66
}

declare void @_Py_bytes_swapcase(i8*, i8*, i64) #1

declare void @_Py_bytes_title(i8*, i8*, i64) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare void @_Py_bytes_upper(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @str_subtype_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %pnew = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @bytes_new(%struct._typeobject* @PyBytes_Type, %struct._object* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %tmp, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  store i64 %5, i64* %n, align 8
  %6 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 36
  %7 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %8 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %9 = load i64, i64* %n, align 8
  %call3 = call %struct._object* %7(%struct._typeobject* %8, i64 %9)
  store %struct._object* %call3, %struct._object** %pnew, align 8
  %10 = load %struct._object*, %struct._object** %pnew, align 8
  %cmp4 = icmp ne %struct._object* %10, null
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %pnew, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %12, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %13 = load %struct._object*, %struct._object** %tmp, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyBytesObject*
  %ob_sval6 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %14, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval6, i32 0, i32 0
  %15 = load i64, i64* %n, align 8
  %add = add i64 %15, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* %arraydecay7, i64 %add, i32 1, i1 false)
  %16 = load %struct._object*, %struct._object** %tmp, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyBytesObject*
  %ob_shash = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_shash, align 8
  %19 = load %struct._object*, %struct._object** %pnew, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyBytesObject*
  %ob_shash8 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %20, i32 0, i32 1
  store i64 %18, i64* %ob_shash8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %21 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %28 = load %struct._object*, %struct._object** %pnew, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @striter_len(%struct.striterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.striterobject*, align 8
  %len = alloca i64, align 8
  store %struct.striterobject* %it, %struct.striterobject** %it.addr, align 8
  store i64 0, i64* %len, align 8
  %0 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.striterobject, %struct.striterobject* %0, i32 0, i32 2
  %1 = load %struct.PyBytesObject*, %struct.PyBytesObject** %it_seq, align 8
  %tobool = icmp ne %struct.PyBytesObject* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.striterobject, %struct.striterobject* %2, i32 0, i32 2
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %it_seq1, align 8
  %4 = bitcast %struct.PyBytesObject* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %6 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.striterobject, %struct.striterobject* %6, i32 0, i32 1
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
define internal %struct._object* @striter_reduce(%struct.striterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.striterobject*, align 8
  %u = alloca %struct._object*, align 8
  store %struct.striterobject* %it, %struct.striterobject** %it.addr, align 8
  %0 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.striterobject, %struct.striterobject* %0, i32 0, i32 2
  %1 = load %struct.PyBytesObject*, %struct.PyBytesObject** %it_seq, align 8
  %cmp = icmp ne %struct.PyBytesObject* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0))
  %2 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.striterobject, %struct.striterobject* %2, i32 0, i32 2
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %it_seq1, align 8
  %4 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.striterobject, %struct.striterobject* %4, i32 0, i32 1
  %5 = load i64, i64* %it_index, align 8
  %call2 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), %struct._object* %call, %struct.PyBytesObject* %3, i64 %5)
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
  %call6 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0))
  %7 = load %struct._object*, %struct._object** %u, align 8
  %call7 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), %struct._object* %call6, %struct._object* %7)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then.5, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @striter_setstate(%struct.striterobject* %it, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.striterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  store %struct.striterobject* %it, %struct.striterobject** %it.addr, align 8
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
  %2 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.striterobject, %struct.striterobject* %2, i32 0, i32 2
  %3 = load %struct.PyBytesObject*, %struct.PyBytesObject** %it_seq, align 8
  %cmp2 = icmp ne %struct.PyBytesObject* %3, null
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
  %6 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_seq6 = getelementptr inbounds %struct.striterobject, %struct.striterobject* %6, i32 0, i32 2
  %7 = load %struct.PyBytesObject*, %struct.PyBytesObject** %it_seq6, align 8
  %8 = bitcast %struct.PyBytesObject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  %cmp7 = icmp sgt i64 %5, %9
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.else
  %10 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_seq9 = getelementptr inbounds %struct.striterobject, %struct.striterobject* %10, i32 0, i32 2
  %11 = load %struct.PyBytesObject*, %struct.PyBytesObject** %it_seq9, align 8
  %12 = bitcast %struct.PyBytesObject* %11 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size10, align 8
  store i64 %13, i64* %index, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  %14 = load i64, i64* %index, align 8
  %15 = load %struct.striterobject*, %struct.striterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.striterobject, %struct.striterobject* %15, i32 0, i32 1
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

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
