; ModuleID = './_struct.bc'
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct._formatdef = type { i8, i64, i64, %struct._object* (i8*, %struct._formatdef*)*, i32 (i8*, %struct._object*, %struct._formatdef*)* }
%struct.PyStructObject = type { %struct._object, i64, i64, %struct._formatcode*, %struct._object*, %struct._object* }
%struct._formatcode = type { %struct._formatdef*, i64, i64, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.unpackiterobject = type { %struct._object, %struct.PyStructObject*, %struct.bufferinfo, i64 }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyByteArrayObject = type { %struct.PyVarObject, i64, i8*, i8*, i32 }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }

@_structmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1285 x i8], [1285 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([8 x %struct.PyMethodDef], [8 x %struct.PyMethodDef]* @module_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@PyType_Type = external global %struct._typeobject, align 8
@PyStructType = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.PyStructObject*)* @s_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* @PyObject_GenericSetAttr, %struct.PyBufferProcs* null, i64 263168, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @s__doc__, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 48, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([7 x %struct.PyMethodDef], [7 x %struct.PyMethodDef]* @s_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([3 x %struct.PyGetSetDef], [3 x %struct.PyGetSetDef]* @s_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @s_init, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @s_new, void (i8*)* @PyObject_Free, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@native_table = internal global [21 x %struct._formatdef] [%struct._formatdef { i8 120, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* null, i32 (i8*, %struct._object*, %struct._formatdef*)* null }, %struct._formatdef { i8 98, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* @nu_byte, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_byte }, %struct._formatdef { i8 66, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* @nu_ubyte, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_ubyte }, %struct._formatdef { i8 99, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* @nu_char, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_char }, %struct._formatdef { i8 115, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* null, i32 (i8*, %struct._object*, %struct._formatdef*)* null }, %struct._formatdef { i8 112, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* null, i32 (i8*, %struct._object*, %struct._formatdef*)* null }, %struct._formatdef { i8 104, i64 2, i64 2, %struct._object* (i8*, %struct._formatdef*)* @nu_short, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_short }, %struct._formatdef { i8 72, i64 2, i64 2, %struct._object* (i8*, %struct._formatdef*)* @nu_ushort, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_ushort }, %struct._formatdef { i8 105, i64 4, i64 4, %struct._object* (i8*, %struct._formatdef*)* @nu_int, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_int }, %struct._formatdef { i8 73, i64 4, i64 4, %struct._object* (i8*, %struct._formatdef*)* @nu_uint, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_uint }, %struct._formatdef { i8 108, i64 8, i64 8, %struct._object* (i8*, %struct._formatdef*)* @nu_long, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_long }, %struct._formatdef { i8 76, i64 8, i64 8, %struct._object* (i8*, %struct._formatdef*)* @nu_ulong, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_ulong }, %struct._formatdef { i8 110, i64 8, i64 8, %struct._object* (i8*, %struct._formatdef*)* @nu_ssize_t, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_ssize_t }, %struct._formatdef { i8 78, i64 8, i64 8, %struct._object* (i8*, %struct._formatdef*)* @nu_size_t, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_size_t }, %struct._formatdef { i8 113, i64 8, i64 8, %struct._object* (i8*, %struct._formatdef*)* @nu_longlong, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_longlong }, %struct._formatdef { i8 81, i64 8, i64 8, %struct._object* (i8*, %struct._formatdef*)* @nu_ulonglong, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_ulonglong }, %struct._formatdef { i8 63, i64 1, i64 1, %struct._object* (i8*, %struct._formatdef*)* @nu_bool, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_bool }, %struct._formatdef { i8 102, i64 4, i64 4, %struct._object* (i8*, %struct._formatdef*)* @nu_float, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_float }, %struct._formatdef { i8 100, i64 8, i64 8, %struct._object* (i8*, %struct._formatdef*)* @nu_double, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_double }, %struct._formatdef { i8 80, i64 8, i64 8, %struct._object* (i8*, %struct._formatdef*)* @nu_void_p, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_void_p }, %struct._formatdef zeroinitializer], align 16
@lilendian_table = internal global [18 x %struct._formatdef] [%struct._formatdef { i8 120, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* null, i32 (i8*, %struct._object*, %struct._formatdef*)* null }, %struct._formatdef { i8 98, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* @nu_byte, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_byte }, %struct._formatdef { i8 66, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* @nu_ubyte, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_ubyte }, %struct._formatdef { i8 99, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* @nu_char, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_char }, %struct._formatdef { i8 115, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* null, i32 (i8*, %struct._object*, %struct._formatdef*)* null }, %struct._formatdef { i8 112, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* null, i32 (i8*, %struct._object*, %struct._formatdef*)* null }, %struct._formatdef { i8 104, i64 2, i64 0, %struct._object* (i8*, %struct._formatdef*)* @lu_int, i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_int }, %struct._formatdef { i8 72, i64 2, i64 0, %struct._object* (i8*, %struct._formatdef*)* @lu_uint, i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_uint }, %struct._formatdef { i8 105, i64 4, i64 0, %struct._object* (i8*, %struct._formatdef*)* @lu_int, i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_int }, %struct._formatdef { i8 73, i64 4, i64 0, %struct._object* (i8*, %struct._formatdef*)* @lu_uint, i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_uint }, %struct._formatdef { i8 108, i64 4, i64 0, %struct._object* (i8*, %struct._formatdef*)* @lu_int, i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_int }, %struct._formatdef { i8 76, i64 4, i64 0, %struct._object* (i8*, %struct._formatdef*)* @lu_uint, i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_uint }, %struct._formatdef { i8 113, i64 8, i64 0, %struct._object* (i8*, %struct._formatdef*)* @lu_longlong, i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_longlong }, %struct._formatdef { i8 81, i64 8, i64 0, %struct._object* (i8*, %struct._formatdef*)* @lu_ulonglong, i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_ulonglong }, %struct._formatdef { i8 63, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* @bu_bool, i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_bool }, %struct._formatdef { i8 102, i64 4, i64 0, %struct._object* (i8*, %struct._formatdef*)* @lu_float, i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_float }, %struct._formatdef { i8 100, i64 8, i64 0, %struct._object* (i8*, %struct._formatdef*)* @lu_double, i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_double }, %struct._formatdef zeroinitializer], align 16
@StructError = internal global %struct._object* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"struct.error\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Struct\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"_struct\00", align 1
@module_doc = internal global [1285 x i8] c"Functions to convert between Python values and C structs.\0APython bytes objects are used to hold the data representing the C struct\0Aand also as format strings (explained below) to describe the layout of data\0Ain the C struct.\0A\0AThe optional first format char indicates byte order, size and alignment:\0A  @: native order, size & alignment (default)\0A  =: native order, std. size & alignment\0A  <: little-endian, std. size & alignment\0A  >: big-endian, std. size & alignment\0A  !: same as >\0A\0AThe remaining chars indicate types of args and must match exactly;\0Athese can be preceded by a decimal repeat count:\0A  x: pad byte (no data); c:char; b:signed byte; B:unsigned byte;\0A  ?: _Bool (requires C99; if not available, char is used instead)\0A  h:short; H:unsigned short; i:int; I:unsigned int;\0A  l:long; L:unsigned long; f:float; d:double.\0ASpecial cases (preceding decimal count indicates length):\0A  s:string (array of char); p: pascal string (with count byte).\0ASpecial cases (only available in native format):\0A  n:ssize_t; N:size_t;\0A  P:an integer type that is wide enough to hold a pointer.\0ASpecial case (not in native mode unless 'long long' in platform C):\0A  q:long long; Q:unsigned long long\0AWhitespace between formats is ignored.\0A\0AThe variable struct.error is an exception raised on errors.\0A\00", align 16
@module_functions = internal global [8 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @clearcache to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @clearcache_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @calcsize, i32 8, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @calcsize_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @iter_unpack, i32 1, i8* getelementptr inbounds ([273 x i8], [273 x i8]* @iter_unpack_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @pack, i32 1, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @pack_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @pack_into, i32 1, i8* getelementptr inbounds ([276 x i8], [276 x i8]* @pack_into_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @unpack, i32 1, i8* getelementptr inbounds ([201 x i8], [201 x i8]* @unpack_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @unpack_from to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([226 x i8], [226 x i8]* @unpack_from_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [12 x i8] c"_clearcache\00", align 1
@clearcache_doc = internal global [26 x i8] c"Clear the internal cache.\00", align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"calcsize\00", align 1
@calcsize_doc = internal global [97 x i8] c"calcsize(fmt) -> integer\0A\0AReturn size in bytes of the struct described by the format string fmt.\00", align 16
@.str.6 = private unnamed_addr constant [12 x i8] c"iter_unpack\00", align 1
@iter_unpack_doc = internal global [273 x i8] c"iter_unpack(fmt, buffer) -> iterator(v1, v2, ...)\0A\0AReturn an iterator yielding tuples unpacked from the given bytes\0Asource according to the format string, like a repeated invocation of\0Aunpack_from().  Requires that the bytes length be a multiple of the\0Aformat struct size.\00", align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@pack_doc = internal global [178 x i8] c"pack(fmt, v1, v2, ...) -> bytes\0A\0AReturn a bytes object containing the values v1, v2, ... packed according\0Ato the format string fmt.  See help(struct) for more on format strings.\00", align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"pack_into\00", align 1
@pack_into_doc = internal global [276 x i8] c"pack_into(fmt, buffer, offset, v1, v2, ...)\0A\0APack the values v1, v2, ... according to the format string fmt and write\0Athe packed bytes into the writable buffer buf starting at offset.  Note\0Athat the offset is a required argument.  See help(struct) for more\0Aon format strings.\00", align 16
@.str.9 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@unpack_doc = internal global [201 x i8] c"unpack(fmt, buffer) -> (v1, v2, ...)\0A\0AReturn a tuple containing values unpacked according to the format string\0Afmt.  Requires len(buffer) == calcsize(fmt). See help(struct) for more\0Aon format strings.\00", align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"unpack_from\00", align 1
@unpack_from_doc = internal global [226 x i8] c"unpack_from(fmt, buffer, offset=0) -> (v1, v2, ...)\0A\0AReturn a tuple containing values unpacked according to the format string\0Afmt.  Requires len(buffer[offset:]) >= calcsize(fmt).  See help(struct)\0Afor more on format strings.\00", align 16
@cache = internal global %struct._object* null, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"OO:iter_unpack\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"cannot iteratively unpack with a struct of length 0\00", align 1
@unpackiter_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i64 112, i64 0, void (%struct._object*)* bitcast (void (%struct.unpackiterobject*)* @unpackiter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.unpackiterobject*, i32 (%struct._object*, i8*)*, i8*)* @unpackiter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.unpackiterobject*)* @unpackiter_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @unpackiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.13 = private unnamed_addr constant [60 x i8] c"iterative unpacking requires a bytes length multiple of %zd\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"unpack_iterator\00", align 1
@unpackiter_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.unpackiterobject*)* @unpackiter_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.16 = private unnamed_addr constant [24 x i8] c"missing format argument\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"pack expected %zd items for packing (got %zd)\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@.str.18 = private unnamed_addr constant [40 x i8] c"argument for 's' must be a bytes object\00", align 1
@_PyByteArray_empty_string = external global [0 x i8], align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"argument for 'p' must be a bytes object\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.20 = private unnamed_addr constant [25 x i8] c"int too large to convert\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"pack_into expected buffer argument\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"pack_into expected offset argument\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"pack_into expected %zd items for packing (got %zd)\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.24 = private unnamed_addr constant [50 x i8] c"pack_into requires a buffer of at least %zd bytes\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"unpack requires a bytes object of length %zd\00", align 1
@s_unpack_from.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* null], align 16
@.str.26 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"O|n:unpack_from\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"unpack_from requires a buffer of at least %zd bytes\00", align 1
@s__doc__ = internal global [184 x i8] c"Struct(fmt) --> compiled struct object\0A\0AReturn a new Struct object which writes and reads binary data according to\0Athe format string fmt.  See help(struct) for more on format strings.\00", align 16
@s_methods = internal global [7 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @s_iter_unpack, i32 8, i8* getelementptr inbounds ([232 x i8], [232 x i8]* @s_iter_unpack__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @s_pack, i32 1, i8* getelementptr inbounds ([176 x i8], [176 x i8]* @s_pack__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @s_pack_into, i32 1, i8* getelementptr inbounds ([278 x i8], [278 x i8]* @s_pack_into__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @s_unpack, i32 8, i8* getelementptr inbounds ([197 x i8], [197 x i8]* @s_unpack__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @s_unpack_from to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([221 x i8], [221 x i8]* @s_unpack_from__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyStructObject*, i8*)* @s_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @s_sizeof__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@s_getsetlist = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyStructObject*, i8*)* @s_get_format to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyStructObject*, i8*)* @s_get_size to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@s_iter_unpack__doc__ = internal global [232 x i8] c"S.iter_unpack(buffer) -> iterator(v1, v2, ...)\0A\0AReturn an iterator yielding tuples unpacked from the given bytes\0Asource, like a repeated invocation of unpack_from().  Requires\0Athat the bytes length be a multiple of the struct size.\00", align 16
@s_pack__doc__ = internal global [176 x i8] c"S.pack(v1, v2, ...) -> bytes\0A\0AReturn a bytes object containing values v1, v2, ... packed according\0Ato the format string S.format.  See help(struct) for more on format\0Astrings.\00", align 16
@s_pack_into__doc__ = internal global [278 x i8] c"S.pack_into(buffer, offset, v1, v2, ...)\0A\0APack the values v1, v2, ... according to the format string S.format\0Aand write the packed bytes into the writable buffer buf starting at\0Aoffset.  Note that the offset is a required argument.  See\0Ahelp(struct) for more on format strings.\00", align 16
@s_unpack__doc__ = internal global [197 x i8] c"S.unpack(buffer) -> (v1, v2, ...)\0A\0AReturn a tuple containing values unpacked according to the format\0Astring S.format.  Requires len(buffer) == S.size.  See help(struct)\0Afor more on format strings.\00", align 16
@s_unpack_from__doc__ = internal global [221 x i8] c"S.unpack_from(buffer, offset=0) -> (v1, v2, ...)\0A\0AReturn a tuple containing values unpacked according to the format\0Astring S.format.  Requires len(buffer[offset:]) >= S.size.  See\0Ahelp(struct) for more on format strings.\00", align 16
@.str.30 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@s_sizeof__doc__ = internal global [48 x i8] c"S.__sizeof__() -> size of S in memory, in bytes\00", align 16
@.str.31 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"struct format string\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"struct size in bytes\00", align 1
@s_init.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* null], align 16
@.str.35 = private unnamed_addr constant [9 x i8] c"O:Struct\00", align 1
@.str.36 = private unnamed_addr constant [55 x i8] c"Struct() argument 1 must be a bytes object, not %.200s\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@.str.37 = private unnamed_addr constant [44 x i8] c"repeat count given without format specifier\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"total struct size too long\00", align 1
@bigendian_table = internal global [18 x %struct._formatdef] [%struct._formatdef { i8 120, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* null, i32 (i8*, %struct._object*, %struct._formatdef*)* null }, %struct._formatdef { i8 98, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* @nu_byte, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_byte }, %struct._formatdef { i8 66, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* @nu_ubyte, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_ubyte }, %struct._formatdef { i8 99, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* @nu_char, i32 (i8*, %struct._object*, %struct._formatdef*)* @np_char }, %struct._formatdef { i8 115, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* null, i32 (i8*, %struct._object*, %struct._formatdef*)* null }, %struct._formatdef { i8 112, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* null, i32 (i8*, %struct._object*, %struct._formatdef*)* null }, %struct._formatdef { i8 104, i64 2, i64 0, %struct._object* (i8*, %struct._formatdef*)* @bu_int, i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_int }, %struct._formatdef { i8 72, i64 2, i64 0, %struct._object* (i8*, %struct._formatdef*)* @bu_uint, i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_uint }, %struct._formatdef { i8 105, i64 4, i64 0, %struct._object* (i8*, %struct._formatdef*)* @bu_int, i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_int }, %struct._formatdef { i8 73, i64 4, i64 0, %struct._object* (i8*, %struct._formatdef*)* @bu_uint, i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_uint }, %struct._formatdef { i8 108, i64 4, i64 0, %struct._object* (i8*, %struct._formatdef*)* @bu_int, i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_int }, %struct._formatdef { i8 76, i64 4, i64 0, %struct._object* (i8*, %struct._formatdef*)* @bu_uint, i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_uint }, %struct._formatdef { i8 113, i64 8, i64 0, %struct._object* (i8*, %struct._formatdef*)* @bu_longlong, i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_longlong }, %struct._formatdef { i8 81, i64 8, i64 0, %struct._object* (i8*, %struct._formatdef*)* @bu_ulonglong, i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_ulonglong }, %struct._formatdef { i8 63, i64 1, i64 0, %struct._object* (i8*, %struct._formatdef*)* @bu_bool, i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_bool }, %struct._formatdef { i8 102, i64 4, i64 0, %struct._object* (i8*, %struct._formatdef*)* @bu_float, i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_float }, %struct._formatdef { i8 100, i64 8, i64 0, %struct._object* (i8*, %struct._formatdef*)* @bu_double, i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_double }, %struct._formatdef zeroinitializer], align 16
@.str.39 = private unnamed_addr constant [43 x i8] c"byte format requires -128 <= number <= 127\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"argument out of range\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"required argument is not an integer\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"ubyte format requires 0 <= number <= 255\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"char format requires a bytes object of length 1\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"'%c' format requires 0 <= number <= %zu\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"'%c' format requires %zd <= number <= %zd\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"required argument is not a float\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"bad char in struct format\00", align 1
@.str.48 = private unnamed_addr constant [53 x i8] c"short format requires SHRT_MIN <= number <= SHRT_MAX\00", align 1
@.str.49 = private unnamed_addr constant [48 x i8] c"ushort format requires 0 <= number <= USHRT_MAX\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__struct() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %native = alloca %struct._formatdef*, align 8
  %other = alloca %struct._formatdef*, align 8
  %ptr = alloca %struct._formatdef*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_structmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStructType, i32 0, i32 0, i32 0, i32 1), align 8
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @PyStructType)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store %struct._formatdef* getelementptr inbounds ([21 x %struct._formatdef], [21 x %struct._formatdef]* @native_table, i32 0, i32 0), %struct._formatdef** %native, align 8
  store %struct._formatdef* getelementptr inbounds ([18 x %struct._formatdef], [18 x %struct._formatdef]* @lilendian_table, i32 0, i32 0), %struct._formatdef** %other, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.4
  %1 = load %struct._formatdef*, %struct._formatdef** %native, align 8
  %format = getelementptr inbounds %struct._formatdef, %struct._formatdef* %1, i32 0, i32 0
  %2 = load i8, i8* %format, align 1
  %conv = sext i8 %2 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct._formatdef*, %struct._formatdef** %other, align 8
  %format7 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %3, i32 0, i32 0
  %4 = load i8, i8* %format7, align 1
  %conv8 = sext i8 %4 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %5, label %while.body, label %while.end.48

while.body:                                       ; preds = %land.end
  %6 = load %struct._formatdef*, %struct._formatdef** %other, align 8
  store %struct._formatdef* %6, %struct._formatdef** %ptr, align 8
  br label %while.cond.11

while.cond.11:                                    ; preds = %if.end.45, %while.body
  %7 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8
  %format12 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %7, i32 0, i32 0
  %8 = load i8, i8* %format12, align 1
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %while.body.16, label %while.end

while.body.16:                                    ; preds = %while.cond.11
  %9 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8
  %format17 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %9, i32 0, i32 0
  %10 = load i8, i8* %format17, align 1
  %conv18 = sext i8 %10 to i32
  %11 = load %struct._formatdef*, %struct._formatdef** %native, align 8
  %format19 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %11, i32 0, i32 0
  %12 = load i8, i8* %format19, align 1
  %conv20 = sext i8 %12 to i32
  %cmp21 = icmp eq i32 %conv18, %conv20
  br i1 %cmp21, label %if.then.23, label %if.end.45

if.then.23:                                       ; preds = %while.body.16
  %13 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8
  %14 = load %struct._formatdef*, %struct._formatdef** %other, align 8
  %cmp24 = icmp eq %struct._formatdef* %13, %14
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  %15 = load %struct._formatdef*, %struct._formatdef** %other, align 8
  %incdec.ptr = getelementptr %struct._formatdef, %struct._formatdef* %15, i32 1
  store %struct._formatdef* %incdec.ptr, %struct._formatdef** %other, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.23
  %16 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %16, i32 0, i32 1
  %17 = load i64, i64* %size, align 8
  %18 = load %struct._formatdef*, %struct._formatdef** %native, align 8
  %size28 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %18, i32 0, i32 1
  %19 = load i64, i64* %size28, align 8
  %cmp29 = icmp ne i64 %17, %19
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  br label %while.end

if.end.32:                                        ; preds = %if.end.27
  %20 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8
  %format33 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %20, i32 0, i32 0
  %21 = load i8, i8* %format33, align 1
  %conv34 = sext i8 %21 to i32
  %cmp35 = icmp eq i32 %conv34, 100
  br i1 %cmp35, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.32
  %22 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8
  %format37 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %22, i32 0, i32 0
  %23 = load i8, i8* %format37, align 1
  %conv38 = sext i8 %23 to i32
  %cmp39 = icmp eq i32 %conv38, 102
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false, %if.end.32
  br label %while.end

if.end.42:                                        ; preds = %lor.lhs.false
  %24 = load %struct._formatdef*, %struct._formatdef** %native, align 8
  %pack = getelementptr inbounds %struct._formatdef, %struct._formatdef* %24, i32 0, i32 4
  %25 = load i32 (i8*, %struct._object*, %struct._formatdef*)*, i32 (i8*, %struct._object*, %struct._formatdef*)** %pack, align 8
  %26 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8
  %pack43 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %26, i32 0, i32 4
  store i32 (i8*, %struct._object*, %struct._formatdef*)* %25, i32 (i8*, %struct._object*, %struct._formatdef*)** %pack43, align 8
  %27 = load %struct._formatdef*, %struct._formatdef** %native, align 8
  %unpack = getelementptr inbounds %struct._formatdef, %struct._formatdef* %27, i32 0, i32 3
  %28 = load %struct._object* (i8*, %struct._formatdef*)*, %struct._object* (i8*, %struct._formatdef*)** %unpack, align 8
  %29 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8
  %unpack44 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %29, i32 0, i32 3
  store %struct._object* (i8*, %struct._formatdef*)* %28, %struct._object* (i8*, %struct._formatdef*)** %unpack44, align 8
  br label %while.end

if.end.45:                                        ; preds = %while.body.16
  %30 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8
  %incdec.ptr46 = getelementptr %struct._formatdef, %struct._formatdef* %30, i32 1
  store %struct._formatdef* %incdec.ptr46, %struct._formatdef** %ptr, align 8
  br label %while.cond.11

while.end:                                        ; preds = %if.end.42, %if.then.41, %if.then.31, %while.cond.11
  %31 = load %struct._formatdef*, %struct._formatdef** %native, align 8
  %incdec.ptr47 = getelementptr %struct._formatdef, %struct._formatdef* %31, i32 1
  store %struct._formatdef* %incdec.ptr47, %struct._formatdef** %native, align 8
  br label %while.cond

while.end.48:                                     ; preds = %land.end
  %32 = load %struct._object*, %struct._object** @StructError, align 8
  %cmp49 = icmp eq %struct._object* %32, null
  br i1 %cmp49, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %while.end.48
  %call52 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call52, %struct._object** @StructError, align 8
  %33 = load %struct._object*, %struct._object** @StructError, align 8
  %cmp53 = icmp eq %struct._object* %33, null
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.56:                                        ; preds = %if.then.51
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %while.end.48
  %34 = load %struct._object*, %struct._object** @StructError, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %36 = load %struct._object*, %struct._object** %m, align 8
  %37 = load %struct._object*, %struct._object** @StructError, align 8
  %call58 = call i32 @PyModule_AddObject(%struct._object* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %37)
  %38 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStructType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc59 = add i64 %38, 1
  store i64 %inc59, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStructType, i32 0, i32 0, i32 0, i32 0), align 8
  %39 = load %struct._object*, %struct._object** %m, align 8
  %call60 = call i32 @PyModule_AddObject(%struct._object* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStructType, i32 0, i32 0, i32 0))
  %40 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.then.55, %if.then.3, %if.then
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @clearcache(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @cache, align 8
  store %struct._object* %0, %struct._object** %_py_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  store %struct._object* null, %struct._object** @cache, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @calcsize(%struct._object* %self, %struct._object* %fmt) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %fmt.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %s_object = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %fmt, %struct._object** %fmt.addr, align 8
  %0 = load %struct._object*, %struct._object** %fmt.addr, align 8
  %call = call %struct._object* @cache_struct(%struct._object* %0)
  store %struct._object* %call, %struct._object** %s_object, align 8
  %1 = load %struct._object*, %struct._object** %s_object, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %s_object, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyStructObject*
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %3, i32 0, i32 1
  %4 = load i64, i64* %s_size, align 8
  store i64 %4, i64* %n, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %s_object, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %12 = load i64, i64* %n, align 8
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %12)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_unpack(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %s_object = alloca %struct._object*, align 8
  %fmt = alloca %struct._object*, align 8
  %input = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), %struct._object** %fmt, %struct._object** %input)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %fmt, align 8
  %call1 = call %struct._object* @cache_struct(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %s_object, align 8
  %2 = load %struct._object*, %struct._object** %s_object, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %s_object, align 8
  %4 = load %struct._object*, %struct._object** %input, align 8
  %call4 = call %struct._object* @s_iter_unpack(%struct._object* %3, %struct._object* %4)
  store %struct._object* %call4, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %s_object, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pack(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %s_object = alloca %struct._object*, align 8
  %fmt = alloca %struct._object*, align 8
  %newargs = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %7, %struct._object** %fmt, align 8
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %9 = load i64, i64* %n, align 8
  %call = call %struct._object* @PyTuple_GetSlice(%struct._object* %8, i64 1, i64 %9)
  store %struct._object* %call, %struct._object** %newargs, align 8
  %10 = load %struct._object*, %struct._object** %newargs, align 8
  %cmp1 = icmp eq %struct._object* %10, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %fmt, align 8
  %call4 = call %struct._object* @cache_struct(%struct._object* %11)
  store %struct._object* %call4, %struct._object** %s_object, align 8
  %12 = load %struct._object*, %struct._object** %s_object, align 8
  %cmp5 = icmp eq %struct._object* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %13 = load %struct._object*, %struct._object** %newargs, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %20 = load %struct._object*, %struct._object** %s_object, align 8
  %21 = load %struct._object*, %struct._object** %newargs, align 8
  %call11 = call %struct._object* @s_pack(%struct._object* %20, %struct._object* %21)
  store %struct._object* %call11, %struct._object** %result, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.10
  %22 = load %struct._object*, %struct._object** %newargs, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp13, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %24, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %27(%struct._object* %28)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %29 = load %struct._object*, %struct._object** %s_object, align 8
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
  %36 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %36, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.33, %do.end, %if.then.2, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pack_into(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %s_object = alloca %struct._object*, align 8
  %fmt = alloca %struct._object*, align 8
  %newargs = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %7, %struct._object** %fmt, align 8
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %9 = load i64, i64* %n, align 8
  %call = call %struct._object* @PyTuple_GetSlice(%struct._object* %8, i64 1, i64 %9)
  store %struct._object* %call, %struct._object** %newargs, align 8
  %10 = load %struct._object*, %struct._object** %newargs, align 8
  %cmp1 = icmp eq %struct._object* %10, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %fmt, align 8
  %call4 = call %struct._object* @cache_struct(%struct._object* %11)
  store %struct._object* %call4, %struct._object** %s_object, align 8
  %12 = load %struct._object*, %struct._object** %s_object, align 8
  %cmp5 = icmp eq %struct._object* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %13 = load %struct._object*, %struct._object** %newargs, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %20 = load %struct._object*, %struct._object** %s_object, align 8
  %21 = load %struct._object*, %struct._object** %newargs, align 8
  %call11 = call %struct._object* @s_pack_into(%struct._object* %20, %struct._object* %21)
  store %struct._object* %call11, %struct._object** %result, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.10
  %22 = load %struct._object*, %struct._object** %newargs, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp13, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %24, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %27(%struct._object* %28)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %29 = load %struct._object*, %struct._object** %s_object, align 8
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
  %36 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %36, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.33, %do.end, %if.then.2, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unpack(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %s_object = alloca %struct._object*, align 8
  %fmt = alloca %struct._object*, align 8
  %inputstr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i64 2, i64 2, %struct._object** %fmt, %struct._object** %inputstr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %fmt, align 8
  %call1 = call %struct._object* @cache_struct(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %s_object, align 8
  %2 = load %struct._object*, %struct._object** %s_object, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %s_object, align 8
  %4 = load %struct._object*, %struct._object** %inputstr, align 8
  %call4 = call %struct._object* @s_unpack(%struct._object* %3, %struct._object* %4)
  store %struct._object* %call4, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %s_object, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unpack_from(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %s_object = alloca %struct._object*, align 8
  %fmt = alloca %struct._object*, align 8
  %newargs = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %7, %struct._object** %fmt, align 8
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %9 = load i64, i64* %n, align 8
  %call = call %struct._object* @PyTuple_GetSlice(%struct._object* %8, i64 1, i64 %9)
  store %struct._object* %call, %struct._object** %newargs, align 8
  %10 = load %struct._object*, %struct._object** %newargs, align 8
  %cmp1 = icmp eq %struct._object* %10, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %fmt, align 8
  %call4 = call %struct._object* @cache_struct(%struct._object* %11)
  store %struct._object* %call4, %struct._object** %s_object, align 8
  %12 = load %struct._object*, %struct._object** %s_object, align 8
  %cmp5 = icmp eq %struct._object* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %13 = load %struct._object*, %struct._object** %newargs, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %20 = load %struct._object*, %struct._object** %s_object, align 8
  %21 = load %struct._object*, %struct._object** %newargs, align 8
  %22 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call11 = call %struct._object* @s_unpack_from(%struct._object* %20, %struct._object* %21, %struct._object* %22)
  store %struct._object* %call11, %struct._object** %result, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.10
  %23 = load %struct._object*, %struct._object** %newargs, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp13, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %25, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %28(%struct._object* %29)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %30 = load %struct._object*, %struct._object** %s_object, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp24, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %32, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %35(%struct._object* %36)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %37 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %37, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.33, %do.end, %if.then.2, %if.then
  %38 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %38
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cache_struct(%struct._object* %fmt) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fmt.addr = alloca %struct._object*, align 8
  %s_object = alloca %struct._object*, align 8
  store %struct._object* %fmt, %struct._object** %fmt.addr, align 8
  %0 = load %struct._object*, %struct._object** @cache, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** @cache, align 8
  %1 = load %struct._object*, %struct._object** @cache, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load %struct._object*, %struct._object** @cache, align 8
  %3 = load %struct._object*, %struct._object** %fmt.addr, align 8
  %call4 = call %struct._object* @PyDict_GetItem(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call4, %struct._object** %s_object, align 8
  %4 = load %struct._object*, %struct._object** %s_object, align 8
  %cmp5 = icmp ne %struct._object* %4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %s_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %s_object, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %fmt.addr, align 8
  %call8 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStructType, i32 0, i32 0, i32 0), %struct._object* %8, i8* null)
  store %struct._object* %call8, %struct._object** %s_object, align 8
  %9 = load %struct._object*, %struct._object** %s_object, align 8
  %cmp9 = icmp ne %struct._object* %9, null
  br i1 %cmp9, label %if.then.10, label %if.end.19

if.then.10:                                       ; preds = %if.end.7
  %10 = load %struct._object*, %struct._object** @cache, align 8
  %call11 = call i64 @PyDict_Size(%struct._object* %10)
  %cmp12 = icmp sge i64 %call11, 100
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  %11 = load %struct._object*, %struct._object** @cache, align 8
  call void @PyDict_Clear(%struct._object* %11)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.10
  %12 = load %struct._object*, %struct._object** @cache, align 8
  %13 = load %struct._object*, %struct._object** %fmt.addr, align 8
  %14 = load %struct._object*, %struct._object** %s_object, align 8
  %call15 = call i32 @PyDict_SetItem(%struct._object* %12, %struct._object* %13, %struct._object* %14)
  %cmp16 = icmp eq i32 %call15, -1
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  call void @PyErr_Clear()
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.7
  %15 = load %struct._object*, %struct._object** %s_object, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.6, %if.then.2
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @PyDict_New() #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare i64 @PyDict_Size(%struct._object*) #1

declare void @PyDict_Clear(%struct._object*) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyErr_Clear() #1

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_iter_unpack(%struct._object* %_so, %struct._object* %input) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %_so.addr = alloca %struct._object*, align 8
  %input.addr = alloca %struct._object*, align 8
  %so = alloca %struct.PyStructObject*, align 8
  %self = alloca %struct.unpackiterobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %_so, %struct._object** %_so.addr, align 8
  store %struct._object* %input, %struct._object** %input.addr, align 8
  %0 = load %struct._object*, %struct._object** %_so.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyStructObject*
  store %struct.PyStructObject* %1, %struct.PyStructObject** %so, align 8
  %2 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %2, i32 0, i32 1
  %3 = load i64, i64* %s_size, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @StructError, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyType_GenericAlloc(%struct._typeobject* @unpackiter_type, i64 0)
  %5 = bitcast %struct._object* %call1 to %struct.unpackiterobject*
  store %struct.unpackiterobject* %5, %struct.unpackiterobject** %self, align 8
  %6 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8
  %cmp2 = icmp eq %struct.unpackiterobject* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %input.addr, align 8
  %8 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8
  %buf = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %8, i32 0, i32 2
  %call5 = call i32 @PyObject_GetBuffer(%struct._object* %7, %struct.bufferinfo* %buf, i32 0)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %9 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8
  %10 = bitcast %struct.unpackiterobject* %9 to %struct._object*
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  %17 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8
  %buf12 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %17, i32 0, i32 2
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf12, i32 0, i32 2
  %18 = load i64, i64* %len, align 8
  %19 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8
  %s_size13 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %19, i32 0, i32 1
  %20 = load i64, i64* %s_size13, align 8
  %rem = srem i64 %18, %20
  %cmp14 = icmp ne i64 %rem, 0
  br i1 %cmp14, label %if.then.15, label %if.end.29

if.then.15:                                       ; preds = %if.end.11
  %21 = load %struct._object*, %struct._object** @StructError, align 8
  %22 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8
  %s_size16 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %22, i32 0, i32 1
  %23 = load i64, i64* %s_size16, align 8
  %call17 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i32 0, i32 0), i64 %23)
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.15
  %24 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8
  %25 = bitcast %struct.unpackiterobject* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %_py_decref_tmp19, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %27, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %30(%struct._object* %31)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.11
  %32 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8
  %33 = bitcast %struct.PyStructObject* %32 to %struct._object*
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt30, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %ob_refcnt30, align 8
  %35 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8
  %36 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8
  %so31 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %36, i32 0, i32 1
  store %struct.PyStructObject* %35, %struct.PyStructObject** %so31, align 8
  %37 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8
  %index = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %37, i32 0, i32 3
  store i64 0, i64* %index, align 8
  %38 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8
  %39 = bitcast %struct.unpackiterobject* %38 to %struct._object*
  store %struct._object* %39, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.29, %do.end.28, %do.end, %if.then.3, %if.then
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @unpackiter_dealloc(%struct.unpackiterobject* %self) #0 {
entry:
  %self.addr = alloca %struct.unpackiterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.unpackiterobject* %self, %struct.unpackiterobject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %so = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %0, i32 0, i32 1
  %1 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8
  %2 = bitcast %struct.PyStructObject* %1 to %struct._object*
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
  %11 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %buf = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %11, i32 0, i32 2
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  %12 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %13 = bitcast %struct.unpackiterobject* %12 to i8*
  call void @PyObject_GC_Del(i8* %13)
  ret void
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @unpackiter_traverse(%struct.unpackiterobject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.unpackiterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.unpackiterobject* %self, %struct.unpackiterobject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %so = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %0, i32 0, i32 1
  %1 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8
  %tobool = icmp ne %struct.PyStructObject* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %so1 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %3, i32 0, i32 1
  %4 = load %struct.PyStructObject*, %struct.PyStructObject** %so1, align 8
  %5 = bitcast %struct.PyStructObject* %4 to %struct._object*
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
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %9 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %buf = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %9, i32 0, i32 2
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %obj, align 8
  %tobool6 = icmp ne %struct._object* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %do.body.5
  %11 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %12 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %buf9 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %12, i32 0, i32 2
  %obj10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf9, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %obj10, align 8
  %14 = load i8*, i8** %arg.addr, align 8
  %call11 = call i32 %11(%struct._object* %13, i8* %14)
  store i32 %call11, i32* %vret8, align 4
  %15 = load i32, i32* %vret8, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.7
  %16 = load i32, i32* %vret8, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.7
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %do.body.5
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.then.13, %if.then.3
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @unpackiter_iternext(%struct.unpackiterobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.unpackiterobject*, align 8
  %result = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.unpackiterobject* %self, %struct.unpackiterobject** %self.addr, align 8
  %0 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %so = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %0, i32 0, i32 1
  %1 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8
  %cmp = icmp eq %struct.PyStructObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %index = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %2, i32 0, i32 3
  %3 = load i64, i64* %index, align 8
  %4 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %buf = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %4, i32 0, i32 2
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %5 = load i64, i64* %len, align 8
  %cmp1 = icmp sge i64 %3, %5
  br i1 %cmp1, label %if.then.2, label %if.end.14

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %6 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %so3 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %6, i32 0, i32 1
  %7 = load %struct.PyStructObject*, %struct.PyStructObject** %so3, align 8
  %8 = bitcast %struct.PyStructObject* %7 to %struct._object*
  store %struct._object* %8, %struct._object** %_py_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp4 = icmp ne %struct._object* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %do.body
  %10 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %so6 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %10, i32 0, i32 1
  store %struct.PyStructObject* null, %struct.PyStructObject** %so6, align 8
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.5
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10

if.else:                                          ; preds = %do.body.7
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %18 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %buf13 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %18, i32 0, i32 2
  call void @PyBuffer_Release(%struct.bufferinfo* %buf13)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %19 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %so15 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %19, i32 0, i32 1
  %20 = load %struct.PyStructObject*, %struct.PyStructObject** %so15, align 8
  %21 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %buf16 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %21, i32 0, i32 2
  %buf17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf16, i32 0, i32 0
  %22 = load i8*, i8** %buf17, align 8
  %23 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %index18 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %23, i32 0, i32 3
  %24 = load i64, i64* %index18, align 8
  %add.ptr = getelementptr i8, i8* %22, i64 %24
  %call = call %struct._object* @s_unpack_internal(%struct.PyStructObject* %20, i8* %add.ptr)
  store %struct._object* %call, %struct._object** %result, align 8
  %25 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %so19 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %25, i32 0, i32 1
  %26 = load %struct.PyStructObject*, %struct.PyStructObject** %so19, align 8
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %26, i32 0, i32 1
  %27 = load i64, i64* %s_size, align 8
  %28 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %index20 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %28, i32 0, i32 3
  %29 = load i64, i64* %index20, align 8
  %add = add i64 %29, %27
  store i64 %add, i64* %index20, align 8
  %30 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %30, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %do.end.12, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_unpack_internal(%struct.PyStructObject* %soself, i8* %startfrom) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %soself.addr = alloca %struct.PyStructObject*, align 8
  %startfrom.addr = alloca i8*, align 8
  %code = alloca %struct._formatcode*, align 8
  %i = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %e = alloca %struct._formatdef*, align 8
  %res = alloca i8*, align 8
  %j = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyStructObject* %soself, %struct.PyStructObject** %soself.addr, align 8
  store i8* %startfrom, i8** %startfrom.addr, align 8
  store i64 0, i64* %i, align 8
  %0 = load %struct.PyStructObject*, %struct.PyStructObject** %soself.addr, align 8
  %s_len = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %0, i32 0, i32 2
  %1 = load i64, i64* %s_len, align 8
  %call = call %struct._object* @PyTuple_New(i64 %1)
  store %struct._object* %call, %struct._object** %result, align 8
  %2 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyStructObject*, %struct.PyStructObject** %soself.addr, align 8
  %s_codes = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %3, i32 0, i32 3
  %4 = load %struct._formatcode*, %struct._formatcode** %s_codes, align 8
  store %struct._formatcode* %4, %struct._formatcode** %code, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %fmtdef = getelementptr inbounds %struct._formatcode, %struct._formatcode* %5, i32 0, i32 0
  %6 = load %struct._formatdef*, %struct._formatdef** %fmtdef, align 8
  %cmp1 = icmp ne %struct._formatdef* %6, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %fmtdef2 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %7, i32 0, i32 0
  %8 = load %struct._formatdef*, %struct._formatdef** %fmtdef2, align 8
  store %struct._formatdef* %8, %struct._formatdef** %e, align 8
  %9 = load i8*, i8** %startfrom.addr, align 8
  %10 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %offset = getelementptr inbounds %struct._formatcode, %struct._formatcode* %10, i32 0, i32 1
  %11 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %9, i64 %11
  store i8* %add.ptr, i8** %res, align 8
  %12 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %repeat = getelementptr inbounds %struct._formatcode, %struct._formatcode* %12, i32 0, i32 3
  %13 = load i64, i64* %repeat, align 8
  store i64 %13, i64* %j, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %for.body
  %14 = load i64, i64* %j, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %j, align 8
  %tobool = icmp ne i64 %14, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %format = getelementptr inbounds %struct._formatdef, %struct._formatdef* %15, i32 0, i32 0
  %16 = load i8, i8* %format, align 1
  %conv = sext i8 %16 to i32
  %cmp3 = icmp eq i32 %conv, 115
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %while.body
  %17 = load i8*, i8** %res, align 8
  %18 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %size = getelementptr inbounds %struct._formatcode, %struct._formatcode* %18, i32 0, i32 2
  %19 = load i64, i64* %size, align 8
  %call6 = call %struct._object* @PyBytes_FromStringAndSize(i8* %17, i64 %19)
  store %struct._object* %call6, %struct._object** %v, align 8
  br label %if.end.24

if.else:                                          ; preds = %while.body
  %20 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %format7 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %20, i32 0, i32 0
  %21 = load i8, i8* %format7, align 1
  %conv8 = sext i8 %21 to i32
  %cmp9 = icmp eq i32 %conv8, 112
  br i1 %cmp9, label %if.then.11, label %if.else.21

if.then.11:                                       ; preds = %if.else
  %22 = load i8*, i8** %res, align 8
  %23 = load i8, i8* %22, align 1
  %conv12 = zext i8 %23 to i64
  store i64 %conv12, i64* %n, align 8
  %24 = load i64, i64* %n, align 8
  %25 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %size13 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %25, i32 0, i32 2
  %26 = load i64, i64* %size13, align 8
  %cmp14 = icmp sge i64 %24, %26
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.11
  %27 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %size17 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %27, i32 0, i32 2
  %28 = load i64, i64* %size17, align 8
  %sub = sub i64 %28, 1
  store i64 %sub, i64* %n, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.then.11
  %29 = load i8*, i8** %res, align 8
  %add.ptr19 = getelementptr i8, i8* %29, i64 1
  %30 = load i64, i64* %n, align 8
  %call20 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr19, i64 %30)
  store %struct._object* %call20, %struct._object** %v, align 8
  br label %if.end.23

if.else.21:                                       ; preds = %if.else
  %31 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %unpack = getelementptr inbounds %struct._formatdef, %struct._formatdef* %31, i32 0, i32 3
  %32 = load %struct._object* (i8*, %struct._formatdef*)*, %struct._object* (i8*, %struct._formatdef*)** %unpack, align 8
  %33 = load i8*, i8** %res, align 8
  %34 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %call22 = call %struct._object* %32(i8* %33, %struct._formatdef* %34)
  store %struct._object* %call22, %struct._object** %v, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.end.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.5
  %35 = load %struct._object*, %struct._object** %v, align 8
  %cmp25 = icmp eq %struct._object* %35, null
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  br label %fail

if.end.28:                                        ; preds = %if.end.24
  %36 = load %struct._object*, %struct._object** %v, align 8
  %37 = load i64, i64* %i, align 8
  %inc = add i64 %37, 1
  store i64 %inc, i64* %i, align 8
  %38 = load %struct._object*, %struct._object** %result, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %39, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %37
  store %struct._object* %36, %struct._object** %arrayidx, align 8
  %40 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %size29 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %40, i32 0, i32 2
  %41 = load i64, i64* %size29, align 8
  %42 = load i8*, i8** %res, align 8
  %add.ptr30 = getelementptr i8, i8* %42, i64 %41
  store i8* %add.ptr30, i8** %res, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %43 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %incdec.ptr = getelementptr %struct._formatcode, %struct._formatcode* %43, i32 1
  store %struct._formatcode* %incdec.ptr, %struct._formatcode** %code, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.27
  br label %do.body

do.body:                                          ; preds = %fail
  %45 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt, align 8
  %dec31 = add i64 %47, -1
  store i64 %dec31, i64* %ob_refcnt, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body
  br label %if.end.36

if.else.35:                                       ; preds = %do.body
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %50(%struct._object* %51)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.36
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %for.end, %if.then
  %52 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %52
}

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @unpackiter_len(%struct.unpackiterobject* %self) #0 {
entry:
  %self.addr = alloca %struct.unpackiterobject*, align 8
  %len = alloca i64, align 8
  store %struct.unpackiterobject* %self, %struct.unpackiterobject** %self.addr, align 8
  %0 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %so = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %0, i32 0, i32 1
  %1 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8
  %cmp = icmp eq %struct.PyStructObject* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %len, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %buf = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %2, i32 0, i32 2
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  %4 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %index = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %4, i32 0, i32 3
  %5 = load i64, i64* %index, align 8
  %sub = sub i64 %3, %5
  %6 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8
  %so2 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %6, i32 0, i32 1
  %7 = load %struct.PyStructObject*, %struct.PyStructObject** %so2, align 8
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %7, i32 0, i32 1
  %8 = load i64, i64* %s_size, align 8
  %div = sdiv i64 %sub, %8
  store i64 %div, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %9)
  ret %struct._object* %call
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_pack(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %soself = alloca %struct.PyStructObject*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyStructObject*
  store %struct.PyStructObject* %1, %struct.PyStructObject** %soself, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %5 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_len = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %5, i32 0, i32 2
  %6 = load i64, i64* %s_len, align 8
  %cmp = icmp ne i64 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** @StructError, align 8
  %8 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_len1 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %8, i32 0, i32 2
  %9 = load i64, i64* %s_len1, align 8
  %10 = load %struct._object*, %struct._object** %args.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size2, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i32 0, i32 0), i64 %9, i64 %12)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %13, i32 0, i32 1
  %14 = load i64, i64* %s_size, align 8
  %call3 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %14)
  store %struct._object* %call3, %struct._object** %result, align 8
  %15 = load %struct._object*, %struct._object** %result, align 8
  %cmp4 = icmp eq %struct._object* %15, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %16 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %17 = load %struct._object*, %struct._object** %args.addr, align 8
  %18 = load %struct._object*, %struct._object** %result, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %19, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call7 = call i32 @s_pack_internal(%struct.PyStructObject* %16, %struct._object* %17, i32 0, i8* %arraydecay)
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %20 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %27 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %do.end, %if.then.5, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal i32 @s_pack_internal(%struct.PyStructObject* %soself, %struct._object* %args, i32 %offset, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %soself.addr = alloca %struct.PyStructObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %offset.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %code = alloca %struct._formatcode*, align 8
  %i = alloca i64, align 8
  %e = alloca %struct._formatdef*, align 8
  %res = alloca i8*, align 8
  %j = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %isstring = alloca i32, align 4
  %p = alloca i8*, align 8
  %n37 = alloca i64, align 8
  %isstring38 = alloca i32, align 4
  %p39 = alloca i8*, align 8
  store %struct.PyStructObject* %soself, %struct.PyStructObject** %soself.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load %struct.PyStructObject*, %struct.PyStructObject** %soself.addr, align 8
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %1, i32 0, i32 1
  %2 = load i64, i64* %s_size, align 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %2, i32 1, i1 false)
  %3 = load i32, i32* %offset.addr, align 4
  %conv = sext i32 %3 to i64
  store i64 %conv, i64* %i, align 8
  %4 = load %struct.PyStructObject*, %struct.PyStructObject** %soself.addr, align 8
  %s_codes = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %4, i32 0, i32 3
  %5 = load %struct._formatcode*, %struct._formatcode** %s_codes, align 8
  store %struct._formatcode* %5, %struct._formatcode** %code, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %fmtdef = getelementptr inbounds %struct._formatcode, %struct._formatcode* %6, i32 0, i32 0
  %7 = load %struct._formatdef*, %struct._formatdef** %fmtdef, align 8
  %cmp = icmp ne %struct._formatdef* %7, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %fmtdef2 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %8, i32 0, i32 0
  %9 = load %struct._formatdef*, %struct._formatdef** %fmtdef2, align 8
  store %struct._formatdef* %9, %struct._formatdef** %e, align 8
  %10 = load i8*, i8** %buf.addr, align 8
  %11 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %offset3 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %11, i32 0, i32 1
  %12 = load i64, i64* %offset3, align 8
  %add.ptr = getelementptr i8, i8* %10, i64 %12
  store i8* %add.ptr, i8** %res, align 8
  %13 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %repeat = getelementptr inbounds %struct._formatcode, %struct._formatcode* %13, i32 0, i32 3
  %14 = load i64, i64* %repeat, align 8
  store i64 %14, i64* %j, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.105, %for.body
  %15 = load i64, i64* %j, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %j, align 8
  %tobool = icmp ne i64 %15, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  %17 = load %struct._object*, %struct._object** %args.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %16
  %19 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %19, %struct._object** %v, align 8
  %20 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %format = getelementptr inbounds %struct._formatdef, %struct._formatdef* %20, i32 0, i32 0
  %21 = load i8, i8* %format, align 1
  %conv4 = sext i8 %21 to i32
  %cmp5 = icmp eq i32 %conv4, 115
  br i1 %cmp5, label %if.then, label %if.else.31

if.then:                                          ; preds = %while.body
  %22 = load %struct._object*, %struct._object** %v, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 19
  %24 = load i64, i64* %tp_flags, align 8
  %and = and i64 %24, 134217728
  %cmp7 = icmp ne i64 %and, 0
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, i32* %isstring, align 4
  %25 = load i32, i32* %isstring, align 4
  %tobool9 = icmp ne i32 %25, 0
  br i1 %tobool9, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %26 = load %struct._object*, %struct._object** %v, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %cmp11 = icmp eq %struct._typeobject* %27, @PyByteArray_Type
  br i1 %cmp11, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %28 = load %struct._object*, %struct._object** %v, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %29, %struct._typeobject* @PyByteArray_Type)
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.end, label %if.then.15

if.then.15:                                       ; preds = %lor.lhs.false
  %30 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true, %if.then
  %31 = load i32, i32* %isstring, align 4
  %tobool16 = icmp ne i32 %31, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end
  %32 = load %struct._object*, %struct._object** %v, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %33, i32 0, i32 1
  %34 = load i64, i64* %ob_size, align 8
  store i64 %34, i64* %n, align 8
  %35 = load %struct._object*, %struct._object** %v, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %36, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %37 = load %struct._object*, %struct._object** %v, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyVarObject*
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %38, i32 0, i32 1
  %39 = load i64, i64* %ob_size18, align 8
  store i64 %39, i64* %n, align 8
  %40 = load %struct._object*, %struct._object** %v, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyVarObject*
  %ob_size19 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %41, i32 0, i32 1
  %42 = load i64, i64* %ob_size19, align 8
  %tobool20 = icmp ne i64 %42, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %43 = load %struct._object*, %struct._object** %v, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %44, i32 0, i32 3
  %45 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %45, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %p, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %cond.end, %if.then.17
  %46 = load i64, i64* %n, align 8
  %47 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %size = getelementptr inbounds %struct._formatcode, %struct._formatcode* %47, i32 0, i32 2
  %48 = load i64, i64* %size, align 8
  %cmp22 = icmp sgt i64 %46, %48
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %49 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %size25 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %49, i32 0, i32 2
  %50 = load i64, i64* %size25, align 8
  store i64 %50, i64* %n, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.21
  %51 = load i64, i64* %n, align 8
  %cmp27 = icmp sgt i64 %51, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %52 = load i8*, i8** %res, align 8
  %53 = load i8*, i8** %p, align 8
  %54 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 %54, i32 1, i1 false)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  br label %if.end.105

if.else.31:                                       ; preds = %while.body
  %55 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %format32 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %55, i32 0, i32 0
  %56 = load i8, i8* %format32, align 1
  %conv33 = sext i8 %56 to i32
  %cmp34 = icmp eq i32 %conv33, 112
  br i1 %cmp34, label %if.then.36, label %if.else.88

if.then.36:                                       ; preds = %if.else.31
  %57 = load %struct._object*, %struct._object** %v, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_flags41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 19
  %59 = load i64, i64* %tp_flags41, align 8
  %and42 = and i64 %59, 134217728
  %cmp43 = icmp ne i64 %and42, 0
  %conv44 = zext i1 %cmp43 to i32
  store i32 %conv44, i32* %isstring38, align 4
  %60 = load i32, i32* %isstring38, align 4
  %tobool45 = icmp ne i32 %60, 0
  br i1 %tobool45, label %if.end.55, label %land.lhs.true.46

land.lhs.true.46:                                 ; preds = %if.then.36
  %61 = load %struct._object*, %struct._object** %v, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %cmp48 = icmp eq %struct._typeobject* %62, @PyByteArray_Type
  br i1 %cmp48, label %if.end.55, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %land.lhs.true.46
  %63 = load %struct._object*, %struct._object** %v, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %call52 = call i32 @PyType_IsSubtype(%struct._typeobject* %64, %struct._typeobject* @PyByteArray_Type)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %lor.lhs.false.50
  %65 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %lor.lhs.false.50, %land.lhs.true.46, %if.then.36
  %66 = load i32, i32* %isstring38, align 4
  %tobool56 = icmp ne i32 %66, 0
  br i1 %tobool56, label %if.then.57, label %if.else.61

if.then.57:                                       ; preds = %if.end.55
  %67 = load %struct._object*, %struct._object** %v, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyVarObject*
  %ob_size58 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %68, i32 0, i32 1
  %69 = load i64, i64* %ob_size58, align 8
  store i64 %69, i64* %n37, align 8
  %70 = load %struct._object*, %struct._object** %v, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyBytesObject*
  %ob_sval59 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %71, i32 0, i32 2
  %arraydecay60 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval59, i32 0, i32 0
  store i8* %arraydecay60, i8** %p39, align 8
  br label %if.end.70

if.else.61:                                       ; preds = %if.end.55
  %72 = load %struct._object*, %struct._object** %v, align 8
  %73 = bitcast %struct._object* %72 to %struct.PyVarObject*
  %ob_size62 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %73, i32 0, i32 1
  %74 = load i64, i64* %ob_size62, align 8
  store i64 %74, i64* %n37, align 8
  %75 = load %struct._object*, %struct._object** %v, align 8
  %76 = bitcast %struct._object* %75 to %struct.PyVarObject*
  %ob_size63 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %76, i32 0, i32 1
  %77 = load i64, i64* %ob_size63, align 8
  %tobool64 = icmp ne i64 %77, 0
  br i1 %tobool64, label %cond.true.65, label %cond.false.67

cond.true.65:                                     ; preds = %if.else.61
  %78 = load %struct._object*, %struct._object** %v, align 8
  %79 = bitcast %struct._object* %78 to %struct.PyByteArrayObject*
  %ob_start66 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %79, i32 0, i32 3
  %80 = load i8*, i8** %ob_start66, align 8
  br label %cond.end.68

cond.false.67:                                    ; preds = %if.else.61
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.65
  %cond69 = phi i8* [ %80, %cond.true.65 ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.67 ]
  store i8* %cond69, i8** %p39, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %cond.end.68, %if.then.57
  %81 = load i64, i64* %n37, align 8
  %82 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %size71 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %82, i32 0, i32 2
  %83 = load i64, i64* %size71, align 8
  %sub = sub i64 %83, 1
  %cmp72 = icmp sgt i64 %81, %sub
  br i1 %cmp72, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %if.end.70
  %84 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %size75 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %84, i32 0, i32 2
  %85 = load i64, i64* %size75, align 8
  %sub76 = sub i64 %85, 1
  store i64 %sub76, i64* %n37, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %if.end.70
  %86 = load i64, i64* %n37, align 8
  %cmp78 = icmp sgt i64 %86, 0
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.77
  %87 = load i8*, i8** %res, align 8
  %add.ptr81 = getelementptr i8, i8* %87, i64 1
  %88 = load i8*, i8** %p39, align 8
  %89 = load i64, i64* %n37, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr81, i8* %88, i64 %89, i32 1, i1 false)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.77
  %90 = load i64, i64* %n37, align 8
  %cmp83 = icmp sgt i64 %90, 255
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.82
  store i64 255, i64* %n37, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.end.82
  %91 = load i64, i64* %n37, align 8
  %conv87 = trunc i64 %91 to i8
  %92 = load i8*, i8** %res, align 8
  store i8 %conv87, i8* %92, align 1
  br label %if.end.104

if.else.88:                                       ; preds = %if.else.31
  %93 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %pack = getelementptr inbounds %struct._formatdef, %struct._formatdef* %93, i32 0, i32 4
  %94 = load i32 (i8*, %struct._object*, %struct._formatdef*)*, i32 (i8*, %struct._object*, %struct._formatdef*)** %pack, align 8
  %95 = load i8*, i8** %res, align 8
  %96 = load %struct._object*, %struct._object** %v, align 8
  %97 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %call89 = call i32 %94(i8* %95, %struct._object* %96, %struct._formatdef* %97)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.103

if.then.92:                                       ; preds = %if.else.88
  %98 = load %struct._object*, %struct._object** %v, align 8
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8
  %tp_flags94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 19
  %100 = load i64, i64* %tp_flags94, align 8
  %and95 = and i64 %100, 16777216
  %cmp96 = icmp ne i64 %and95, 0
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.102

land.lhs.true.98:                                 ; preds = %if.then.92
  %101 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call99 = call i32 @PyErr_ExceptionMatches(%struct._object* %101)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %land.lhs.true.98
  %102 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %land.lhs.true.98, %if.then.92
  store i32 -1, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.else.88
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.86
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.30
  %103 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %size106 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %103, i32 0, i32 2
  %104 = load i64, i64* %size106, align 8
  %105 = load i8*, i8** %res, align 8
  %add.ptr107 = getelementptr i8, i8* %105, i64 %104
  store i8* %add.ptr107, i8** %res, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %106 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %incdec.ptr = getelementptr %struct._formatcode, %struct._formatcode* %106, i32 1
  store %struct._formatcode* %incdec.ptr, %struct._formatcode** %code, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.102, %if.then.54, %if.then.15
  %107 = load i32, i32* %retval
  ret i32 %107
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_pack_into(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %soself = alloca %struct.PyStructObject*, align 8
  %buffer = alloca i8*, align 8
  %buffer_len = alloca i64, align 8
  %offset = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyStructObject*
  store %struct.PyStructObject* %1, %struct.PyStructObject** %soself, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %5 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_len = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %5, i32 0, i32 2
  %6 = load i64, i64* %s_len, align 8
  %add = add i64 %6, 2
  %cmp = icmp ne i64 %4, %add
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size1, align 8
  %cmp2 = icmp eq i64 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %10 = load %struct._object*, %struct._object** @StructError, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %11 = load %struct._object*, %struct._object** %args.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size4, align 8
  %cmp5 = icmp eq i64 %13, 1
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %14 = load %struct._object*, %struct._object** @StructError, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %15 = load %struct._object*, %struct._object** @StructError, align 8
  %16 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_len9 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %16, i32 0, i32 2
  %17 = load i64, i64* %s_len9, align 8
  %18 = load %struct._object*, %struct._object** %args.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size10, align 8
  %sub = sub i64 %20, 2
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i32 0, i32 0), i64 %17, i64 %sub)
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %entry
  %21 = load %struct._object*, %struct._object** %args.addr, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %22, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %23 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call14 = call i32 @PyObject_AsWriteBuffer(%struct._object* %23, i8** %buffer, i64* %buffer_len)
  %cmp15 = icmp eq i32 %call14, -1
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %24 = load %struct._object*, %struct._object** %args.addr, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*
  %ob_item18 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1
  %arrayidx19 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item18, i32 0, i64 1
  %26 = load %struct._object*, %struct._object** %arrayidx19, align 8
  %27 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call20 = call i64 @PyNumber_AsSsize_t(%struct._object* %26, %struct._object* %27)
  store i64 %call20, i64* %offset, align 8
  %28 = load i64, i64* %offset, align 8
  %cmp21 = icmp eq i64 %28, -1
  br i1 %cmp21, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end.17
  %call22 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call22, null
  br i1 %tobool, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true, %if.end.17
  %29 = load i64, i64* %offset, align 8
  %cmp25 = icmp slt i64 %29, 0
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %30 = load i64, i64* %buffer_len, align 8
  %31 = load i64, i64* %offset, align 8
  %add27 = add i64 %31, %30
  store i64 %add27, i64* %offset, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %32 = load i64, i64* %offset, align 8
  %cmp29 = icmp slt i64 %32, 0
  br i1 %cmp29, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.28
  %33 = load i64, i64* %buffer_len, align 8
  %34 = load i64, i64* %offset, align 8
  %sub30 = sub i64 %33, %34
  %35 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %35, i32 0, i32 1
  %36 = load i64, i64* %s_size, align 8
  %cmp31 = icmp slt i64 %sub30, %36
  br i1 %cmp31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %lor.lhs.false, %if.end.28
  %37 = load %struct._object*, %struct._object** @StructError, align 8
  %38 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_size33 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %38, i32 0, i32 1
  %39 = load i64, i64* %s_size33, align 8
  %call34 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i32 0, i32 0), i64 %39)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %lor.lhs.false
  %40 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %41 = load %struct._object*, %struct._object** %args.addr, align 8
  %42 = load i8*, i8** %buffer, align 8
  %43 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %42, i64 %43
  %call36 = call i32 @s_pack_internal(%struct.PyStructObject* %40, %struct._object* %41, i32 2, i8* %add.ptr)
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  %44 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %44, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.38, %if.then.32, %if.then.23, %if.then.16, %if.end.12
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

declare i32 @PyObject_AsWriteBuffer(%struct._object*, i8**, i64*) #1

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_unpack(%struct._object* %self, %struct._object* %input) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %input.addr = alloca %struct._object*, align 8
  %vbuf = alloca %struct.bufferinfo, align 8
  %result = alloca %struct._object*, align 8
  %soself = alloca %struct.PyStructObject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %input, %struct._object** %input.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyStructObject*
  store %struct.PyStructObject* %1, %struct.PyStructObject** %soself, align 8
  %2 = load %struct._object*, %struct._object** %input.addr, align 8
  %call = call i32 @PyObject_GetBuffer(%struct._object* %2, %struct.bufferinfo* %vbuf, i32 0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  %4 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %4, i32 0, i32 1
  %5 = load i64, i64* %s_size, align 8
  %cmp1 = icmp ne i64 %3, %5
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @StructError, align 8
  %7 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_size3 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %7, i32 0, i32 1
  %8 = load i64, i64* %s_size3, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0), i64 %8)
  call void @PyBuffer_Release(%struct.bufferinfo* %vbuf)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 0
  %10 = load i8*, i8** %buf, align 8
  %call6 = call %struct._object* @s_unpack_internal(%struct.PyStructObject* %9, i8* %10)
  store %struct._object* %call6, %struct._object** %result, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %vbuf)
  %11 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_unpack_from(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %input = alloca %struct._object*, align 8
  %offset = alloca i64, align 8
  %vbuf = alloca %struct.bufferinfo, align 8
  %result = alloca %struct._object*, align 8
  %soself = alloca %struct.PyStructObject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i64 0, i64* %offset, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyStructObject*
  store %struct.PyStructObject* %1, %struct.PyStructObject** %soself, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @s_unpack_from.kwlist, i32 0, i32 0), %struct._object** %input, i64* %offset)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %input, align 8
  %call1 = call i32 @PyObject_GetBuffer(%struct._object* %4, %struct.bufferinfo* %vbuf, i32 0)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i64, i64* %offset, align 8
  %cmp4 = icmp slt i64 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 2
  %6 = load i64, i64* %len, align 8
  %7 = load i64, i64* %offset, align 8
  %add = add i64 %7, %6
  store i64 %add, i64* %offset, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %8 = load i64, i64* %offset, align 8
  %cmp7 = icmp slt i64 %8, 0
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %len8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 2
  %9 = load i64, i64* %len8, align 8
  %10 = load i64, i64* %offset, align 8
  %sub = sub i64 %9, %10
  %11 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %11, i32 0, i32 1
  %12 = load i64, i64* %s_size, align 8
  %cmp9 = icmp slt i64 %sub, %12
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.6
  %13 = load %struct._object*, %struct._object** @StructError, align 8
  %14 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_size11 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %14, i32 0, i32 1
  %15 = load i64, i64* %s_size11, align 8
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.29, i32 0, i32 0), i64 %15)
  call void @PyBuffer_Release(%struct.bufferinfo* %vbuf)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  %16 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 0
  %17 = load i8*, i8** %buf, align 8
  %18 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %17, i64 %18
  %call14 = call %struct._object* @s_unpack_internal(%struct.PyStructObject* %16, i8* %add.ptr)
  store %struct._object* %call14, %struct._object** %result, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %vbuf)
  %19 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.10, %if.then.2, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal void @s_dealloc(%struct.PyStructObject* %s) #0 {
entry:
  %s.addr = alloca %struct.PyStructObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyStructObject* %s, %struct.PyStructObject** %s.addr, align 8
  %0 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8
  %weakreflist = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %0, i32 0, i32 5
  %1 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8
  %3 = bitcast %struct.PyStructObject* %2 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8
  %s_codes = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %4, i32 0, i32 3
  %5 = load %struct._formatcode*, %struct._formatcode** %s_codes, align 8
  %cmp1 = icmp ne %struct._formatcode* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8
  %s_codes3 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %6, i32 0, i32 3
  %7 = load %struct._formatcode*, %struct._formatcode** %s_codes3, align 8
  %8 = bitcast %struct._formatcode* %7 to i8*
  call void @PyMem_Free(i8* %8)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %9 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8
  %s_format = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %9, i32 0, i32 4
  %10 = load %struct._object*, %struct._object** %s_format, align 8
  store %struct._object* %10, %struct._object** %_py_xdecref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp5 = icmp ne %struct._object* %11, null
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10

if.else:                                          ; preds = %do.body.7
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %19 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8
  %20 = bitcast %struct.PyStructObject* %19 to %struct._object*
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 38
  %22 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %23 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8
  %24 = bitcast %struct.PyStructObject* %23 to %struct._object*
  %25 = bitcast %struct._object* %24 to i8*
  call void %22(i8* %25)
  ret void
}

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %soself = alloca %struct.PyStructObject*, align 8
  %o_format = alloca %struct._object*, align 8
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyStructObject*
  store %struct.PyStructObject* %1, %struct.PyStructObject** %soself, align 8
  store %struct._object* null, %struct._object** %o_format, align 8
  store i32 0, i32* %ret, align 4
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @s_init.kwlist, i32 0, i32 0), %struct._object** %o_format)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %o_format, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %o_format, align 8
  %call2 = call %struct._object* @PyUnicode_AsASCIIString(%struct._object* %7)
  store %struct._object* %call2, %struct._object** %o_format, align 8
  %8 = load %struct._object*, %struct._object** %o_format, align 8
  %cmp3 = icmp eq %struct._object* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %o_format, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end.5
  %11 = load %struct._object*, %struct._object** %o_format, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_flags8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19
  %13 = load i64, i64* %tp_flags8, align 8
  %and9 = and i64 %13, 134217728
  %cmp10 = icmp ne i64 %and9, 0
  br i1 %cmp10, label %if.end.20, label %if.then.11

if.then.11:                                       ; preds = %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %14 = load %struct._object*, %struct._object** %o_format, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt12, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt12, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.17

if.else.15:                                       ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %22 = load %struct._object*, %struct._object** %o_format, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 1
  %24 = load i8*, i8** %tp_name, align 8
  %call19 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i32 0, i32 0), i8* %24)
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.6
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %25 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_format = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %25, i32 0, i32 4
  %26 = load %struct._object*, %struct._object** %s_format, align 8
  store %struct._object* %26, %struct._object** %_py_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp22 = icmp ne %struct._object* %27, null
  br i1 %cmp22, label %if.then.23, label %if.end.36

if.then.23:                                       ; preds = %do.body.21
  %28 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_format24 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %28, i32 0, i32 4
  store %struct._object* null, %struct._object** %s_format24, align 8
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.23
  %29 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp26, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %31, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %34(%struct._object* %35)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %do.body.21
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %36 = load %struct._object*, %struct._object** %o_format, align 8
  %37 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %s_format38 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %37, i32 0, i32 4
  store %struct._object* %36, %struct._object** %s_format38, align 8
  %38 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8
  %call39 = call i32 @prepare_s(%struct.PyStructObject* %38)
  store i32 %call39, i32* %ret, align 4
  %39 = load i32, i32* %ret, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %do.end.37, %do.end, %if.then.4, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct._object*, align 8
  %s = alloca %struct.PyStructObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  store %struct._object* %call, %struct._object** %self, align 8
  %3 = load %struct._object*, %struct._object** %self, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %self, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyStructObject*
  store %struct.PyStructObject* %5, %struct.PyStructObject** %s, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %7 = load %struct.PyStructObject*, %struct.PyStructObject** %s, align 8
  %s_format = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %7, i32 0, i32 4
  store %struct._object* @_Py_NoneStruct, %struct._object** %s_format, align 8
  %8 = load %struct.PyStructObject*, %struct.PyStructObject** %s, align 8
  %s_codes = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %8, i32 0, i32 3
  store %struct._formatcode* null, %struct._formatcode** %s_codes, align 8
  %9 = load %struct.PyStructObject*, %struct.PyStructObject** %s, align 8
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %9, i32 0, i32 1
  store i64 -1, i64* %s_size, align 8
  %10 = load %struct.PyStructObject*, %struct.PyStructObject** %s, align 8
  %s_len = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %10, i32 0, i32 2
  store i64 -1, i64* %s_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._object*, %struct._object** %self, align 8
  ret %struct._object* %11
}

declare void @PyObject_Free(i8*) #1

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_sizeof(%struct.PyStructObject* %self, i8* %unused) #0 {
entry:
  %self.addr = alloca %struct.PyStructObject*, align 8
  %unused.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  %code = alloca %struct._formatcode*, align 8
  store %struct.PyStructObject* %self, %struct.PyStructObject** %self.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i64 88, i64* %size, align 8
  %0 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8
  %s_codes = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %0, i32 0, i32 3
  %1 = load %struct._formatcode*, %struct._formatcode** %s_codes, align 8
  store %struct._formatcode* %1, %struct._formatcode** %code, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %fmtdef = getelementptr inbounds %struct._formatcode, %struct._formatcode* %2, i32 0, i32 0
  %3 = load %struct._formatdef*, %struct._formatdef** %fmtdef, align 8
  %cmp = icmp ne %struct._formatdef* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %size, align 8
  %add = add i64 %4, 32
  store i64 %add, i64* %size, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct._formatcode*, %struct._formatcode** %code, align 8
  %incdec.ptr = getelementptr %struct._formatcode, %struct._formatcode* %5, i32 1
  store %struct._formatcode* %incdec.ptr, %struct._formatcode** %code, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %size, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %6)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_get_format(%struct.PyStructObject* %self, i8* %unused) #0 {
entry:
  %self.addr = alloca %struct.PyStructObject*, align 8
  %unused.addr = alloca i8*, align 8
  store %struct.PyStructObject* %self, %struct.PyStructObject** %self.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  %0 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8
  %s_format = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %s_format, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8
  %s_format1 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %3, i32 0, i32 4
  %4 = load %struct._object*, %struct._object** %s_format1, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_get_size(%struct.PyStructObject* %self, i8* %unused) #0 {
entry:
  %self.addr = alloca %struct.PyStructObject*, align 8
  %unused.addr = alloca i8*, align 8
  store %struct.PyStructObject* %self, %struct.PyStructObject** %self.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  %0 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %0, i32 0, i32 1
  %1 = load i64, i64* %s_size, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %1)
  ret %struct._object* %call
}

declare %struct._object* @PyUnicode_AsASCIIString(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @prepare_s(%struct.PyStructObject* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyStructObject*, align 8
  %f = alloca %struct._formatdef*, align 8
  %e = alloca %struct._formatdef*, align 8
  %codes = alloca %struct._formatcode*, align 8
  %s = alloca i8*, align 8
  %fmt = alloca i8*, align 8
  %c = alloca i8, align 1
  %size = alloca i64, align 8
  %len = alloca i64, align 8
  %ncodes = alloca i64, align 8
  %num = alloca i64, align 8
  %itemsize = alloca i64, align 8
  store %struct.PyStructObject* %self, %struct.PyStructObject** %self.addr, align 8
  %0 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8
  %s_format = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %s_format, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %fmt, align 8
  %call = call %struct._formatdef* @whichtable(i8** %fmt)
  store %struct._formatdef* %call, %struct._formatdef** %f, align 8
  %3 = load i8*, i8** %fmt, align 8
  store i8* %3, i8** %s, align 8
  store i64 0, i64* %size, align 8
  store i64 0, i64* %len, align 8
  store i64 0, i64* %ncodes, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.71, %if.then, %entry
  %4 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %c, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end.74

while.body:                                       ; preds = %while.cond
  %6 = load i8, i8* %c, align 1
  %conv2 = sext i8 %6 to i32
  %and = and i32 %conv2, 255
  %conv3 = trunc i32 %and to i8
  %conv4 = zext i8 %conv3 to i32
  %and5 = and i32 %conv4, 255
  %conv6 = trunc i32 %and5 to i8
  %idxprom = zext i8 %conv6 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %and7 = and i32 %7, 8
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %8 = load i8, i8* %c, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp sle i32 48, %conv8
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8, i8* %c, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp sle i32 %conv11, 57
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true
  %10 = load i8, i8* %c, align 1
  %conv15 = sext i8 %10 to i32
  %sub = sub i32 %conv15, 48
  %conv16 = sext i32 %sub to i64
  store i64 %conv16, i64* %num, align 8
  br label %while.cond.17

while.cond.17:                                    ; preds = %if.end.37, %if.then.14
  %11 = load i8*, i8** %s, align 8
  %incdec.ptr18 = getelementptr i8, i8* %11, i32 1
  store i8* %incdec.ptr18, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %c, align 1
  %conv19 = sext i8 %12 to i32
  %cmp20 = icmp sle i32 48, %conv19
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.17
  %13 = load i8, i8* %c, align 1
  %conv22 = sext i8 %13 to i32
  %cmp23 = icmp sle i32 %conv22, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.17
  %14 = phi i1 [ false, %while.cond.17 ], [ %cmp23, %land.rhs ]
  br i1 %14, label %while.body.25, label %while.end

while.body.25:                                    ; preds = %land.end
  %15 = load i64, i64* %num, align 8
  %cmp26 = icmp sge i64 %15, 922337203685477580
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.37

land.lhs.true.28:                                 ; preds = %while.body.25
  %16 = load i64, i64* %num, align 8
  %cmp29 = icmp sgt i64 %16, 922337203685477580
  br i1 %cmp29, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.28
  %17 = load i8, i8* %c, align 1
  %conv31 = sext i8 %17 to i32
  %sub32 = sub i32 %conv31, 48
  %conv33 = sext i32 %sub32 to i64
  %cmp34 = icmp sgt i64 %conv33, 7
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false, %land.lhs.true.28
  br label %overflow

if.end.37:                                        ; preds = %lor.lhs.false, %while.body.25
  %18 = load i64, i64* %num, align 8
  %mul = mul i64 %18, 10
  %19 = load i8, i8* %c, align 1
  %conv38 = sext i8 %19 to i32
  %sub39 = sub i32 %conv38, 48
  %conv40 = sext i32 %sub39 to i64
  %add = add i64 %mul, %conv40
  store i64 %add, i64* %num, align 8
  br label %while.cond.17

while.end:                                        ; preds = %land.end
  %20 = load i8, i8* %c, align 1
  %conv41 = sext i8 %20 to i32
  %cmp42 = icmp eq i32 %conv41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %while.end
  %21 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %while.end
  br label %if.end.46

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i64 1, i64* %num, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.end.45
  %22 = load i8, i8* %c, align 1
  %conv47 = sext i8 %22 to i32
  %23 = load %struct._formatdef*, %struct._formatdef** %f, align 8
  %call48 = call %struct._formatdef* @getentry(i32 %conv47, %struct._formatdef* %23)
  store %struct._formatdef* %call48, %struct._formatdef** %e, align 8
  %24 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %cmp49 = icmp eq %struct._formatdef* %24, null
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.46
  store i32 -1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.46
  %25 = load i8, i8* %c, align 1
  %conv53 = sext i8 %25 to i32
  switch i32 %conv53, label %sw.default [
    i32 115, label %sw.bb
    i32 112, label %sw.bb
    i32 120, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %if.end.52, %if.end.52
  %26 = load i64, i64* %len, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %len, align 8
  %27 = load i64, i64* %ncodes, align 8
  %inc54 = add i64 %27, 1
  store i64 %inc54, i64* %ncodes, align 8
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.52
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.52
  %28 = load i64, i64* %num, align 8
  %29 = load i64, i64* %len, align 8
  %add56 = add i64 %29, %28
  store i64 %add56, i64* %len, align 8
  %30 = load i64, i64* %num, align 8
  %tobool57 = icmp ne i64 %30, 0
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %sw.default
  %31 = load i64, i64* %ncodes, align 8
  %inc59 = add i64 %31, 1
  store i64 %inc59, i64* %ncodes, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.60, %sw.bb.55, %sw.bb
  %32 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %size61 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %32, i32 0, i32 1
  %33 = load i64, i64* %size61, align 8
  store i64 %33, i64* %itemsize, align 8
  %34 = load i64, i64* %size, align 8
  %35 = load i8, i8* %c, align 1
  %36 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %call62 = call i64 @align(i64 %34, i8 signext %35, %struct._formatdef* %36)
  store i64 %call62, i64* %size, align 8
  %37 = load i64, i64* %size, align 8
  %cmp63 = icmp eq i64 %37, -1
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %sw.epilog
  br label %overflow

if.end.66:                                        ; preds = %sw.epilog
  %38 = load i64, i64* %num, align 8
  %39 = load i64, i64* %size, align 8
  %sub67 = sub i64 9223372036854775807, %39
  %40 = load i64, i64* %itemsize, align 8
  %div = sdiv i64 %sub67, %40
  %cmp68 = icmp sgt i64 %38, %div
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.66
  br label %overflow

if.end.71:                                        ; preds = %if.end.66
  %41 = load i64, i64* %num, align 8
  %42 = load i64, i64* %itemsize, align 8
  %mul72 = mul i64 %41, %42
  %43 = load i64, i64* %size, align 8
  %add73 = add i64 %43, %mul72
  store i64 %add73, i64* %size, align 8
  br label %while.cond

while.end.74:                                     ; preds = %while.cond
  %44 = load i64, i64* %ncodes, align 8
  %add75 = add i64 %44, 1
  %cmp76 = icmp ugt i64 %add75, 288230376151711743
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %while.end.74
  %call79 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %while.end.74
  %45 = load i64, i64* %size, align 8
  %46 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %46, i32 0, i32 1
  store i64 %45, i64* %s_size, align 8
  %47 = load i64, i64* %len, align 8
  %48 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8
  %s_len = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %48, i32 0, i32 2
  store i64 %47, i64* %s_len, align 8
  %49 = load i64, i64* %ncodes, align 8
  %add81 = add i64 %49, 1
  %mul82 = mul i64 %add81, 32
  %call83 = call i8* @PyMem_Malloc(i64 %mul82)
  %50 = bitcast i8* %call83 to %struct._formatcode*
  store %struct._formatcode* %50, %struct._formatcode** %codes, align 8
  %51 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %cmp84 = icmp eq %struct._formatcode* %51, null
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.80
  %call87 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %if.end.80
  %52 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8
  %s_codes = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %52, i32 0, i32 3
  %53 = load %struct._formatcode*, %struct._formatcode** %s_codes, align 8
  %cmp89 = icmp ne %struct._formatcode* %53, null
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.end.88
  %54 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8
  %s_codes92 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %54, i32 0, i32 3
  %55 = load %struct._formatcode*, %struct._formatcode** %s_codes92, align 8
  %56 = bitcast %struct._formatcode* %55 to i8*
  call void @PyMem_Free(i8* %56)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.end.88
  %57 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %58 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8
  %s_codes94 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %58, i32 0, i32 3
  store %struct._formatcode* %57, %struct._formatcode** %s_codes94, align 8
  %59 = load i8*, i8** %fmt, align 8
  store i8* %59, i8** %s, align 8
  store i64 0, i64* %size, align 8
  br label %while.cond.95

while.cond.95:                                    ; preds = %if.end.182, %if.then.111, %if.end.93
  %60 = load i8*, i8** %s, align 8
  %incdec.ptr96 = getelementptr i8, i8* %60, i32 1
  store i8* %incdec.ptr96, i8** %s, align 8
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %c, align 1
  %conv97 = sext i8 %61 to i32
  %cmp98 = icmp ne i32 %conv97, 0
  br i1 %cmp98, label %while.body.100, label %while.end.183

while.body.100:                                   ; preds = %while.cond.95
  %62 = load i8, i8* %c, align 1
  %conv101 = sext i8 %62 to i32
  %and102 = and i32 %conv101, 255
  %conv103 = trunc i32 %and102 to i8
  %conv104 = zext i8 %conv103 to i32
  %and105 = and i32 %conv104, 255
  %conv106 = trunc i32 %and105 to i8
  %idxprom107 = zext i8 %conv106 to i64
  %arrayidx108 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom107
  %63 = load i32, i32* %arrayidx108, align 4
  %and109 = and i32 %63, 8
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %while.body.100
  br label %while.cond.95

if.end.112:                                       ; preds = %while.body.100
  %64 = load i8, i8* %c, align 1
  %conv113 = sext i8 %64 to i32
  %cmp114 = icmp sle i32 48, %conv113
  br i1 %cmp114, label %land.lhs.true.116, label %if.else.146

land.lhs.true.116:                                ; preds = %if.end.112
  %65 = load i8, i8* %c, align 1
  %conv117 = sext i8 %65 to i32
  %cmp118 = icmp sle i32 %conv117, 57
  br i1 %cmp118, label %if.then.120, label %if.else.146

if.then.120:                                      ; preds = %land.lhs.true.116
  %66 = load i8, i8* %c, align 1
  %conv121 = sext i8 %66 to i32
  %sub122 = sub i32 %conv121, 48
  %conv123 = sext i32 %sub122 to i64
  store i64 %conv123, i64* %num, align 8
  br label %while.cond.124

while.cond.124:                                   ; preds = %while.body.134, %if.then.120
  %67 = load i8*, i8** %s, align 8
  %incdec.ptr125 = getelementptr i8, i8* %67, i32 1
  store i8* %incdec.ptr125, i8** %s, align 8
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %c, align 1
  %conv126 = sext i8 %68 to i32
  %cmp127 = icmp sle i32 48, %conv126
  br i1 %cmp127, label %land.rhs.129, label %land.end.133

land.rhs.129:                                     ; preds = %while.cond.124
  %69 = load i8, i8* %c, align 1
  %conv130 = sext i8 %69 to i32
  %cmp131 = icmp sle i32 %conv130, 57
  br label %land.end.133

land.end.133:                                     ; preds = %land.rhs.129, %while.cond.124
  %70 = phi i1 [ false, %while.cond.124 ], [ %cmp131, %land.rhs.129 ]
  br i1 %70, label %while.body.134, label %while.end.140

while.body.134:                                   ; preds = %land.end.133
  %71 = load i64, i64* %num, align 8
  %mul135 = mul i64 %71, 10
  %72 = load i8, i8* %c, align 1
  %conv136 = sext i8 %72 to i32
  %sub137 = sub i32 %conv136, 48
  %conv138 = sext i32 %sub137 to i64
  %add139 = add i64 %mul135, %conv138
  store i64 %add139, i64* %num, align 8
  br label %while.cond.124

while.end.140:                                    ; preds = %land.end.133
  %73 = load i8, i8* %c, align 1
  %conv141 = sext i8 %73 to i32
  %cmp142 = icmp eq i32 %conv141, 0
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %while.end.140
  br label %while.end.183

if.end.145:                                       ; preds = %while.end.140
  br label %if.end.147

if.else.146:                                      ; preds = %land.lhs.true.116, %if.end.112
  store i64 1, i64* %num, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.146, %if.end.145
  %74 = load i8, i8* %c, align 1
  %conv148 = sext i8 %74 to i32
  %75 = load %struct._formatdef*, %struct._formatdef** %f, align 8
  %call149 = call %struct._formatdef* @getentry(i32 %conv148, %struct._formatdef* %75)
  store %struct._formatdef* %call149, %struct._formatdef** %e, align 8
  %76 = load i64, i64* %size, align 8
  %77 = load i8, i8* %c, align 1
  %78 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %call150 = call i64 @align(i64 %76, i8 signext %77, %struct._formatdef* %78)
  store i64 %call150, i64* %size, align 8
  %79 = load i8, i8* %c, align 1
  %conv151 = sext i8 %79 to i32
  %cmp152 = icmp eq i32 %conv151, 115
  br i1 %cmp152, label %if.then.158, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %if.end.147
  %80 = load i8, i8* %c, align 1
  %conv155 = sext i8 %80 to i32
  %cmp156 = icmp eq i32 %conv155, 112
  br i1 %cmp156, label %if.then.158, label %if.else.162

if.then.158:                                      ; preds = %lor.lhs.false.154, %if.end.147
  %81 = load i64, i64* %size, align 8
  %82 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %offset = getelementptr inbounds %struct._formatcode, %struct._formatcode* %82, i32 0, i32 1
  store i64 %81, i64* %offset, align 8
  %83 = load i64, i64* %num, align 8
  %84 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %size159 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %84, i32 0, i32 2
  store i64 %83, i64* %size159, align 8
  %85 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %86 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %fmtdef = getelementptr inbounds %struct._formatcode, %struct._formatcode* %86, i32 0, i32 0
  store %struct._formatdef* %85, %struct._formatdef** %fmtdef, align 8
  %87 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %repeat = getelementptr inbounds %struct._formatcode, %struct._formatcode* %87, i32 0, i32 3
  store i64 1, i64* %repeat, align 8
  %88 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %incdec.ptr160 = getelementptr %struct._formatcode, %struct._formatcode* %88, i32 1
  store %struct._formatcode* %incdec.ptr160, %struct._formatcode** %codes, align 8
  %89 = load i64, i64* %num, align 8
  %90 = load i64, i64* %size, align 8
  %add161 = add i64 %90, %89
  store i64 %add161, i64* %size, align 8
  br label %if.end.182

if.else.162:                                      ; preds = %lor.lhs.false.154
  %91 = load i8, i8* %c, align 1
  %conv163 = sext i8 %91 to i32
  %cmp164 = icmp eq i32 %conv163, 120
  br i1 %cmp164, label %if.then.166, label %if.else.168

if.then.166:                                      ; preds = %if.else.162
  %92 = load i64, i64* %num, align 8
  %93 = load i64, i64* %size, align 8
  %add167 = add i64 %93, %92
  store i64 %add167, i64* %size, align 8
  br label %if.end.181

if.else.168:                                      ; preds = %if.else.162
  %94 = load i64, i64* %num, align 8
  %tobool169 = icmp ne i64 %94, 0
  br i1 %tobool169, label %if.then.170, label %if.end.180

if.then.170:                                      ; preds = %if.else.168
  %95 = load i64, i64* %size, align 8
  %96 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %offset171 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %96, i32 0, i32 1
  store i64 %95, i64* %offset171, align 8
  %97 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %size172 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %97, i32 0, i32 1
  %98 = load i64, i64* %size172, align 8
  %99 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %size173 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %99, i32 0, i32 2
  store i64 %98, i64* %size173, align 8
  %100 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %101 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %fmtdef174 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %101, i32 0, i32 0
  store %struct._formatdef* %100, %struct._formatdef** %fmtdef174, align 8
  %102 = load i64, i64* %num, align 8
  %103 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %repeat175 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %103, i32 0, i32 3
  store i64 %102, i64* %repeat175, align 8
  %104 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %incdec.ptr176 = getelementptr %struct._formatcode, %struct._formatcode* %104, i32 1
  store %struct._formatcode* %incdec.ptr176, %struct._formatcode** %codes, align 8
  %105 = load %struct._formatdef*, %struct._formatdef** %e, align 8
  %size177 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %105, i32 0, i32 1
  %106 = load i64, i64* %size177, align 8
  %107 = load i64, i64* %num, align 8
  %mul178 = mul i64 %106, %107
  %108 = load i64, i64* %size, align 8
  %add179 = add i64 %108, %mul178
  store i64 %add179, i64* %size, align 8
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.170, %if.else.168
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.166
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.158
  br label %while.cond.95

while.end.183:                                    ; preds = %if.then.144, %while.cond.95
  %109 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %fmtdef184 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %109, i32 0, i32 0
  store %struct._formatdef* null, %struct._formatdef** %fmtdef184, align 8
  %110 = load i64, i64* %size, align 8
  %111 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %offset185 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %111, i32 0, i32 1
  store i64 %110, i64* %offset185, align 8
  %112 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %size186 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %112, i32 0, i32 2
  store i64 0, i64* %size186, align 8
  %113 = load %struct._formatcode*, %struct._formatcode** %codes, align 8
  %repeat187 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %113, i32 0, i32 3
  store i64 0, i64* %repeat187, align 8
  store i32 0, i32* %retval
  br label %return

overflow:                                         ; preds = %if.then.70, %if.then.65, %if.then.36
  %114 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %overflow, %while.end.183, %if.then.86, %if.then.78, %if.then.51, %if.then.44
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define internal %struct._formatdef* @whichtable(i8** %pfmt) #0 {
entry:
  %retval = alloca %struct._formatdef*, align 8
  %pfmt.addr = alloca i8**, align 8
  %fmt = alloca i8*, align 8
  store i8** %pfmt, i8*** %pfmt.addr, align 8
  %0 = load i8**, i8*** %pfmt.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %incdec.ptr = getelementptr i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %0, align 8
  store i8* %1, i8** %fmt, align 8
  %2 = load i8*, i8** %fmt, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 60, label %sw.bb
    i32 62, label %sw.bb.1
    i32 33, label %sw.bb.1
    i32 61, label %sw.bb.2
    i32 64, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store %struct._formatdef* getelementptr inbounds ([18 x %struct._formatdef], [18 x %struct._formatdef]* @lilendian_table, i32 0, i32 0), %struct._formatdef** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  store %struct._formatdef* getelementptr inbounds ([18 x %struct._formatdef], [18 x %struct._formatdef]* @bigendian_table, i32 0, i32 0), %struct._formatdef** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store %struct._formatdef* getelementptr inbounds ([18 x %struct._formatdef], [18 x %struct._formatdef]* @lilendian_table, i32 0, i32 0), %struct._formatdef** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i8**, i8*** %pfmt.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %incdec.ptr3 = getelementptr i8, i8* %5, i32 -1
  store i8* %incdec.ptr3, i8** %4, align 8
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %entry, %sw.default
  store %struct._formatdef* getelementptr inbounds ([21 x %struct._formatdef], [21 x %struct._formatdef]* @native_table, i32 0, i32 0), %struct._formatdef** %retval
  br label %return

return:                                           ; preds = %sw.bb.4, %sw.bb.2, %sw.bb.1, %sw.bb
  %6 = load %struct._formatdef*, %struct._formatdef** %retval
  ret %struct._formatdef* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._formatdef* @getentry(i32 %c, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._formatdef*, align 8
  %c.addr = alloca i32, align 4
  %f.addr = alloca %struct._formatdef*, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %format = getelementptr inbounds %struct._formatdef, %struct._formatdef* %0, i32 0, i32 0
  %1 = load i8, i8* %format, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %format2 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %2, i32 0, i32 0
  %3 = load i8, i8* %format2, align 1
  %conv3 = sext i8 %3 to i32
  %4 = load i32, i32* %c.addr, align 4
  %cmp4 = icmp eq i32 %conv3, %4
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  store %struct._formatdef* %5, %struct._formatdef** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %incdec.ptr = getelementptr %struct._formatdef, %struct._formatdef* %6, i32 1
  store %struct._formatdef* %incdec.ptr, %struct._formatdef** %f.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0))
  store %struct._formatdef* null, %struct._formatdef** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load %struct._formatdef*, %struct._formatdef** %retval
  ret %struct._formatdef* %8
}

; Function Attrs: nounwind uwtable
define internal i64 @align(i64 %size, i8 signext %c, %struct._formatdef* %e) #0 {
entry:
  %retval = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %c.addr = alloca i8, align 1
  %e.addr = alloca %struct._formatdef*, align 8
  %extra = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store %struct._formatdef* %e, %struct._formatdef** %e.addr, align 8
  %0 = load %struct._formatdef*, %struct._formatdef** %e.addr, align 8
  %format = getelementptr inbounds %struct._formatdef, %struct._formatdef* %0, i32 0, i32 0
  %1 = load i8, i8* %format, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8, i8* %c.addr, align 1
  %conv1 = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %3 = load %struct._formatdef*, %struct._formatdef** %e.addr, align 8
  %alignment = getelementptr inbounds %struct._formatdef, %struct._formatdef* %3, i32 0, i32 2
  %4 = load i64, i64* %alignment, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.then
  %5 = load i64, i64* %size.addr, align 8
  %cmp3 = icmp sgt i64 %5, 0
  br i1 %cmp3, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %land.lhs.true
  %6 = load %struct._formatdef*, %struct._formatdef** %e.addr, align 8
  %alignment6 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %6, i32 0, i32 2
  %7 = load i64, i64* %alignment6, align 8
  %sub = sub i64 %7, 1
  %8 = load i64, i64* %size.addr, align 8
  %sub7 = sub i64 %8, 1
  %9 = load %struct._formatdef*, %struct._formatdef** %e.addr, align 8
  %alignment8 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %9, i32 0, i32 2
  %10 = load i64, i64* %alignment8, align 8
  %rem = srem i64 %sub7, %10
  %sub9 = sub i64 %sub, %rem
  store i64 %sub9, i64* %extra, align 8
  %11 = load i64, i64* %extra, align 8
  %12 = load i64, i64* %size.addr, align 8
  %sub10 = sub i64 9223372036854775807, %12
  %cmp11 = icmp sgt i64 %11, %sub10
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.5
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then.5
  %13 = load i64, i64* %extra, align 8
  %14 = load i64, i64* %size.addr, align 8
  %add = add i64 %14, %13
  store i64 %add, i64* %size.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %15 = load i64, i64* %size.addr, align 8
  store i64 %15, i64* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13
  %16 = load i64, i64* %retval
  ret i64 %16
}

declare %struct._object* @PyErr_NoMemory() #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_byte(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_byte(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %x, align 8
  %cmp1 = icmp slt i64 %1, -128
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, i64* %x, align 8
  %cmp2 = icmp sgt i64 %2, 127
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load i64, i64* %x, align 8
  %conv = trunc i64 %4 to i8
  %5 = load i8*, i8** %p.addr, align 8
  store i8 %conv, i8* %5, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_ubyte(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_ubyte(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %x, align 8
  %cmp1 = icmp slt i64 %1, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, i64* %x, align 8
  %cmp2 = icmp sgt i64 %2, 255
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load i64, i64* %x, align 8
  %conv = trunc i64 %4 to i8
  %5 = load i8*, i8** %p.addr, align 8
  store i8 %conv, i8* %5, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_char(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %0, i64 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_char(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i64 @PyBytes_Size(%struct._object* %3)
  %cmp1 = icmp ne i64 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.43, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %call2 = call i8* @PyBytes_AsString(%struct._object* %5)
  %6 = load i8, i8* %call2, align 1
  %7 = load i8*, i8** %p.addr, align 8
  store i8 %6, i8* %7, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bu_int(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %bytes = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  store i64 0, i64* %x, align 8
  %0 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  store i64 %1, i64* %i, align 8
  %2 = load i8*, i8** %p.addr, align 8
  store i8* %2, i8** %bytes, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i64, i64* %x, align 8
  %shl = shl i64 %3, 8
  %4 = load i8*, i8** %bytes, align 8
  %incdec.ptr = getelementptr i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %bytes, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i64
  %or = or i64 %shl, %conv
  store i64 %or, i64* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i64, i64* %i, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %i, align 8
  %cmp = icmp sgt i64 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size2 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %7, i32 0, i32 1
  %8 = load i64, i64* %size2, align 8
  %cmp3 = icmp sgt i64 8, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %9 = load i64, i64* %x, align 8
  %10 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size5 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %10, i32 0, i32 1
  %11 = load i64, i64* %size5, align 8
  %mul = mul i64 8, %11
  %sub = sub i64 %mul, 1
  %shl6 = shl i64 1, %sub
  %and = and i64 %9, %shl6
  %sub7 = sub i64 0, %and
  %12 = load i64, i64* %x, align 8
  %or8 = or i64 %12, %sub7
  store i64 %or8, i64* %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %13 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %13)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @bp_int(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %1, i32 0, i32 1
  %2 = load i64, i64* %size, align 8
  store i64 %2, i64* %i, align 8
  %3 = load i64, i64* %i, align 8
  %cmp1 = icmp ne i64 %3, 8
  br i1 %cmp1, label %if.then.2, label %if.end.17

if.then.2:                                        ; preds = %if.end
  %4 = load i64, i64* %i, align 8
  %cmp3 = icmp eq i64 %4, 2
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.2
  %5 = load i64, i64* %x, align 8
  %cmp4 = icmp slt i64 %5, -32768
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load i64, i64* %x, align 8
  %cmp5 = icmp sgt i64 %6, 32767
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %call7 = call i32 @_range_error(%struct._formatdef* %7, i32 0)
  store i32 %call7, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false, %if.then.2
  %8 = load i64, i64* %i, align 8
  %cmp8 = icmp eq i64 %8, 4
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.15

land.lhs.true.9:                                  ; preds = %if.else
  %9 = load i64, i64* %x, align 8
  %cmp10 = icmp slt i64 %9, -2147483648
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.9
  %10 = load i64, i64* %x, align 8
  %cmp12 = icmp sgt i64 %10, 2147483647
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %lor.lhs.false.11, %land.lhs.true.9
  %11 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %call14 = call i32 @_range_error(%struct._formatdef* %11, i32 0)
  store i32 %call14, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false.11, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.17
  %12 = load i64, i64* %x, align 8
  %conv = trunc i64 %12 to i8
  %13 = load i64, i64* %i, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %i, align 8
  %14 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr i8, i8* %14, i64 %dec
  store i8 %conv, i8* %arrayidx, align 1
  %15 = load i64, i64* %x, align 8
  %shr = ashr i64 %15, 8
  store i64 %shr, i64* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load i64, i64* %i, align 8
  %cmp18 = icmp sgt i64 %16, 0
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.13, %if.then.6, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bu_uint(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %bytes = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  store i64 0, i64* %x, align 8
  %0 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  store i64 %1, i64* %i, align 8
  %2 = load i8*, i8** %p.addr, align 8
  store i8* %2, i8** %bytes, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i64, i64* %x, align 8
  %shl = shl i64 %3, 8
  %4 = load i8*, i8** %bytes, align 8
  %incdec.ptr = getelementptr i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %bytes, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i64
  %or = or i64 %shl, %conv
  store i64 %or, i64* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i64, i64* %i, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %i, align 8
  %cmp = icmp sgt i64 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load i64, i64* %x, align 8
  %cmp2 = icmp ule i64 %7, 9223372036854775807
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %8 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.end
  %9 = load i64, i64* %x, align 8
  %call4 = call %struct._object* @PyLong_FromUnsignedLong(i64 %9)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal i32 @bp_uint(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %maxint = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_ulong(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %1, i32 0, i32 1
  %2 = load i64, i64* %size, align 8
  store i64 %2, i64* %i, align 8
  %3 = load i64, i64* %i, align 8
  %cmp1 = icmp ne i64 %3, 8
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  store i64 1, i64* %maxint, align 8
  %4 = load i64, i64* %i, align 8
  %mul = mul i64 %4, 8
  %5 = load i64, i64* %maxint, align 8
  %shl = shl i64 %5, %mul
  store i64 %shl, i64* %maxint, align 8
  %6 = load i64, i64* %x, align 8
  %7 = load i64, i64* %maxint, align 8
  %cmp3 = icmp uge i64 %6, %7
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %call5 = call i32 @_range_error(%struct._formatdef* %8, i32 1)
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.7
  %9 = load i64, i64* %x, align 8
  %conv = trunc i64 %9 to i8
  %10 = load i64, i64* %i, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %i, align 8
  %11 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr i8, i8* %11, i64 %dec
  store i8 %conv, i8* %arrayidx, align 1
  %12 = load i64, i64* %x, align 8
  %shr = lshr i64 %12, 8
  store i64 %shr, i64* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i64, i64* %i, align 8
  %cmp8 = icmp sgt i64 %13, 0
  br i1 %cmp8, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bu_longlong(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %bytes = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  store i64 0, i64* %x, align 8
  %0 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  store i64 %1, i64* %i, align 8
  %2 = load i8*, i8** %p.addr, align 8
  store i8* %2, i8** %bytes, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i64, i64* %x, align 8
  %shl = shl i64 %3, 8
  %4 = load i8*, i8** %bytes, align 8
  %incdec.ptr = getelementptr i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %bytes, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i64
  %or = or i64 %shl, %conv
  store i64 %or, i64* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i64, i64* %i, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %i, align 8
  %cmp = icmp sgt i64 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size2 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %7, i32 0, i32 1
  %8 = load i64, i64* %size2, align 8
  %cmp3 = icmp sgt i64 8, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %9 = load i64, i64* %x, align 8
  %10 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size5 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %10, i32 0, i32 1
  %11 = load i64, i64* %size5, align 8
  %mul = mul i64 8, %11
  %sub = sub i64 %mul, 1
  %shl6 = shl i64 1, %sub
  %and = and i64 %9, %shl6
  %sub7 = sub i64 0, %and
  %12 = load i64, i64* %x, align 8
  %or8 = or i64 %12, %sub7
  store i64 %or8, i64* %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %13 = load i64, i64* %x, align 8
  %cmp9 = icmp sge i64 %13, -9223372036854775808
  br i1 %cmp9, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %14 = load i64, i64* %x, align 8
  %cmp11 = icmp sle i64 %14, 9223372036854775807
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true
  %15 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %15)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %if.end
  %16 = load i64, i64* %x, align 8
  %call15 = call %struct._object* @PyLong_FromLongLong(i64 %16)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal i32 @bp_longlong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %res = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @get_pylong(%struct._object* %0)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct._longobject*
  %4 = load i8*, i8** %p.addr, align 8
  %call1 = call i32 @_PyLong_AsByteArray(%struct._longobject* %3, i8* %4, i64 8, i32 0, i32 1)
  store i32 %call1, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load i32, i32* %res, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bu_ulonglong(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %bytes = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  store i64 0, i64* %x, align 8
  %0 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  store i64 %1, i64* %i, align 8
  %2 = load i8*, i8** %p.addr, align 8
  store i8* %2, i8** %bytes, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i64, i64* %x, align 8
  %shl = shl i64 %3, 8
  %4 = load i8*, i8** %bytes, align 8
  %incdec.ptr = getelementptr i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %bytes, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i64
  %or = or i64 %shl, %conv
  store i64 %or, i64* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i64, i64* %i, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %i, align 8
  %cmp = icmp sgt i64 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load i64, i64* %x, align 8
  %cmp2 = icmp ule i64 %7, 9223372036854775807
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %8 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.end
  %9 = load i64, i64* %x, align 8
  %call4 = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %9)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal i32 @bp_ulonglong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %res = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @get_pylong(%struct._object* %0)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct._longobject*
  %4 = load i8*, i8** %p.addr, align 8
  %call1 = call i32 @_PyLong_AsByteArray(%struct._longobject* %3, i8* %4, i64 8, i32 0, i32 0)
  store i32 %call1, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load i32, i32* %res, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bu_bool(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i8, align 1
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x, i8* %0, i64 1, i32 1, i1 false)
  %1 = load i8, i8* %x, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  %conv2 = sext i32 %conv1 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @bp_bool(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %y = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @PyObject_IsTrue(%struct._object* %0)
  store i32 %call, i32* %y, align 4
  %1 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %y, align 4
  %conv = trunc i32 %2 to i8
  %3 = load i8*, i8** %p.addr, align 8
  store i8 %conv, i8* %3, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bu_float(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call %struct._object* @unpack_float(i8* %0, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @bp_float(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca double, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load double, double* %x, align 8
  %4 = load i8*, i8** %p.addr, align 8
  %call2 = call i32 @_PyFloat_Pack4(double %3, i8* %4, i32 0)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bu_double(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call %struct._object* @unpack_double(i8* %0, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @bp_double(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca double, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load double, double* %x, align 8
  %4 = load i8*, i8** %p.addr, align 8
  %call2 = call i32 @_PyFloat_Pack8(double %3, i8* %4, i32 0)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_long(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64* %p, i64** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @get_pylong(%struct._object* %0)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %call1 = call i64 @PyLong_AsLong(%struct._object* %2)
  store i64 %call1, i64* %x, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load i64, i64* %x, align 8
  %cmp5 = icmp eq i64 %10, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call8 = call i32 @PyErr_ExceptionMatches(%struct._object* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %12 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %do.end
  %13 = load i64, i64* %x, align 8
  %14 = load i64*, i64** %p.addr, align 8
  store i64 %13, i64* %14, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.end.11, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_pylong(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.else.10, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp2 = icmp ne %struct.PyNumberMethods* %5, null
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_as_number4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 10
  %8 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number4, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %8, i32 0, i32 33
  %9 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp5 = icmp ne %struct._object* (%struct._object*)* %9, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %10)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %11 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp7 = icmp eq %struct._object* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.6
  br label %if.end.9

if.else:                                          ; preds = %land.lhs.true, %if.then
  %12 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  br label %if.end.11

if.else.10:                                       ; preds = %entry
  %13 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.end.9
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.else, %if.then.8
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyNumber_Index(%struct._object*) #1

declare i64 @PyBytes_Size(%struct._object*) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_range_error(%struct._formatdef* %f, i32 %is_unsigned) #0 {
entry:
  %f.addr = alloca %struct._formatdef*, align 8
  %is_unsigned.addr = alloca i32, align 4
  %ulargest = alloca i64, align 8
  %largest = alloca i64, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  store i32 %is_unsigned, i32* %is_unsigned.addr, align 4
  %0 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  %sub = sub i64 8, %1
  %mul = mul i64 %sub, 8
  %shr = lshr i64 -1, %mul
  store i64 %shr, i64* %ulargest, align 8
  %2 = load i32, i32* %is_unsigned.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @StructError, align 8
  %4 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %format = getelementptr inbounds %struct._formatdef, %struct._formatdef* %4, i32 0, i32 0
  %5 = load i8, i8* %format, align 1
  %conv = sext i8 %5 to i32
  %6 = load i64, i64* %ulargest, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i32 0, i32 0), i32 %conv, i64 %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i64, i64* %ulargest, align 8
  %shr1 = lshr i64 %7, 1
  store i64 %shr1, i64* %largest, align 8
  %8 = load %struct._object*, %struct._object** @StructError, align 8
  %9 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %format2 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %9, i32 0, i32 0
  %10 = load i8, i8* %format2, align 1
  %conv3 = sext i8 %10 to i32
  %11 = load i64, i64* %largest, align 8
  %neg = xor i64 %11, -1
  %12 = load i64, i64* %largest, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i32 0, i32 0), i32 %conv3, i64 %neg, i64 %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 -1
}

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_ulong(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64* %p, i64** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @get_pylong(%struct._object* %0)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %call1 = call i64 @PyLong_AsUnsignedLong(%struct._object* %2)
  store i64 %call1, i64* %x, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load i64, i64* %x, align 8
  %cmp5 = icmp eq i64 %10, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call8 = call i32 @PyErr_ExceptionMatches(%struct._object* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %12 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %do.end
  %13 = load i64, i64* %x, align 8
  %14 = load i64*, i64** %p.addr, align 8
  store i64 %13, i64* %14, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.end.11, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #1

declare %struct._object* @PyLong_FromLongLong(i64) #1

declare i32 @_PyLong_AsByteArray(%struct._longobject*, i8*, i64, i32, i32) #1

declare %struct._object* @PyLong_FromUnsignedLongLong(i64) #1

declare %struct._object* @PyBool_FromLong(i64) #1

declare i32 @PyObject_IsTrue(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @unpack_float(i8* %p, i32 %le) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %le.addr = alloca i32, align 4
  %x = alloca double, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %le, i32* %le.addr, align 4
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i32, i32* %le.addr, align 4
  %call = call double @_PyFloat_Unpack4(i8* %0, i32 %1)
  store double %call, double* %x, align 8
  %2 = load double, double* %x, align 8
  %cmp = fcmp oeq double %2, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load double, double* %x, align 8
  %call2 = call %struct._object* @PyFloat_FromDouble(double %3)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare double @_PyFloat_Unpack4(i8*, i32) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

declare double @PyFloat_AsDouble(%struct._object*) #1

declare i32 @_PyFloat_Pack4(double, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @unpack_double(i8* %p, i32 %le) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %le.addr = alloca i32, align 4
  %x = alloca double, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %le, i32* %le.addr, align 4
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i32, i32* %le.addr, align 4
  %call = call double @_PyFloat_Unpack8(i8* %0, i32 %1)
  store double %call, double* %x, align 8
  %2 = load double, double* %x, align 8
  %cmp = fcmp oeq double %2, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load double, double* %x, align 8
  %call2 = call %struct._object* @PyFloat_FromDouble(double %3)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare double @_PyFloat_Unpack8(i8*, i32) #1

declare i32 @_PyFloat_Pack8(double, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_short(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i16, align 2
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast i16* %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 2, i32 1, i1 false)
  %2 = load i16, i16* %x, align 2
  %conv = sext i16 %2 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_short(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %y = alloca i16, align 2
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %x, align 8
  %cmp1 = icmp slt i64 %1, -32768
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, i64* %x, align 8
  %cmp2 = icmp sgt i64 %2, 32767
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.48, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load i64, i64* %x, align 8
  %conv = trunc i64 %4 to i16
  store i16 %conv, i16* %y, align 2
  %5 = load i8*, i8** %p.addr, align 8
  %6 = bitcast i16* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 2, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_ushort(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i16, align 2
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast i16* %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 2, i32 1, i1 false)
  %2 = load i16, i16* %x, align 2
  %conv = zext i16 %2 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_ushort(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %y = alloca i16, align 2
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %x, align 8
  %cmp1 = icmp slt i64 %1, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, i64* %x, align 8
  %cmp2 = icmp sgt i64 %2, 65535
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.49, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load i64, i64* %x, align 8
  %conv = trunc i64 %4 to i16
  store i16 %conv, i16* %y, align 2
  %5 = load i8*, i8** %p.addr, align 8
  %6 = bitcast i16* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 2, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_int(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast i32* %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 4, i32 1, i1 false)
  %2 = load i32, i32* %x, align 4
  %conv = sext i32 %2 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_int(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %y = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %x, align 8
  %cmp1 = icmp slt i64 %1, -2147483648
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, i64* %x, align 8
  %cmp2 = icmp sgt i64 %2, 2147483647
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %call4 = call i32 @_range_error(%struct._formatdef* %3, i32 0)
  store i32 %call4, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %4 = load i64, i64* %x, align 8
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %y, align 4
  %5 = load i8*, i8** %p.addr, align 8
  %6 = bitcast i32* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 4, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_uint(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast i32* %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 4, i32 1, i1 false)
  %2 = load i32, i32* %x, align 4
  %conv = zext i32 %2 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_uint(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %y = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_ulong(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %x, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %y, align 4
  %2 = load i64, i64* %x, align 8
  %cmp1 = icmp ugt i64 %2, 4294967295
  br i1 %cmp1, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %call4 = call i32 @_range_error(%struct._formatdef* %3, i32 1)
  store i32 %call4, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load i8*, i8** %p.addr, align 8
  %5 = bitcast i32* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 4, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_long(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast i64* %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_long(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  %2 = bitcast i64* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_ulong(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast i64* %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %x, align 8
  %cmp = icmp ule i64 %2, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %x, align 8
  %call1 = call %struct._object* @PyLong_FromUnsignedLong(i64 %4)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal i32 @np_ulong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_ulong(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  %2 = bitcast i64* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_ssize_t(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast i64* %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_ssize_t(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_ssize_t(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  %2 = bitcast i64* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_size_t(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast i64* %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromSize_t(i64 %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_size_t(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_size_t(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  %2 = bitcast i64* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_longlong(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast i64* %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %x, align 8
  %cmp = icmp sge i64 %2, -9223372036854775808
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %x, align 8
  %cmp1 = icmp sle i64 %3, 9223372036854775807
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %4)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i64, i64* %x, align 8
  %call2 = call %struct._object* @PyLong_FromLongLong(i64 %5)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal i32 @np_longlong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_longlong(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  %2 = bitcast i64* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_ulonglong(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast i64* %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %x, align 8
  %cmp = icmp ule i64 %2, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %x, align 8
  %call1 = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %4)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal i32 @np_ulonglong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_ulonglong(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  %2 = bitcast i64* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_bool(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i8, align 1
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x, i8* %0, i64 1, i32 1, i1 false)
  %1 = load i8, i8* %x, align 1
  %tobool = trunc i8 %1 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp ne i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  %conv2 = sext i32 %conv1 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_bool(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %y = alloca i32, align 4
  %x = alloca i8, align 1
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @PyObject_IsTrue(%struct._object* %0)
  store i32 %call, i32* %y, align 4
  %1 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %y, align 4
  %tobool = icmp ne i32 %2, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %x, align 1
  %3 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %x, i64 1, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_float(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca float, align 4
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast float* %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 4, i32 1, i1 false)
  %2 = load float, float* %x, align 4
  %conv = fpext float %2 to double
  %call = call %struct._object* @PyFloat_FromDouble(double %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_float(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca float, align 4
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  %conv = fptrunc double %call to float
  store float %conv, float* %x, align 4
  %1 = load float, float* %x, align 4
  %cmp = fcmp oeq float %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %p.addr, align 8
  %4 = bitcast float* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 4, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_double(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca double, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast double* %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load double, double* %x, align 8
  %call = call %struct._object* @PyFloat_FromDouble(double %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_double(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca double, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %p.addr, align 8
  %4 = bitcast double* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_void_p(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = bitcast i8** %x to i8*
  %1 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i8*, i8** %x, align 8
  %call = call %struct._object* @PyLong_FromVoidPtr(i8* %2)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @np_void_p(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @get_pylong(%struct._object* %0)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %call1 = call i8* @PyLong_AsVoidPtr(%struct._object* %2)
  store i8* %call1, i8** %x, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load i8*, i8** %x, align 8
  %cmp5 = icmp eq i8* %10, null
  br i1 %cmp5, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %do.end
  %11 = load i8*, i8** %p.addr, align 8
  %12 = bitcast i8** %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @get_ssize_t(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64* %p, i64** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @get_pylong(%struct._object* %0)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %call1 = call i64 @PyLong_AsSsize_t(%struct._object* %2)
  store i64 %call1, i64* %x, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load i64, i64* %x, align 8
  %cmp5 = icmp eq i64 %10, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call8 = call i32 @PyErr_ExceptionMatches(%struct._object* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %12 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %do.end
  %13 = load i64, i64* %x, align 8
  %14 = load i64*, i64** %p.addr, align 8
  store i64 %13, i64* %14, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.end.11, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare %struct._object* @PyLong_FromSize_t(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_size_t(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64* %p, i64** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @get_pylong(%struct._object* %0)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %call1 = call i64 @PyLong_AsSize_t(%struct._object* %2)
  store i64 %call1, i64* %x, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load i64, i64* %x, align 8
  %cmp5 = icmp eq i64 %10, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call8 = call i32 @PyErr_ExceptionMatches(%struct._object* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %12 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %do.end
  %13 = load i64, i64* %x, align 8
  %14 = load i64*, i64** %p.addr, align 8
  store i64 %13, i64* %14, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.end.11, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i64 @PyLong_AsSize_t(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_longlong(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64* %p, i64** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @get_pylong(%struct._object* %0)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %call1 = call i64 @PyLong_AsLongLong(%struct._object* %2)
  store i64 %call1, i64* %x, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load i64, i64* %x, align 8
  %cmp5 = icmp eq i64 %10, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call8 = call i32 @PyErr_ExceptionMatches(%struct._object* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %12 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %do.end
  %13 = load i64, i64* %x, align 8
  %14 = load i64*, i64** %p.addr, align 8
  store i64 %13, i64* %14, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.end.11, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i64 @PyLong_AsLongLong(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_ulonglong(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64* %p, i64** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @get_pylong(%struct._object* %0)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %call1 = call i64 @PyLong_AsUnsignedLongLong(%struct._object* %2)
  store i64 %call1, i64* %x, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load i64, i64* %x, align 8
  %cmp5 = icmp eq i64 %10, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call8 = call i32 @PyErr_ExceptionMatches(%struct._object* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %12 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %do.end
  %13 = load i64, i64* %x, align 8
  %14 = load i64*, i64** %p.addr, align 8
  store i64 %13, i64* %14, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.end.11, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i64 @PyLong_AsUnsignedLongLong(%struct._object*) #1

declare %struct._object* @PyLong_FromVoidPtr(i8*) #1

declare i8* @PyLong_AsVoidPtr(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @lu_int(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %bytes = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  store i64 0, i64* %x, align 8
  %0 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  store i64 %1, i64* %i, align 8
  %2 = load i8*, i8** %p.addr, align 8
  store i8* %2, i8** %bytes, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i64, i64* %x, align 8
  %shl = shl i64 %3, 8
  %4 = load i64, i64* %i, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %i, align 8
  %5 = load i8*, i8** %bytes, align 8
  %arrayidx = getelementptr i8, i8* %5, i64 %dec
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i64
  %or = or i64 %shl, %conv
  store i64 %or, i64* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i64, i64* %i, align 8
  %cmp = icmp sgt i64 %7, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size2 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %8, i32 0, i32 1
  %9 = load i64, i64* %size2, align 8
  %cmp3 = icmp sgt i64 8, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %10 = load i64, i64* %x, align 8
  %11 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size5 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %11, i32 0, i32 1
  %12 = load i64, i64* %size5, align 8
  %mul = mul i64 8, %12
  %sub = sub i64 %mul, 1
  %shl6 = shl i64 1, %sub
  %and = and i64 %10, %shl6
  %sub7 = sub i64 0, %and
  %13 = load i64, i64* %x, align 8
  %or8 = or i64 %13, %sub7
  store i64 %or8, i64* %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %14 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %14)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @lp_int(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %1, i32 0, i32 1
  %2 = load i64, i64* %size, align 8
  store i64 %2, i64* %i, align 8
  %3 = load i64, i64* %i, align 8
  %cmp1 = icmp ne i64 %3, 8
  br i1 %cmp1, label %if.then.2, label %if.end.17

if.then.2:                                        ; preds = %if.end
  %4 = load i64, i64* %i, align 8
  %cmp3 = icmp eq i64 %4, 2
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.2
  %5 = load i64, i64* %x, align 8
  %cmp4 = icmp slt i64 %5, -32768
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load i64, i64* %x, align 8
  %cmp5 = icmp sgt i64 %6, 32767
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %call7 = call i32 @_range_error(%struct._formatdef* %7, i32 0)
  store i32 %call7, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false, %if.then.2
  %8 = load i64, i64* %i, align 8
  %cmp8 = icmp eq i64 %8, 4
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.15

land.lhs.true.9:                                  ; preds = %if.else
  %9 = load i64, i64* %x, align 8
  %cmp10 = icmp slt i64 %9, -2147483648
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.9
  %10 = load i64, i64* %x, align 8
  %cmp12 = icmp sgt i64 %10, 2147483647
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %lor.lhs.false.11, %land.lhs.true.9
  %11 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %call14 = call i32 @_range_error(%struct._formatdef* %11, i32 0)
  store i32 %call14, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false.11, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.17
  %12 = load i64, i64* %x, align 8
  %conv = trunc i64 %12 to i8
  %13 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  store i8 %conv, i8* %13, align 1
  %14 = load i64, i64* %x, align 8
  %shr = ashr i64 %14, 8
  store i64 %shr, i64* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i64, i64* %i, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %i, align 8
  %cmp18 = icmp sgt i64 %dec, 0
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.13, %if.then.6, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lu_uint(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %bytes = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  store i64 0, i64* %x, align 8
  %0 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  store i64 %1, i64* %i, align 8
  %2 = load i8*, i8** %p.addr, align 8
  store i8* %2, i8** %bytes, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i64, i64* %x, align 8
  %shl = shl i64 %3, 8
  %4 = load i64, i64* %i, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %i, align 8
  %5 = load i8*, i8** %bytes, align 8
  %arrayidx = getelementptr i8, i8* %5, i64 %dec
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i64
  %or = or i64 %shl, %conv
  store i64 %or, i64* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i64, i64* %i, align 8
  %cmp = icmp sgt i64 %7, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load i64, i64* %x, align 8
  %cmp2 = icmp ule i64 %8, 9223372036854775807
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %9 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %9)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.end
  %10 = load i64, i64* %x, align 8
  %call4 = call %struct._object* @PyLong_FromUnsignedLong(i64 %10)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal i32 @lp_uint(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %maxint = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @get_ulong(%struct._object* %0, i64* %x)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %1, i32 0, i32 1
  %2 = load i64, i64* %size, align 8
  store i64 %2, i64* %i, align 8
  %3 = load i64, i64* %i, align 8
  %cmp1 = icmp ne i64 %3, 8
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  store i64 1, i64* %maxint, align 8
  %4 = load i64, i64* %i, align 8
  %mul = mul i64 %4, 8
  %5 = load i64, i64* %maxint, align 8
  %shl = shl i64 %5, %mul
  store i64 %shl, i64* %maxint, align 8
  %6 = load i64, i64* %x, align 8
  %7 = load i64, i64* %maxint, align 8
  %cmp3 = icmp uge i64 %6, %7
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %call5 = call i32 @_range_error(%struct._formatdef* %8, i32 1)
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.7
  %9 = load i64, i64* %x, align 8
  %conv = trunc i64 %9 to i8
  %10 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  store i8 %conv, i8* %10, align 1
  %11 = load i64, i64* %x, align 8
  %shr = lshr i64 %11, 8
  store i64 %shr, i64* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load i64, i64* %i, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %i, align 8
  %cmp8 = icmp sgt i64 %dec, 0
  br i1 %cmp8, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lu_longlong(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %bytes = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  store i64 0, i64* %x, align 8
  %0 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  store i64 %1, i64* %i, align 8
  %2 = load i8*, i8** %p.addr, align 8
  store i8* %2, i8** %bytes, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i64, i64* %x, align 8
  %shl = shl i64 %3, 8
  %4 = load i64, i64* %i, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %i, align 8
  %5 = load i8*, i8** %bytes, align 8
  %arrayidx = getelementptr i8, i8* %5, i64 %dec
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i64
  %or = or i64 %shl, %conv
  store i64 %or, i64* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i64, i64* %i, align 8
  %cmp = icmp sgt i64 %7, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size2 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %8, i32 0, i32 1
  %9 = load i64, i64* %size2, align 8
  %cmp3 = icmp sgt i64 8, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %10 = load i64, i64* %x, align 8
  %11 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size5 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %11, i32 0, i32 1
  %12 = load i64, i64* %size5, align 8
  %mul = mul i64 8, %12
  %sub = sub i64 %mul, 1
  %shl6 = shl i64 1, %sub
  %and = and i64 %10, %shl6
  %sub7 = sub i64 0, %and
  %13 = load i64, i64* %x, align 8
  %or8 = or i64 %13, %sub7
  store i64 %or8, i64* %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %14 = load i64, i64* %x, align 8
  %cmp9 = icmp sge i64 %14, -9223372036854775808
  br i1 %cmp9, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %15 = load i64, i64* %x, align 8
  %cmp11 = icmp sle i64 %15, 9223372036854775807
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true
  %16 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %16)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %if.end
  %17 = load i64, i64* %x, align 8
  %call15 = call %struct._object* @PyLong_FromLongLong(i64 %17)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal i32 @lp_longlong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %res = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @get_pylong(%struct._object* %0)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct._longobject*
  %4 = load i8*, i8** %p.addr, align 8
  %call1 = call i32 @_PyLong_AsByteArray(%struct._longobject* %3, i8* %4, i64 8, i32 1, i32 1)
  store i32 %call1, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load i32, i32* %res, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lu_ulonglong(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %bytes = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  store i64 0, i64* %x, align 8
  %0 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  store i64 %1, i64* %i, align 8
  %2 = load i8*, i8** %p.addr, align 8
  store i8* %2, i8** %bytes, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i64, i64* %x, align 8
  %shl = shl i64 %3, 8
  %4 = load i64, i64* %i, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %i, align 8
  %5 = load i8*, i8** %bytes, align 8
  %arrayidx = getelementptr i8, i8* %5, i64 %dec
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i64
  %or = or i64 %shl, %conv
  store i64 %or, i64* %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i64, i64* %i, align 8
  %cmp = icmp sgt i64 %7, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load i64, i64* %x, align 8
  %cmp2 = icmp ule i64 %8, 9223372036854775807
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %9 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %9)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.end
  %10 = load i64, i64* %x, align 8
  %call4 = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %10)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal i32 @lp_ulonglong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %res = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @get_pylong(%struct._object* %0)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct._longobject*
  %4 = load i8*, i8** %p.addr, align 8
  %call1 = call i32 @_PyLong_AsByteArray(%struct._longobject* %3, i8* %4, i64 8, i32 1, i32 0)
  store i32 %call1, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load i32, i32* %res, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lu_float(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call %struct._object* @unpack_float(i8* %0, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @lp_float(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca double, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load double, double* %x, align 8
  %4 = load i8*, i8** %p.addr, align 8
  %call2 = call i32 @_PyFloat_Pack4(double %3, i8* %4, i32 1)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lu_double(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call %struct._object* @unpack_double(i8* %0, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @lp_double(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca double, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %cmp = fcmp oeq double %1, -1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @StructError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load double, double* %x, align 8
  %4 = load i8*, i8** %p.addr, align 8
  %call2 = call i32 @_PyFloat_Pack8(double %3, i8* %4, i32 1)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
