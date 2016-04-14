; ModuleID = 'programs_new/Python-new/_struct.bc.ll'
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
  %cleanup.dest.slot = alloca i32
  %native = alloca %struct._formatdef*, align 8
  %other = alloca %struct._formatdef*, align 8
  %ptr = alloca %struct._formatdef*, align 8
  %0 = bitcast %struct._object** %m to i8*, !dbg !1362
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1362
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !448, metadata !1363), !dbg !1364
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_structmodule, i32 1013), !dbg !1365
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !1366, !tbaa !1367
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !1371, !tbaa !1367
  %cmp = icmp eq %struct._object* %1, null, !dbg !1373
  br i1 %cmp, label %if.then, label %if.end, !dbg !1374

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1375
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1375

if.end:                                           ; preds = %entry
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStructType, i32 0, i32 0, i32 0, i32 1), align 8, !dbg !1376, !tbaa !1377
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @PyStructType), !dbg !1380
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1382
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1383

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1384
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1384

if.end.4:                                         ; preds = %if.end
  %2 = bitcast %struct._formatdef** %native to i8*, !dbg !1385
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1385
  call void @llvm.dbg.declare(metadata %struct._formatdef** %native, metadata !449, metadata !1363), !dbg !1386
  store %struct._formatdef* getelementptr inbounds ([21 x %struct._formatdef], [21 x %struct._formatdef]* @native_table, i32 0, i32 0), %struct._formatdef** %native, align 8, !dbg !1386, !tbaa !1367
  %3 = bitcast %struct._formatdef** %other to i8*, !dbg !1387
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1387
  call void @llvm.dbg.declare(metadata %struct._formatdef** %other, metadata !453, metadata !1363), !dbg !1388
  %4 = bitcast %struct._formatdef** %ptr to i8*, !dbg !1387
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1387
  call void @llvm.dbg.declare(metadata %struct._formatdef** %ptr, metadata !454, metadata !1363), !dbg !1389
  store %struct._formatdef* getelementptr inbounds ([18 x %struct._formatdef], [18 x %struct._formatdef]* @lilendian_table, i32 0, i32 0), %struct._formatdef** %other, align 8, !dbg !1390, !tbaa !1367
  br label %while.cond, !dbg !1391

while.cond:                                       ; preds = %while.end, %if.end.4
  %5 = load %struct._formatdef*, %struct._formatdef** %native, align 8, !dbg !1392, !tbaa !1367
  %format = getelementptr inbounds %struct._formatdef, %struct._formatdef* %5, i32 0, i32 0, !dbg !1395
  %6 = load i8, i8* %format, align 1, !dbg !1395, !tbaa !1396
  %conv = sext i8 %6 to i32, !dbg !1398
  %cmp5 = icmp ne i32 %conv, 0, !dbg !1399
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !1400

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct._formatdef*, %struct._formatdef** %other, align 8, !dbg !1401, !tbaa !1367
  %format7 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %7, i32 0, i32 0, !dbg !1403
  %8 = load i8, i8* %format7, align 1, !dbg !1403, !tbaa !1396
  %conv8 = sext i8 %8 to i32, !dbg !1404
  %cmp9 = icmp ne i32 %conv8, 0, !dbg !1405
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %9, label %while.body, label %while.end.48, !dbg !1406

while.body:                                       ; preds = %land.end
  %10 = load %struct._formatdef*, %struct._formatdef** %other, align 8, !dbg !1408, !tbaa !1367
  store %struct._formatdef* %10, %struct._formatdef** %ptr, align 8, !dbg !1410, !tbaa !1367
  br label %while.cond.11, !dbg !1411

while.cond.11:                                    ; preds = %if.end.45, %while.body
  %11 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8, !dbg !1412, !tbaa !1367
  %format12 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %11, i32 0, i32 0, !dbg !1415
  %12 = load i8, i8* %format12, align 1, !dbg !1415, !tbaa !1396
  %conv13 = sext i8 %12 to i32, !dbg !1416
  %cmp14 = icmp ne i32 %conv13, 0, !dbg !1417
  br i1 %cmp14, label %while.body.16, label %while.end, !dbg !1411

while.body.16:                                    ; preds = %while.cond.11
  %13 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8, !dbg !1418, !tbaa !1367
  %format17 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %13, i32 0, i32 0, !dbg !1421
  %14 = load i8, i8* %format17, align 1, !dbg !1421, !tbaa !1396
  %conv18 = sext i8 %14 to i32, !dbg !1418
  %15 = load %struct._formatdef*, %struct._formatdef** %native, align 8, !dbg !1422, !tbaa !1367
  %format19 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %15, i32 0, i32 0, !dbg !1423
  %16 = load i8, i8* %format19, align 1, !dbg !1423, !tbaa !1396
  %conv20 = sext i8 %16 to i32, !dbg !1422
  %cmp21 = icmp eq i32 %conv18, %conv20, !dbg !1424
  br i1 %cmp21, label %if.then.23, label %if.end.45, !dbg !1425

if.then.23:                                       ; preds = %while.body.16
  %17 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8, !dbg !1426, !tbaa !1367
  %18 = load %struct._formatdef*, %struct._formatdef** %other, align 8, !dbg !1429, !tbaa !1367
  %cmp24 = icmp eq %struct._formatdef* %17, %18, !dbg !1430
  br i1 %cmp24, label %if.then.26, label %if.end.27, !dbg !1431

if.then.26:                                       ; preds = %if.then.23
  %19 = load %struct._formatdef*, %struct._formatdef** %other, align 8, !dbg !1432, !tbaa !1367
  %incdec.ptr = getelementptr %struct._formatdef, %struct._formatdef* %19, i32 1, !dbg !1432
  store %struct._formatdef* %incdec.ptr, %struct._formatdef** %other, align 8, !dbg !1432, !tbaa !1367
  br label %if.end.27, !dbg !1433

if.end.27:                                        ; preds = %if.then.26, %if.then.23
  %20 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8, !dbg !1434, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %20, i32 0, i32 1, !dbg !1436
  %21 = load i64, i64* %size, align 8, !dbg !1436, !tbaa !1437
  %22 = load %struct._formatdef*, %struct._formatdef** %native, align 8, !dbg !1438, !tbaa !1367
  %size28 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %22, i32 0, i32 1, !dbg !1439
  %23 = load i64, i64* %size28, align 8, !dbg !1439, !tbaa !1437
  %cmp29 = icmp ne i64 %21, %23, !dbg !1440
  br i1 %cmp29, label %if.then.31, label %if.end.32, !dbg !1441

if.then.31:                                       ; preds = %if.end.27
  br label %while.end, !dbg !1442

if.end.32:                                        ; preds = %if.end.27
  %24 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8, !dbg !1443, !tbaa !1367
  %format33 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %24, i32 0, i32 0, !dbg !1445
  %25 = load i8, i8* %format33, align 1, !dbg !1445, !tbaa !1396
  %conv34 = sext i8 %25 to i32, !dbg !1443
  %cmp35 = icmp eq i32 %conv34, 100, !dbg !1446
  br i1 %cmp35, label %if.then.41, label %lor.lhs.false, !dbg !1447

lor.lhs.false:                                    ; preds = %if.end.32
  %26 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8, !dbg !1448, !tbaa !1367
  %format37 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %26, i32 0, i32 0, !dbg !1450
  %27 = load i8, i8* %format37, align 1, !dbg !1450, !tbaa !1396
  %conv38 = sext i8 %27 to i32, !dbg !1451
  %cmp39 = icmp eq i32 %conv38, 102, !dbg !1452
  br i1 %cmp39, label %if.then.41, label %if.end.42, !dbg !1453

if.then.41:                                       ; preds = %lor.lhs.false, %if.end.32
  br label %while.end, !dbg !1454

if.end.42:                                        ; preds = %lor.lhs.false
  %28 = load %struct._formatdef*, %struct._formatdef** %native, align 8, !dbg !1455, !tbaa !1367
  %pack = getelementptr inbounds %struct._formatdef, %struct._formatdef* %28, i32 0, i32 4, !dbg !1456
  %29 = load i32 (i8*, %struct._object*, %struct._formatdef*)*, i32 (i8*, %struct._object*, %struct._formatdef*)** %pack, align 8, !dbg !1456, !tbaa !1457
  %30 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8, !dbg !1458, !tbaa !1367
  %pack43 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %30, i32 0, i32 4, !dbg !1459
  store i32 (i8*, %struct._object*, %struct._formatdef*)* %29, i32 (i8*, %struct._object*, %struct._formatdef*)** %pack43, align 8, !dbg !1460, !tbaa !1457
  %31 = load %struct._formatdef*, %struct._formatdef** %native, align 8, !dbg !1461, !tbaa !1367
  %unpack = getelementptr inbounds %struct._formatdef, %struct._formatdef* %31, i32 0, i32 3, !dbg !1462
  %32 = load %struct._object* (i8*, %struct._formatdef*)*, %struct._object* (i8*, %struct._formatdef*)** %unpack, align 8, !dbg !1462, !tbaa !1463
  %33 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8, !dbg !1464, !tbaa !1367
  %unpack44 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %33, i32 0, i32 3, !dbg !1465
  store %struct._object* (i8*, %struct._formatdef*)* %32, %struct._object* (i8*, %struct._formatdef*)** %unpack44, align 8, !dbg !1466, !tbaa !1463
  br label %while.end, !dbg !1467

if.end.45:                                        ; preds = %while.body.16
  %34 = load %struct._formatdef*, %struct._formatdef** %ptr, align 8, !dbg !1468, !tbaa !1367
  %incdec.ptr46 = getelementptr %struct._formatdef, %struct._formatdef* %34, i32 1, !dbg !1468
  store %struct._formatdef* %incdec.ptr46, %struct._formatdef** %ptr, align 8, !dbg !1468, !tbaa !1367
  br label %while.cond.11, !dbg !1411

while.end:                                        ; preds = %if.end.42, %if.then.41, %if.then.31, %while.cond.11
  %35 = load %struct._formatdef*, %struct._formatdef** %native, align 8, !dbg !1469, !tbaa !1367
  %incdec.ptr47 = getelementptr %struct._formatdef, %struct._formatdef* %35, i32 1, !dbg !1469
  store %struct._formatdef* %incdec.ptr47, %struct._formatdef** %native, align 8, !dbg !1469, !tbaa !1367
  br label %while.cond, !dbg !1391

while.end.48:                                     ; preds = %land.end
  %36 = bitcast %struct._formatdef** %ptr to i8*, !dbg !1470
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !1470
  %37 = bitcast %struct._formatdef** %other to i8*, !dbg !1470
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !1470
  %38 = bitcast %struct._formatdef** %native to i8*, !dbg !1470
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !1470
  %39 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !1471, !tbaa !1367
  %cmp49 = icmp eq %struct._object* %39, null, !dbg !1473
  br i1 %cmp49, label %if.then.51, label %if.end.57, !dbg !1474

if.then.51:                                       ; preds = %while.end.48
  %call52 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null), !dbg !1475
  store %struct._object* %call52, %struct._object** @StructError, align 8, !dbg !1477, !tbaa !1367
  %40 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !1478, !tbaa !1367
  %cmp53 = icmp eq %struct._object* %40, null, !dbg !1480
  br i1 %cmp53, label %if.then.55, label %if.end.56, !dbg !1481

if.then.55:                                       ; preds = %if.then.51
  store %struct._object* null, %struct._object** %retval, !dbg !1482
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1482

if.end.56:                                        ; preds = %if.then.51
  br label %if.end.57, !dbg !1483

if.end.57:                                        ; preds = %if.end.56, %while.end.48
  %41 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !1484, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !1485
  %42 = load i64, i64* %ob_refcnt, align 8, !dbg !1486, !tbaa !1487
  %inc = add i64 %42, 1, !dbg !1486
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1486, !tbaa !1487
  %43 = load %struct._object*, %struct._object** %m, align 8, !dbg !1488, !tbaa !1367
  %44 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !1489, !tbaa !1367
  %call58 = call i32 @PyModule_AddObject(%struct._object* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %44), !dbg !1490
  %45 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStructType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1491, !tbaa !1487
  %inc59 = add i64 %45, 1, !dbg !1491
  store i64 %inc59, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStructType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1491, !tbaa !1487
  %46 = load %struct._object*, %struct._object** %m, align 8, !dbg !1492, !tbaa !1367
  %call60 = call i32 @PyModule_AddObject(%struct._object* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStructType, i32 0, i32 0, i32 0)), !dbg !1493
  %47 = load %struct._object*, %struct._object** %m, align 8, !dbg !1494, !tbaa !1367
  store %struct._object* %47, %struct._object** %retval, !dbg !1495
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1495

cleanup:                                          ; preds = %if.end.57, %if.then.55, %if.then.3, %if.then
  %48 = bitcast %struct._object** %m to i8*, !dbg !1496
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !1496
  %49 = load %struct._object*, %struct._object** %retval, !dbg !1496
  ret %struct._object* %49, !dbg !1496
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @clearcache(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !457, metadata !1363), !dbg !1497
  br label %do.body, !dbg !1498

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1499
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1499
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !458, metadata !1363), !dbg !1501
  %1 = load %struct._object*, %struct._object** @cache, align 8, !dbg !1502, !tbaa !1367
  store %struct._object* %1, %struct._object** %_py_tmp, align 8, !dbg !1501, !tbaa !1367
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1503, !tbaa !1367
  %cmp = icmp ne %struct._object* %2, null, !dbg !1504
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1505

if.then:                                          ; preds = %do.body
  store %struct._object* null, %struct._object** @cache, align 8, !dbg !1506, !tbaa !1367
  br label %do.body.1, !dbg !1508

do.body.1:                                        ; preds = %if.then
  %3 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1509
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1509
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !460, metadata !1363), !dbg !1511
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1512, !tbaa !1367
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8, !dbg !1511, !tbaa !1367
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1513, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !1515
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1516, !tbaa !1487
  %dec = add i64 %6, -1, !dbg !1516
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1516, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1517
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1518

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !1519

if.else:                                          ; preds = %do.body.1
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1521, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !1523
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1523, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4, !dbg !1524
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1524, !tbaa !1525
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1529, !tbaa !1367
  call void %9(%struct._object* %10), !dbg !1530
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !1531
  br label %do.cond, !dbg !1533

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1534

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !1536

if.end.4:                                         ; preds = %do.end, %do.body
  %12 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1538
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !1538
  br label %do.end.6, !dbg !1541

do.end.6:                                         ; preds = %if.end.4
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1542, !tbaa !1487
  %inc = add i64 %13, 1, !dbg !1542
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1542, !tbaa !1487
  ret %struct._object* @_Py_NoneStruct, !dbg !1543
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @calcsize(%struct._object* %self, %struct._object* %fmt) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %fmt.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %s_object = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !466, metadata !1363), !dbg !1544
  store %struct._object* %fmt, %struct._object** %fmt.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %fmt.addr, metadata !467, metadata !1363), !dbg !1545
  %0 = bitcast i64* %n to i8*, !dbg !1546
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1546
  call void @llvm.dbg.declare(metadata i64* %n, metadata !468, metadata !1363), !dbg !1547
  %1 = bitcast %struct._object** %s_object to i8*, !dbg !1548
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1548
  call void @llvm.dbg.declare(metadata %struct._object** %s_object, metadata !469, metadata !1363), !dbg !1549
  %2 = load %struct._object*, %struct._object** %fmt.addr, align 8, !dbg !1550, !tbaa !1367
  %call = call %struct._object* @cache_struct(%struct._object* %2), !dbg !1551
  store %struct._object* %call, %struct._object** %s_object, align 8, !dbg !1549, !tbaa !1367
  %3 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1552, !tbaa !1367
  %cmp = icmp eq %struct._object* %3, null, !dbg !1554
  br i1 %cmp, label %if.then, label %if.end, !dbg !1555

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1556
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1556

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1557, !tbaa !1367
  %5 = bitcast %struct._object* %4 to %struct.PyStructObject*, !dbg !1558
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %5, i32 0, i32 1, !dbg !1559
  %6 = load i64, i64* %s_size, align 8, !dbg !1559, !tbaa !1560
  store i64 %6, i64* %n, align 8, !dbg !1562, !tbaa !1563
  br label %do.body, !dbg !1564

do.body:                                          ; preds = %if.end
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1565
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1565
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !470, metadata !1363), !dbg !1567
  %8 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1568, !tbaa !1367
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !1567, !tbaa !1367
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1569, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1571
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1572, !tbaa !1487
  %dec = add i64 %10, -1, !dbg !1572
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1572, !tbaa !1487
  %cmp1 = icmp ne i64 %dec, 0, !dbg !1573
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1574

if.then.2:                                        ; preds = %do.body
  br label %if.end.3, !dbg !1575

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1577, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1579
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1579, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !1580
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1580, !tbaa !1525
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1581, !tbaa !1367
  call void %13(%struct._object* %14), !dbg !1582
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1583
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1583
  br label %do.cond, !dbg !1585

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !1586

do.end:                                           ; preds = %do.cond
  %16 = load i64, i64* %n, align 8, !dbg !1588, !tbaa !1563
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %16), !dbg !1589
  store %struct._object* %call4, %struct._object** %retval, !dbg !1590
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1590

cleanup:                                          ; preds = %do.end, %if.then
  %17 = bitcast %struct._object** %s_object to i8*, !dbg !1591
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !1591
  %18 = bitcast i64* %n to i8*, !dbg !1591
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !1591
  %19 = load %struct._object*, %struct._object** %retval, !dbg !1591
  ret %struct._object* %19, !dbg !1591
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !478, metadata !1363), !dbg !1592
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !479, metadata !1363), !dbg !1593
  %0 = bitcast %struct._object** %s_object to i8*, !dbg !1594
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1594
  call void @llvm.dbg.declare(metadata %struct._object** %s_object, metadata !480, metadata !1363), !dbg !1595
  %1 = bitcast %struct._object** %fmt to i8*, !dbg !1594
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1594
  call void @llvm.dbg.declare(metadata %struct._object** %fmt, metadata !481, metadata !1363), !dbg !1596
  %2 = bitcast %struct._object** %input to i8*, !dbg !1594
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1594
  call void @llvm.dbg.declare(metadata %struct._object** %input, metadata !482, metadata !1363), !dbg !1597
  %3 = bitcast %struct._object** %result to i8*, !dbg !1594
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1594
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !483, metadata !1363), !dbg !1598
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1599, !tbaa !1367
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), %struct._object** %fmt, %struct._object** %input), !dbg !1601
  %tobool = icmp ne i32 %call, 0, !dbg !1601
  br i1 %tobool, label %if.end, label %if.then, !dbg !1602

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1603
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1603

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %fmt, align 8, !dbg !1604, !tbaa !1367
  %call1 = call %struct._object* @cache_struct(%struct._object* %5), !dbg !1605
  store %struct._object* %call1, %struct._object** %s_object, align 8, !dbg !1606, !tbaa !1367
  %6 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1607, !tbaa !1367
  %cmp = icmp eq %struct._object* %6, null, !dbg !1609
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1610

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1611
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1611

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1612, !tbaa !1367
  %8 = load %struct._object*, %struct._object** %input, align 8, !dbg !1613, !tbaa !1367
  %call4 = call %struct._object* @s_iter_unpack(%struct._object* %7, %struct._object* %8), !dbg !1614
  store %struct._object* %call4, %struct._object** %result, align 8, !dbg !1615, !tbaa !1367
  br label %do.body, !dbg !1616

do.body:                                          ; preds = %if.end.3
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1617
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !1617
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !484, metadata !1363), !dbg !1619
  %10 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1620, !tbaa !1367
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !1619, !tbaa !1367
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1621, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !1623
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1624, !tbaa !1487
  %dec = add i64 %12, -1, !dbg !1624
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1624, !tbaa !1487
  %cmp5 = icmp ne i64 %dec, 0, !dbg !1625
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !1626

if.then.6:                                        ; preds = %do.body
  br label %if.end.7, !dbg !1627

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1629, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1631
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1631, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !1632
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1632, !tbaa !1525
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1633, !tbaa !1367
  call void %15(%struct._object* %16), !dbg !1634
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1635
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !1635
  br label %do.cond, !dbg !1637

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !1638

do.end:                                           ; preds = %do.cond
  %18 = load %struct._object*, %struct._object** %result, align 8, !dbg !1640, !tbaa !1367
  store %struct._object* %18, %struct._object** %retval, !dbg !1641
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1641

cleanup:                                          ; preds = %do.end, %if.then.2, %if.then
  %19 = bitcast %struct._object** %result to i8*, !dbg !1642
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !1642
  %20 = bitcast %struct._object** %input to i8*, !dbg !1642
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1642
  %21 = bitcast %struct._object** %fmt to i8*, !dbg !1642
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !1642
  %22 = bitcast %struct._object** %s_object to i8*, !dbg !1642
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !1642
  %23 = load %struct._object*, %struct._object** %retval, !dbg !1642
  ret %struct._object* %23, !dbg !1642
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !570, metadata !1363), !dbg !1643
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !571, metadata !1363), !dbg !1644
  %0 = bitcast %struct._object** %s_object to i8*, !dbg !1645
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1645
  call void @llvm.dbg.declare(metadata %struct._object** %s_object, metadata !572, metadata !1363), !dbg !1646
  %1 = bitcast %struct._object** %fmt to i8*, !dbg !1645
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1645
  call void @llvm.dbg.declare(metadata %struct._object** %fmt, metadata !573, metadata !1363), !dbg !1647
  %2 = bitcast %struct._object** %newargs to i8*, !dbg !1645
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1645
  call void @llvm.dbg.declare(metadata %struct._object** %newargs, metadata !574, metadata !1363), !dbg !1648
  %3 = bitcast %struct._object** %result to i8*, !dbg !1645
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1645
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !575, metadata !1363), !dbg !1649
  %4 = bitcast i64* %n to i8*, !dbg !1650
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1650
  call void @llvm.dbg.declare(metadata i64* %n, metadata !576, metadata !1363), !dbg !1651
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1652, !tbaa !1367
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*, !dbg !1653
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1, !dbg !1654
  %7 = load i64, i64* %ob_size, align 8, !dbg !1654, !tbaa !1655
  store i64 %7, i64* %n, align 8, !dbg !1651, !tbaa !1563
  %8 = load i64, i64* %n, align 8, !dbg !1656, !tbaa !1563
  %cmp = icmp eq i64 %8, 0, !dbg !1658
  br i1 %cmp, label %if.then, label %if.end, !dbg !1659

if.then:                                          ; preds = %entry
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1660, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0)), !dbg !1662
  store %struct._object* null, %struct._object** %retval, !dbg !1663
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1663

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1664, !tbaa !1367
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*, !dbg !1665
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1, !dbg !1666
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !1667
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1667, !tbaa !1367
  store %struct._object* %12, %struct._object** %fmt, align 8, !dbg !1668, !tbaa !1367
  %13 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1669, !tbaa !1367
  %14 = load i64, i64* %n, align 8, !dbg !1670, !tbaa !1563
  %call = call %struct._object* @PyTuple_GetSlice(%struct._object* %13, i64 1, i64 %14), !dbg !1671
  store %struct._object* %call, %struct._object** %newargs, align 8, !dbg !1672, !tbaa !1367
  %15 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !1673, !tbaa !1367
  %cmp1 = icmp eq %struct._object* %15, null, !dbg !1675
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1676

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1677
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1677

if.end.3:                                         ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %fmt, align 8, !dbg !1678, !tbaa !1367
  %call4 = call %struct._object* @cache_struct(%struct._object* %16), !dbg !1679
  store %struct._object* %call4, %struct._object** %s_object, align 8, !dbg !1680, !tbaa !1367
  %17 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1681, !tbaa !1367
  %cmp5 = icmp eq %struct._object* %17, null, !dbg !1682
  br i1 %cmp5, label %if.then.6, label %if.end.10, !dbg !1683

if.then.6:                                        ; preds = %if.end.3
  br label %do.body, !dbg !1684

do.body:                                          ; preds = %if.then.6
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1685
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !1685
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !577, metadata !1363), !dbg !1687
  %19 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !1688, !tbaa !1367
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !1687, !tbaa !1367
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1689, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !1691
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !1692, !tbaa !1487
  %dec = add i64 %21, -1, !dbg !1692
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1692, !tbaa !1487
  %cmp7 = icmp ne i64 %dec, 0, !dbg !1693
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !1694

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !1695

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1697, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !1699
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1699, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !1700
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1700, !tbaa !1525
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1701, !tbaa !1367
  call void %24(%struct._object* %25), !dbg !1702
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1703
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !1703
  br label %do.cond, !dbg !1705

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1706

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1708
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1708

if.end.10:                                        ; preds = %if.end.3
  %27 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1709, !tbaa !1367
  %28 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !1710, !tbaa !1367
  %call11 = call %struct._object* @s_pack(%struct._object* %27, %struct._object* %28), !dbg !1711
  store %struct._object* %call11, %struct._object** %result, align 8, !dbg !1712, !tbaa !1367
  br label %do.body.12, !dbg !1713

do.body.12:                                       ; preds = %if.end.10
  %29 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !1714
  call void @llvm.lifetime.start(i64 8, i8* %29) #1, !dbg !1714
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp13, metadata !581, metadata !1363), !dbg !1716
  %30 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !1717, !tbaa !1367
  store %struct._object* %30, %struct._object** %_py_decref_tmp13, align 8, !dbg !1716, !tbaa !1367
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1718, !tbaa !1367
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !1720
  %32 = load i64, i64* %ob_refcnt14, align 8, !dbg !1721, !tbaa !1487
  %dec15 = add i64 %32, -1, !dbg !1721
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !1721, !tbaa !1487
  %cmp16 = icmp ne i64 %dec15, 0, !dbg !1722
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !1723

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21, !dbg !1724

if.else.18:                                       ; preds = %do.body.12
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1726, !tbaa !1367
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !1728
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1728, !tbaa !1377
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !1729
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !1729, !tbaa !1525
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1730, !tbaa !1367
  call void %35(%struct._object* %36), !dbg !1731
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  %37 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !1732
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !1732
  br label %do.cond.22, !dbg !1734

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !1735

do.end.23:                                        ; preds = %do.cond.22
  br label %do.body.24, !dbg !1737

do.body.24:                                       ; preds = %do.end.23
  %38 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !1738
  call void @llvm.lifetime.start(i64 8, i8* %38) #1, !dbg !1738
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp25, metadata !583, metadata !1363), !dbg !1740
  %39 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1741, !tbaa !1367
  store %struct._object* %39, %struct._object** %_py_decref_tmp25, align 8, !dbg !1740, !tbaa !1367
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !1742, !tbaa !1367
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !1744
  %41 = load i64, i64* %ob_refcnt26, align 8, !dbg !1745, !tbaa !1487
  %dec27 = add i64 %41, -1, !dbg !1745
  store i64 %dec27, i64* %ob_refcnt26, align 8, !dbg !1745, !tbaa !1487
  %cmp28 = icmp ne i64 %dec27, 0, !dbg !1746
  br i1 %cmp28, label %if.then.29, label %if.else.30, !dbg !1747

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33, !dbg !1748

if.else.30:                                       ; preds = %do.body.24
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !1750, !tbaa !1367
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !1752
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !1752, !tbaa !1377
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4, !dbg !1753
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8, !dbg !1753, !tbaa !1525
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !1754, !tbaa !1367
  call void %44(%struct._object* %45), !dbg !1755
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  %46 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !1756
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !1756
  br label %do.cond.34, !dbg !1757

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !1758

do.end.35:                                        ; preds = %do.cond.34
  %47 = load %struct._object*, %struct._object** %result, align 8, !dbg !1760, !tbaa !1367
  store %struct._object* %47, %struct._object** %retval, !dbg !1761
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1761

cleanup:                                          ; preds = %do.end.35, %do.end, %if.then.2, %if.then
  %48 = bitcast i64* %n to i8*, !dbg !1762
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !1762
  %49 = bitcast %struct._object** %result to i8*, !dbg !1762
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !1762
  %50 = bitcast %struct._object** %newargs to i8*, !dbg !1762
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !1762
  %51 = bitcast %struct._object** %fmt to i8*, !dbg !1762
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !1762
  %52 = bitcast %struct._object** %s_object to i8*, !dbg !1762
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !1762
  %53 = load %struct._object*, %struct._object** %retval, !dbg !1762
  ret %struct._object* %53, !dbg !1762
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !625, metadata !1363), !dbg !1763
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !626, metadata !1363), !dbg !1764
  %0 = bitcast %struct._object** %s_object to i8*, !dbg !1765
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1765
  call void @llvm.dbg.declare(metadata %struct._object** %s_object, metadata !627, metadata !1363), !dbg !1766
  %1 = bitcast %struct._object** %fmt to i8*, !dbg !1765
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1765
  call void @llvm.dbg.declare(metadata %struct._object** %fmt, metadata !628, metadata !1363), !dbg !1767
  %2 = bitcast %struct._object** %newargs to i8*, !dbg !1765
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1765
  call void @llvm.dbg.declare(metadata %struct._object** %newargs, metadata !629, metadata !1363), !dbg !1768
  %3 = bitcast %struct._object** %result to i8*, !dbg !1765
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1765
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !630, metadata !1363), !dbg !1769
  %4 = bitcast i64* %n to i8*, !dbg !1770
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1770
  call void @llvm.dbg.declare(metadata i64* %n, metadata !631, metadata !1363), !dbg !1771
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1772, !tbaa !1367
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*, !dbg !1773
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1, !dbg !1774
  %7 = load i64, i64* %ob_size, align 8, !dbg !1774, !tbaa !1655
  store i64 %7, i64* %n, align 8, !dbg !1771, !tbaa !1563
  %8 = load i64, i64* %n, align 8, !dbg !1775, !tbaa !1563
  %cmp = icmp eq i64 %8, 0, !dbg !1777
  br i1 %cmp, label %if.then, label %if.end, !dbg !1778

if.then:                                          ; preds = %entry
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1779, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0)), !dbg !1781
  store %struct._object* null, %struct._object** %retval, !dbg !1782
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1782

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1783, !tbaa !1367
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*, !dbg !1784
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1, !dbg !1785
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !1786
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1786, !tbaa !1367
  store %struct._object* %12, %struct._object** %fmt, align 8, !dbg !1787, !tbaa !1367
  %13 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1788, !tbaa !1367
  %14 = load i64, i64* %n, align 8, !dbg !1789, !tbaa !1563
  %call = call %struct._object* @PyTuple_GetSlice(%struct._object* %13, i64 1, i64 %14), !dbg !1790
  store %struct._object* %call, %struct._object** %newargs, align 8, !dbg !1791, !tbaa !1367
  %15 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !1792, !tbaa !1367
  %cmp1 = icmp eq %struct._object* %15, null, !dbg !1794
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1795

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1796
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1796

if.end.3:                                         ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %fmt, align 8, !dbg !1797, !tbaa !1367
  %call4 = call %struct._object* @cache_struct(%struct._object* %16), !dbg !1798
  store %struct._object* %call4, %struct._object** %s_object, align 8, !dbg !1799, !tbaa !1367
  %17 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1800, !tbaa !1367
  %cmp5 = icmp eq %struct._object* %17, null, !dbg !1801
  br i1 %cmp5, label %if.then.6, label %if.end.10, !dbg !1802

if.then.6:                                        ; preds = %if.end.3
  br label %do.body, !dbg !1803

do.body:                                          ; preds = %if.then.6
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1804
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !1804
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !632, metadata !1363), !dbg !1806
  %19 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !1807, !tbaa !1367
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !1806, !tbaa !1367
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1808, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !1810
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !1811, !tbaa !1487
  %dec = add i64 %21, -1, !dbg !1811
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1811, !tbaa !1487
  %cmp7 = icmp ne i64 %dec, 0, !dbg !1812
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !1813

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !1814

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1816, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !1818
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1818, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !1819
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1819, !tbaa !1525
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1820, !tbaa !1367
  call void %24(%struct._object* %25), !dbg !1821
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1822
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !1822
  br label %do.cond, !dbg !1824

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1825

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1827
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1827

if.end.10:                                        ; preds = %if.end.3
  %27 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1828, !tbaa !1367
  %28 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !1829, !tbaa !1367
  %call11 = call %struct._object* @s_pack_into(%struct._object* %27, %struct._object* %28), !dbg !1830
  store %struct._object* %call11, %struct._object** %result, align 8, !dbg !1831, !tbaa !1367
  br label %do.body.12, !dbg !1832

do.body.12:                                       ; preds = %if.end.10
  %29 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !1833
  call void @llvm.lifetime.start(i64 8, i8* %29) #1, !dbg !1833
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp13, metadata !636, metadata !1363), !dbg !1835
  %30 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !1836, !tbaa !1367
  store %struct._object* %30, %struct._object** %_py_decref_tmp13, align 8, !dbg !1835, !tbaa !1367
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1837, !tbaa !1367
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !1839
  %32 = load i64, i64* %ob_refcnt14, align 8, !dbg !1840, !tbaa !1487
  %dec15 = add i64 %32, -1, !dbg !1840
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !1840, !tbaa !1487
  %cmp16 = icmp ne i64 %dec15, 0, !dbg !1841
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !1842

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21, !dbg !1843

if.else.18:                                       ; preds = %do.body.12
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1845, !tbaa !1367
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !1847
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1847, !tbaa !1377
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !1848
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !1848, !tbaa !1525
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1849, !tbaa !1367
  call void %35(%struct._object* %36), !dbg !1850
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  %37 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !1851
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !1851
  br label %do.cond.22, !dbg !1853

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !1854

do.end.23:                                        ; preds = %do.cond.22
  br label %do.body.24, !dbg !1856

do.body.24:                                       ; preds = %do.end.23
  %38 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !1857
  call void @llvm.lifetime.start(i64 8, i8* %38) #1, !dbg !1857
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp25, metadata !638, metadata !1363), !dbg !1859
  %39 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1860, !tbaa !1367
  store %struct._object* %39, %struct._object** %_py_decref_tmp25, align 8, !dbg !1859, !tbaa !1367
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !1861, !tbaa !1367
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !1863
  %41 = load i64, i64* %ob_refcnt26, align 8, !dbg !1864, !tbaa !1487
  %dec27 = add i64 %41, -1, !dbg !1864
  store i64 %dec27, i64* %ob_refcnt26, align 8, !dbg !1864, !tbaa !1487
  %cmp28 = icmp ne i64 %dec27, 0, !dbg !1865
  br i1 %cmp28, label %if.then.29, label %if.else.30, !dbg !1866

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33, !dbg !1867

if.else.30:                                       ; preds = %do.body.24
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !1869, !tbaa !1367
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !1871
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !1871, !tbaa !1377
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4, !dbg !1872
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8, !dbg !1872, !tbaa !1525
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !1873, !tbaa !1367
  call void %44(%struct._object* %45), !dbg !1874
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  %46 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !1875
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !1875
  br label %do.cond.34, !dbg !1876

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !1877

do.end.35:                                        ; preds = %do.cond.34
  %47 = load %struct._object*, %struct._object** %result, align 8, !dbg !1879, !tbaa !1367
  store %struct._object* %47, %struct._object** %retval, !dbg !1880
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1880

cleanup:                                          ; preds = %do.end.35, %do.end, %if.then.2, %if.then
  %48 = bitcast i64* %n to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !1881
  %49 = bitcast %struct._object** %result to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !1881
  %50 = bitcast %struct._object** %newargs to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !1881
  %51 = bitcast %struct._object** %fmt to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !1881
  %52 = bitcast %struct._object** %s_object to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !1881
  %53 = load %struct._object*, %struct._object** %retval, !dbg !1881
  ret %struct._object* %53, !dbg !1881
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !650, metadata !1363), !dbg !1882
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !651, metadata !1363), !dbg !1883
  %0 = bitcast %struct._object** %s_object to i8*, !dbg !1884
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1884
  call void @llvm.dbg.declare(metadata %struct._object** %s_object, metadata !652, metadata !1363), !dbg !1885
  %1 = bitcast %struct._object** %fmt to i8*, !dbg !1884
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1884
  call void @llvm.dbg.declare(metadata %struct._object** %fmt, metadata !653, metadata !1363), !dbg !1886
  %2 = bitcast %struct._object** %inputstr to i8*, !dbg !1884
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1884
  call void @llvm.dbg.declare(metadata %struct._object** %inputstr, metadata !654, metadata !1363), !dbg !1887
  %3 = bitcast %struct._object** %result to i8*, !dbg !1884
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1884
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !655, metadata !1363), !dbg !1888
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1889, !tbaa !1367
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i64 2, i64 2, %struct._object** %fmt, %struct._object** %inputstr), !dbg !1891
  %tobool = icmp ne i32 %call, 0, !dbg !1891
  br i1 %tobool, label %if.end, label %if.then, !dbg !1892

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1893
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1893

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %fmt, align 8, !dbg !1894, !tbaa !1367
  %call1 = call %struct._object* @cache_struct(%struct._object* %5), !dbg !1895
  store %struct._object* %call1, %struct._object** %s_object, align 8, !dbg !1896, !tbaa !1367
  %6 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1897, !tbaa !1367
  %cmp = icmp eq %struct._object* %6, null, !dbg !1899
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1900

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1901
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1901

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1902, !tbaa !1367
  %8 = load %struct._object*, %struct._object** %inputstr, align 8, !dbg !1903, !tbaa !1367
  %call4 = call %struct._object* @s_unpack(%struct._object* %7, %struct._object* %8), !dbg !1904
  store %struct._object* %call4, %struct._object** %result, align 8, !dbg !1905, !tbaa !1367
  br label %do.body, !dbg !1906

do.body:                                          ; preds = %if.end.3
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1907
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !1907
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !656, metadata !1363), !dbg !1909
  %10 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1910, !tbaa !1367
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !1909, !tbaa !1367
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1911, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !1913
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1914, !tbaa !1487
  %dec = add i64 %12, -1, !dbg !1914
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1914, !tbaa !1487
  %cmp5 = icmp ne i64 %dec, 0, !dbg !1915
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !1916

if.then.6:                                        ; preds = %do.body
  br label %if.end.7, !dbg !1917

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1919, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1921
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1921, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !1922
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1922, !tbaa !1525
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1923, !tbaa !1367
  call void %15(%struct._object* %16), !dbg !1924
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1925
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !1925
  br label %do.cond, !dbg !1927

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !1928

do.end:                                           ; preds = %do.cond
  %18 = load %struct._object*, %struct._object** %result, align 8, !dbg !1930, !tbaa !1367
  store %struct._object* %18, %struct._object** %retval, !dbg !1931
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1931

cleanup:                                          ; preds = %do.end, %if.then.2, %if.then
  %19 = bitcast %struct._object** %result to i8*, !dbg !1932
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !1932
  %20 = bitcast %struct._object** %inputstr to i8*, !dbg !1932
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1932
  %21 = bitcast %struct._object** %fmt to i8*, !dbg !1932
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !1932
  %22 = bitcast %struct._object** %s_object to i8*, !dbg !1932
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !1932
  %23 = load %struct._object*, %struct._object** %retval, !dbg !1932
  ret %struct._object* %23, !dbg !1932
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !667, metadata !1363), !dbg !1933
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !668, metadata !1363), !dbg !1934
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !669, metadata !1363), !dbg !1935
  %0 = bitcast %struct._object** %s_object to i8*, !dbg !1936
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1936
  call void @llvm.dbg.declare(metadata %struct._object** %s_object, metadata !670, metadata !1363), !dbg !1937
  %1 = bitcast %struct._object** %fmt to i8*, !dbg !1936
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1936
  call void @llvm.dbg.declare(metadata %struct._object** %fmt, metadata !671, metadata !1363), !dbg !1938
  %2 = bitcast %struct._object** %newargs to i8*, !dbg !1936
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1936
  call void @llvm.dbg.declare(metadata %struct._object** %newargs, metadata !672, metadata !1363), !dbg !1939
  %3 = bitcast %struct._object** %result to i8*, !dbg !1936
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1936
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !673, metadata !1363), !dbg !1940
  %4 = bitcast i64* %n to i8*, !dbg !1941
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1941
  call void @llvm.dbg.declare(metadata i64* %n, metadata !674, metadata !1363), !dbg !1942
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1943, !tbaa !1367
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*, !dbg !1944
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1, !dbg !1945
  %7 = load i64, i64* %ob_size, align 8, !dbg !1945, !tbaa !1655
  store i64 %7, i64* %n, align 8, !dbg !1942, !tbaa !1563
  %8 = load i64, i64* %n, align 8, !dbg !1946, !tbaa !1563
  %cmp = icmp eq i64 %8, 0, !dbg !1948
  br i1 %cmp, label %if.then, label %if.end, !dbg !1949

if.then:                                          ; preds = %entry
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1950, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0)), !dbg !1952
  store %struct._object* null, %struct._object** %retval, !dbg !1953
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1953

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1954, !tbaa !1367
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*, !dbg !1955
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1, !dbg !1956
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !1957
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1957, !tbaa !1367
  store %struct._object* %12, %struct._object** %fmt, align 8, !dbg !1958, !tbaa !1367
  %13 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1959, !tbaa !1367
  %14 = load i64, i64* %n, align 8, !dbg !1960, !tbaa !1563
  %call = call %struct._object* @PyTuple_GetSlice(%struct._object* %13, i64 1, i64 %14), !dbg !1961
  store %struct._object* %call, %struct._object** %newargs, align 8, !dbg !1962, !tbaa !1367
  %15 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !1963, !tbaa !1367
  %cmp1 = icmp eq %struct._object* %15, null, !dbg !1965
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1966

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1967
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1967

if.end.3:                                         ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %fmt, align 8, !dbg !1968, !tbaa !1367
  %call4 = call %struct._object* @cache_struct(%struct._object* %16), !dbg !1969
  store %struct._object* %call4, %struct._object** %s_object, align 8, !dbg !1970, !tbaa !1367
  %17 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1971, !tbaa !1367
  %cmp5 = icmp eq %struct._object* %17, null, !dbg !1972
  br i1 %cmp5, label %if.then.6, label %if.end.10, !dbg !1973

if.then.6:                                        ; preds = %if.end.3
  br label %do.body, !dbg !1974

do.body:                                          ; preds = %if.then.6
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1975
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !1975
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !675, metadata !1363), !dbg !1977
  %19 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !1978, !tbaa !1367
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !1977, !tbaa !1367
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1979, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !1981
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !1982, !tbaa !1487
  %dec = add i64 %21, -1, !dbg !1982
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1982, !tbaa !1487
  %cmp7 = icmp ne i64 %dec, 0, !dbg !1983
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !1984

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !1985

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1987, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !1989
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1989, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !1990
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1990, !tbaa !1525
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1991, !tbaa !1367
  call void %24(%struct._object* %25), !dbg !1992
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1993
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !1993
  br label %do.cond, !dbg !1995

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1996

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1998
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1998

if.end.10:                                        ; preds = %if.end.3
  %27 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !1999, !tbaa !1367
  %28 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !2000, !tbaa !1367
  %29 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2001, !tbaa !1367
  %call11 = call %struct._object* @s_unpack_from(%struct._object* %27, %struct._object* %28, %struct._object* %29), !dbg !2002
  store %struct._object* %call11, %struct._object** %result, align 8, !dbg !2003, !tbaa !1367
  br label %do.body.12, !dbg !2004

do.body.12:                                       ; preds = %if.end.10
  %30 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !2005
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !2005
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp13, metadata !679, metadata !1363), !dbg !2007
  %31 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !2008, !tbaa !1367
  store %struct._object* %31, %struct._object** %_py_decref_tmp13, align 8, !dbg !2007, !tbaa !1367
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !2009, !tbaa !1367
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !2011
  %33 = load i64, i64* %ob_refcnt14, align 8, !dbg !2012, !tbaa !1487
  %dec15 = add i64 %33, -1, !dbg !2012
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !2012, !tbaa !1487
  %cmp16 = icmp ne i64 %dec15, 0, !dbg !2013
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !2014

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21, !dbg !2015

if.else.18:                                       ; preds = %do.body.12
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !2017, !tbaa !1367
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !2019
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !2019, !tbaa !1377
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !2020
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !2020, !tbaa !1525
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !2021, !tbaa !1367
  call void %36(%struct._object* %37), !dbg !2022
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  %38 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !2023
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !2023
  br label %do.cond.22, !dbg !2025

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !2026

do.end.23:                                        ; preds = %do.cond.22
  br label %do.body.24, !dbg !2028

do.body.24:                                       ; preds = %do.end.23
  %39 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !2029
  call void @llvm.lifetime.start(i64 8, i8* %39) #1, !dbg !2029
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp25, metadata !681, metadata !1363), !dbg !2031
  %40 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !2032, !tbaa !1367
  store %struct._object* %40, %struct._object** %_py_decref_tmp25, align 8, !dbg !2031, !tbaa !1367
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !2033, !tbaa !1367
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !2035
  %42 = load i64, i64* %ob_refcnt26, align 8, !dbg !2036, !tbaa !1487
  %dec27 = add i64 %42, -1, !dbg !2036
  store i64 %dec27, i64* %ob_refcnt26, align 8, !dbg !2036, !tbaa !1487
  %cmp28 = icmp ne i64 %dec27, 0, !dbg !2037
  br i1 %cmp28, label %if.then.29, label %if.else.30, !dbg !2038

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33, !dbg !2039

if.else.30:                                       ; preds = %do.body.24
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !2041, !tbaa !1367
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !2043
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !2043, !tbaa !1377
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !2044
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8, !dbg !2044, !tbaa !1525
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !2045, !tbaa !1367
  call void %45(%struct._object* %46), !dbg !2046
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  %47 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !2047
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !2047
  br label %do.cond.34, !dbg !2048

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !2049

do.end.35:                                        ; preds = %do.cond.34
  %48 = load %struct._object*, %struct._object** %result, align 8, !dbg !2051, !tbaa !1367
  store %struct._object* %48, %struct._object** %retval, !dbg !2052
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2052

cleanup:                                          ; preds = %do.end.35, %do.end, %if.then.2, %if.then
  %49 = bitcast i64* %n to i8*, !dbg !2053
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !2053
  %50 = bitcast %struct._object** %result to i8*, !dbg !2053
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !2053
  %51 = bitcast %struct._object** %newargs to i8*, !dbg !2053
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !2053
  %52 = bitcast %struct._object** %fmt to i8*, !dbg !2053
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !2053
  %53 = bitcast %struct._object** %s_object to i8*, !dbg !2053
  call void @llvm.lifetime.end(i64 8, i8* %53) #1, !dbg !2053
  %54 = load %struct._object*, %struct._object** %retval, !dbg !2053
  ret %struct._object* %54, !dbg !2053
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cache_struct(%struct._object* %fmt) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fmt.addr = alloca %struct._object*, align 8
  %s_object = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %fmt, %struct._object** %fmt.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %fmt.addr, metadata !474, metadata !1363), !dbg !2054
  %0 = bitcast %struct._object** %s_object to i8*, !dbg !2055
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2055
  call void @llvm.dbg.declare(metadata %struct._object** %s_object, metadata !475, metadata !1363), !dbg !2056
  %1 = load %struct._object*, %struct._object** @cache, align 8, !dbg !2057, !tbaa !1367
  %cmp = icmp eq %struct._object* %1, null, !dbg !2059
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !2060

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyDict_New(), !dbg !2061
  store %struct._object* %call, %struct._object** @cache, align 8, !dbg !2063, !tbaa !1367
  %2 = load %struct._object*, %struct._object** @cache, align 8, !dbg !2064, !tbaa !1367
  %cmp1 = icmp eq %struct._object* %2, null, !dbg !2066
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !2067

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !2068
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2068

if.end:                                           ; preds = %if.then
  br label %if.end.3, !dbg !2069

if.end.3:                                         ; preds = %if.end, %entry
  %3 = load %struct._object*, %struct._object** @cache, align 8, !dbg !2070, !tbaa !1367
  %4 = load %struct._object*, %struct._object** %fmt.addr, align 8, !dbg !2071, !tbaa !1367
  %call4 = call %struct._object* @PyDict_GetItem(%struct._object* %3, %struct._object* %4), !dbg !2072
  store %struct._object* %call4, %struct._object** %s_object, align 8, !dbg !2073, !tbaa !1367
  %5 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !2074, !tbaa !1367
  %cmp5 = icmp ne %struct._object* %5, null, !dbg !2076
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2077

if.then.6:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !2078, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !2080
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !2081, !tbaa !1487
  %inc = add i64 %7, 1, !dbg !2081
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2081, !tbaa !1487
  %8 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !2082, !tbaa !1367
  store %struct._object* %8, %struct._object** %retval, !dbg !2083
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2083

if.end.7:                                         ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %fmt.addr, align 8, !dbg !2084, !tbaa !1367
  %call8 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyStructType, i32 0, i32 0, i32 0), %struct._object* %9, i8* null), !dbg !2085
  store %struct._object* %call8, %struct._object** %s_object, align 8, !dbg !2086, !tbaa !1367
  %10 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !2087, !tbaa !1367
  %cmp9 = icmp ne %struct._object* %10, null, !dbg !2089
  br i1 %cmp9, label %if.then.10, label %if.end.19, !dbg !2090

if.then.10:                                       ; preds = %if.end.7
  %11 = load %struct._object*, %struct._object** @cache, align 8, !dbg !2091, !tbaa !1367
  %call11 = call i64 @PyDict_Size(%struct._object* %11), !dbg !2094
  %cmp12 = icmp sge i64 %call11, 100, !dbg !2095
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !2096

if.then.13:                                       ; preds = %if.then.10
  %12 = load %struct._object*, %struct._object** @cache, align 8, !dbg !2097, !tbaa !1367
  call void @PyDict_Clear(%struct._object* %12), !dbg !2098
  br label %if.end.14, !dbg !2098

if.end.14:                                        ; preds = %if.then.13, %if.then.10
  %13 = load %struct._object*, %struct._object** @cache, align 8, !dbg !2099, !tbaa !1367
  %14 = load %struct._object*, %struct._object** %fmt.addr, align 8, !dbg !2101, !tbaa !1367
  %15 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !2102, !tbaa !1367
  %call15 = call i32 @PyDict_SetItem(%struct._object* %13, %struct._object* %14, %struct._object* %15), !dbg !2103
  %cmp16 = icmp eq i32 %call15, -1, !dbg !2104
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !2105

if.then.17:                                       ; preds = %if.end.14
  call void @PyErr_Clear(), !dbg !2106
  br label %if.end.18, !dbg !2106

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  br label %if.end.19, !dbg !2107

if.end.19:                                        ; preds = %if.end.18, %if.end.7
  %16 = load %struct._object*, %struct._object** %s_object, align 8, !dbg !2108, !tbaa !1367
  store %struct._object* %16, %struct._object** %retval, !dbg !2109
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2109

cleanup:                                          ; preds = %if.end.19, %if.then.6, %if.then.2
  %17 = bitcast %struct._object** %s_object to i8*, !dbg !2110
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !2110
  %18 = load %struct._object*, %struct._object** %retval, !dbg !2110
  ret %struct._object* %18, !dbg !2110
}

declare %struct._object* @PyLong_FromSsize_t(i64) #3

declare %struct._object* @PyDict_New() #3

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

declare i64 @PyDict_Size(%struct._object*) #3

declare void @PyDict_Clear(%struct._object*) #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare void @PyErr_Clear() #3

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_iter_unpack(%struct._object* %_so, %struct._object* %input) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %_so.addr = alloca %struct._object*, align 8
  %input.addr = alloca %struct._object*, align 8
  %so = alloca %struct.PyStructObject*, align 8
  %self = alloca %struct.unpackiterobject*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %_so, %struct._object** %_so.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %_so.addr, metadata !488, metadata !1363), !dbg !2111
  store %struct._object* %input, %struct._object** %input.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %input.addr, metadata !489, metadata !1363), !dbg !2112
  %0 = bitcast %struct.PyStructObject** %so to i8*, !dbg !2113
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2113
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %so, metadata !490, metadata !1363), !dbg !2114
  %1 = load %struct._object*, %struct._object** %_so.addr, align 8, !dbg !2115, !tbaa !1367
  %2 = bitcast %struct._object* %1 to %struct.PyStructObject*, !dbg !2116
  store %struct.PyStructObject* %2, %struct.PyStructObject** %so, align 8, !dbg !2114, !tbaa !1367
  %3 = bitcast %struct.unpackiterobject** %self to i8*, !dbg !2117
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2117
  call void @llvm.dbg.declare(metadata %struct.unpackiterobject** %self, metadata !491, metadata !1363), !dbg !2118
  %4 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8, !dbg !2119, !tbaa !1367
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %4, i32 0, i32 1, !dbg !2121
  %5 = load i64, i64* %s_size, align 8, !dbg !2121, !tbaa !1560
  %cmp = icmp eq i64 %5, 0, !dbg !2122
  br i1 %cmp, label %if.then, label %if.end, !dbg !2123

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !2124, !tbaa !1367
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i32 0, i32 0)), !dbg !2126
  store %struct._object* null, %struct._object** %retval, !dbg !2127
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2127

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyType_GenericAlloc(%struct._typeobject* @unpackiter_type, i64 0), !dbg !2128
  %7 = bitcast %struct._object* %call1 to %struct.unpackiterobject*, !dbg !2129
  store %struct.unpackiterobject* %7, %struct.unpackiterobject** %self, align 8, !dbg !2130, !tbaa !1367
  %8 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8, !dbg !2131, !tbaa !1367
  %cmp2 = icmp eq %struct.unpackiterobject* %8, null, !dbg !2133
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2134

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2135
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2135

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %input.addr, align 8, !dbg !2136, !tbaa !1367
  %10 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8, !dbg !2137, !tbaa !1367
  %buf = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %10, i32 0, i32 2, !dbg !2138
  %call5 = call i32 @PyObject_GetBuffer(%struct._object* %9, %struct.bufferinfo* %buf, i32 0), !dbg !2139
  %cmp6 = icmp slt i32 %call5, 0, !dbg !2140
  br i1 %cmp6, label %if.then.7, label %if.end.11, !dbg !2141

if.then.7:                                        ; preds = %if.end.4
  br label %do.body, !dbg !2142

do.body:                                          ; preds = %if.then.7
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2143
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !2143
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !492, metadata !1363), !dbg !2145
  %12 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8, !dbg !2146, !tbaa !1367
  %13 = bitcast %struct.unpackiterobject* %12 to %struct._object*, !dbg !2147
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !2145, !tbaa !1367
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2148, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !2150
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !2151, !tbaa !1487
  %dec = add i64 %15, -1, !dbg !2151
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2151, !tbaa !1487
  %cmp8 = icmp ne i64 %dec, 0, !dbg !2152
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !2153

if.then.9:                                        ; preds = %do.body
  br label %if.end.10, !dbg !2154

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2156, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !2158
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2158, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !2159
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2159, !tbaa !1525
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2160, !tbaa !1367
  call void %18(%struct._object* %19), !dbg !2161
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2162
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !2162
  br label %do.cond, !dbg !2164

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !2165

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2167
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2167

if.end.11:                                        ; preds = %if.end.4
  %21 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8, !dbg !2168, !tbaa !1367
  %buf12 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %21, i32 0, i32 2, !dbg !2169
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf12, i32 0, i32 2, !dbg !2170
  %22 = load i64, i64* %len, align 8, !dbg !2170, !tbaa !2171
  %23 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8, !dbg !2174, !tbaa !1367
  %s_size13 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %23, i32 0, i32 1, !dbg !2175
  %24 = load i64, i64* %s_size13, align 8, !dbg !2175, !tbaa !1560
  %rem = srem i64 %22, %24, !dbg !2176
  %cmp14 = icmp ne i64 %rem, 0, !dbg !2177
  br i1 %cmp14, label %if.then.15, label %if.end.30, !dbg !2178

if.then.15:                                       ; preds = %if.end.11
  %25 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !2179, !tbaa !1367
  %26 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8, !dbg !2180, !tbaa !1367
  %s_size16 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %26, i32 0, i32 1, !dbg !2181
  %27 = load i64, i64* %s_size16, align 8, !dbg !2181, !tbaa !1560
  %call17 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %25, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i32 0, i32 0), i64 %27), !dbg !2182
  br label %do.body.18, !dbg !2183

do.body.18:                                       ; preds = %if.then.15
  %28 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !2184
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !2184
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !496, metadata !1363), !dbg !2186
  %29 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8, !dbg !2187, !tbaa !1367
  %30 = bitcast %struct.unpackiterobject* %29 to %struct._object*, !dbg !2188
  store %struct._object* %30, %struct._object** %_py_decref_tmp19, align 8, !dbg !2186, !tbaa !1367
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2189, !tbaa !1367
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !2191
  %32 = load i64, i64* %ob_refcnt20, align 8, !dbg !2192, !tbaa !1487
  %dec21 = add i64 %32, -1, !dbg !2192
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !2192, !tbaa !1487
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !2193
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !2194

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !2195

if.else.24:                                       ; preds = %do.body.18
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2197, !tbaa !1367
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !2199
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !2199, !tbaa !1377
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !2200
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !2200, !tbaa !1525
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2201, !tbaa !1367
  call void %35(%struct._object* %36), !dbg !2202
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %37 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !2203
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !2203
  br label %do.cond.28, !dbg !2205

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !2206

do.end.29:                                        ; preds = %do.cond.28
  store %struct._object* null, %struct._object** %retval, !dbg !2208
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2208

if.end.30:                                        ; preds = %if.end.11
  %38 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8, !dbg !2209, !tbaa !1367
  %39 = bitcast %struct.PyStructObject* %38 to %struct._object*, !dbg !2210
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !2211
  %40 = load i64, i64* %ob_refcnt31, align 8, !dbg !2212, !tbaa !1487
  %inc = add i64 %40, 1, !dbg !2212
  store i64 %inc, i64* %ob_refcnt31, align 8, !dbg !2212, !tbaa !1487
  %41 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8, !dbg !2213, !tbaa !1367
  %42 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8, !dbg !2214, !tbaa !1367
  %so32 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %42, i32 0, i32 1, !dbg !2215
  store %struct.PyStructObject* %41, %struct.PyStructObject** %so32, align 8, !dbg !2216, !tbaa !2217
  %43 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8, !dbg !2218, !tbaa !1367
  %index = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %43, i32 0, i32 3, !dbg !2219
  store i64 0, i64* %index, align 8, !dbg !2220, !tbaa !2221
  %44 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self, align 8, !dbg !2222, !tbaa !1367
  %45 = bitcast %struct.unpackiterobject* %44 to %struct._object*, !dbg !2223
  store %struct._object* %45, %struct._object** %retval, !dbg !2224
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2224

cleanup:                                          ; preds = %if.end.30, %do.end.29, %do.end, %if.then.3, %if.then
  %46 = bitcast %struct.unpackiterobject** %self to i8*, !dbg !2225
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !2225
  %47 = bitcast %struct.PyStructObject** %so to i8*, !dbg !2225
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !2225
  %48 = load %struct._object*, %struct._object** %retval, !dbg !2225
  ret %struct._object* %48, !dbg !2225
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @unpackiter_dealloc(%struct.unpackiterobject* %self) #0 {
entry:
  %self.addr = alloca %struct.unpackiterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.unpackiterobject* %self, %struct.unpackiterobject** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct.unpackiterobject** %self.addr, metadata !504, metadata !1363), !dbg !2226
  br label %do.body, !dbg !2227

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2228
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2228
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !505, metadata !1363), !dbg !2230
  %1 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2231, !tbaa !1367
  %so = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %1, i32 0, i32 1, !dbg !2232
  %2 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8, !dbg !2232, !tbaa !2217
  %3 = bitcast %struct.PyStructObject* %2 to %struct._object*, !dbg !2233
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2230, !tbaa !1367
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2234, !tbaa !1367
  %cmp = icmp ne %struct._object* %4, null, !dbg !2235
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !2236

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !2237

do.body.1:                                        ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2239
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2239
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !507, metadata !1363), !dbg !2241
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2242, !tbaa !1367
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !2241, !tbaa !1367
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2243, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !2245
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !2246, !tbaa !1487
  %dec = add i64 %8, -1, !dbg !2246
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2246, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !2247
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2248

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !2249

if.else:                                          ; preds = %do.body.1
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2251, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !2253
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2253, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !2254
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2254, !tbaa !1525
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2255, !tbaa !1367
  call void %11(%struct._object* %12), !dbg !2256
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2257
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !2257
  br label %do.cond, !dbg !2259

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2260

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !2262

if.end.4:                                         ; preds = %do.end, %do.body
  %14 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2264
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !2264
  br label %do.end.6, !dbg !2267

do.end.6:                                         ; preds = %if.end.4
  %15 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2268, !tbaa !1367
  %buf = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %15, i32 0, i32 2, !dbg !2269
  call void @PyBuffer_Release(%struct.bufferinfo* %buf), !dbg !2270
  %16 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2271, !tbaa !1367
  %17 = bitcast %struct.unpackiterobject* %16 to i8*, !dbg !2271
  call void @PyObject_GC_Del(i8* %17), !dbg !2272
  ret void, !dbg !2273
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @unpackiter_traverse(%struct.unpackiterobject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.unpackiterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  store %struct.unpackiterobject* %self, %struct.unpackiterobject** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct.unpackiterobject** %self.addr, metadata !514, metadata !1363), !dbg !2274
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !515, metadata !1363), !dbg !2275
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !516, metadata !1363), !dbg !2276
  br label %do.body, !dbg !2277

do.body:                                          ; preds = %entry
  %0 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2278, !tbaa !1367
  %so = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %0, i32 0, i32 1, !dbg !2280
  %1 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8, !dbg !2280, !tbaa !2217
  %tobool = icmp ne %struct.PyStructObject* %1, null, !dbg !2281
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !2282

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !2283
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2283
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !517, metadata !1363), !dbg !2285
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2286, !tbaa !1367
  %4 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2287, !tbaa !1367
  %so1 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %4, i32 0, i32 1, !dbg !2288
  %5 = load %struct.PyStructObject*, %struct.PyStructObject** %so1, align 8, !dbg !2288, !tbaa !2217
  %6 = bitcast %struct.PyStructObject* %5 to %struct._object*, !dbg !2289
  %7 = load i8*, i8** %arg.addr, align 8, !dbg !2290, !tbaa !1367
  %call = call i32 %3(%struct._object* %6, i8* %7), !dbg !2286
  store i32 %call, i32* %vret, align 4, !dbg !2285, !tbaa !2291
  %8 = load i32, i32* %vret, align 4, !dbg !2292, !tbaa !2291
  %tobool2 = icmp ne i32 %8, 0, !dbg !2292
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !2294

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4, !dbg !2295, !tbaa !2291
  store i32 %9, i32* %retval, !dbg !2297
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2297

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !2298
  br label %cleanup, !dbg !2298

cleanup:                                          ; preds = %if.end, %if.then.3
  %10 = bitcast i32* %vret to i8*, !dbg !2300
  call void @llvm.lifetime.end(i64 4, i8* %10) #1, !dbg !2300
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !2303

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !2304

do.end:                                           ; preds = %if.end.4
  br label %do.body.5, !dbg !2307

do.body.5:                                        ; preds = %do.end
  %11 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2308, !tbaa !1367
  %buf = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %11, i32 0, i32 2, !dbg !2310
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 1, !dbg !2311
  %12 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2311, !tbaa !2312
  %tobool6 = icmp ne %struct._object* %12, null, !dbg !2313
  br i1 %tobool6, label %if.then.7, label %if.end.18, !dbg !2314

if.then.7:                                        ; preds = %do.body.5
  %13 = bitcast i32* %vret8 to i8*, !dbg !2315
  call void @llvm.lifetime.start(i64 4, i8* %13) #1, !dbg !2315
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !521, metadata !1363), !dbg !2317
  %14 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2318, !tbaa !1367
  %15 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2319, !tbaa !1367
  %buf9 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %15, i32 0, i32 2, !dbg !2320
  %obj10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf9, i32 0, i32 1, !dbg !2321
  %16 = load %struct._object*, %struct._object** %obj10, align 8, !dbg !2321, !tbaa !2312
  %17 = load i8*, i8** %arg.addr, align 8, !dbg !2322, !tbaa !1367
  %call11 = call i32 %14(%struct._object* %16, i8* %17), !dbg !2318
  store i32 %call11, i32* %vret8, align 4, !dbg !2317, !tbaa !2291
  %18 = load i32, i32* %vret8, align 4, !dbg !2323, !tbaa !2291
  %tobool12 = icmp ne i32 %18, 0, !dbg !2323
  br i1 %tobool12, label %if.then.13, label %if.end.14, !dbg !2325

if.then.13:                                       ; preds = %if.then.7
  %19 = load i32, i32* %vret8, align 4, !dbg !2326, !tbaa !2291
  store i32 %19, i32* %retval, !dbg !2328
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15, !dbg !2328

if.end.14:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !2329
  br label %cleanup.15, !dbg !2329

cleanup.15:                                       ; preds = %if.end.14, %if.then.13
  %20 = bitcast i32* %vret8 to i8*, !dbg !2331
  call void @llvm.lifetime.end(i64 4, i8* %20) #1, !dbg !2331
  %cleanup.dest.16 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.15
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.16, 1
  br i1 %SwitchLeaf3, label %return, label %NewDefault.1

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.cont.17

cleanup.cont.17:                                  ; preds = %NewDefault.1
  br label %if.end.18, !dbg !2334

if.end.18:                                        ; preds = %cleanup.cont.17, %do.body.5
  br label %do.end.19, !dbg !2335

do.end.19:                                        ; preds = %if.end.18
  store i32 0, i32* %retval, !dbg !2338
  br label %return, !dbg !2338

return:                                           ; preds = %LeafBlock.2, %LeafBlock, %do.end.19
  %21 = load i32, i32* %retval, !dbg !2339
  ret i32 %21, !dbg !2339
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @unpackiter_iternext(%struct.unpackiterobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.unpackiterobject*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.unpackiterobject* %self, %struct.unpackiterobject** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct.unpackiterobject** %self.addr, metadata !529, metadata !1363), !dbg !2340
  %0 = bitcast %struct._object** %result to i8*, !dbg !2341
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2341
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !530, metadata !1363), !dbg !2342
  %1 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2343, !tbaa !1367
  %so = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %1, i32 0, i32 1, !dbg !2345
  %2 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8, !dbg !2345, !tbaa !2217
  %cmp = icmp eq %struct.PyStructObject* %2, null, !dbg !2346
  br i1 %cmp, label %if.then, label %if.end, !dbg !2347

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2348
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2348

if.end:                                           ; preds = %entry
  %3 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2349, !tbaa !1367
  %index = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %3, i32 0, i32 3, !dbg !2350
  %4 = load i64, i64* %index, align 8, !dbg !2350, !tbaa !2221
  %5 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2351, !tbaa !1367
  %buf = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %5, i32 0, i32 2, !dbg !2352
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2, !dbg !2353
  %6 = load i64, i64* %len, align 8, !dbg !2353, !tbaa !2171
  %cmp1 = icmp sge i64 %4, %6, !dbg !2354
  br i1 %cmp1, label %if.then.2, label %if.end.15, !dbg !2355

if.then.2:                                        ; preds = %if.end
  br label %do.body, !dbg !2356

do.body:                                          ; preds = %if.then.2
  %7 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2357
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2357
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !531, metadata !1363), !dbg !2359
  %8 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2360, !tbaa !1367
  %so3 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %8, i32 0, i32 1, !dbg !2361
  %9 = load %struct.PyStructObject*, %struct.PyStructObject** %so3, align 8, !dbg !2361, !tbaa !2217
  %10 = bitcast %struct.PyStructObject* %9 to %struct._object*, !dbg !2362
  store %struct._object* %10, %struct._object** %_py_tmp, align 8, !dbg !2359, !tbaa !1367
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2363, !tbaa !1367
  %cmp4 = icmp ne %struct._object* %11, null, !dbg !2364
  br i1 %cmp4, label %if.then.5, label %if.end.11, !dbg !2365

if.then.5:                                        ; preds = %do.body
  %12 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2366, !tbaa !1367
  %so6 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %12, i32 0, i32 1, !dbg !2368
  store %struct.PyStructObject* null, %struct.PyStructObject** %so6, align 8, !dbg !2369, !tbaa !2217
  br label %do.body.7, !dbg !2370

do.body.7:                                        ; preds = %if.then.5
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2371
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !2371
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !535, metadata !1363), !dbg !2373
  %14 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2374, !tbaa !1367
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !2373, !tbaa !1367
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2375, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !2377
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2378, !tbaa !1487
  %dec = add i64 %16, -1, !dbg !2378
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2378, !tbaa !1487
  %cmp8 = icmp ne i64 %dec, 0, !dbg !2379
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !2380

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10, !dbg !2381

if.else:                                          ; preds = %do.body.7
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2383, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2385
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2385, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !2386
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2386, !tbaa !1525
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2387, !tbaa !1367
  call void %19(%struct._object* %20), !dbg !2388
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2389
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !2389
  br label %do.cond, !dbg !2391

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !2392

do.end:                                           ; preds = %do.cond
  br label %if.end.11, !dbg !2394

if.end.11:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2396
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !2396
  br label %do.cond.12, !dbg !2399

do.cond.12:                                       ; preds = %if.end.11
  br label %do.end.13, !dbg !2400

do.end.13:                                        ; preds = %do.cond.12
  %23 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2402, !tbaa !1367
  %buf14 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %23, i32 0, i32 2, !dbg !2403
  call void @PyBuffer_Release(%struct.bufferinfo* %buf14), !dbg !2404
  store %struct._object* null, %struct._object** %retval, !dbg !2405
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2405

if.end.15:                                        ; preds = %if.end
  %24 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2406, !tbaa !1367
  %so16 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %24, i32 0, i32 1, !dbg !2407
  %25 = load %struct.PyStructObject*, %struct.PyStructObject** %so16, align 8, !dbg !2407, !tbaa !2217
  %26 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2408, !tbaa !1367
  %buf17 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %26, i32 0, i32 2, !dbg !2409
  %buf18 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf17, i32 0, i32 0, !dbg !2410
  %27 = load i8*, i8** %buf18, align 8, !dbg !2410, !tbaa !2411
  %28 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2412, !tbaa !1367
  %index19 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %28, i32 0, i32 3, !dbg !2413
  %29 = load i64, i64* %index19, align 8, !dbg !2413, !tbaa !2221
  %add.ptr = getelementptr i8, i8* %27, i64 %29, !dbg !2414
  %call = call %struct._object* @s_unpack_internal(%struct.PyStructObject* %25, i8* %add.ptr), !dbg !2415
  store %struct._object* %call, %struct._object** %result, align 8, !dbg !2416, !tbaa !1367
  %30 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2417, !tbaa !1367
  %so20 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %30, i32 0, i32 1, !dbg !2418
  %31 = load %struct.PyStructObject*, %struct.PyStructObject** %so20, align 8, !dbg !2418, !tbaa !2217
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %31, i32 0, i32 1, !dbg !2419
  %32 = load i64, i64* %s_size, align 8, !dbg !2419, !tbaa !1560
  %33 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2420, !tbaa !1367
  %index21 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %33, i32 0, i32 3, !dbg !2421
  %34 = load i64, i64* %index21, align 8, !dbg !2422, !tbaa !2221
  %add = add i64 %34, %32, !dbg !2422
  store i64 %add, i64* %index21, align 8, !dbg !2422, !tbaa !2221
  %35 = load %struct._object*, %struct._object** %result, align 8, !dbg !2423, !tbaa !1367
  store %struct._object* %35, %struct._object** %retval, !dbg !2424
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2424

cleanup:                                          ; preds = %if.end.15, %do.end.13, %if.then
  %36 = bitcast %struct._object** %result to i8*, !dbg !2425
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !2425
  %37 = load %struct._object*, %struct._object** %retval, !dbg !2425
  ret %struct._object* %37, !dbg !2425
}

declare void @PyBuffer_Release(%struct.bufferinfo*) #3

declare void @PyObject_GC_Del(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_unpack_internal(%struct.PyStructObject* %soself, i8* %startfrom) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %soself.addr = alloca %struct.PyStructObject*, align 8
  %startfrom.addr = alloca i8*, align 8
  %code = alloca %struct._formatcode*, align 8
  %i = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %e = alloca %struct._formatdef*, align 8
  %res = alloca i8*, align 8
  %j = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyStructObject* %soself, %struct.PyStructObject** %soself.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %soself.addr, metadata !543, metadata !1363), !dbg !2426
  store i8* %startfrom, i8** %startfrom.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %startfrom.addr, metadata !544, metadata !1363), !dbg !2427
  %0 = bitcast %struct._formatcode** %code to i8*, !dbg !2428
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2428
  call void @llvm.dbg.declare(metadata %struct._formatcode** %code, metadata !545, metadata !1363), !dbg !2429
  %1 = bitcast i64* %i to i8*, !dbg !2430
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2430
  call void @llvm.dbg.declare(metadata i64* %i, metadata !546, metadata !1363), !dbg !2431
  store i64 0, i64* %i, align 8, !dbg !2431, !tbaa !1563
  %2 = bitcast %struct._object** %result to i8*, !dbg !2432
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2432
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !547, metadata !1363), !dbg !2433
  %3 = load %struct.PyStructObject*, %struct.PyStructObject** %soself.addr, align 8, !dbg !2434, !tbaa !1367
  %s_len = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %3, i32 0, i32 2, !dbg !2435
  %4 = load i64, i64* %s_len, align 8, !dbg !2435, !tbaa !2436
  %call = call %struct._object* @PyTuple_New(i64 %4), !dbg !2437
  store %struct._object* %call, %struct._object** %result, align 8, !dbg !2433, !tbaa !1367
  %5 = load %struct._object*, %struct._object** %result, align 8, !dbg !2438, !tbaa !1367
  %cmp = icmp eq %struct._object* %5, null, !dbg !2440
  br i1 %cmp, label %if.then, label %if.end, !dbg !2441

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2442
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !2442

if.end:                                           ; preds = %entry
  %6 = load %struct.PyStructObject*, %struct.PyStructObject** %soself.addr, align 8, !dbg !2443, !tbaa !1367
  %s_codes = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %6, i32 0, i32 3, !dbg !2444
  %7 = load %struct._formatcode*, %struct._formatcode** %s_codes, align 8, !dbg !2444, !tbaa !2445
  store %struct._formatcode* %7, %struct._formatcode** %code, align 8, !dbg !2446, !tbaa !1367
  br label %for.cond, !dbg !2447

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2448, !tbaa !1367
  %fmtdef = getelementptr inbounds %struct._formatcode, %struct._formatcode* %8, i32 0, i32 0, !dbg !2451
  %9 = load %struct._formatdef*, %struct._formatdef** %fmtdef, align 8, !dbg !2451, !tbaa !2452
  %cmp1 = icmp ne %struct._formatdef* %9, null, !dbg !2454
  br i1 %cmp1, label %for.body, label %for.end, !dbg !2455

for.body:                                         ; preds = %for.cond
  %10 = bitcast %struct._formatdef** %e to i8*, !dbg !2456
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !2456
  call void @llvm.dbg.declare(metadata %struct._formatdef** %e, metadata !548, metadata !1363), !dbg !2457
  %11 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2458, !tbaa !1367
  %fmtdef2 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %11, i32 0, i32 0, !dbg !2459
  %12 = load %struct._formatdef*, %struct._formatdef** %fmtdef2, align 8, !dbg !2459, !tbaa !2452
  store %struct._formatdef* %12, %struct._formatdef** %e, align 8, !dbg !2457, !tbaa !1367
  %13 = bitcast i8** %res to i8*, !dbg !2460
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !2460
  call void @llvm.dbg.declare(metadata i8** %res, metadata !554, metadata !1363), !dbg !2461
  %14 = load i8*, i8** %startfrom.addr, align 8, !dbg !2462, !tbaa !1367
  %15 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2463, !tbaa !1367
  %offset = getelementptr inbounds %struct._formatcode, %struct._formatcode* %15, i32 0, i32 1, !dbg !2464
  %16 = load i64, i64* %offset, align 8, !dbg !2464, !tbaa !2465
  %add.ptr = getelementptr i8, i8* %14, i64 %16, !dbg !2466
  store i8* %add.ptr, i8** %res, align 8, !dbg !2461, !tbaa !1367
  %17 = bitcast i64* %j to i8*, !dbg !2467
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !2467
  call void @llvm.dbg.declare(metadata i64* %j, metadata !555, metadata !1363), !dbg !2468
  %18 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2469, !tbaa !1367
  %repeat = getelementptr inbounds %struct._formatcode, %struct._formatcode* %18, i32 0, i32 3, !dbg !2470
  %19 = load i64, i64* %repeat, align 8, !dbg !2470, !tbaa !2471
  store i64 %19, i64* %j, align 8, !dbg !2468, !tbaa !1563
  br label %while.cond, !dbg !2472

while.cond:                                       ; preds = %cleanup.cont, %for.body
  %20 = load i64, i64* %j, align 8, !dbg !2473, !tbaa !1563
  %dec = add i64 %20, -1, !dbg !2473
  store i64 %dec, i64* %j, align 8, !dbg !2473, !tbaa !1563
  %tobool = icmp ne i64 %20, 0, !dbg !2472
  br i1 %tobool, label %while.body, label %while.end, !dbg !2472

while.body:                                       ; preds = %while.cond
  %21 = bitcast %struct._object** %v to i8*, !dbg !2476
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !2476
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !556, metadata !1363), !dbg !2477
  %22 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !2478, !tbaa !1367
  %format = getelementptr inbounds %struct._formatdef, %struct._formatdef* %22, i32 0, i32 0, !dbg !2479
  %23 = load i8, i8* %format, align 1, !dbg !2479, !tbaa !1396
  %conv = sext i8 %23 to i32, !dbg !2478
  %cmp3 = icmp eq i32 %conv, 115, !dbg !2480
  br i1 %cmp3, label %if.then.5, label %if.else, !dbg !2481

if.then.5:                                        ; preds = %while.body
  %24 = load i8*, i8** %res, align 8, !dbg !2482, !tbaa !1367
  %25 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2484, !tbaa !1367
  %size = getelementptr inbounds %struct._formatcode, %struct._formatcode* %25, i32 0, i32 2, !dbg !2485
  %26 = load i64, i64* %size, align 8, !dbg !2485, !tbaa !2486
  %call6 = call %struct._object* @PyBytes_FromStringAndSize(i8* %24, i64 %26), !dbg !2487
  store %struct._object* %call6, %struct._object** %v, align 8, !dbg !2488, !tbaa !1367
  br label %if.end.24, !dbg !2489

if.else:                                          ; preds = %while.body
  %27 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !2490, !tbaa !1367
  %format7 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %27, i32 0, i32 0, !dbg !2491
  %28 = load i8, i8* %format7, align 1, !dbg !2491, !tbaa !1396
  %conv8 = sext i8 %28 to i32, !dbg !2490
  %cmp9 = icmp eq i32 %conv8, 112, !dbg !2492
  br i1 %cmp9, label %if.then.11, label %if.else.21, !dbg !2493

if.then.11:                                       ; preds = %if.else
  %29 = bitcast i64* %n to i8*, !dbg !2494
  call void @llvm.lifetime.start(i64 8, i8* %29) #1, !dbg !2494
  call void @llvm.dbg.declare(metadata i64* %n, metadata !558, metadata !1363), !dbg !2495
  %30 = load i8*, i8** %res, align 8, !dbg !2496, !tbaa !1367
  %31 = load i8, i8* %30, align 1, !dbg !2497, !tbaa !2498
  %conv12 = zext i8 %31 to i64, !dbg !2497
  store i64 %conv12, i64* %n, align 8, !dbg !2495, !tbaa !1563
  %32 = load i64, i64* %n, align 8, !dbg !2499, !tbaa !1563
  %33 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2501, !tbaa !1367
  %size13 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %33, i32 0, i32 2, !dbg !2502
  %34 = load i64, i64* %size13, align 8, !dbg !2502, !tbaa !2486
  %cmp14 = icmp sge i64 %32, %34, !dbg !2503
  br i1 %cmp14, label %if.then.16, label %if.end.18, !dbg !2504

if.then.16:                                       ; preds = %if.then.11
  %35 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2505, !tbaa !1367
  %size17 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %35, i32 0, i32 2, !dbg !2506
  %36 = load i64, i64* %size17, align 8, !dbg !2506, !tbaa !2486
  %sub = sub i64 %36, 1, !dbg !2507
  store i64 %sub, i64* %n, align 8, !dbg !2508, !tbaa !1563
  br label %if.end.18, !dbg !2509

if.end.18:                                        ; preds = %if.then.16, %if.then.11
  %37 = load i8*, i8** %res, align 8, !dbg !2510, !tbaa !1367
  %add.ptr19 = getelementptr i8, i8* %37, i64 1, !dbg !2511
  %38 = load i64, i64* %n, align 8, !dbg !2512, !tbaa !1563
  %call20 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr19, i64 %38), !dbg !2513
  store %struct._object* %call20, %struct._object** %v, align 8, !dbg !2514, !tbaa !1367
  %39 = bitcast i64* %n to i8*, !dbg !2515
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !2515
  br label %if.end.23, !dbg !2516

if.else.21:                                       ; preds = %if.else
  %40 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !2517, !tbaa !1367
  %unpack = getelementptr inbounds %struct._formatdef, %struct._formatdef* %40, i32 0, i32 3, !dbg !2519
  %41 = load %struct._object* (i8*, %struct._formatdef*)*, %struct._object* (i8*, %struct._formatdef*)** %unpack, align 8, !dbg !2519, !tbaa !1463
  %42 = load i8*, i8** %res, align 8, !dbg !2520, !tbaa !1367
  %43 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !2521, !tbaa !1367
  %call22 = call %struct._object* %41(i8* %42, %struct._formatdef* %43), !dbg !2517
  store %struct._object* %call22, %struct._object** %v, align 8, !dbg !2522, !tbaa !1367
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.end.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.5
  %44 = load %struct._object*, %struct._object** %v, align 8, !dbg !2523, !tbaa !1367
  %cmp25 = icmp eq %struct._object* %44, null, !dbg !2525
  br i1 %cmp25, label %if.then.27, label %if.end.28, !dbg !2526

if.then.27:                                       ; preds = %if.end.24
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2527

if.end.28:                                        ; preds = %if.end.24
  %45 = load %struct._object*, %struct._object** %v, align 8, !dbg !2528, !tbaa !1367
  %46 = load i64, i64* %i, align 8, !dbg !2529, !tbaa !1563
  %inc = add i64 %46, 1, !dbg !2529
  store i64 %inc, i64* %i, align 8, !dbg !2529, !tbaa !1563
  %47 = load %struct._object*, %struct._object** %result, align 8, !dbg !2530, !tbaa !1367
  %48 = bitcast %struct._object* %47 to %struct.PyTupleObject*, !dbg !2531
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %48, i32 0, i32 1, !dbg !2532
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %46, !dbg !2533
  store %struct._object* %45, %struct._object** %arrayidx, align 8, !dbg !2534, !tbaa !1367
  %49 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2535, !tbaa !1367
  %size29 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %49, i32 0, i32 2, !dbg !2536
  %50 = load i64, i64* %size29, align 8, !dbg !2536, !tbaa !2486
  %51 = load i8*, i8** %res, align 8, !dbg !2537, !tbaa !1367
  %add.ptr30 = getelementptr i8, i8* %51, i64 %50, !dbg !2537
  store i8* %add.ptr30, i8** %res, align 8, !dbg !2537, !tbaa !1367
  store i32 0, i32* %cleanup.dest.slot, !dbg !2538
  br label %cleanup, !dbg !2538

cleanup:                                          ; preds = %if.end.28, %if.then.27
  %52 = bitcast %struct._object** %v to i8*, !dbg !2539
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !2539
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %while.cond, !dbg !2472

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !2540
  br label %cleanup.31, !dbg !2540

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.31

cleanup.31:                                       ; preds = %NewDefault, %while.end
  %53 = bitcast i64* %j to i8*, !dbg !2541
  call void @llvm.lifetime.end(i64 8, i8* %53) #1, !dbg !2541
  %54 = bitcast i8** %res to i8*, !dbg !2541
  call void @llvm.lifetime.end(i64 8, i8* %54) #1, !dbg !2541
  %55 = bitcast %struct._formatdef** %e to i8*, !dbg !2541
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !2541
  %cleanup.dest.34 = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup.31
  %Pivot = icmp slt i32 %cleanup.dest.34, 7
  br i1 %Pivot, label %LeafBlock.2, label %LeafBlock.4

LeafBlock.4:                                      ; preds = %NodeBlock
  %SwitchLeaf5 = icmp eq i32 %cleanup.dest.34, 7
  br i1 %SwitchLeaf5, label %fail, label %NewDefault.1

LeafBlock.2:                                      ; preds = %NodeBlock
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.34, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.35, label %NewDefault.1

cleanup.cont.35:                                  ; preds = %LeafBlock.2
  br label %for.inc, !dbg !2542

for.inc:                                          ; preds = %cleanup.cont.35
  %56 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2543, !tbaa !1367
  %incdec.ptr = getelementptr %struct._formatcode, %struct._formatcode* %56, i32 1, !dbg !2543
  store %struct._formatcode* %incdec.ptr, %struct._formatcode** %code, align 8, !dbg !2543, !tbaa !1367
  br label %for.cond, !dbg !2544

for.end:                                          ; preds = %for.cond
  %57 = load %struct._object*, %struct._object** %result, align 8, !dbg !2545, !tbaa !1367
  store %struct._object* %57, %struct._object** %retval, !dbg !2546
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !2546

fail:                                             ; preds = %LeafBlock.4
  br label %do.body, !dbg !2547

do.body:                                          ; preds = %fail
  %58 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2548
  call void @llvm.lifetime.start(i64 8, i8* %58) #1, !dbg !2548
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !562, metadata !1363), !dbg !2550
  %59 = load %struct._object*, %struct._object** %result, align 8, !dbg !2551, !tbaa !1367
  store %struct._object* %59, %struct._object** %_py_decref_tmp, align 8, !dbg !2550, !tbaa !1367
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2552, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !2554
  %61 = load i64, i64* %ob_refcnt, align 8, !dbg !2555, !tbaa !1487
  %dec36 = add i64 %61, -1, !dbg !2555
  store i64 %dec36, i64* %ob_refcnt, align 8, !dbg !2555, !tbaa !1487
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !2556
  br i1 %cmp37, label %if.then.39, label %if.else.40, !dbg !2557

if.then.39:                                       ; preds = %do.body
  br label %if.end.41, !dbg !2558

if.else.40:                                       ; preds = %do.body
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2560, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1, !dbg !2562
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2562, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4, !dbg !2563
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2563, !tbaa !1525
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2564, !tbaa !1367
  call void %64(%struct._object* %65), !dbg !2565
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.then.39
  %66 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2566
  call void @llvm.lifetime.end(i64 8, i8* %66) #1, !dbg !2566
  br label %do.cond, !dbg !2568

do.cond:                                          ; preds = %if.end.41
  br label %do.end, !dbg !2569

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2571
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !2571

NewDefault.1:                                     ; preds = %LeafBlock.4, %LeafBlock.2
  br label %cleanup.42

cleanup.42:                                       ; preds = %NewDefault.1, %do.end, %for.end, %if.then
  %67 = bitcast %struct._object** %result to i8*, !dbg !2572
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !2572
  %68 = bitcast i64* %i to i8*, !dbg !2572
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !2572
  %69 = bitcast %struct._formatcode** %code to i8*, !dbg !2572
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !2572
  %70 = load %struct._object*, %struct._object** %retval, !dbg !2572
  ret %struct._object* %70, !dbg !2572
}

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @unpackiter_len(%struct.unpackiterobject* %self) #0 {
entry:
  %self.addr = alloca %struct.unpackiterobject*, align 8
  %len = alloca i64, align 8
  store %struct.unpackiterobject* %self, %struct.unpackiterobject** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct.unpackiterobject** %self.addr, metadata !566, metadata !1363), !dbg !2573
  %0 = bitcast i64* %len to i8*, !dbg !2574
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2574
  call void @llvm.dbg.declare(metadata i64* %len, metadata !567, metadata !1363), !dbg !2575
  %1 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2576, !tbaa !1367
  %so = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %1, i32 0, i32 1, !dbg !2578
  %2 = load %struct.PyStructObject*, %struct.PyStructObject** %so, align 8, !dbg !2578, !tbaa !2217
  %cmp = icmp eq %struct.PyStructObject* %2, null, !dbg !2579
  br i1 %cmp, label %if.then, label %if.else, !dbg !2580

if.then:                                          ; preds = %entry
  store i64 0, i64* %len, align 8, !dbg !2581, !tbaa !1563
  br label %if.end, !dbg !2582

if.else:                                          ; preds = %entry
  %3 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2583, !tbaa !1367
  %buf = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %3, i32 0, i32 2, !dbg !2584
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2, !dbg !2585
  %4 = load i64, i64* %len1, align 8, !dbg !2585, !tbaa !2171
  %5 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2586, !tbaa !1367
  %index = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %5, i32 0, i32 3, !dbg !2587
  %6 = load i64, i64* %index, align 8, !dbg !2587, !tbaa !2221
  %sub = sub i64 %4, %6, !dbg !2588
  %7 = load %struct.unpackiterobject*, %struct.unpackiterobject** %self.addr, align 8, !dbg !2589, !tbaa !1367
  %so2 = getelementptr inbounds %struct.unpackiterobject, %struct.unpackiterobject* %7, i32 0, i32 1, !dbg !2590
  %8 = load %struct.PyStructObject*, %struct.PyStructObject** %so2, align 8, !dbg !2590, !tbaa !2217
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %8, i32 0, i32 1, !dbg !2591
  %9 = load i64, i64* %s_size, align 8, !dbg !2591, !tbaa !1560
  %div = sdiv i64 %sub, %9, !dbg !2592
  store i64 %div, i64* %len, align 8, !dbg !2593, !tbaa !1563
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i64, i64* %len, align 8, !dbg !2594, !tbaa !1563
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %10), !dbg !2595
  %11 = bitcast i64* %len to i8*, !dbg !2596
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !2596
  ret %struct._object* %call, !dbg !2597
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_pack(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %soself = alloca %struct.PyStructObject*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !587, metadata !1363), !dbg !2598
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !588, metadata !1363), !dbg !2599
  %0 = bitcast %struct.PyStructObject** %soself to i8*, !dbg !2600
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2600
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %soself, metadata !589, metadata !1363), !dbg !2601
  %1 = bitcast %struct._object** %result to i8*, !dbg !2602
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2602
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !590, metadata !1363), !dbg !2603
  %2 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2604, !tbaa !1367
  %3 = bitcast %struct._object* %2 to %struct.PyStructObject*, !dbg !2605
  store %struct.PyStructObject* %3, %struct.PyStructObject** %soself, align 8, !dbg !2606, !tbaa !1367
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2607, !tbaa !1367
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*, !dbg !2609
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1, !dbg !2610
  %6 = load i64, i64* %ob_size, align 8, !dbg !2610, !tbaa !1655
  %7 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !2611, !tbaa !1367
  %s_len = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %7, i32 0, i32 2, !dbg !2612
  %8 = load i64, i64* %s_len, align 8, !dbg !2612, !tbaa !2436
  %cmp = icmp ne i64 %6, %8, !dbg !2613
  br i1 %cmp, label %if.then, label %if.end, !dbg !2614

if.then:                                          ; preds = %entry
  %9 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !2615, !tbaa !1367
  %10 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !2617, !tbaa !1367
  %s_len1 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %10, i32 0, i32 2, !dbg !2618
  %11 = load i64, i64* %s_len1, align 8, !dbg !2618, !tbaa !2436
  %12 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2619, !tbaa !1367
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*, !dbg !2620
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1, !dbg !2621
  %14 = load i64, i64* %ob_size2, align 8, !dbg !2621, !tbaa !1655
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i32 0, i32 0), i64 %11, i64 %14), !dbg !2622
  store %struct._object* null, %struct._object** %retval, !dbg !2623
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2623

if.end:                                           ; preds = %entry
  %15 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !2624, !tbaa !1367
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %15, i32 0, i32 1, !dbg !2625
  %16 = load i64, i64* %s_size, align 8, !dbg !2625, !tbaa !1560
  %call3 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %16), !dbg !2626
  store %struct._object* %call3, %struct._object** %result, align 8, !dbg !2627, !tbaa !1367
  %17 = load %struct._object*, %struct._object** %result, align 8, !dbg !2628, !tbaa !1367
  %cmp4 = icmp eq %struct._object* %17, null, !dbg !2630
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2631

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2632
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2632

if.end.6:                                         ; preds = %if.end
  %18 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !2633, !tbaa !1367
  %19 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2634, !tbaa !1367
  %20 = load %struct._object*, %struct._object** %result, align 8, !dbg !2635, !tbaa !1367
  %21 = bitcast %struct._object* %20 to %struct.PyBytesObject*, !dbg !2636
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %21, i32 0, i32 2, !dbg !2637
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2638
  %call7 = call i32 @s_pack_internal(%struct.PyStructObject* %18, %struct._object* %19, i32 0, i8* %arraydecay), !dbg !2639
  %cmp8 = icmp ne i32 %call7, 0, !dbg !2640
  br i1 %cmp8, label %if.then.9, label %if.end.13, !dbg !2641

if.then.9:                                        ; preds = %if.end.6
  br label %do.body, !dbg !2642

do.body:                                          ; preds = %if.then.9
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2643
  call void @llvm.lifetime.start(i64 8, i8* %22) #1, !dbg !2643
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !591, metadata !1363), !dbg !2645
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !2646, !tbaa !1367
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !2645, !tbaa !1367
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2647, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !2649
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !2650, !tbaa !1487
  %dec = add i64 %25, -1, !dbg !2650
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2650, !tbaa !1487
  %cmp10 = icmp ne i64 %dec, 0, !dbg !2651
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !2652

if.then.11:                                       ; preds = %do.body
  br label %if.end.12, !dbg !2653

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2655, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !2657
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2657, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !2658
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2658, !tbaa !1525
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2659, !tbaa !1367
  call void %28(%struct._object* %29), !dbg !2660
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2661
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !2661
  br label %do.cond, !dbg !2663

do.cond:                                          ; preds = %if.end.12
  br label %do.end, !dbg !2664

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2666
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2666

if.end.13:                                        ; preds = %if.end.6
  %31 = load %struct._object*, %struct._object** %result, align 8, !dbg !2667, !tbaa !1367
  store %struct._object* %31, %struct._object** %retval, !dbg !2668
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2668

cleanup:                                          ; preds = %if.end.13, %do.end, %if.then.5, %if.then
  %32 = bitcast %struct._object** %result to i8*, !dbg !2669
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !2669
  %33 = bitcast %struct.PyStructObject** %soself to i8*, !dbg !2669
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !2669
  %34 = load %struct._object*, %struct._object** %retval, !dbg !2669
  ret %struct._object* %34, !dbg !2669
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
  %cleanup.dest.slot = alloca i32
  %n39 = alloca i64, align 8
  %isstring40 = alloca i32, align 4
  %p41 = alloca i8*, align 8
  store %struct.PyStructObject* %soself, %struct.PyStructObject** %soself.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %soself.addr, metadata !599, metadata !1363), !dbg !2670
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !600, metadata !1363), !dbg !2671
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !2291
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !601, metadata !1363), !dbg !2672
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !602, metadata !1363), !dbg !2673
  %0 = bitcast %struct._formatcode** %code to i8*, !dbg !2674
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2674
  call void @llvm.dbg.declare(metadata %struct._formatcode** %code, metadata !603, metadata !1363), !dbg !2675
  %1 = bitcast i64* %i to i8*, !dbg !2676
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2676
  call void @llvm.dbg.declare(metadata i64* %i, metadata !604, metadata !1363), !dbg !2677
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !2678, !tbaa !1367
  %3 = load %struct.PyStructObject*, %struct.PyStructObject** %soself.addr, align 8, !dbg !2679, !tbaa !1367
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %3, i32 0, i32 1, !dbg !2680
  %4 = load i64, i64* %s_size, align 8, !dbg !2680, !tbaa !1560
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %4, i32 1, i1 false), !dbg !2681
  %5 = load i32, i32* %offset.addr, align 4, !dbg !2682, !tbaa !2291
  %conv = sext i32 %5 to i64, !dbg !2682
  store i64 %conv, i64* %i, align 8, !dbg !2683, !tbaa !1563
  %6 = load %struct.PyStructObject*, %struct.PyStructObject** %soself.addr, align 8, !dbg !2684, !tbaa !1367
  %s_codes = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %6, i32 0, i32 3, !dbg !2685
  %7 = load %struct._formatcode*, %struct._formatcode** %s_codes, align 8, !dbg !2685, !tbaa !2445
  store %struct._formatcode* %7, %struct._formatcode** %code, align 8, !dbg !2686, !tbaa !1367
  br label %for.cond, !dbg !2687

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2688, !tbaa !1367
  %fmtdef = getelementptr inbounds %struct._formatcode, %struct._formatcode* %8, i32 0, i32 0, !dbg !2691
  %9 = load %struct._formatdef*, %struct._formatdef** %fmtdef, align 8, !dbg !2691, !tbaa !2452
  %cmp = icmp ne %struct._formatdef* %9, null, !dbg !2692
  br i1 %cmp, label %for.body, label %for.end, !dbg !2693

for.body:                                         ; preds = %for.cond
  %10 = bitcast %struct._formatdef** %e to i8*, !dbg !2694
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !2694
  call void @llvm.dbg.declare(metadata %struct._formatdef** %e, metadata !605, metadata !1363), !dbg !2695
  %11 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2696, !tbaa !1367
  %fmtdef2 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %11, i32 0, i32 0, !dbg !2697
  %12 = load %struct._formatdef*, %struct._formatdef** %fmtdef2, align 8, !dbg !2697, !tbaa !2452
  store %struct._formatdef* %12, %struct._formatdef** %e, align 8, !dbg !2695, !tbaa !1367
  %13 = bitcast i8** %res to i8*, !dbg !2698
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !2698
  call void @llvm.dbg.declare(metadata i8** %res, metadata !609, metadata !1363), !dbg !2699
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !2700, !tbaa !1367
  %15 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2701, !tbaa !1367
  %offset3 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %15, i32 0, i32 1, !dbg !2702
  %16 = load i64, i64* %offset3, align 8, !dbg !2702, !tbaa !2465
  %add.ptr = getelementptr i8, i8* %14, i64 %16, !dbg !2703
  store i8* %add.ptr, i8** %res, align 8, !dbg !2699, !tbaa !1367
  %17 = bitcast i64* %j to i8*, !dbg !2704
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !2704
  call void @llvm.dbg.declare(metadata i64* %j, metadata !610, metadata !1363), !dbg !2705
  %18 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2706, !tbaa !1367
  %repeat = getelementptr inbounds %struct._formatcode, %struct._formatcode* %18, i32 0, i32 3, !dbg !2707
  %19 = load i64, i64* %repeat, align 8, !dbg !2707, !tbaa !2471
  store i64 %19, i64* %j, align 8, !dbg !2705, !tbaa !1563
  br label %while.cond, !dbg !2708

while.cond:                                       ; preds = %cleanup.cont.117, %for.body
  %20 = load i64, i64* %j, align 8, !dbg !2709, !tbaa !1563
  %dec = add i64 %20, -1, !dbg !2709
  store i64 %dec, i64* %j, align 8, !dbg !2709, !tbaa !1563
  %tobool = icmp ne i64 %20, 0, !dbg !2708
  br i1 %tobool, label %while.body, label %while.end, !dbg !2708

while.body:                                       ; preds = %while.cond
  %21 = bitcast %struct._object** %v to i8*, !dbg !2712
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !2712
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !611, metadata !1363), !dbg !2713
  %22 = load i64, i64* %i, align 8, !dbg !2714, !tbaa !1563
  %inc = add i64 %22, 1, !dbg !2714
  store i64 %inc, i64* %i, align 8, !dbg !2714, !tbaa !1563
  %23 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2715, !tbaa !1367
  %24 = bitcast %struct._object* %23 to %struct.PyTupleObject*, !dbg !2716
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1, !dbg !2717
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %22, !dbg !2718
  %25 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2718, !tbaa !1367
  store %struct._object* %25, %struct._object** %v, align 8, !dbg !2713, !tbaa !1367
  %26 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !2719, !tbaa !1367
  %format = getelementptr inbounds %struct._formatdef, %struct._formatdef* %26, i32 0, i32 0, !dbg !2720
  %27 = load i8, i8* %format, align 1, !dbg !2720, !tbaa !1396
  %conv4 = sext i8 %27 to i32, !dbg !2719
  %cmp5 = icmp eq i32 %conv4, 115, !dbg !2721
  br i1 %cmp5, label %if.then, label %if.else.33, !dbg !2722

if.then:                                          ; preds = %while.body
  %28 = bitcast i64* %n to i8*, !dbg !2723
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !2723
  call void @llvm.dbg.declare(metadata i64* %n, metadata !613, metadata !1363), !dbg !2724
  %29 = bitcast i32* %isstring to i8*, !dbg !2725
  call void @llvm.lifetime.start(i64 4, i8* %29) #1, !dbg !2725
  call void @llvm.dbg.declare(metadata i32* %isstring, metadata !616, metadata !1363), !dbg !2726
  %30 = bitcast i8** %p to i8*, !dbg !2727
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !2727
  call void @llvm.dbg.declare(metadata i8** %p, metadata !617, metadata !1363), !dbg !2728
  %31 = load %struct._object*, %struct._object** %v, align 8, !dbg !2729, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !2730
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2730, !tbaa !1377
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 19, !dbg !2731
  %33 = load i64, i64* %tp_flags, align 8, !dbg !2731, !tbaa !2732
  %and = and i64 %33, 134217728, !dbg !2733
  %cmp7 = icmp ne i64 %and, 0, !dbg !2734
  %conv8 = zext i1 %cmp7 to i32, !dbg !2734
  store i32 %conv8, i32* %isstring, align 4, !dbg !2735, !tbaa !2291
  %34 = load i32, i32* %isstring, align 4, !dbg !2736, !tbaa !2291
  %tobool9 = icmp ne i32 %34, 0, !dbg !2736
  br i1 %tobool9, label %if.end, label %land.lhs.true, !dbg !2738

land.lhs.true:                                    ; preds = %if.then
  %35 = load %struct._object*, %struct._object** %v, align 8, !dbg !2739, !tbaa !1367
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2741
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !2741, !tbaa !1377
  %cmp11 = icmp eq %struct._typeobject* %36, @PyByteArray_Type, !dbg !2742
  br i1 %cmp11, label %if.end, label %lor.lhs.false, !dbg !2743

lor.lhs.false:                                    ; preds = %land.lhs.true
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !2744, !tbaa !1367
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !2746
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8, !dbg !2746, !tbaa !1377
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %38, %struct._typeobject* @PyByteArray_Type), !dbg !2747
  %tobool14 = icmp ne i32 %call, 0, !dbg !2747
  br i1 %tobool14, label %if.end, label %if.then.15, !dbg !2748

if.then.15:                                       ; preds = %lor.lhs.false
  %39 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !2749, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0)), !dbg !2751
  store i32 -1, i32* %retval, !dbg !2752
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2752

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true, %if.then
  %40 = load i32, i32* %isstring, align 4, !dbg !2753, !tbaa !2291
  %tobool16 = icmp ne i32 %40, 0, !dbg !2753
  br i1 %tobool16, label %if.then.17, label %if.else, !dbg !2755

if.then.17:                                       ; preds = %if.end
  %41 = load %struct._object*, %struct._object** %v, align 8, !dbg !2756, !tbaa !1367
  %42 = bitcast %struct._object* %41 to %struct.PyVarObject*, !dbg !2758
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %42, i32 0, i32 1, !dbg !2759
  %43 = load i64, i64* %ob_size, align 8, !dbg !2759, !tbaa !1655
  store i64 %43, i64* %n, align 8, !dbg !2760, !tbaa !1563
  %44 = load %struct._object*, %struct._object** %v, align 8, !dbg !2761, !tbaa !1367
  %45 = bitcast %struct._object* %44 to %struct.PyBytesObject*, !dbg !2762
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %45, i32 0, i32 2, !dbg !2763
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2764
  store i8* %arraydecay, i8** %p, align 8, !dbg !2765, !tbaa !1367
  br label %if.end.21, !dbg !2766

if.else:                                          ; preds = %if.end
  %46 = load %struct._object*, %struct._object** %v, align 8, !dbg !2767, !tbaa !1367
  %47 = bitcast %struct._object* %46 to %struct.PyVarObject*, !dbg !2769
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %47, i32 0, i32 1, !dbg !2770
  %48 = load i64, i64* %ob_size18, align 8, !dbg !2770, !tbaa !1655
  store i64 %48, i64* %n, align 8, !dbg !2771, !tbaa !1563
  %49 = load %struct._object*, %struct._object** %v, align 8, !dbg !2772, !tbaa !1367
  %50 = bitcast %struct._object* %49 to %struct.PyVarObject*, !dbg !2773
  %ob_size19 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %50, i32 0, i32 1, !dbg !2774
  %51 = load i64, i64* %ob_size19, align 8, !dbg !2774, !tbaa !1655
  %tobool20 = icmp ne i64 %51, 0, !dbg !2775
  br i1 %tobool20, label %cond.true, label %cond.false, !dbg !2775

cond.true:                                        ; preds = %if.else
  %52 = load %struct._object*, %struct._object** %v, align 8, !dbg !2776, !tbaa !1367
  %53 = bitcast %struct._object* %52 to %struct.PyByteArrayObject*, !dbg !2778
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %53, i32 0, i32 3, !dbg !2779
  %54 = load i8*, i8** %ob_start, align 8, !dbg !2779, !tbaa !2780
  br label %cond.end, !dbg !2775

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !2782

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %54, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ], !dbg !2775
  store i8* %cond, i8** %p, align 8, !dbg !2784, !tbaa !1367
  br label %if.end.21

if.end.21:                                        ; preds = %cond.end, %if.then.17
  %55 = load i64, i64* %n, align 8, !dbg !2787, !tbaa !1563
  %56 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2789, !tbaa !1367
  %size = getelementptr inbounds %struct._formatcode, %struct._formatcode* %56, i32 0, i32 2, !dbg !2790
  %57 = load i64, i64* %size, align 8, !dbg !2790, !tbaa !2486
  %cmp22 = icmp sgt i64 %55, %57, !dbg !2791
  br i1 %cmp22, label %if.then.24, label %if.end.26, !dbg !2792

if.then.24:                                       ; preds = %if.end.21
  %58 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2793, !tbaa !1367
  %size25 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %58, i32 0, i32 2, !dbg !2794
  %59 = load i64, i64* %size25, align 8, !dbg !2794, !tbaa !2486
  store i64 %59, i64* %n, align 8, !dbg !2795, !tbaa !1563
  br label %if.end.26, !dbg !2796

if.end.26:                                        ; preds = %if.then.24, %if.end.21
  %60 = load i64, i64* %n, align 8, !dbg !2797, !tbaa !1563
  %cmp27 = icmp sgt i64 %60, 0, !dbg !2799
  br i1 %cmp27, label %if.then.29, label %if.end.30, !dbg !2800

if.then.29:                                       ; preds = %if.end.26
  %61 = load i8*, i8** %res, align 8, !dbg !2801, !tbaa !1367
  %62 = load i8*, i8** %p, align 8, !dbg !2802, !tbaa !1367
  %63 = load i64, i64* %n, align 8, !dbg !2803, !tbaa !1563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 %63, i32 1, i1 false), !dbg !2804
  br label %if.end.30, !dbg !2804

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  store i32 0, i32* %cleanup.dest.slot, !dbg !2805
  br label %cleanup, !dbg !2805

cleanup:                                          ; preds = %if.end.30, %if.then.15
  %64 = bitcast i8** %p to i8*, !dbg !2806
  call void @llvm.lifetime.end(i64 8, i8* %64) #1, !dbg !2806
  %65 = bitcast i32* %isstring to i8*, !dbg !2806
  call void @llvm.lifetime.end(i64 4, i8* %65) #1, !dbg !2806
  %66 = bitcast i64* %n to i8*, !dbg !2806
  call void @llvm.lifetime.end(i64 8, i8* %66) #1, !dbg !2806
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.112, !dbg !2808

if.else.33:                                       ; preds = %while.body
  %67 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !2809, !tbaa !1367
  %format34 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %67, i32 0, i32 0, !dbg !2810
  %68 = load i8, i8* %format34, align 1, !dbg !2810, !tbaa !1396
  %conv35 = sext i8 %68 to i32, !dbg !2809
  %cmp36 = icmp eq i32 %conv35, 112, !dbg !2811
  br i1 %cmp36, label %if.then.38, label %if.else.95, !dbg !2812

if.then.38:                                       ; preds = %if.else.33
  %69 = bitcast i64* %n39 to i8*, !dbg !2813
  call void @llvm.lifetime.start(i64 8, i8* %69) #1, !dbg !2813
  call void @llvm.dbg.declare(metadata i64* %n39, metadata !618, metadata !1363), !dbg !2814
  %70 = bitcast i32* %isstring40 to i8*, !dbg !2815
  call void @llvm.lifetime.start(i64 4, i8* %70) #1, !dbg !2815
  call void @llvm.dbg.declare(metadata i32* %isstring40, metadata !621, metadata !1363), !dbg !2816
  %71 = bitcast i8** %p41 to i8*, !dbg !2817
  call void @llvm.lifetime.start(i64 8, i8* %71) #1, !dbg !2817
  call void @llvm.dbg.declare(metadata i8** %p41, metadata !622, metadata !1363), !dbg !2818
  %72 = load %struct._object*, %struct._object** %v, align 8, !dbg !2819, !tbaa !1367
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1, !dbg !2820
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8, !dbg !2820, !tbaa !1377
  %tp_flags43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 19, !dbg !2821
  %74 = load i64, i64* %tp_flags43, align 8, !dbg !2821, !tbaa !2732
  %and44 = and i64 %74, 134217728, !dbg !2822
  %cmp45 = icmp ne i64 %and44, 0, !dbg !2823
  %conv46 = zext i1 %cmp45 to i32, !dbg !2823
  store i32 %conv46, i32* %isstring40, align 4, !dbg !2824, !tbaa !2291
  %75 = load i32, i32* %isstring40, align 4, !dbg !2825, !tbaa !2291
  %tobool47 = icmp ne i32 %75, 0, !dbg !2825
  br i1 %tobool47, label %if.end.57, label %land.lhs.true.48, !dbg !2827

land.lhs.true.48:                                 ; preds = %if.then.38
  %76 = load %struct._object*, %struct._object** %v, align 8, !dbg !2828, !tbaa !1367
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1, !dbg !2830
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !2830, !tbaa !1377
  %cmp50 = icmp eq %struct._typeobject* %77, @PyByteArray_Type, !dbg !2831
  br i1 %cmp50, label %if.end.57, label %lor.lhs.false.52, !dbg !2832

lor.lhs.false.52:                                 ; preds = %land.lhs.true.48
  %78 = load %struct._object*, %struct._object** %v, align 8, !dbg !2833, !tbaa !1367
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1, !dbg !2835
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !2835, !tbaa !1377
  %call54 = call i32 @PyType_IsSubtype(%struct._typeobject* %79, %struct._typeobject* @PyByteArray_Type), !dbg !2836
  %tobool55 = icmp ne i32 %call54, 0, !dbg !2836
  br i1 %tobool55, label %if.end.57, label %if.then.56, !dbg !2837

if.then.56:                                       ; preds = %lor.lhs.false.52
  %80 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !2838, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0)), !dbg !2840
  store i32 -1, i32* %retval, !dbg !2841
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !2841

if.end.57:                                        ; preds = %lor.lhs.false.52, %land.lhs.true.48, %if.then.38
  %81 = load i32, i32* %isstring40, align 4, !dbg !2842, !tbaa !2291
  %tobool58 = icmp ne i32 %81, 0, !dbg !2842
  br i1 %tobool58, label %if.then.59, label %if.else.63, !dbg !2844

if.then.59:                                       ; preds = %if.end.57
  %82 = load %struct._object*, %struct._object** %v, align 8, !dbg !2845, !tbaa !1367
  %83 = bitcast %struct._object* %82 to %struct.PyVarObject*, !dbg !2847
  %ob_size60 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %83, i32 0, i32 1, !dbg !2848
  %84 = load i64, i64* %ob_size60, align 8, !dbg !2848, !tbaa !1655
  store i64 %84, i64* %n39, align 8, !dbg !2849, !tbaa !1563
  %85 = load %struct._object*, %struct._object** %v, align 8, !dbg !2850, !tbaa !1367
  %86 = bitcast %struct._object* %85 to %struct.PyBytesObject*, !dbg !2851
  %ob_sval61 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %86, i32 0, i32 2, !dbg !2852
  %arraydecay62 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval61, i32 0, i32 0, !dbg !2853
  store i8* %arraydecay62, i8** %p41, align 8, !dbg !2854, !tbaa !1367
  br label %if.end.72, !dbg !2855

if.else.63:                                       ; preds = %if.end.57
  %87 = load %struct._object*, %struct._object** %v, align 8, !dbg !2856, !tbaa !1367
  %88 = bitcast %struct._object* %87 to %struct.PyVarObject*, !dbg !2858
  %ob_size64 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %88, i32 0, i32 1, !dbg !2859
  %89 = load i64, i64* %ob_size64, align 8, !dbg !2859, !tbaa !1655
  store i64 %89, i64* %n39, align 8, !dbg !2860, !tbaa !1563
  %90 = load %struct._object*, %struct._object** %v, align 8, !dbg !2861, !tbaa !1367
  %91 = bitcast %struct._object* %90 to %struct.PyVarObject*, !dbg !2862
  %ob_size65 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %91, i32 0, i32 1, !dbg !2863
  %92 = load i64, i64* %ob_size65, align 8, !dbg !2863, !tbaa !1655
  %tobool66 = icmp ne i64 %92, 0, !dbg !2864
  br i1 %tobool66, label %cond.true.67, label %cond.false.69, !dbg !2864

cond.true.67:                                     ; preds = %if.else.63
  %93 = load %struct._object*, %struct._object** %v, align 8, !dbg !2865, !tbaa !1367
  %94 = bitcast %struct._object* %93 to %struct.PyByteArrayObject*, !dbg !2867
  %ob_start68 = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %94, i32 0, i32 3, !dbg !2868
  %95 = load i8*, i8** %ob_start68, align 8, !dbg !2868, !tbaa !2780
  br label %cond.end.70, !dbg !2864

cond.false.69:                                    ; preds = %if.else.63
  br label %cond.end.70, !dbg !2869

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.67
  %cond71 = phi i8* [ %95, %cond.true.67 ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false.69 ], !dbg !2864
  store i8* %cond71, i8** %p41, align 8, !dbg !2871, !tbaa !1367
  br label %if.end.72

if.end.72:                                        ; preds = %cond.end.70, %if.then.59
  %96 = load i64, i64* %n39, align 8, !dbg !2874, !tbaa !1563
  %97 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2876, !tbaa !1367
  %size73 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %97, i32 0, i32 2, !dbg !2877
  %98 = load i64, i64* %size73, align 8, !dbg !2877, !tbaa !2486
  %sub = sub i64 %98, 1, !dbg !2878
  %cmp74 = icmp sgt i64 %96, %sub, !dbg !2879
  br i1 %cmp74, label %if.then.76, label %if.end.79, !dbg !2880

if.then.76:                                       ; preds = %if.end.72
  %99 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2881, !tbaa !1367
  %size77 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %99, i32 0, i32 2, !dbg !2882
  %100 = load i64, i64* %size77, align 8, !dbg !2882, !tbaa !2486
  %sub78 = sub i64 %100, 1, !dbg !2883
  store i64 %sub78, i64* %n39, align 8, !dbg !2884, !tbaa !1563
  br label %if.end.79, !dbg !2885

if.end.79:                                        ; preds = %if.then.76, %if.end.72
  %101 = load i64, i64* %n39, align 8, !dbg !2886, !tbaa !1563
  %cmp80 = icmp sgt i64 %101, 0, !dbg !2888
  br i1 %cmp80, label %if.then.82, label %if.end.84, !dbg !2889

if.then.82:                                       ; preds = %if.end.79
  %102 = load i8*, i8** %res, align 8, !dbg !2890, !tbaa !1367
  %add.ptr83 = getelementptr i8, i8* %102, i64 1, !dbg !2891
  %103 = load i8*, i8** %p41, align 8, !dbg !2892, !tbaa !1367
  %104 = load i64, i64* %n39, align 8, !dbg !2893, !tbaa !1563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr83, i8* %103, i64 %104, i32 1, i1 false), !dbg !2894
  br label %if.end.84, !dbg !2894

if.end.84:                                        ; preds = %if.then.82, %if.end.79
  %105 = load i64, i64* %n39, align 8, !dbg !2895, !tbaa !1563
  %cmp85 = icmp sgt i64 %105, 255, !dbg !2897
  br i1 %cmp85, label %if.then.87, label %if.end.88, !dbg !2898

if.then.87:                                       ; preds = %if.end.84
  store i64 255, i64* %n39, align 8, !dbg !2899, !tbaa !1563
  br label %if.end.88, !dbg !2900

if.end.88:                                        ; preds = %if.then.87, %if.end.84
  %106 = load i64, i64* %n39, align 8, !dbg !2901, !tbaa !1563
  %conv89 = trunc i64 %106 to i8, !dbg !2902
  %107 = load i8*, i8** %res, align 8, !dbg !2903, !tbaa !1367
  store i8 %conv89, i8* %107, align 1, !dbg !2904, !tbaa !2498
  store i32 0, i32* %cleanup.dest.slot, !dbg !2905
  br label %cleanup.90, !dbg !2905

cleanup.90:                                       ; preds = %if.end.88, %if.then.56
  %108 = bitcast i8** %p41 to i8*, !dbg !2906
  call void @llvm.lifetime.end(i64 8, i8* %108) #1, !dbg !2906
  %109 = bitcast i32* %isstring40 to i8*, !dbg !2906
  call void @llvm.lifetime.end(i64 4, i8* %109) #1, !dbg !2906
  %110 = bitcast i64* %n39 to i8*, !dbg !2906
  call void @llvm.lifetime.end(i64 8, i8* %110) #1, !dbg !2906
  %cleanup.dest.93 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.90
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.93, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.94, label %NewDefault.1

cleanup.cont.94:                                  ; preds = %LeafBlock.2
  br label %if.end.111, !dbg !2908

if.else.95:                                       ; preds = %if.else.33
  %111 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !2909, !tbaa !1367
  %pack = getelementptr inbounds %struct._formatdef, %struct._formatdef* %111, i32 0, i32 4, !dbg !2912
  %112 = load i32 (i8*, %struct._object*, %struct._formatdef*)*, i32 (i8*, %struct._object*, %struct._formatdef*)** %pack, align 8, !dbg !2912, !tbaa !1457
  %113 = load i8*, i8** %res, align 8, !dbg !2913, !tbaa !1367
  %114 = load %struct._object*, %struct._object** %v, align 8, !dbg !2914, !tbaa !1367
  %115 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !2915, !tbaa !1367
  %call96 = call i32 %112(i8* %113, %struct._object* %114, %struct._formatdef* %115), !dbg !2909
  %cmp97 = icmp slt i32 %call96, 0, !dbg !2916
  br i1 %cmp97, label %if.then.99, label %if.end.110, !dbg !2917

if.then.99:                                       ; preds = %if.else.95
  %116 = load %struct._object*, %struct._object** %v, align 8, !dbg !2918, !tbaa !1367
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1, !dbg !2921
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8, !dbg !2921, !tbaa !1377
  %tp_flags101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 19, !dbg !2922
  %118 = load i64, i64* %tp_flags101, align 8, !dbg !2922, !tbaa !2732
  %and102 = and i64 %118, 16777216, !dbg !2923
  %cmp103 = icmp ne i64 %and102, 0, !dbg !2924
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.109, !dbg !2925

land.lhs.true.105:                                ; preds = %if.then.99
  %119 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2926, !tbaa !1367
  %call106 = call i32 @PyErr_ExceptionMatches(%struct._object* %119), !dbg !2928
  %tobool107 = icmp ne i32 %call106, 0, !dbg !2928
  br i1 %tobool107, label %if.then.108, label %if.end.109, !dbg !2929

if.then.108:                                      ; preds = %land.lhs.true.105
  %120 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !2930, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0)), !dbg !2931
  br label %if.end.109, !dbg !2931

if.end.109:                                       ; preds = %if.then.108, %land.lhs.true.105, %if.then.99
  store i32 -1, i32* %retval, !dbg !2932
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115, !dbg !2932

if.end.110:                                       ; preds = %if.else.95
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %cleanup.cont.94
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %cleanup.cont
  %121 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2933, !tbaa !1367
  %size113 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %121, i32 0, i32 2, !dbg !2934
  %122 = load i64, i64* %size113, align 8, !dbg !2934, !tbaa !2486
  %123 = load i8*, i8** %res, align 8, !dbg !2935, !tbaa !1367
  %add.ptr114 = getelementptr i8, i8* %123, i64 %122, !dbg !2935
  store i8* %add.ptr114, i8** %res, align 8, !dbg !2935, !tbaa !1367
  store i32 0, i32* %cleanup.dest.slot, !dbg !2936
  br label %cleanup.115, !dbg !2936

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.115

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.115

cleanup.115:                                      ; preds = %NewDefault.1, %NewDefault, %if.end.112, %if.end.109
  %124 = bitcast %struct._object** %v to i8*, !dbg !2937
  call void @llvm.lifetime.end(i64 8, i8* %124) #1, !dbg !2937
  %cleanup.dest.116 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.5

LeafBlock.5:                                      ; preds = %cleanup.115
  %SwitchLeaf6 = icmp eq i32 %cleanup.dest.116, 0
  br i1 %SwitchLeaf6, label %cleanup.cont.117, label %NewDefault.4

cleanup.cont.117:                                 ; preds = %LeafBlock.5
  br label %while.cond, !dbg !2708

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !2938
  br label %cleanup.118, !dbg !2938

NewDefault.4:                                     ; preds = %LeafBlock.5
  br label %cleanup.118

cleanup.118:                                      ; preds = %NewDefault.4, %while.end
  %125 = bitcast i64* %j to i8*, !dbg !2939
  call void @llvm.lifetime.end(i64 8, i8* %125) #1, !dbg !2939
  %126 = bitcast i8** %res to i8*, !dbg !2939
  call void @llvm.lifetime.end(i64 8, i8* %126) #1, !dbg !2939
  %127 = bitcast %struct._formatdef** %e to i8*, !dbg !2939
  call void @llvm.lifetime.end(i64 8, i8* %127) #1, !dbg !2939
  %cleanup.dest.121 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.8

LeafBlock.8:                                      ; preds = %cleanup.118
  %SwitchLeaf9 = icmp eq i32 %cleanup.dest.121, 0
  br i1 %SwitchLeaf9, label %cleanup.cont.122, label %NewDefault.7

cleanup.cont.122:                                 ; preds = %LeafBlock.8
  br label %for.inc, !dbg !2940

for.inc:                                          ; preds = %cleanup.cont.122
  %128 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !2941, !tbaa !1367
  %incdec.ptr = getelementptr %struct._formatcode, %struct._formatcode* %128, i32 1, !dbg !2941
  store %struct._formatcode* %incdec.ptr, %struct._formatcode** %code, align 8, !dbg !2941, !tbaa !1367
  br label %for.cond, !dbg !2942

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !2943
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.123, !dbg !2943

NewDefault.7:                                     ; preds = %LeafBlock.8
  br label %cleanup.123

cleanup.123:                                      ; preds = %NewDefault.7, %for.end
  %129 = bitcast i64* %i to i8*, !dbg !2944
  call void @llvm.lifetime.end(i64 8, i8* %129) #1, !dbg !2944
  %130 = bitcast %struct._formatcode** %code to i8*, !dbg !2944
  call void @llvm.lifetime.end(i64 8, i8* %130) #1, !dbg !2944
  %131 = load i32, i32* %retval, !dbg !2944
  ret i32 %131, !dbg !2944
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #3

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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !642, metadata !1363), !dbg !2945
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !643, metadata !1363), !dbg !2946
  %0 = bitcast %struct.PyStructObject** %soself to i8*, !dbg !2947
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2947
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %soself, metadata !644, metadata !1363), !dbg !2948
  %1 = bitcast i8** %buffer to i8*, !dbg !2949
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2949
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !645, metadata !1363), !dbg !2950
  %2 = bitcast i64* %buffer_len to i8*, !dbg !2951
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2951
  call void @llvm.dbg.declare(metadata i64* %buffer_len, metadata !646, metadata !1363), !dbg !2952
  %3 = bitcast i64* %offset to i8*, !dbg !2951
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2951
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !647, metadata !1363), !dbg !2953
  %4 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2954, !tbaa !1367
  %5 = bitcast %struct._object* %4 to %struct.PyStructObject*, !dbg !2955
  store %struct.PyStructObject* %5, %struct.PyStructObject** %soself, align 8, !dbg !2956, !tbaa !1367
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2957, !tbaa !1367
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*, !dbg !2959
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1, !dbg !2960
  %8 = load i64, i64* %ob_size, align 8, !dbg !2960, !tbaa !1655
  %9 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !2961, !tbaa !1367
  %s_len = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %9, i32 0, i32 2, !dbg !2962
  %10 = load i64, i64* %s_len, align 8, !dbg !2962, !tbaa !2436
  %add = add i64 %10, 2, !dbg !2963
  %cmp = icmp ne i64 %8, %add, !dbg !2964
  br i1 %cmp, label %if.then, label %if.end.13, !dbg !2965

if.then:                                          ; preds = %entry
  %11 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2966, !tbaa !1367
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*, !dbg !2969
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1, !dbg !2970
  %13 = load i64, i64* %ob_size1, align 8, !dbg !2970, !tbaa !1655
  %cmp2 = icmp eq i64 %13, 0, !dbg !2971
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2972

if.then.3:                                        ; preds = %if.then
  %14 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !2973, !tbaa !1367
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0)), !dbg !2975
  br label %if.end.12, !dbg !2976

if.else:                                          ; preds = %if.then
  %15 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2977, !tbaa !1367
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*, !dbg !2979
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1, !dbg !2980
  %17 = load i64, i64* %ob_size4, align 8, !dbg !2980, !tbaa !1655
  %cmp5 = icmp eq i64 %17, 1, !dbg !2981
  br i1 %cmp5, label %if.then.6, label %if.else.8, !dbg !2982

if.then.6:                                        ; preds = %if.else
  %18 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !2983, !tbaa !1367
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0)), !dbg !2985
  br label %if.end, !dbg !2986

if.else.8:                                        ; preds = %if.else
  %19 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !2987, !tbaa !1367
  %20 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !2989, !tbaa !1367
  %s_len9 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %20, i32 0, i32 2, !dbg !2990
  %21 = load i64, i64* %s_len9, align 8, !dbg !2990, !tbaa !2436
  %22 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2991, !tbaa !1367
  %23 = bitcast %struct._object* %22 to %struct.PyVarObject*, !dbg !2992
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1, !dbg !2993
  %24 = load i64, i64* %ob_size10, align 8, !dbg !2993, !tbaa !1655
  %sub = sub i64 %24, 2, !dbg !2994
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i32 0, i32 0), i64 %21, i64 %sub), !dbg !2995
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.3
  store %struct._object* null, %struct._object** %retval, !dbg !2996
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2996

if.end.13:                                        ; preds = %entry
  %25 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2997, !tbaa !1367
  %26 = bitcast %struct._object* %25 to %struct.PyTupleObject*, !dbg !2999
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %26, i32 0, i32 1, !dbg !3000
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !3001
  %27 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3001, !tbaa !1367
  %call14 = call i32 @PyObject_AsWriteBuffer(%struct._object* %27, i8** %buffer, i64* %buffer_len), !dbg !3002
  %cmp15 = icmp eq i32 %call14, -1, !dbg !3003
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !3004

if.then.16:                                       ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval, !dbg !3005
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3005

if.end.17:                                        ; preds = %if.end.13
  %28 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3007, !tbaa !1367
  %29 = bitcast %struct._object* %28 to %struct.PyTupleObject*, !dbg !3008
  %ob_item18 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1, !dbg !3009
  %arrayidx19 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item18, i32 0, i64 1, !dbg !3010
  %30 = load %struct._object*, %struct._object** %arrayidx19, align 8, !dbg !3010, !tbaa !1367
  %31 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !3011, !tbaa !1367
  %call20 = call i64 @PyNumber_AsSsize_t(%struct._object* %30, %struct._object* %31), !dbg !3012
  store i64 %call20, i64* %offset, align 8, !dbg !3013, !tbaa !1563
  %32 = load i64, i64* %offset, align 8, !dbg !3014, !tbaa !1563
  %cmp21 = icmp eq i64 %32, -1, !dbg !3016
  br i1 %cmp21, label %land.lhs.true, label %if.end.24, !dbg !3017

land.lhs.true:                                    ; preds = %if.end.17
  %call22 = call %struct._object* @PyErr_Occurred(), !dbg !3018
  %tobool = icmp ne %struct._object* %call22, null, !dbg !3018
  br i1 %tobool, label %if.then.23, label %if.end.24, !dbg !3020

if.then.23:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !3021
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3021

if.end.24:                                        ; preds = %land.lhs.true, %if.end.17
  %33 = load i64, i64* %offset, align 8, !dbg !3022, !tbaa !1563
  %cmp25 = icmp slt i64 %33, 0, !dbg !3024
  br i1 %cmp25, label %if.then.26, label %if.end.28, !dbg !3025

if.then.26:                                       ; preds = %if.end.24
  %34 = load i64, i64* %buffer_len, align 8, !dbg !3026, !tbaa !1563
  %35 = load i64, i64* %offset, align 8, !dbg !3027, !tbaa !1563
  %add27 = add i64 %35, %34, !dbg !3027
  store i64 %add27, i64* %offset, align 8, !dbg !3027, !tbaa !1563
  br label %if.end.28, !dbg !3028

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %36 = load i64, i64* %offset, align 8, !dbg !3029, !tbaa !1563
  %cmp29 = icmp slt i64 %36, 0, !dbg !3031
  br i1 %cmp29, label %if.then.32, label %lor.lhs.false, !dbg !3032

lor.lhs.false:                                    ; preds = %if.end.28
  %37 = load i64, i64* %buffer_len, align 8, !dbg !3033, !tbaa !1563
  %38 = load i64, i64* %offset, align 8, !dbg !3035, !tbaa !1563
  %sub30 = sub i64 %37, %38, !dbg !3036
  %39 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3037, !tbaa !1367
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %39, i32 0, i32 1, !dbg !3038
  %40 = load i64, i64* %s_size, align 8, !dbg !3038, !tbaa !1560
  %cmp31 = icmp slt i64 %sub30, %40, !dbg !3039
  br i1 %cmp31, label %if.then.32, label %if.end.35, !dbg !3040

if.then.32:                                       ; preds = %lor.lhs.false, %if.end.28
  %41 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !3041, !tbaa !1367
  %42 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3043, !tbaa !1367
  %s_size33 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %42, i32 0, i32 1, !dbg !3044
  %43 = load i64, i64* %s_size33, align 8, !dbg !3044, !tbaa !1560
  %call34 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i32 0, i32 0), i64 %43), !dbg !3045
  store %struct._object* null, %struct._object** %retval, !dbg !3046
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3046

if.end.35:                                        ; preds = %lor.lhs.false
  %44 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3047, !tbaa !1367
  %45 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3049, !tbaa !1367
  %46 = load i8*, i8** %buffer, align 8, !dbg !3050, !tbaa !1367
  %47 = load i64, i64* %offset, align 8, !dbg !3051, !tbaa !1563
  %add.ptr = getelementptr i8, i8* %46, i64 %47, !dbg !3052
  %call36 = call i32 @s_pack_internal(%struct.PyStructObject* %44, %struct._object* %45, i32 2, i8* %add.ptr), !dbg !3053
  %cmp37 = icmp ne i32 %call36, 0, !dbg !3054
  br i1 %cmp37, label %if.then.38, label %if.end.39, !dbg !3055

if.then.38:                                       ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval, !dbg !3056
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3056

if.end.39:                                        ; preds = %if.end.35
  %48 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3058, !tbaa !1487
  %inc = add i64 %48, 1, !dbg !3058
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3058, !tbaa !1487
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3059
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3059

cleanup:                                          ; preds = %if.end.39, %if.then.38, %if.then.32, %if.then.23, %if.then.16, %if.end.12
  %49 = bitcast i64* %offset to i8*, !dbg !3060
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !3060
  %50 = bitcast i64* %buffer_len to i8*, !dbg !3060
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !3060
  %51 = bitcast i8** %buffer to i8*, !dbg !3060
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !3060
  %52 = bitcast %struct.PyStructObject** %soself to i8*, !dbg !3060
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !3060
  %53 = load %struct._object*, %struct._object** %retval, !dbg !3060
  ret %struct._object* %53, !dbg !3060
}

declare i32 @PyObject_AsWriteBuffer(%struct._object*, i8**, i64*) #3

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_unpack(%struct._object* %self, %struct._object* %input) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %input.addr = alloca %struct._object*, align 8
  %vbuf = alloca %struct.bufferinfo, align 8
  %result = alloca %struct._object*, align 8
  %soself = alloca %struct.PyStructObject*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !660, metadata !1363), !dbg !3061
  store %struct._object* %input, %struct._object** %input.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %input.addr, metadata !661, metadata !1363), !dbg !3062
  %0 = bitcast %struct.bufferinfo* %vbuf to i8*, !dbg !3063
  call void @llvm.lifetime.start(i64 80, i8* %0) #1, !dbg !3063
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %vbuf, metadata !662, metadata !1363), !dbg !3064
  %1 = bitcast %struct._object** %result to i8*, !dbg !3065
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3065
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !663, metadata !1363), !dbg !3066
  %2 = bitcast %struct.PyStructObject** %soself to i8*, !dbg !3067
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3067
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %soself, metadata !664, metadata !1363), !dbg !3068
  %3 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3069, !tbaa !1367
  %4 = bitcast %struct._object* %3 to %struct.PyStructObject*, !dbg !3070
  store %struct.PyStructObject* %4, %struct.PyStructObject** %soself, align 8, !dbg !3068, !tbaa !1367
  %5 = load %struct._object*, %struct._object** %input.addr, align 8, !dbg !3071, !tbaa !1367
  %call = call i32 @PyObject_GetBuffer(%struct._object* %5, %struct.bufferinfo* %vbuf, i32 0), !dbg !3073
  %cmp = icmp slt i32 %call, 0, !dbg !3074
  br i1 %cmp, label %if.then, label %if.end, !dbg !3075

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3076
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3076

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 2, !dbg !3077
  %6 = load i64, i64* %len, align 8, !dbg !3077, !tbaa !3079
  %7 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3080, !tbaa !1367
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %7, i32 0, i32 1, !dbg !3081
  %8 = load i64, i64* %s_size, align 8, !dbg !3081, !tbaa !1560
  %cmp1 = icmp ne i64 %6, %8, !dbg !3082
  br i1 %cmp1, label %if.then.2, label %if.end.5, !dbg !3083

if.then.2:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !3084, !tbaa !1367
  %10 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3086, !tbaa !1367
  %s_size3 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %10, i32 0, i32 1, !dbg !3087
  %11 = load i64, i64* %s_size3, align 8, !dbg !3087, !tbaa !1560
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0), i64 %11), !dbg !3088
  call void @PyBuffer_Release(%struct.bufferinfo* %vbuf), !dbg !3089
  store %struct._object* null, %struct._object** %retval, !dbg !3090
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3090

if.end.5:                                         ; preds = %if.end
  %12 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3091, !tbaa !1367
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 0, !dbg !3092
  %13 = load i8*, i8** %buf, align 8, !dbg !3092, !tbaa !3093
  %call6 = call %struct._object* @s_unpack_internal(%struct.PyStructObject* %12, i8* %13), !dbg !3094
  store %struct._object* %call6, %struct._object** %result, align 8, !dbg !3095, !tbaa !1367
  call void @PyBuffer_Release(%struct.bufferinfo* %vbuf), !dbg !3096
  %14 = load %struct._object*, %struct._object** %result, align 8, !dbg !3097, !tbaa !1367
  store %struct._object* %14, %struct._object** %retval, !dbg !3098
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3098

cleanup:                                          ; preds = %if.end.5, %if.then.2, %if.then
  %15 = bitcast %struct.PyStructObject** %soself to i8*, !dbg !3099
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !3099
  %16 = bitcast %struct._object** %result to i8*, !dbg !3099
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !3099
  %17 = bitcast %struct.bufferinfo* %vbuf to i8*, !dbg !3099
  call void @llvm.lifetime.end(i64 80, i8* %17) #1, !dbg !3099
  %18 = load %struct._object*, %struct._object** %retval, !dbg !3099
  ret %struct._object* %18, !dbg !3099
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !685, metadata !1363), !dbg !3100
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !686, metadata !1363), !dbg !3101
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !687, metadata !1363), !dbg !3102
  %0 = bitcast %struct._object** %input to i8*, !dbg !3103
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3103
  call void @llvm.dbg.declare(metadata %struct._object** %input, metadata !688, metadata !1363), !dbg !3104
  %1 = bitcast i64* %offset to i8*, !dbg !3105
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3105
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !689, metadata !1363), !dbg !3106
  store i64 0, i64* %offset, align 8, !dbg !3106, !tbaa !1563
  %2 = bitcast %struct.bufferinfo* %vbuf to i8*, !dbg !3107
  call void @llvm.lifetime.start(i64 80, i8* %2) #1, !dbg !3107
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %vbuf, metadata !690, metadata !1363), !dbg !3108
  %3 = bitcast %struct._object** %result to i8*, !dbg !3109
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3109
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !691, metadata !1363), !dbg !3110
  %4 = bitcast %struct.PyStructObject** %soself to i8*, !dbg !3111
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3111
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %soself, metadata !692, metadata !1363), !dbg !3112
  %5 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3113, !tbaa !1367
  %6 = bitcast %struct._object* %5 to %struct.PyStructObject*, !dbg !3114
  store %struct.PyStructObject* %6, %struct.PyStructObject** %soself, align 8, !dbg !3112, !tbaa !1367
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3115, !tbaa !1367
  %8 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !3117, !tbaa !1367
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %7, %struct._object* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @s_unpack_from.kwlist, i32 0, i32 0), %struct._object** %input, i64* %offset), !dbg !3118
  %tobool = icmp ne i32 %call, 0, !dbg !3118
  br i1 %tobool, label %if.end, label %if.then, !dbg !3119

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3120
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3120

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %input, align 8, !dbg !3121, !tbaa !1367
  %call1 = call i32 @PyObject_GetBuffer(%struct._object* %9, %struct.bufferinfo* %vbuf, i32 0), !dbg !3123
  %cmp = icmp slt i32 %call1, 0, !dbg !3124
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !3125

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3126
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3126

if.end.3:                                         ; preds = %if.end
  %10 = load i64, i64* %offset, align 8, !dbg !3127, !tbaa !1563
  %cmp4 = icmp slt i64 %10, 0, !dbg !3129
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !3130

if.then.5:                                        ; preds = %if.end.3
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 2, !dbg !3131
  %11 = load i64, i64* %len, align 8, !dbg !3131, !tbaa !3079
  %12 = load i64, i64* %offset, align 8, !dbg !3132, !tbaa !1563
  %add = add i64 %12, %11, !dbg !3132
  store i64 %add, i64* %offset, align 8, !dbg !3132, !tbaa !1563
  br label %if.end.6, !dbg !3133

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %13 = load i64, i64* %offset, align 8, !dbg !3134, !tbaa !1563
  %cmp7 = icmp slt i64 %13, 0, !dbg !3136
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false, !dbg !3137

lor.lhs.false:                                    ; preds = %if.end.6
  %len8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 2, !dbg !3138
  %14 = load i64, i64* %len8, align 8, !dbg !3138, !tbaa !3079
  %15 = load i64, i64* %offset, align 8, !dbg !3140, !tbaa !1563
  %sub = sub i64 %14, %15, !dbg !3141
  %16 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3142, !tbaa !1367
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %16, i32 0, i32 1, !dbg !3143
  %17 = load i64, i64* %s_size, align 8, !dbg !3143, !tbaa !1560
  %cmp9 = icmp slt i64 %sub, %17, !dbg !3144
  br i1 %cmp9, label %if.then.10, label %if.end.13, !dbg !3145

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.6
  %18 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !3146, !tbaa !1367
  %19 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3148, !tbaa !1367
  %s_size11 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %19, i32 0, i32 1, !dbg !3149
  %20 = load i64, i64* %s_size11, align 8, !dbg !3149, !tbaa !1560
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.29, i32 0, i32 0), i64 %20), !dbg !3150
  call void @PyBuffer_Release(%struct.bufferinfo* %vbuf), !dbg !3151
  store %struct._object* null, %struct._object** %retval, !dbg !3152
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3152

if.end.13:                                        ; preds = %lor.lhs.false
  %21 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3153, !tbaa !1367
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 0, !dbg !3154
  %22 = load i8*, i8** %buf, align 8, !dbg !3154, !tbaa !3093
  %23 = load i64, i64* %offset, align 8, !dbg !3155, !tbaa !1563
  %add.ptr = getelementptr i8, i8* %22, i64 %23, !dbg !3156
  %call14 = call %struct._object* @s_unpack_internal(%struct.PyStructObject* %21, i8* %add.ptr), !dbg !3157
  store %struct._object* %call14, %struct._object** %result, align 8, !dbg !3158, !tbaa !1367
  call void @PyBuffer_Release(%struct.bufferinfo* %vbuf), !dbg !3159
  %24 = load %struct._object*, %struct._object** %result, align 8, !dbg !3160, !tbaa !1367
  store %struct._object* %24, %struct._object** %retval, !dbg !3161
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3161

cleanup:                                          ; preds = %if.end.13, %if.then.10, %if.then.2, %if.then
  %25 = bitcast %struct.PyStructObject** %soself to i8*, !dbg !3162
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !3162
  %26 = bitcast %struct._object** %result to i8*, !dbg !3162
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !3162
  %27 = bitcast %struct.bufferinfo* %vbuf to i8*, !dbg !3162
  call void @llvm.lifetime.end(i64 80, i8* %27) #1, !dbg !3162
  %28 = bitcast i64* %offset to i8*, !dbg !3162
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !3162
  %29 = bitcast %struct._object** %input to i8*, !dbg !3162
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !3162
  %30 = load %struct._object*, %struct._object** %retval, !dbg !3162
  ret %struct._object* %30, !dbg !3162
}

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #3

; Function Attrs: nounwind uwtable
define internal void @s_dealloc(%struct.PyStructObject* %s) #0 {
entry:
  %s.addr = alloca %struct.PyStructObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyStructObject* %s, %struct.PyStructObject** %s.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %s.addr, metadata !697, metadata !1363), !dbg !3163
  %0 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8, !dbg !3164, !tbaa !1367
  %weakreflist = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %0, i32 0, i32 5, !dbg !3166
  %1 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !3166, !tbaa !3167
  %cmp = icmp ne %struct._object* %1, null, !dbg !3168
  br i1 %cmp, label %if.then, label %if.end, !dbg !3169

if.then:                                          ; preds = %entry
  %2 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8, !dbg !3170, !tbaa !1367
  %3 = bitcast %struct.PyStructObject* %2 to %struct._object*, !dbg !3171
  call void @PyObject_ClearWeakRefs(%struct._object* %3), !dbg !3172
  br label %if.end, !dbg !3172

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8, !dbg !3173, !tbaa !1367
  %s_codes = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %4, i32 0, i32 3, !dbg !3175
  %5 = load %struct._formatcode*, %struct._formatcode** %s_codes, align 8, !dbg !3175, !tbaa !2445
  %cmp1 = icmp ne %struct._formatcode* %5, null, !dbg !3176
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !3177

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8, !dbg !3178, !tbaa !1367
  %s_codes3 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %6, i32 0, i32 3, !dbg !3180
  %7 = load %struct._formatcode*, %struct._formatcode** %s_codes3, align 8, !dbg !3180, !tbaa !2445
  %8 = bitcast %struct._formatcode* %7 to i8*, !dbg !3178
  call void @PyMem_Free(i8* %8), !dbg !3181
  br label %if.end.4, !dbg !3182

if.end.4:                                         ; preds = %if.then.2, %if.end
  br label %do.body, !dbg !3183

do.body:                                          ; preds = %if.end.4
  %9 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3184
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !3184
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !698, metadata !1363), !dbg !3186
  %10 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8, !dbg !3187, !tbaa !1367
  %s_format = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %10, i32 0, i32 4, !dbg !3188
  %11 = load %struct._object*, %struct._object** %s_format, align 8, !dbg !3188, !tbaa !3189
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3186, !tbaa !1367
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3190, !tbaa !1367
  %cmp5 = icmp ne %struct._object* %12, null, !dbg !3191
  br i1 %cmp5, label %if.then.6, label %if.end.11, !dbg !3192

if.then.6:                                        ; preds = %do.body
  br label %do.body.7, !dbg !3193

do.body.7:                                        ; preds = %if.then.6
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3195
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !3195
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !700, metadata !1363), !dbg !3197
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3198, !tbaa !1367
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !3197, !tbaa !1367
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3199, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !3201
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !3202, !tbaa !1487
  %dec = add i64 %16, -1, !dbg !3202
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3202, !tbaa !1487
  %cmp8 = icmp ne i64 %dec, 0, !dbg !3203
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !3204

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10, !dbg !3205

if.else:                                          ; preds = %do.body.7
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3207, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !3209
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3209, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !3210
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3210, !tbaa !1525
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3211, !tbaa !1367
  call void %19(%struct._object* %20), !dbg !3212
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3213
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !3213
  br label %do.cond, !dbg !3215

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !3216

do.end:                                           ; preds = %do.cond
  br label %if.end.11, !dbg !3218

if.end.11:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3220
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !3220
  br label %do.end.13, !dbg !3223

do.end.13:                                        ; preds = %if.end.11
  %23 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8, !dbg !3224, !tbaa !1367
  %24 = bitcast %struct.PyStructObject* %23 to %struct._object*, !dbg !3225
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !3226
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !3226, !tbaa !1377
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 38, !dbg !3227
  %26 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !3227, !tbaa !3228
  %27 = load %struct.PyStructObject*, %struct.PyStructObject** %s.addr, align 8, !dbg !3229, !tbaa !1367
  %28 = bitcast %struct.PyStructObject* %27 to %struct._object*, !dbg !3230
  %29 = bitcast %struct._object* %28 to i8*, !dbg !3230
  call void %26(i8* %29), !dbg !3231
  ret void, !dbg !3232
}

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #3

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !721, metadata !1363), !dbg !3233
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !722, metadata !1363), !dbg !3234
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !723, metadata !1363), !dbg !3235
  %0 = bitcast %struct.PyStructObject** %soself to i8*, !dbg !3236
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3236
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %soself, metadata !724, metadata !1363), !dbg !3237
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3238, !tbaa !1367
  %2 = bitcast %struct._object* %1 to %struct.PyStructObject*, !dbg !3239
  store %struct.PyStructObject* %2, %struct.PyStructObject** %soself, align 8, !dbg !3237, !tbaa !1367
  %3 = bitcast %struct._object** %o_format to i8*, !dbg !3240
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3240
  call void @llvm.dbg.declare(metadata %struct._object** %o_format, metadata !725, metadata !1363), !dbg !3241
  store %struct._object* null, %struct._object** %o_format, align 8, !dbg !3241, !tbaa !1367
  %4 = bitcast i32* %ret to i8*, !dbg !3242
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !3242
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !726, metadata !1363), !dbg !3243
  store i32 0, i32* %ret, align 4, !dbg !3243, !tbaa !2291
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3244, !tbaa !1367
  %6 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !3246, !tbaa !1367
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %5, %struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @s_init.kwlist, i32 0, i32 0), %struct._object** %o_format), !dbg !3247
  %tobool = icmp ne i32 %call, 0, !dbg !3247
  br i1 %tobool, label %if.end, label %if.then, !dbg !3248

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !3249
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3249

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %o_format, align 8, !dbg !3250, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !3252
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3252, !tbaa !1377
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19, !dbg !3253
  %9 = load i64, i64* %tp_flags, align 8, !dbg !3253, !tbaa !2732
  %and = and i64 %9, 268435456, !dbg !3254
  %cmp = icmp ne i64 %and, 0, !dbg !3255
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !3256

if.then.1:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %o_format, align 8, !dbg !3257, !tbaa !1367
  %call2 = call %struct._object* @PyUnicode_AsASCIIString(%struct._object* %10), !dbg !3259
  store %struct._object* %call2, %struct._object** %o_format, align 8, !dbg !3260, !tbaa !1367
  %11 = load %struct._object*, %struct._object** %o_format, align 8, !dbg !3261, !tbaa !1367
  %cmp3 = icmp eq %struct._object* %11, null, !dbg !3263
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !3264

if.then.4:                                        ; preds = %if.then.1
  store i32 -1, i32* %retval, !dbg !3265
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3265

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6, !dbg !3266

if.else:                                          ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %o_format, align 8, !dbg !3267, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !3269
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !3270, !tbaa !1487
  %inc = add i64 %13, 1, !dbg !3270
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3270, !tbaa !1487
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end.5
  %14 = load %struct._object*, %struct._object** %o_format, align 8, !dbg !3271, !tbaa !1367
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !3272
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3272, !tbaa !1377
  %tp_flags8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19, !dbg !3273
  %16 = load i64, i64* %tp_flags8, align 8, !dbg !3273, !tbaa !2732
  %and9 = and i64 %16, 134217728, !dbg !3274
  %cmp10 = icmp ne i64 %and9, 0, !dbg !3275
  br i1 %cmp10, label %if.end.20, label %if.then.11, !dbg !3276

if.then.11:                                       ; preds = %if.end.6
  br label %do.body, !dbg !3277

do.body:                                          ; preds = %if.then.11
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3278
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !3278
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !727, metadata !1363), !dbg !3280
  %18 = load %struct._object*, %struct._object** %o_format, align 8, !dbg !3281, !tbaa !1367
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !3280, !tbaa !1367
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3282, !tbaa !1367
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !3284
  %20 = load i64, i64* %ob_refcnt12, align 8, !dbg !3285, !tbaa !1487
  %dec = add i64 %20, -1, !dbg !3285
  store i64 %dec, i64* %ob_refcnt12, align 8, !dbg !3285, !tbaa !1487
  %cmp13 = icmp ne i64 %dec, 0, !dbg !3286
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !3287

if.then.14:                                       ; preds = %do.body
  br label %if.end.17, !dbg !3288

if.else.15:                                       ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3290, !tbaa !1367
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !3292
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !3292, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !3293
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3293, !tbaa !1525
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3294, !tbaa !1367
  call void %23(%struct._object* %24), !dbg !3295
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3296
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !3296
  br label %do.cond, !dbg !3298

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !3299

do.end:                                           ; preds = %do.cond
  %26 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3301, !tbaa !1367
  %27 = load %struct._object*, %struct._object** %o_format, align 8, !dbg !3302, !tbaa !1367
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !3303
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !3303, !tbaa !1377
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 1, !dbg !3304
  %29 = load i8*, i8** %tp_name, align 8, !dbg !3304, !tbaa !3305
  %call19 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i32 0, i32 0), i8* %29), !dbg !3306
  store i32 -1, i32* %retval, !dbg !3307
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3307

if.end.20:                                        ; preds = %if.end.6
  br label %do.body.21, !dbg !3308

do.body.21:                                       ; preds = %if.end.20
  %30 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3309
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !3309
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !731, metadata !1363), !dbg !3311
  %31 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3312, !tbaa !1367
  %s_format = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %31, i32 0, i32 4, !dbg !3313
  %32 = load %struct._object*, %struct._object** %s_format, align 8, !dbg !3313, !tbaa !3189
  store %struct._object* %32, %struct._object** %_py_tmp, align 8, !dbg !3311, !tbaa !1367
  %33 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3314, !tbaa !1367
  %cmp22 = icmp ne %struct._object* %33, null, !dbg !3315
  br i1 %cmp22, label %if.then.23, label %if.end.37, !dbg !3316

if.then.23:                                       ; preds = %do.body.21
  %34 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3317, !tbaa !1367
  %s_format24 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %34, i32 0, i32 4, !dbg !3319
  store %struct._object* null, %struct._object** %s_format24, align 8, !dbg !3320, !tbaa !3189
  br label %do.body.25, !dbg !3321

do.body.25:                                       ; preds = %if.then.23
  %35 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !3322
  call void @llvm.lifetime.start(i64 8, i8* %35) #1, !dbg !3322
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !733, metadata !1363), !dbg !3324
  %36 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3325, !tbaa !1367
  store %struct._object* %36, %struct._object** %_py_decref_tmp26, align 8, !dbg !3324, !tbaa !1367
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !3326, !tbaa !1367
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !3328
  %38 = load i64, i64* %ob_refcnt27, align 8, !dbg !3329, !tbaa !1487
  %dec28 = add i64 %38, -1, !dbg !3329
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !3329, !tbaa !1487
  %cmp29 = icmp ne i64 %dec28, 0, !dbg !3330
  br i1 %cmp29, label %if.then.30, label %if.else.31, !dbg !3331

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34, !dbg !3332

if.else.31:                                       ; preds = %do.body.25
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !3334, !tbaa !1367
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !3336
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !3336, !tbaa !1377
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !3337
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !3337, !tbaa !1525
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !3338, !tbaa !1367
  call void %41(%struct._object* %42), !dbg !3339
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %43 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !3340
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !3340
  br label %do.cond.35, !dbg !3342

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !3343

do.end.36:                                        ; preds = %do.cond.35
  br label %if.end.37, !dbg !3345

if.end.37:                                        ; preds = %do.end.36, %do.body.21
  %44 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3347
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !3347
  br label %do.cond.38, !dbg !3350

do.cond.38:                                       ; preds = %if.end.37
  br label %do.end.39, !dbg !3351

do.end.39:                                        ; preds = %do.cond.38
  %45 = load %struct._object*, %struct._object** %o_format, align 8, !dbg !3353, !tbaa !1367
  %46 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3354, !tbaa !1367
  %s_format40 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %46, i32 0, i32 4, !dbg !3355
  store %struct._object* %45, %struct._object** %s_format40, align 8, !dbg !3356, !tbaa !3189
  %47 = load %struct.PyStructObject*, %struct.PyStructObject** %soself, align 8, !dbg !3357, !tbaa !1367
  %call41 = call i32 @prepare_s(%struct.PyStructObject* %47), !dbg !3358
  store i32 %call41, i32* %ret, align 4, !dbg !3359, !tbaa !2291
  %48 = load i32, i32* %ret, align 4, !dbg !3360, !tbaa !2291
  store i32 %48, i32* %retval, !dbg !3361
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3361

cleanup:                                          ; preds = %do.end.39, %do.end, %if.then.4, %if.then
  %49 = bitcast i32* %ret to i8*, !dbg !3362
  call void @llvm.lifetime.end(i64 4, i8* %49) #1, !dbg !3362
  %50 = bitcast %struct._object** %o_format to i8*, !dbg !3362
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !3362
  %51 = bitcast %struct.PyStructObject** %soself to i8*, !dbg !3362
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !3362
  %52 = load i32, i32* %retval, !dbg !3362
  ret i32 %52, !dbg !3362
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct._object*, align 8
  %s = alloca %struct.PyStructObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !951, metadata !1363), !dbg !3363
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !952, metadata !1363), !dbg !3364
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !953, metadata !1363), !dbg !3365
  %0 = bitcast %struct._object** %self to i8*, !dbg !3366
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3366
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !954, metadata !1363), !dbg !3367
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !3368, !tbaa !1367
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 36, !dbg !3369
  %2 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !3369, !tbaa !3370
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !3371, !tbaa !1367
  %call = call %struct._object* %2(%struct._typeobject* %3, i64 0), !dbg !3368
  store %struct._object* %call, %struct._object** %self, align 8, !dbg !3372, !tbaa !1367
  %4 = load %struct._object*, %struct._object** %self, align 8, !dbg !3373, !tbaa !1367
  %cmp = icmp ne %struct._object* %4, null, !dbg !3374
  br i1 %cmp, label %if.then, label %if.end, !dbg !3375

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.PyStructObject** %s to i8*, !dbg !3376
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3376
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %s, metadata !955, metadata !1363), !dbg !3377
  %6 = load %struct._object*, %struct._object** %self, align 8, !dbg !3378, !tbaa !1367
  %7 = bitcast %struct._object* %6 to %struct.PyStructObject*, !dbg !3379
  store %struct.PyStructObject* %7, %struct.PyStructObject** %s, align 8, !dbg !3377, !tbaa !1367
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3380, !tbaa !1487
  %inc = add i64 %8, 1, !dbg !3380
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3380, !tbaa !1487
  %9 = load %struct.PyStructObject*, %struct.PyStructObject** %s, align 8, !dbg !3381, !tbaa !1367
  %s_format = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %9, i32 0, i32 4, !dbg !3382
  store %struct._object* @_Py_NoneStruct, %struct._object** %s_format, align 8, !dbg !3383, !tbaa !3189
  %10 = load %struct.PyStructObject*, %struct.PyStructObject** %s, align 8, !dbg !3384, !tbaa !1367
  %s_codes = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %10, i32 0, i32 3, !dbg !3385
  store %struct._formatcode* null, %struct._formatcode** %s_codes, align 8, !dbg !3386, !tbaa !2445
  %11 = load %struct.PyStructObject*, %struct.PyStructObject** %s, align 8, !dbg !3387, !tbaa !1367
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %11, i32 0, i32 1, !dbg !3388
  store i64 -1, i64* %s_size, align 8, !dbg !3389, !tbaa !1560
  %12 = load %struct.PyStructObject*, %struct.PyStructObject** %s, align 8, !dbg !3390, !tbaa !1367
  %s_len = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %12, i32 0, i32 2, !dbg !3391
  store i64 -1, i64* %s_len, align 8, !dbg !3392, !tbaa !2436
  %13 = bitcast %struct.PyStructObject** %s to i8*, !dbg !3393
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !3393
  br label %if.end, !dbg !3394

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._object*, %struct._object** %self, align 8, !dbg !3395, !tbaa !1367
  %15 = bitcast %struct._object** %self to i8*, !dbg !3396
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !3396
  ret %struct._object* %14, !dbg !3397
}

declare void @PyObject_Free(i8*) #3

declare void @PyObject_ClearWeakRefs(%struct._object*) #3

declare void @PyMem_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_sizeof(%struct.PyStructObject* %self, i8* %unused) #0 {
entry:
  %self.addr = alloca %struct.PyStructObject*, align 8
  %unused.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  %code = alloca %struct._formatcode*, align 8
  store %struct.PyStructObject* %self, %struct.PyStructObject** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %self.addr, metadata !707, metadata !1363), !dbg !3398
  store i8* %unused, i8** %unused.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !708, metadata !1363), !dbg !3399
  %0 = bitcast i64* %size to i8*, !dbg !3400
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3400
  call void @llvm.dbg.declare(metadata i64* %size, metadata !709, metadata !1363), !dbg !3401
  %1 = bitcast %struct._formatcode** %code to i8*, !dbg !3402
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3402
  call void @llvm.dbg.declare(metadata %struct._formatcode** %code, metadata !710, metadata !1363), !dbg !3403
  store i64 88, i64* %size, align 8, !dbg !3404, !tbaa !1563
  %2 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8, !dbg !3405, !tbaa !1367
  %s_codes = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %2, i32 0, i32 3, !dbg !3407
  %3 = load %struct._formatcode*, %struct._formatcode** %s_codes, align 8, !dbg !3407, !tbaa !2445
  store %struct._formatcode* %3, %struct._formatcode** %code, align 8, !dbg !3408, !tbaa !1367
  br label %for.cond, !dbg !3409

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !3410, !tbaa !1367
  %fmtdef = getelementptr inbounds %struct._formatcode, %struct._formatcode* %4, i32 0, i32 0, !dbg !3414
  %5 = load %struct._formatdef*, %struct._formatdef** %fmtdef, align 8, !dbg !3414, !tbaa !2452
  %cmp = icmp ne %struct._formatdef* %5, null, !dbg !3415
  br i1 %cmp, label %for.body, label %for.end, !dbg !3416

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %size, align 8, !dbg !3417, !tbaa !1563
  %add = add i64 %6, 32, !dbg !3417
  store i64 %add, i64* %size, align 8, !dbg !3417, !tbaa !1563
  br label %for.inc, !dbg !3418

for.inc:                                          ; preds = %for.body
  %7 = load %struct._formatcode*, %struct._formatcode** %code, align 8, !dbg !3419, !tbaa !1367
  %incdec.ptr = getelementptr %struct._formatcode, %struct._formatcode* %7, i32 1, !dbg !3419
  store %struct._formatcode* %incdec.ptr, %struct._formatcode** %code, align 8, !dbg !3419, !tbaa !1367
  br label %for.cond, !dbg !3420

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %size, align 8, !dbg !3421, !tbaa !1563
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %8), !dbg !3422
  %9 = bitcast %struct._formatcode** %code to i8*, !dbg !3423
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !3423
  %10 = bitcast i64* %size to i8*, !dbg !3423
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !3423
  ret %struct._object* %call, !dbg !3424
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_get_format(%struct.PyStructObject* %self, i8* %unused) #0 {
entry:
  %self.addr = alloca %struct.PyStructObject*, align 8
  %unused.addr = alloca i8*, align 8
  store %struct.PyStructObject* %self, %struct.PyStructObject** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %self.addr, metadata !713, metadata !1363), !dbg !3425
  store i8* %unused, i8** %unused.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !714, metadata !1363), !dbg !3426
  %0 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8, !dbg !3427, !tbaa !1367
  %s_format = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %0, i32 0, i32 4, !dbg !3428
  %1 = load %struct._object*, %struct._object** %s_format, align 8, !dbg !3428, !tbaa !3189
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !3429
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !3430, !tbaa !1487
  %inc = add i64 %2, 1, !dbg !3430
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3430, !tbaa !1487
  %3 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8, !dbg !3431, !tbaa !1367
  %s_format1 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %3, i32 0, i32 4, !dbg !3432
  %4 = load %struct._object*, %struct._object** %s_format1, align 8, !dbg !3432, !tbaa !3189
  ret %struct._object* %4, !dbg !3433
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @s_get_size(%struct.PyStructObject* %self, i8* %unused) #0 {
entry:
  %self.addr = alloca %struct.PyStructObject*, align 8
  %unused.addr = alloca i8*, align 8
  store %struct.PyStructObject* %self, %struct.PyStructObject** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %self.addr, metadata !717, metadata !1363), !dbg !3434
  store i8* %unused, i8** %unused.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !718, metadata !1363), !dbg !3435
  %0 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8, !dbg !3436, !tbaa !1367
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %0, i32 0, i32 1, !dbg !3437
  %1 = load i64, i64* %s_size, align 8, !dbg !3437, !tbaa !1560
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %1), !dbg !3438
  ret %struct._object* %call, !dbg !3439
}

declare %struct._object* @PyUnicode_AsASCIIString(%struct._object*) #3

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
  %cleanup.dest.slot = alloca i32
  store %struct.PyStructObject* %self, %struct.PyStructObject** %self.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct.PyStructObject** %self.addr, metadata !741, metadata !1363), !dbg !3440
  %0 = bitcast %struct._formatdef** %f to i8*, !dbg !3441
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3441
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f, metadata !742, metadata !1363), !dbg !3442
  %1 = bitcast %struct._formatdef** %e to i8*, !dbg !3443
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3443
  call void @llvm.dbg.declare(metadata %struct._formatdef** %e, metadata !743, metadata !1363), !dbg !3444
  %2 = bitcast %struct._formatcode** %codes to i8*, !dbg !3445
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3445
  call void @llvm.dbg.declare(metadata %struct._formatcode** %codes, metadata !744, metadata !1363), !dbg !3446
  %3 = bitcast i8** %s to i8*, !dbg !3447
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3447
  call void @llvm.dbg.declare(metadata i8** %s, metadata !745, metadata !1363), !dbg !3448
  %4 = bitcast i8** %fmt to i8*, !dbg !3449
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3449
  call void @llvm.dbg.declare(metadata i8** %fmt, metadata !746, metadata !1363), !dbg !3450
  call void @llvm.lifetime.start(i64 1, i8* %c) #1, !dbg !3451
  call void @llvm.dbg.declare(metadata i8* %c, metadata !747, metadata !1363), !dbg !3452
  %5 = bitcast i64* %size to i8*, !dbg !3453
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3453
  call void @llvm.dbg.declare(metadata i64* %size, metadata !748, metadata !1363), !dbg !3454
  %6 = bitcast i64* %len to i8*, !dbg !3453
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !3453
  call void @llvm.dbg.declare(metadata i64* %len, metadata !749, metadata !1363), !dbg !3455
  %7 = bitcast i64* %ncodes to i8*, !dbg !3453
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !3453
  call void @llvm.dbg.declare(metadata i64* %ncodes, metadata !750, metadata !1363), !dbg !3456
  %8 = bitcast i64* %num to i8*, !dbg !3453
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !3453
  call void @llvm.dbg.declare(metadata i64* %num, metadata !751, metadata !1363), !dbg !3457
  %9 = bitcast i64* %itemsize to i8*, !dbg !3453
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !3453
  call void @llvm.dbg.declare(metadata i64* %itemsize, metadata !752, metadata !1363), !dbg !3458
  %10 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8, !dbg !3459, !tbaa !1367
  %s_format = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %10, i32 0, i32 4, !dbg !3460
  %11 = load %struct._object*, %struct._object** %s_format, align 8, !dbg !3460, !tbaa !3189
  %12 = bitcast %struct._object* %11 to %struct.PyBytesObject*, !dbg !3461
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %12, i32 0, i32 2, !dbg !3462
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !3463
  store i8* %arraydecay, i8** %fmt, align 8, !dbg !3464, !tbaa !1367
  %call = call %struct._formatdef* @whichtable(i8** %fmt), !dbg !3465
  store %struct._formatdef* %call, %struct._formatdef** %f, align 8, !dbg !3466, !tbaa !1367
  %13 = load i8*, i8** %fmt, align 8, !dbg !3467, !tbaa !1367
  store i8* %13, i8** %s, align 8, !dbg !3468, !tbaa !1367
  store i64 0, i64* %size, align 8, !dbg !3469, !tbaa !1563
  store i64 0, i64* %len, align 8, !dbg !3470, !tbaa !1563
  store i64 0, i64* %ncodes, align 8, !dbg !3471, !tbaa !1563
  br label %while.cond, !dbg !3472

while.cond:                                       ; preds = %if.end.70, %if.then, %entry
  %14 = load i8*, i8** %s, align 8, !dbg !3473, !tbaa !1367
  %incdec.ptr = getelementptr i8, i8* %14, i32 1, !dbg !3473
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !3473, !tbaa !1367
  %15 = load i8, i8* %14, align 1, !dbg !3476, !tbaa !2498
  store i8 %15, i8* %c, align 1, !dbg !3477, !tbaa !2498
  %conv = sext i8 %15 to i32, !dbg !3478
  %cmp = icmp ne i32 %conv, 0, !dbg !3479
  br i1 %cmp, label %while.body, label %while.end.73, !dbg !3472

while.body:                                       ; preds = %while.cond
  %16 = load i8, i8* %c, align 1, !dbg !3480, !tbaa !2498
  %conv2 = sext i8 %16 to i32, !dbg !3483
  %and = and i32 %conv2, 255, !dbg !3484
  %conv3 = trunc i32 %and to i8, !dbg !3485
  %conv4 = zext i8 %conv3 to i32, !dbg !3486
  %and5 = and i32 %conv4, 255, !dbg !3487
  %conv6 = trunc i32 %and5 to i8, !dbg !3488
  %idxprom = zext i8 %conv6 to i64, !dbg !3489
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !3489
  %17 = load i32, i32* %arrayidx, align 4, !dbg !3489, !tbaa !2291
  %and7 = and i32 %17, 8, !dbg !3490
  %tobool = icmp ne i32 %and7, 0, !dbg !3490
  br i1 %tobool, label %if.then, label %if.end, !dbg !3491

if.then:                                          ; preds = %while.body
  br label %while.cond, !dbg !3492

if.end:                                           ; preds = %while.body
  %18 = load i8, i8* %c, align 1, !dbg !3493, !tbaa !2498
  %conv8 = sext i8 %18 to i32, !dbg !3493
  %cmp9 = icmp sle i32 48, %conv8, !dbg !3495
  br i1 %cmp9, label %land.lhs.true, label %if.else, !dbg !3496

land.lhs.true:                                    ; preds = %if.end
  %19 = load i8, i8* %c, align 1, !dbg !3497, !tbaa !2498
  %conv11 = sext i8 %19 to i32, !dbg !3497
  %cmp12 = icmp sle i32 %conv11, 57, !dbg !3499
  br i1 %cmp12, label %if.then.14, label %if.else, !dbg !3500

if.then.14:                                       ; preds = %land.lhs.true
  %20 = load i8, i8* %c, align 1, !dbg !3501, !tbaa !2498
  %conv15 = sext i8 %20 to i32, !dbg !3501
  %sub = sub i32 %conv15, 48, !dbg !3503
  %conv16 = sext i32 %sub to i64, !dbg !3501
  store i64 %conv16, i64* %num, align 8, !dbg !3504, !tbaa !1563
  br label %while.cond.17, !dbg !3505

while.cond.17:                                    ; preds = %if.end.37, %if.then.14
  %21 = load i8*, i8** %s, align 8, !dbg !3506, !tbaa !1367
  %incdec.ptr18 = getelementptr i8, i8* %21, i32 1, !dbg !3506
  store i8* %incdec.ptr18, i8** %s, align 8, !dbg !3506, !tbaa !1367
  %22 = load i8, i8* %21, align 1, !dbg !3509, !tbaa !2498
  store i8 %22, i8* %c, align 1, !dbg !3510, !tbaa !2498
  %conv19 = sext i8 %22 to i32, !dbg !3511
  %cmp20 = icmp sle i32 48, %conv19, !dbg !3512
  br i1 %cmp20, label %land.rhs, label %land.end, !dbg !3513

land.rhs:                                         ; preds = %while.cond.17
  %23 = load i8, i8* %c, align 1, !dbg !3514, !tbaa !2498
  %conv22 = sext i8 %23 to i32, !dbg !3514
  %cmp23 = icmp sle i32 %conv22, 57, !dbg !3516
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.17
  %24 = phi i1 [ false, %while.cond.17 ], [ %cmp23, %land.rhs ]
  br i1 %24, label %while.body.25, label %while.end, !dbg !3517

while.body.25:                                    ; preds = %land.end
  %25 = load i64, i64* %num, align 8, !dbg !3519, !tbaa !1563
  %cmp26 = icmp sge i64 %25, 922337203685477580, !dbg !3522
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.37, !dbg !3523

land.lhs.true.28:                                 ; preds = %while.body.25
  %26 = load i64, i64* %num, align 8, !dbg !3524, !tbaa !1563
  %cmp29 = icmp sgt i64 %26, 922337203685477580, !dbg !3525
  br i1 %cmp29, label %if.then.36, label %lor.lhs.false, !dbg !3526

lor.lhs.false:                                    ; preds = %land.lhs.true.28
  %27 = load i8, i8* %c, align 1, !dbg !3527, !tbaa !2498
  %conv31 = sext i8 %27 to i32, !dbg !3527
  %sub32 = sub i32 %conv31, 48, !dbg !3528
  %conv33 = sext i32 %sub32 to i64, !dbg !3529
  %cmp34 = icmp sgt i64 %conv33, 7, !dbg !3530
  br i1 %cmp34, label %if.then.36, label %if.end.37, !dbg !3531

if.then.36:                                       ; preds = %lor.lhs.false, %land.lhs.true.28
  br label %overflow, !dbg !3532

if.end.37:                                        ; preds = %lor.lhs.false, %while.body.25
  %28 = load i64, i64* %num, align 8, !dbg !3533, !tbaa !1563
  %mul = mul i64 %28, 10, !dbg !3534
  %29 = load i8, i8* %c, align 1, !dbg !3535, !tbaa !2498
  %conv38 = sext i8 %29 to i32, !dbg !3535
  %sub39 = sub i32 %conv38, 48, !dbg !3536
  %conv40 = sext i32 %sub39 to i64, !dbg !3537
  %add = add i64 %mul, %conv40, !dbg !3538
  store i64 %add, i64* %num, align 8, !dbg !3539, !tbaa !1563
  br label %while.cond.17, !dbg !3505

while.end:                                        ; preds = %land.end
  %30 = load i8, i8* %c, align 1, !dbg !3540, !tbaa !2498
  %conv41 = sext i8 %30 to i32, !dbg !3540
  %cmp42 = icmp eq i32 %conv41, 0, !dbg !3542
  br i1 %cmp42, label %if.then.44, label %if.end.45, !dbg !3543

if.then.44:                                       ; preds = %while.end
  %31 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !3544, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i32 0, i32 0)), !dbg !3546
  store i32 -1, i32* %retval, !dbg !3547
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3547

if.end.45:                                        ; preds = %while.end
  br label %if.end.46, !dbg !3548

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i64 1, i64* %num, align 8, !dbg !3549, !tbaa !1563
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.end.45
  %32 = load i8, i8* %c, align 1, !dbg !3550, !tbaa !2498
  %conv47 = sext i8 %32 to i32, !dbg !3550
  %33 = load %struct._formatdef*, %struct._formatdef** %f, align 8, !dbg !3551, !tbaa !1367
  %call48 = call %struct._formatdef* @getentry(i32 %conv47, %struct._formatdef* %33), !dbg !3552
  store %struct._formatdef* %call48, %struct._formatdef** %e, align 8, !dbg !3553, !tbaa !1367
  %34 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !3554, !tbaa !1367
  %cmp49 = icmp eq %struct._formatdef* %34, null, !dbg !3556
  br i1 %cmp49, label %if.then.51, label %if.end.52, !dbg !3557

if.then.51:                                       ; preds = %if.end.46
  store i32 -1, i32* %retval, !dbg !3558
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3558

if.end.52:                                        ; preds = %if.end.46
  %35 = load i8, i8* %c, align 1, !dbg !3559, !tbaa !2498
  %conv53 = sext i8 %35 to i32, !dbg !3559
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %if.end.52
  %Pivot.6 = icmp slt i32 %conv53, 115
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %conv53, 120
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %conv53, 120
  br i1 %SwitchLeaf4, label %sw.epilog, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %conv53, 115
  br i1 %SwitchLeaf2, label %sw.bb, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %conv53, 112
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.1, %LeafBlock
  %36 = load i64, i64* %len, align 8, !dbg !3560, !tbaa !1563
  %inc = add i64 %36, 1, !dbg !3560
  store i64 %inc, i64* %len, align 8, !dbg !3560, !tbaa !1563
  %37 = load i64, i64* %ncodes, align 8, !dbg !3562, !tbaa !1563
  %inc54 = add i64 %37, 1, !dbg !3562
  store i64 %inc54, i64* %ncodes, align 8, !dbg !3562, !tbaa !1563
  br label %sw.epilog, !dbg !3563

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %38 = load i64, i64* %num, align 8, !dbg !3564, !tbaa !1563
  %39 = load i64, i64* %len, align 8, !dbg !3565, !tbaa !1563
  %add55 = add i64 %39, %38, !dbg !3565
  store i64 %add55, i64* %len, align 8, !dbg !3565, !tbaa !1563
  %40 = load i64, i64* %num, align 8, !dbg !3566, !tbaa !1563
  %tobool56 = icmp ne i64 %40, 0, !dbg !3566
  br i1 %tobool56, label %if.then.57, label %if.end.59, !dbg !3568

if.then.57:                                       ; preds = %sw.default
  %41 = load i64, i64* %ncodes, align 8, !dbg !3569, !tbaa !1563
  %inc58 = add i64 %41, 1, !dbg !3569
  store i64 %inc58, i64* %ncodes, align 8, !dbg !3569, !tbaa !1563
  br label %if.end.59, !dbg !3571

if.end.59:                                        ; preds = %if.then.57, %sw.default
  br label %sw.epilog, !dbg !3572

sw.epilog:                                        ; preds = %LeafBlock.3, %if.end.59, %sw.bb
  %42 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !3575, !tbaa !1367
  %size60 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %42, i32 0, i32 1, !dbg !3576
  %43 = load i64, i64* %size60, align 8, !dbg !3576, !tbaa !1437
  store i64 %43, i64* %itemsize, align 8, !dbg !3577, !tbaa !1563
  %44 = load i64, i64* %size, align 8, !dbg !3578, !tbaa !1563
  %45 = load i8, i8* %c, align 1, !dbg !3579, !tbaa !2498
  %46 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !3580, !tbaa !1367
  %call61 = call i64 @align(i64 %44, i8 signext %45, %struct._formatdef* %46), !dbg !3581
  store i64 %call61, i64* %size, align 8, !dbg !3582, !tbaa !1563
  %47 = load i64, i64* %size, align 8, !dbg !3583, !tbaa !1563
  %cmp62 = icmp eq i64 %47, -1, !dbg !3585
  br i1 %cmp62, label %if.then.64, label %if.end.65, !dbg !3586

if.then.64:                                       ; preds = %sw.epilog
  br label %overflow, !dbg !3587

if.end.65:                                        ; preds = %sw.epilog
  %48 = load i64, i64* %num, align 8, !dbg !3588, !tbaa !1563
  %49 = load i64, i64* %size, align 8, !dbg !3590, !tbaa !1563
  %sub66 = sub i64 9223372036854775807, %49, !dbg !3591
  %50 = load i64, i64* %itemsize, align 8, !dbg !3592, !tbaa !1563
  %div = sdiv i64 %sub66, %50, !dbg !3593
  %cmp67 = icmp sgt i64 %48, %div, !dbg !3594
  br i1 %cmp67, label %if.then.69, label %if.end.70, !dbg !3595

if.then.69:                                       ; preds = %if.end.65
  br label %overflow, !dbg !3596

if.end.70:                                        ; preds = %if.end.65
  %51 = load i64, i64* %num, align 8, !dbg !3597, !tbaa !1563
  %52 = load i64, i64* %itemsize, align 8, !dbg !3598, !tbaa !1563
  %mul71 = mul i64 %51, %52, !dbg !3599
  %53 = load i64, i64* %size, align 8, !dbg !3600, !tbaa !1563
  %add72 = add i64 %53, %mul71, !dbg !3600
  store i64 %add72, i64* %size, align 8, !dbg !3600, !tbaa !1563
  br label %while.cond, !dbg !3472

while.end.73:                                     ; preds = %while.cond
  %54 = load i64, i64* %ncodes, align 8, !dbg !3601, !tbaa !1563
  %add74 = add i64 %54, 1, !dbg !3603
  %cmp75 = icmp ugt i64 %add74, 288230376151711743, !dbg !3604
  br i1 %cmp75, label %if.then.77, label %if.end.79, !dbg !3605

if.then.77:                                       ; preds = %while.end.73
  %call78 = call %struct._object* @PyErr_NoMemory(), !dbg !3606
  store i32 -1, i32* %retval, !dbg !3608
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3608

if.end.79:                                        ; preds = %while.end.73
  %55 = load i64, i64* %size, align 8, !dbg !3609, !tbaa !1563
  %56 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8, !dbg !3610, !tbaa !1367
  %s_size = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %56, i32 0, i32 1, !dbg !3611
  store i64 %55, i64* %s_size, align 8, !dbg !3612, !tbaa !1560
  %57 = load i64, i64* %len, align 8, !dbg !3613, !tbaa !1563
  %58 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8, !dbg !3614, !tbaa !1367
  %s_len = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %58, i32 0, i32 2, !dbg !3615
  store i64 %57, i64* %s_len, align 8, !dbg !3616, !tbaa !2436
  %59 = load i64, i64* %ncodes, align 8, !dbg !3617, !tbaa !1563
  %add80 = add i64 %59, 1, !dbg !3618
  %mul81 = mul i64 %add80, 32, !dbg !3619
  %call82 = call i8* @PyMem_Malloc(i64 %mul81), !dbg !3620
  %60 = bitcast i8* %call82 to %struct._formatcode*, !dbg !3620
  store %struct._formatcode* %60, %struct._formatcode** %codes, align 8, !dbg !3621, !tbaa !1367
  %61 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3622, !tbaa !1367
  %cmp83 = icmp eq %struct._formatcode* %61, null, !dbg !3624
  br i1 %cmp83, label %if.then.85, label %if.end.87, !dbg !3625

if.then.85:                                       ; preds = %if.end.79
  %call86 = call %struct._object* @PyErr_NoMemory(), !dbg !3626
  store i32 -1, i32* %retval, !dbg !3628
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3628

if.end.87:                                        ; preds = %if.end.79
  %62 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8, !dbg !3629, !tbaa !1367
  %s_codes = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %62, i32 0, i32 3, !dbg !3631
  %63 = load %struct._formatcode*, %struct._formatcode** %s_codes, align 8, !dbg !3631, !tbaa !2445
  %cmp88 = icmp ne %struct._formatcode* %63, null, !dbg !3632
  br i1 %cmp88, label %if.then.90, label %if.end.92, !dbg !3633

if.then.90:                                       ; preds = %if.end.87
  %64 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8, !dbg !3634, !tbaa !1367
  %s_codes91 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %64, i32 0, i32 3, !dbg !3635
  %65 = load %struct._formatcode*, %struct._formatcode** %s_codes91, align 8, !dbg !3635, !tbaa !2445
  %66 = bitcast %struct._formatcode* %65 to i8*, !dbg !3634
  call void @PyMem_Free(i8* %66), !dbg !3636
  br label %if.end.92, !dbg !3636

if.end.92:                                        ; preds = %if.then.90, %if.end.87
  %67 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3637, !tbaa !1367
  %68 = load %struct.PyStructObject*, %struct.PyStructObject** %self.addr, align 8, !dbg !3638, !tbaa !1367
  %s_codes93 = getelementptr inbounds %struct.PyStructObject, %struct.PyStructObject* %68, i32 0, i32 3, !dbg !3639
  store %struct._formatcode* %67, %struct._formatcode** %s_codes93, align 8, !dbg !3640, !tbaa !2445
  %69 = load i8*, i8** %fmt, align 8, !dbg !3641, !tbaa !1367
  store i8* %69, i8** %s, align 8, !dbg !3642, !tbaa !1367
  store i64 0, i64* %size, align 8, !dbg !3643, !tbaa !1563
  br label %while.cond.94, !dbg !3644

while.cond.94:                                    ; preds = %if.end.181, %if.then.110, %if.end.92
  %70 = load i8*, i8** %s, align 8, !dbg !3645, !tbaa !1367
  %incdec.ptr95 = getelementptr i8, i8* %70, i32 1, !dbg !3645
  store i8* %incdec.ptr95, i8** %s, align 8, !dbg !3645, !tbaa !1367
  %71 = load i8, i8* %70, align 1, !dbg !3646, !tbaa !2498
  store i8 %71, i8* %c, align 1, !dbg !3647, !tbaa !2498
  %conv96 = sext i8 %71 to i32, !dbg !3648
  %cmp97 = icmp ne i32 %conv96, 0, !dbg !3649
  br i1 %cmp97, label %while.body.99, label %while.end.182, !dbg !3644

while.body.99:                                    ; preds = %while.cond.94
  %72 = load i8, i8* %c, align 1, !dbg !3650, !tbaa !2498
  %conv100 = sext i8 %72 to i32, !dbg !3653
  %and101 = and i32 %conv100, 255, !dbg !3654
  %conv102 = trunc i32 %and101 to i8, !dbg !3655
  %conv103 = zext i8 %conv102 to i32, !dbg !3656
  %and104 = and i32 %conv103, 255, !dbg !3657
  %conv105 = trunc i32 %and104 to i8, !dbg !3658
  %idxprom106 = zext i8 %conv105 to i64, !dbg !3659
  %arrayidx107 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom106, !dbg !3659
  %73 = load i32, i32* %arrayidx107, align 4, !dbg !3659, !tbaa !2291
  %and108 = and i32 %73, 8, !dbg !3660
  %tobool109 = icmp ne i32 %and108, 0, !dbg !3660
  br i1 %tobool109, label %if.then.110, label %if.end.111, !dbg !3661

if.then.110:                                      ; preds = %while.body.99
  br label %while.cond.94, !dbg !3662

if.end.111:                                       ; preds = %while.body.99
  %74 = load i8, i8* %c, align 1, !dbg !3663, !tbaa !2498
  %conv112 = sext i8 %74 to i32, !dbg !3663
  %cmp113 = icmp sle i32 48, %conv112, !dbg !3665
  br i1 %cmp113, label %land.lhs.true.115, label %if.else.145, !dbg !3666

land.lhs.true.115:                                ; preds = %if.end.111
  %75 = load i8, i8* %c, align 1, !dbg !3667, !tbaa !2498
  %conv116 = sext i8 %75 to i32, !dbg !3667
  %cmp117 = icmp sle i32 %conv116, 57, !dbg !3669
  br i1 %cmp117, label %if.then.119, label %if.else.145, !dbg !3670

if.then.119:                                      ; preds = %land.lhs.true.115
  %76 = load i8, i8* %c, align 1, !dbg !3671, !tbaa !2498
  %conv120 = sext i8 %76 to i32, !dbg !3671
  %sub121 = sub i32 %conv120, 48, !dbg !3673
  %conv122 = sext i32 %sub121 to i64, !dbg !3671
  store i64 %conv122, i64* %num, align 8, !dbg !3674, !tbaa !1563
  br label %while.cond.123, !dbg !3675

while.cond.123:                                   ; preds = %while.body.133, %if.then.119
  %77 = load i8*, i8** %s, align 8, !dbg !3676, !tbaa !1367
  %incdec.ptr124 = getelementptr i8, i8* %77, i32 1, !dbg !3676
  store i8* %incdec.ptr124, i8** %s, align 8, !dbg !3676, !tbaa !1367
  %78 = load i8, i8* %77, align 1, !dbg !3679, !tbaa !2498
  store i8 %78, i8* %c, align 1, !dbg !3680, !tbaa !2498
  %conv125 = sext i8 %78 to i32, !dbg !3681
  %cmp126 = icmp sle i32 48, %conv125, !dbg !3682
  br i1 %cmp126, label %land.rhs.128, label %land.end.132, !dbg !3683

land.rhs.128:                                     ; preds = %while.cond.123
  %79 = load i8, i8* %c, align 1, !dbg !3684, !tbaa !2498
  %conv129 = sext i8 %79 to i32, !dbg !3684
  %cmp130 = icmp sle i32 %conv129, 57, !dbg !3686
  br label %land.end.132

land.end.132:                                     ; preds = %land.rhs.128, %while.cond.123
  %80 = phi i1 [ false, %while.cond.123 ], [ %cmp130, %land.rhs.128 ]
  br i1 %80, label %while.body.133, label %while.end.139, !dbg !3687

while.body.133:                                   ; preds = %land.end.132
  %81 = load i64, i64* %num, align 8, !dbg !3689, !tbaa !1563
  %mul134 = mul i64 %81, 10, !dbg !3690
  %82 = load i8, i8* %c, align 1, !dbg !3691, !tbaa !2498
  %conv135 = sext i8 %82 to i32, !dbg !3691
  %sub136 = sub i32 %conv135, 48, !dbg !3692
  %conv137 = sext i32 %sub136 to i64, !dbg !3693
  %add138 = add i64 %mul134, %conv137, !dbg !3694
  store i64 %add138, i64* %num, align 8, !dbg !3695, !tbaa !1563
  br label %while.cond.123, !dbg !3675

while.end.139:                                    ; preds = %land.end.132
  %83 = load i8, i8* %c, align 1, !dbg !3696, !tbaa !2498
  %conv140 = sext i8 %83 to i32, !dbg !3696
  %cmp141 = icmp eq i32 %conv140, 0, !dbg !3698
  br i1 %cmp141, label %if.then.143, label %if.end.144, !dbg !3699

if.then.143:                                      ; preds = %while.end.139
  br label %while.end.182, !dbg !3700

if.end.144:                                       ; preds = %while.end.139
  br label %if.end.146, !dbg !3701

if.else.145:                                      ; preds = %land.lhs.true.115, %if.end.111
  store i64 1, i64* %num, align 8, !dbg !3702, !tbaa !1563
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.end.144
  %84 = load i8, i8* %c, align 1, !dbg !3703, !tbaa !2498
  %conv147 = sext i8 %84 to i32, !dbg !3703
  %85 = load %struct._formatdef*, %struct._formatdef** %f, align 8, !dbg !3704, !tbaa !1367
  %call148 = call %struct._formatdef* @getentry(i32 %conv147, %struct._formatdef* %85), !dbg !3705
  store %struct._formatdef* %call148, %struct._formatdef** %e, align 8, !dbg !3706, !tbaa !1367
  %86 = load i64, i64* %size, align 8, !dbg !3707, !tbaa !1563
  %87 = load i8, i8* %c, align 1, !dbg !3708, !tbaa !2498
  %88 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !3709, !tbaa !1367
  %call149 = call i64 @align(i64 %86, i8 signext %87, %struct._formatdef* %88), !dbg !3710
  store i64 %call149, i64* %size, align 8, !dbg !3711, !tbaa !1563
  %89 = load i8, i8* %c, align 1, !dbg !3712, !tbaa !2498
  %conv150 = sext i8 %89 to i32, !dbg !3712
  %cmp151 = icmp eq i32 %conv150, 115, !dbg !3714
  br i1 %cmp151, label %if.then.157, label %lor.lhs.false.153, !dbg !3715

lor.lhs.false.153:                                ; preds = %if.end.146
  %90 = load i8, i8* %c, align 1, !dbg !3716, !tbaa !2498
  %conv154 = sext i8 %90 to i32, !dbg !3716
  %cmp155 = icmp eq i32 %conv154, 112, !dbg !3718
  br i1 %cmp155, label %if.then.157, label %if.else.161, !dbg !3719

if.then.157:                                      ; preds = %lor.lhs.false.153, %if.end.146
  %91 = load i64, i64* %size, align 8, !dbg !3720, !tbaa !1563
  %92 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3722, !tbaa !1367
  %offset = getelementptr inbounds %struct._formatcode, %struct._formatcode* %92, i32 0, i32 1, !dbg !3723
  store i64 %91, i64* %offset, align 8, !dbg !3724, !tbaa !2465
  %93 = load i64, i64* %num, align 8, !dbg !3725, !tbaa !1563
  %94 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3726, !tbaa !1367
  %size158 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %94, i32 0, i32 2, !dbg !3727
  store i64 %93, i64* %size158, align 8, !dbg !3728, !tbaa !2486
  %95 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !3729, !tbaa !1367
  %96 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3730, !tbaa !1367
  %fmtdef = getelementptr inbounds %struct._formatcode, %struct._formatcode* %96, i32 0, i32 0, !dbg !3731
  store %struct._formatdef* %95, %struct._formatdef** %fmtdef, align 8, !dbg !3732, !tbaa !2452
  %97 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3733, !tbaa !1367
  %repeat = getelementptr inbounds %struct._formatcode, %struct._formatcode* %97, i32 0, i32 3, !dbg !3734
  store i64 1, i64* %repeat, align 8, !dbg !3735, !tbaa !2471
  %98 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3736, !tbaa !1367
  %incdec.ptr159 = getelementptr %struct._formatcode, %struct._formatcode* %98, i32 1, !dbg !3736
  store %struct._formatcode* %incdec.ptr159, %struct._formatcode** %codes, align 8, !dbg !3736, !tbaa !1367
  %99 = load i64, i64* %num, align 8, !dbg !3737, !tbaa !1563
  %100 = load i64, i64* %size, align 8, !dbg !3738, !tbaa !1563
  %add160 = add i64 %100, %99, !dbg !3738
  store i64 %add160, i64* %size, align 8, !dbg !3738, !tbaa !1563
  br label %if.end.181, !dbg !3739

if.else.161:                                      ; preds = %lor.lhs.false.153
  %101 = load i8, i8* %c, align 1, !dbg !3740, !tbaa !2498
  %conv162 = sext i8 %101 to i32, !dbg !3740
  %cmp163 = icmp eq i32 %conv162, 120, !dbg !3742
  br i1 %cmp163, label %if.then.165, label %if.else.167, !dbg !3743

if.then.165:                                      ; preds = %if.else.161
  %102 = load i64, i64* %num, align 8, !dbg !3744, !tbaa !1563
  %103 = load i64, i64* %size, align 8, !dbg !3746, !tbaa !1563
  %add166 = add i64 %103, %102, !dbg !3746
  store i64 %add166, i64* %size, align 8, !dbg !3746, !tbaa !1563
  br label %if.end.180, !dbg !3747

if.else.167:                                      ; preds = %if.else.161
  %104 = load i64, i64* %num, align 8, !dbg !3748, !tbaa !1563
  %tobool168 = icmp ne i64 %104, 0, !dbg !3748
  br i1 %tobool168, label %if.then.169, label %if.end.179, !dbg !3750

if.then.169:                                      ; preds = %if.else.167
  %105 = load i64, i64* %size, align 8, !dbg !3751, !tbaa !1563
  %106 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3753, !tbaa !1367
  %offset170 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %106, i32 0, i32 1, !dbg !3754
  store i64 %105, i64* %offset170, align 8, !dbg !3755, !tbaa !2465
  %107 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !3756, !tbaa !1367
  %size171 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %107, i32 0, i32 1, !dbg !3757
  %108 = load i64, i64* %size171, align 8, !dbg !3757, !tbaa !1437
  %109 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3758, !tbaa !1367
  %size172 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %109, i32 0, i32 2, !dbg !3759
  store i64 %108, i64* %size172, align 8, !dbg !3760, !tbaa !2486
  %110 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !3761, !tbaa !1367
  %111 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3762, !tbaa !1367
  %fmtdef173 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %111, i32 0, i32 0, !dbg !3763
  store %struct._formatdef* %110, %struct._formatdef** %fmtdef173, align 8, !dbg !3764, !tbaa !2452
  %112 = load i64, i64* %num, align 8, !dbg !3765, !tbaa !1563
  %113 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3766, !tbaa !1367
  %repeat174 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %113, i32 0, i32 3, !dbg !3767
  store i64 %112, i64* %repeat174, align 8, !dbg !3768, !tbaa !2471
  %114 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3769, !tbaa !1367
  %incdec.ptr175 = getelementptr %struct._formatcode, %struct._formatcode* %114, i32 1, !dbg !3769
  store %struct._formatcode* %incdec.ptr175, %struct._formatcode** %codes, align 8, !dbg !3769, !tbaa !1367
  %115 = load %struct._formatdef*, %struct._formatdef** %e, align 8, !dbg !3770, !tbaa !1367
  %size176 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %115, i32 0, i32 1, !dbg !3771
  %116 = load i64, i64* %size176, align 8, !dbg !3771, !tbaa !1437
  %117 = load i64, i64* %num, align 8, !dbg !3772, !tbaa !1563
  %mul177 = mul i64 %116, %117, !dbg !3773
  %118 = load i64, i64* %size, align 8, !dbg !3774, !tbaa !1563
  %add178 = add i64 %118, %mul177, !dbg !3774
  store i64 %add178, i64* %size, align 8, !dbg !3774, !tbaa !1563
  br label %if.end.179, !dbg !3775

if.end.179:                                       ; preds = %if.then.169, %if.else.167
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.then.165
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.157
  br label %while.cond.94, !dbg !3644

while.end.182:                                    ; preds = %if.then.143, %while.cond.94
  %119 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3776, !tbaa !1367
  %fmtdef183 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %119, i32 0, i32 0, !dbg !3777
  store %struct._formatdef* null, %struct._formatdef** %fmtdef183, align 8, !dbg !3778, !tbaa !2452
  %120 = load i64, i64* %size, align 8, !dbg !3779, !tbaa !1563
  %121 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3780, !tbaa !1367
  %offset184 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %121, i32 0, i32 1, !dbg !3781
  store i64 %120, i64* %offset184, align 8, !dbg !3782, !tbaa !2465
  %122 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3783, !tbaa !1367
  %size185 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %122, i32 0, i32 2, !dbg !3784
  store i64 0, i64* %size185, align 8, !dbg !3785, !tbaa !2486
  %123 = load %struct._formatcode*, %struct._formatcode** %codes, align 8, !dbg !3786, !tbaa !1367
  %repeat186 = getelementptr inbounds %struct._formatcode, %struct._formatcode* %123, i32 0, i32 3, !dbg !3787
  store i64 0, i64* %repeat186, align 8, !dbg !3788, !tbaa !2471
  store i32 0, i32* %retval, !dbg !3789
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3789

overflow:                                         ; preds = %if.then.69, %if.then.64, %if.then.36
  %124 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !3790, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0)), !dbg !3791
  store i32 -1, i32* %retval, !dbg !3792
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3792

cleanup:                                          ; preds = %overflow, %while.end.182, %if.then.85, %if.then.77, %if.then.51, %if.then.44
  %125 = bitcast i64* %itemsize to i8*, !dbg !3793
  call void @llvm.lifetime.end(i64 8, i8* %125) #1, !dbg !3793
  %126 = bitcast i64* %num to i8*, !dbg !3793
  call void @llvm.lifetime.end(i64 8, i8* %126) #1, !dbg !3793
  %127 = bitcast i64* %ncodes to i8*, !dbg !3793
  call void @llvm.lifetime.end(i64 8, i8* %127) #1, !dbg !3793
  %128 = bitcast i64* %len to i8*, !dbg !3793
  call void @llvm.lifetime.end(i64 8, i8* %128) #1, !dbg !3793
  %129 = bitcast i64* %size to i8*, !dbg !3793
  call void @llvm.lifetime.end(i64 8, i8* %129) #1, !dbg !3793
  call void @llvm.lifetime.end(i64 1, i8* %c) #1, !dbg !3793
  %130 = bitcast i8** %fmt to i8*, !dbg !3793
  call void @llvm.lifetime.end(i64 8, i8* %130) #1, !dbg !3793
  %131 = bitcast i8** %s to i8*, !dbg !3793
  call void @llvm.lifetime.end(i64 8, i8* %131) #1, !dbg !3793
  %132 = bitcast %struct._formatcode** %codes to i8*, !dbg !3793
  call void @llvm.lifetime.end(i64 8, i8* %132) #1, !dbg !3793
  %133 = bitcast %struct._formatdef** %e to i8*, !dbg !3793
  call void @llvm.lifetime.end(i64 8, i8* %133) #1, !dbg !3793
  %134 = bitcast %struct._formatdef** %f to i8*, !dbg !3793
  call void @llvm.lifetime.end(i64 8, i8* %134) #1, !dbg !3793
  %135 = load i32, i32* %retval, !dbg !3793
  ret i32 %135, !dbg !3793
}

; Function Attrs: nounwind uwtable
define internal %struct._formatdef* @whichtable(i8** %pfmt) #0 {
entry:
  %retval = alloca %struct._formatdef*, align 8
  %pfmt.addr = alloca i8**, align 8
  %fmt = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %pfmt, i8*** %pfmt.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8*** %pfmt.addr, metadata !757, metadata !1363), !dbg !3794
  %0 = bitcast i8** %fmt to i8*, !dbg !3795
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3795
  call void @llvm.dbg.declare(metadata i8** %fmt, metadata !758, metadata !1363), !dbg !3796
  %1 = load i8**, i8*** %pfmt.addr, align 8, !dbg !3797, !tbaa !1367
  %2 = load i8*, i8** %1, align 8, !dbg !3798, !tbaa !1367
  %incdec.ptr = getelementptr i8, i8* %2, i32 1, !dbg !3798
  store i8* %incdec.ptr, i8** %1, align 8, !dbg !3798, !tbaa !1367
  store i8* %2, i8** %fmt, align 8, !dbg !3796, !tbaa !1367
  %3 = load i8*, i8** %fmt, align 8, !dbg !3799, !tbaa !1367
  %4 = load i8, i8* %3, align 1, !dbg !3800, !tbaa !2498
  %conv = sext i8 %4 to i32, !dbg !3800
  br label %NodeBlock.9

NodeBlock.9:                                      ; preds = %entry
  %Pivot.10 = icmp slt i32 %conv, 61
  br i1 %Pivot.10, label %NodeBlock, label %NodeBlock.7

NodeBlock.7:                                      ; preds = %NodeBlock.9
  %Pivot.8 = icmp slt i32 %conv, 62
  br i1 %Pivot.8, label %sw.bb.2, label %NodeBlock.5

NodeBlock.5:                                      ; preds = %NodeBlock.7
  %Pivot.6 = icmp slt i32 %conv, 64
  br i1 %Pivot.6, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock.5
  %SwitchLeaf4 = icmp eq i32 %conv, 64
  br i1 %SwitchLeaf4, label %sw.bb.4, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock.5
  %SwitchLeaf2 = icmp eq i32 %conv, 62
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.9
  %Pivot = icmp slt i32 %conv, 60
  br i1 %Pivot, label %LeafBlock, label %sw.bb

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %conv, 33
  br i1 %SwitchLeaf, label %sw.bb.1, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock
  store %struct._formatdef* getelementptr inbounds ([18 x %struct._formatdef], [18 x %struct._formatdef]* @lilendian_table, i32 0, i32 0), %struct._formatdef** %retval, !dbg !3801
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3801

sw.bb.1:                                          ; preds = %LeafBlock.1, %LeafBlock
  store %struct._formatdef* getelementptr inbounds ([18 x %struct._formatdef], [18 x %struct._formatdef]* @bigendian_table, i32 0, i32 0), %struct._formatdef** %retval, !dbg !3803
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3803

sw.bb.2:                                          ; preds = %NodeBlock.7
  store %struct._formatdef* getelementptr inbounds ([18 x %struct._formatdef], [18 x %struct._formatdef]* @lilendian_table, i32 0, i32 0), %struct._formatdef** %retval, !dbg !3804
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3804

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %5 = load i8**, i8*** %pfmt.addr, align 8, !dbg !3806, !tbaa !1367
  %6 = load i8*, i8** %5, align 8, !dbg !3807, !tbaa !1367
  %incdec.ptr3 = getelementptr i8, i8* %6, i32 -1, !dbg !3807
  store i8* %incdec.ptr3, i8** %5, align 8, !dbg !3807, !tbaa !1367
  br label %sw.bb.4, !dbg !3807

sw.bb.4:                                          ; preds = %LeafBlock.3, %sw.default
  store %struct._formatdef* getelementptr inbounds ([21 x %struct._formatdef], [21 x %struct._formatdef]* @native_table, i32 0, i32 0), %struct._formatdef** %retval, !dbg !3808
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3808

cleanup:                                          ; preds = %sw.bb.4, %sw.bb.2, %sw.bb.1, %sw.bb
  %7 = bitcast i8** %fmt to i8*, !dbg !3809
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !3809
  %8 = load %struct._formatdef*, %struct._formatdef** %retval, !dbg !3809
  ret %struct._formatdef* %8, !dbg !3809
}

; Function Attrs: nounwind uwtable
define internal %struct._formatdef* @getentry(i32 %c, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._formatdef*, align 8
  %c.addr = alloca i32, align 4
  %f.addr = alloca %struct._formatdef*, align 8
  store i32 %c, i32* %c.addr, align 4, !tbaa !2291
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !935, metadata !1363), !dbg !3810
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !936, metadata !1363), !dbg !3811
  br label %for.cond, !dbg !3812

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !3813, !tbaa !1367
  %format = getelementptr inbounds %struct._formatdef, %struct._formatdef* %0, i32 0, i32 0, !dbg !3818
  %1 = load i8, i8* %format, align 1, !dbg !3818, !tbaa !1396
  %conv = sext i8 %1 to i32, !dbg !3819
  %cmp = icmp ne i32 %conv, 0, !dbg !3820
  br i1 %cmp, label %for.body, label %for.end, !dbg !3821

for.body:                                         ; preds = %for.cond
  %2 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !3822, !tbaa !1367
  %format2 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %2, i32 0, i32 0, !dbg !3825
  %3 = load i8, i8* %format2, align 1, !dbg !3825, !tbaa !1396
  %conv3 = sext i8 %3 to i32, !dbg !3822
  %4 = load i32, i32* %c.addr, align 4, !dbg !3826, !tbaa !2291
  %cmp4 = icmp eq i32 %conv3, %4, !dbg !3827
  br i1 %cmp4, label %if.then, label %if.end, !dbg !3828

if.then:                                          ; preds = %for.body
  %5 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !3829, !tbaa !1367
  store %struct._formatdef* %5, %struct._formatdef** %retval, !dbg !3831
  br label %return, !dbg !3831

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3832

for.inc:                                          ; preds = %if.end
  %6 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !3833, !tbaa !1367
  %incdec.ptr = getelementptr %struct._formatdef, %struct._formatdef* %6, i32 1, !dbg !3833
  store %struct._formatdef* %incdec.ptr, %struct._formatdef** %f.addr, align 8, !dbg !3833, !tbaa !1367
  br label %for.cond, !dbg !3834

for.end:                                          ; preds = %for.cond
  %7 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !3835, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0)), !dbg !3836
  store %struct._formatdef* null, %struct._formatdef** %retval, !dbg !3837
  br label %return, !dbg !3837

return:                                           ; preds = %for.end, %if.then
  %8 = load %struct._formatdef*, %struct._formatdef** %retval, !dbg !3838
  ret %struct._formatdef* %8, !dbg !3838
}

; Function Attrs: nounwind uwtable
define internal i64 @align(i64 %size, i8 signext %c, %struct._formatdef* %e) #0 {
entry:
  %retval = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %c.addr = alloca i8, align 1
  %e.addr = alloca %struct._formatdef*, align 8
  %extra = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %size, i64* %size.addr, align 8, !tbaa !1563
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !941, metadata !1363), !dbg !3839
  store i8 %c, i8* %c.addr, align 1, !tbaa !2498
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !942, metadata !1363), !dbg !3840
  store %struct._formatdef* %e, %struct._formatdef** %e.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %e.addr, metadata !943, metadata !1363), !dbg !3841
  %0 = bitcast i64* %extra to i8*, !dbg !3842
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3842
  call void @llvm.dbg.declare(metadata i64* %extra, metadata !944, metadata !1363), !dbg !3843
  %1 = load %struct._formatdef*, %struct._formatdef** %e.addr, align 8, !dbg !3844, !tbaa !1367
  %format = getelementptr inbounds %struct._formatdef, %struct._formatdef* %1, i32 0, i32 0, !dbg !3846
  %2 = load i8, i8* %format, align 1, !dbg !3846, !tbaa !1396
  %conv = sext i8 %2 to i32, !dbg !3844
  %3 = load i8, i8* %c.addr, align 1, !dbg !3847, !tbaa !2498
  %conv1 = sext i8 %3 to i32, !dbg !3847
  %cmp = icmp eq i32 %conv, %conv1, !dbg !3848
  br i1 %cmp, label %if.then, label %if.end.15, !dbg !3849

if.then:                                          ; preds = %entry
  %4 = load %struct._formatdef*, %struct._formatdef** %e.addr, align 8, !dbg !3850, !tbaa !1367
  %alignment = getelementptr inbounds %struct._formatdef, %struct._formatdef* %4, i32 0, i32 2, !dbg !3853
  %5 = load i64, i64* %alignment, align 8, !dbg !3853, !tbaa !3854
  %tobool = icmp ne i64 %5, 0, !dbg !3850
  br i1 %tobool, label %land.lhs.true, label %if.end.14, !dbg !3855

land.lhs.true:                                    ; preds = %if.then
  %6 = load i64, i64* %size.addr, align 8, !dbg !3856, !tbaa !1563
  %cmp3 = icmp sgt i64 %6, 0, !dbg !3858
  br i1 %cmp3, label %if.then.5, label %if.end.14, !dbg !3859

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct._formatdef*, %struct._formatdef** %e.addr, align 8, !dbg !3860, !tbaa !1367
  %alignment6 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %7, i32 0, i32 2, !dbg !3862
  %8 = load i64, i64* %alignment6, align 8, !dbg !3862, !tbaa !3854
  %sub = sub i64 %8, 1, !dbg !3863
  %9 = load i64, i64* %size.addr, align 8, !dbg !3864, !tbaa !1563
  %sub7 = sub i64 %9, 1, !dbg !3865
  %10 = load %struct._formatdef*, %struct._formatdef** %e.addr, align 8, !dbg !3866, !tbaa !1367
  %alignment8 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %10, i32 0, i32 2, !dbg !3867
  %11 = load i64, i64* %alignment8, align 8, !dbg !3867, !tbaa !3854
  %rem = srem i64 %sub7, %11, !dbg !3868
  %sub9 = sub i64 %sub, %rem, !dbg !3869
  store i64 %sub9, i64* %extra, align 8, !dbg !3870, !tbaa !1563
  %12 = load i64, i64* %extra, align 8, !dbg !3871, !tbaa !1563
  %13 = load i64, i64* %size.addr, align 8, !dbg !3873, !tbaa !1563
  %sub10 = sub i64 9223372036854775807, %13, !dbg !3874
  %cmp11 = icmp sgt i64 %12, %sub10, !dbg !3875
  br i1 %cmp11, label %if.then.13, label %if.end, !dbg !3876

if.then.13:                                       ; preds = %if.then.5
  store i64 -1, i64* %retval, !dbg !3877
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3877

if.end:                                           ; preds = %if.then.5
  %14 = load i64, i64* %extra, align 8, !dbg !3878, !tbaa !1563
  %15 = load i64, i64* %size.addr, align 8, !dbg !3879, !tbaa !1563
  %add = add i64 %15, %14, !dbg !3879
  store i64 %add, i64* %size.addr, align 8, !dbg !3879, !tbaa !1563
  br label %if.end.14, !dbg !3880

if.end.14:                                        ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end.15, !dbg !3881

if.end.15:                                        ; preds = %if.end.14, %entry
  %16 = load i64, i64* %size.addr, align 8, !dbg !3882, !tbaa !1563
  store i64 %16, i64* %retval, !dbg !3883
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3883

cleanup:                                          ; preds = %if.end.15, %if.then.13
  %17 = bitcast i64* %extra to i8*, !dbg !3884
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !3884
  %18 = load i64, i64* %retval, !dbg !3884
  ret i64 %18, !dbg !3884
}

declare %struct._object* @PyErr_NoMemory() #3

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_byte(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !763, metadata !1363), !dbg !3885
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !764, metadata !1363), !dbg !3886
  %0 = load i8*, i8** %p.addr, align 8, !dbg !3887, !tbaa !1367
  %1 = load i8, i8* %0, align 1, !dbg !3888, !tbaa !2498
  %conv = sext i8 %1 to i64, !dbg !3889
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !3890
  ret %struct._object* %call, !dbg !3891
}

; Function Attrs: nounwind uwtable
define internal i32 @np_byte(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !769, metadata !1363), !dbg !3892
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !770, metadata !1363), !dbg !3893
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !771, metadata !1363), !dbg !3894
  %0 = bitcast i64* %x to i8*, !dbg !3895
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3895
  call void @llvm.dbg.declare(metadata i64* %x, metadata !772, metadata !1363), !dbg !3896
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3897, !tbaa !1367
  %call = call i32 @get_long(%struct._object* %1, i64* %x), !dbg !3899
  %cmp = icmp slt i32 %call, 0, !dbg !3900
  br i1 %cmp, label %if.then, label %if.end, !dbg !3901

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !3902
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3902

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %x, align 8, !dbg !3903, !tbaa !1563
  %cmp1 = icmp slt i64 %2, -128, !dbg !3905
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !3906

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, i64* %x, align 8, !dbg !3907, !tbaa !1563
  %cmp2 = icmp sgt i64 %3, 127, !dbg !3909
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !3910

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %4 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !3911, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i32 0, i32 0)), !dbg !3913
  store i32 -1, i32* %retval, !dbg !3914
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3914

if.end.4:                                         ; preds = %lor.lhs.false
  %5 = load i64, i64* %x, align 8, !dbg !3915, !tbaa !1563
  %conv = trunc i64 %5 to i8, !dbg !3916
  %6 = load i8*, i8** %p.addr, align 8, !dbg !3917, !tbaa !1367
  store i8 %conv, i8* %6, align 1, !dbg !3918, !tbaa !2498
  store i32 0, i32* %retval, !dbg !3919
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3919

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %7 = bitcast i64* %x to i8*, !dbg !3920
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !3920
  %8 = load i32, i32* %retval, !dbg !3920
  ret i32 %8, !dbg !3920
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_ubyte(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !788, metadata !1363), !dbg !3921
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !789, metadata !1363), !dbg !3922
  %0 = load i8*, i8** %p.addr, align 8, !dbg !3923, !tbaa !1367
  %1 = load i8, i8* %0, align 1, !dbg !3924, !tbaa !2498
  %conv = zext i8 %1 to i64, !dbg !3925
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !3926
  ret %struct._object* %call, !dbg !3927
}

; Function Attrs: nounwind uwtable
define internal i32 @np_ubyte(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !792, metadata !1363), !dbg !3928
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !793, metadata !1363), !dbg !3929
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !794, metadata !1363), !dbg !3930
  %0 = bitcast i64* %x to i8*, !dbg !3931
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3931
  call void @llvm.dbg.declare(metadata i64* %x, metadata !795, metadata !1363), !dbg !3932
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3933, !tbaa !1367
  %call = call i32 @get_long(%struct._object* %1, i64* %x), !dbg !3935
  %cmp = icmp slt i32 %call, 0, !dbg !3936
  br i1 %cmp, label %if.then, label %if.end, !dbg !3937

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !3938
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3938

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %x, align 8, !dbg !3939, !tbaa !1563
  %cmp1 = icmp slt i64 %2, 0, !dbg !3941
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !3942

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, i64* %x, align 8, !dbg !3943, !tbaa !1563
  %cmp2 = icmp sgt i64 %3, 255, !dbg !3945
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !3946

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %4 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !3947, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i32 0, i32 0)), !dbg !3949
  store i32 -1, i32* %retval, !dbg !3950
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3950

if.end.4:                                         ; preds = %lor.lhs.false
  %5 = load i64, i64* %x, align 8, !dbg !3951, !tbaa !1563
  %conv = trunc i64 %5 to i8, !dbg !3952
  %6 = load i8*, i8** %p.addr, align 8, !dbg !3953, !tbaa !1367
  store i8 %conv, i8* %6, align 1, !dbg !3954, !tbaa !2498
  store i32 0, i32* %retval, !dbg !3955
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3955

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %7 = bitcast i64* %x to i8*, !dbg !3956
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !3956
  %8 = load i32, i32* %retval, !dbg !3956
  ret i32 %8, !dbg !3956
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_char(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !798, metadata !1363), !dbg !3957
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !799, metadata !1363), !dbg !3958
  %0 = load i8*, i8** %p.addr, align 8, !dbg !3959, !tbaa !1367
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %0, i64 1), !dbg !3960
  ret %struct._object* %call, !dbg !3961
}

; Function Attrs: nounwind uwtable
define internal i32 @np_char(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !802, metadata !1363), !dbg !3962
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !803, metadata !1363), !dbg !3963
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !804, metadata !1363), !dbg !3964
  %0 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3965, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3967
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3967, !tbaa !1377
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19, !dbg !3968
  %2 = load i64, i64* %tp_flags, align 8, !dbg !3968, !tbaa !2732
  %and = and i64 %2, 134217728, !dbg !3969
  %cmp = icmp ne i64 %and, 0, !dbg !3970
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !3971

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3972, !tbaa !1367
  %call = call i64 @PyBytes_Size(%struct._object* %3), !dbg !3974
  %cmp1 = icmp ne i64 %call, 1, !dbg !3975
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3976

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !3977, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.43, i32 0, i32 0)), !dbg !3979
  store i32 -1, i32* %retval, !dbg !3980
  br label %return, !dbg !3980

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3981, !tbaa !1367
  %call2 = call i8* @PyBytes_AsString(%struct._object* %5), !dbg !3982
  %6 = load i8, i8* %call2, align 1, !dbg !3983, !tbaa !2498
  %7 = load i8*, i8** %p.addr, align 8, !dbg !3984, !tbaa !1367
  store i8 %6, i8* %7, align 1, !dbg !3985, !tbaa !2498
  store i32 0, i32* %retval, !dbg !3986
  br label %return, !dbg !3986

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, !dbg !3987
  ret i32 %8, !dbg !3987
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bu_int(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %bytes = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !807, metadata !1363), !dbg !3988
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !808, metadata !1363), !dbg !3989
  %0 = bitcast i64* %x to i8*, !dbg !3990
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3990
  call void @llvm.dbg.declare(metadata i64* %x, metadata !809, metadata !1363), !dbg !3991
  store i64 0, i64* %x, align 8, !dbg !3991, !tbaa !1563
  %1 = bitcast i64* %i to i8*, !dbg !3992
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3992
  call void @llvm.dbg.declare(metadata i64* %i, metadata !810, metadata !1363), !dbg !3993
  %2 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !3994, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %2, i32 0, i32 1, !dbg !3995
  %3 = load i64, i64* %size, align 8, !dbg !3995, !tbaa !1437
  store i64 %3, i64* %i, align 8, !dbg !3993, !tbaa !1563
  %4 = bitcast i8** %bytes to i8*, !dbg !3996
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3996
  call void @llvm.dbg.declare(metadata i8** %bytes, metadata !811, metadata !1363), !dbg !3997
  %5 = load i8*, i8** %p.addr, align 8, !dbg !3998, !tbaa !1367
  store i8* %5, i8** %bytes, align 8, !dbg !3997, !tbaa !1367
  br label %do.body, !dbg !3999

do.body:                                          ; preds = %do.cond, %entry
  %6 = load i64, i64* %x, align 8, !dbg !4000, !tbaa !1563
  %shl = shl i64 %6, 8, !dbg !4002
  %7 = load i8*, i8** %bytes, align 8, !dbg !4003, !tbaa !1367
  %incdec.ptr = getelementptr i8, i8* %7, i32 1, !dbg !4003
  store i8* %incdec.ptr, i8** %bytes, align 8, !dbg !4003, !tbaa !1367
  %8 = load i8, i8* %7, align 1, !dbg !4004, !tbaa !2498
  %conv = zext i8 %8 to i64, !dbg !4004
  %or = or i64 %shl, %conv, !dbg !4005
  store i64 %or, i64* %x, align 8, !dbg !4006, !tbaa !1563
  br label %do.cond, !dbg !4007

do.cond:                                          ; preds = %do.body
  %9 = load i64, i64* %i, align 8, !dbg !4008, !tbaa !1563
  %dec = add i64 %9, -1, !dbg !4008
  store i64 %dec, i64* %i, align 8, !dbg !4008, !tbaa !1563
  %cmp = icmp sgt i64 %dec, 0, !dbg !4010
  br i1 %cmp, label %do.body, label %do.end, !dbg !4007

do.end:                                           ; preds = %do.cond
  %10 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4011, !tbaa !1367
  %size2 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %10, i32 0, i32 1, !dbg !4013
  %11 = load i64, i64* %size2, align 8, !dbg !4013, !tbaa !1437
  %cmp3 = icmp sgt i64 8, %11, !dbg !4014
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4015

if.then:                                          ; preds = %do.end
  %12 = load i64, i64* %x, align 8, !dbg !4016, !tbaa !1563
  %13 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4017, !tbaa !1367
  %size5 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %13, i32 0, i32 1, !dbg !4018
  %14 = load i64, i64* %size5, align 8, !dbg !4018, !tbaa !1437
  %mul = mul i64 8, %14, !dbg !4019
  %sub = sub i64 %mul, 1, !dbg !4020
  %shl6 = shl i64 1, %sub, !dbg !4021
  %and = and i64 %12, %shl6, !dbg !4022
  %sub7 = sub i64 0, %and, !dbg !4023
  %15 = load i64, i64* %x, align 8, !dbg !4024, !tbaa !1563
  %or8 = or i64 %15, %sub7, !dbg !4024
  store i64 %or8, i64* %x, align 8, !dbg !4024, !tbaa !1563
  br label %if.end, !dbg !4025

if.end:                                           ; preds = %if.then, %do.end
  %16 = load i64, i64* %x, align 8, !dbg !4026, !tbaa !1563
  %call = call %struct._object* @PyLong_FromLong(i64 %16), !dbg !4027
  %17 = bitcast i8** %bytes to i8*, !dbg !4028
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !4028
  %18 = bitcast i64* %i to i8*, !dbg !4028
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !4028
  %19 = bitcast i64* %x to i8*, !dbg !4028
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !4028
  ret %struct._object* %call, !dbg !4029
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !814, metadata !1363), !dbg !4030
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !815, metadata !1363), !dbg !4031
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !816, metadata !1363), !dbg !4032
  %0 = bitcast i64* %x to i8*, !dbg !4033
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4033
  call void @llvm.dbg.declare(metadata i64* %x, metadata !817, metadata !1363), !dbg !4034
  %1 = bitcast i64* %i to i8*, !dbg !4035
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4035
  call void @llvm.dbg.declare(metadata i64* %i, metadata !818, metadata !1363), !dbg !4036
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4037, !tbaa !1367
  %call = call i32 @get_long(%struct._object* %2, i64* %x), !dbg !4039
  %cmp = icmp slt i32 %call, 0, !dbg !4040
  br i1 %cmp, label %if.then, label %if.end, !dbg !4041

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4042
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4042

if.end:                                           ; preds = %entry
  %3 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4043, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %3, i32 0, i32 1, !dbg !4044
  %4 = load i64, i64* %size, align 8, !dbg !4044, !tbaa !1437
  store i64 %4, i64* %i, align 8, !dbg !4045, !tbaa !1563
  %5 = load i64, i64* %i, align 8, !dbg !4046, !tbaa !1563
  %cmp1 = icmp ne i64 %5, 8, !dbg !4048
  br i1 %cmp1, label %if.then.2, label %if.end.17, !dbg !4049

if.then.2:                                        ; preds = %if.end
  %6 = load i64, i64* %i, align 8, !dbg !4050, !tbaa !1563
  %cmp3 = icmp eq i64 %6, 2, !dbg !4053
  br i1 %cmp3, label %land.lhs.true, label %if.else, !dbg !4054

land.lhs.true:                                    ; preds = %if.then.2
  %7 = load i64, i64* %x, align 8, !dbg !4055, !tbaa !1563
  %cmp4 = icmp slt i64 %7, -32768, !dbg !4057
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false, !dbg !4058

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i64, i64* %x, align 8, !dbg !4059, !tbaa !1563
  %cmp5 = icmp sgt i64 %8, 32767, !dbg !4061
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !4062

if.then.6:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4063, !tbaa !1367
  %call7 = call i32 @_range_error(%struct._formatdef* %9, i32 0), !dbg !4064
  store i32 %call7, i32* %retval, !dbg !4065
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4065

if.else:                                          ; preds = %lor.lhs.false, %if.then.2
  %10 = load i64, i64* %i, align 8, !dbg !4066, !tbaa !1563
  %cmp8 = icmp eq i64 %10, 4, !dbg !4068
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.15, !dbg !4069

land.lhs.true.9:                                  ; preds = %if.else
  %11 = load i64, i64* %x, align 8, !dbg !4070, !tbaa !1563
  %cmp10 = icmp slt i64 %11, -2147483648, !dbg !4072
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11, !dbg !4073

lor.lhs.false.11:                                 ; preds = %land.lhs.true.9
  %12 = load i64, i64* %x, align 8, !dbg !4074, !tbaa !1563
  %cmp12 = icmp sgt i64 %12, 2147483647, !dbg !4076
  br i1 %cmp12, label %if.then.13, label %if.end.15, !dbg !4077

if.then.13:                                       ; preds = %lor.lhs.false.11, %land.lhs.true.9
  %13 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4078, !tbaa !1367
  %call14 = call i32 @_range_error(%struct._formatdef* %13, i32 0), !dbg !4079
  store i32 %call14, i32* %retval, !dbg !4080
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4080

if.end.15:                                        ; preds = %lor.lhs.false.11, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  br label %if.end.17, !dbg !4081

if.end.17:                                        ; preds = %if.end.16, %if.end
  br label %do.body, !dbg !4082

do.body:                                          ; preds = %do.cond, %if.end.17
  %14 = load i64, i64* %x, align 8, !dbg !4083, !tbaa !1563
  %conv = trunc i64 %14 to i8, !dbg !4085
  %15 = load i64, i64* %i, align 8, !dbg !4086, !tbaa !1563
  %dec = add i64 %15, -1, !dbg !4086
  store i64 %dec, i64* %i, align 8, !dbg !4086, !tbaa !1563
  %16 = load i8*, i8** %p.addr, align 8, !dbg !4087, !tbaa !1367
  %arrayidx = getelementptr i8, i8* %16, i64 %dec, !dbg !4087
  store i8 %conv, i8* %arrayidx, align 1, !dbg !4088, !tbaa !2498
  %17 = load i64, i64* %x, align 8, !dbg !4089, !tbaa !1563
  %shr = ashr i64 %17, 8, !dbg !4089
  store i64 %shr, i64* %x, align 8, !dbg !4089, !tbaa !1563
  br label %do.cond, !dbg !4090

do.cond:                                          ; preds = %do.body
  %18 = load i64, i64* %i, align 8, !dbg !4091, !tbaa !1563
  %cmp18 = icmp sgt i64 %18, 0, !dbg !4093
  br i1 %cmp18, label %do.body, label %do.end, !dbg !4090

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, !dbg !4094
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4094

cleanup:                                          ; preds = %do.end, %if.then.13, %if.then.6, %if.then
  %19 = bitcast i64* %i to i8*, !dbg !4095
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !4095
  %20 = bitcast i64* %x to i8*, !dbg !4095
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !4095
  %21 = load i32, i32* %retval, !dbg !4095
  ret i32 %21, !dbg !4095
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !833, metadata !1363), !dbg !4096
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !834, metadata !1363), !dbg !4097
  %0 = bitcast i64* %x to i8*, !dbg !4098
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4098
  call void @llvm.dbg.declare(metadata i64* %x, metadata !835, metadata !1363), !dbg !4099
  store i64 0, i64* %x, align 8, !dbg !4099, !tbaa !1563
  %1 = bitcast i64* %i to i8*, !dbg !4100
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4100
  call void @llvm.dbg.declare(metadata i64* %i, metadata !836, metadata !1363), !dbg !4101
  %2 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4102, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %2, i32 0, i32 1, !dbg !4103
  %3 = load i64, i64* %size, align 8, !dbg !4103, !tbaa !1437
  store i64 %3, i64* %i, align 8, !dbg !4101, !tbaa !1563
  %4 = bitcast i8** %bytes to i8*, !dbg !4104
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4104
  call void @llvm.dbg.declare(metadata i8** %bytes, metadata !837, metadata !1363), !dbg !4105
  %5 = load i8*, i8** %p.addr, align 8, !dbg !4106, !tbaa !1367
  store i8* %5, i8** %bytes, align 8, !dbg !4105, !tbaa !1367
  br label %do.body, !dbg !4107

do.body:                                          ; preds = %do.cond, %entry
  %6 = load i64, i64* %x, align 8, !dbg !4108, !tbaa !1563
  %shl = shl i64 %6, 8, !dbg !4110
  %7 = load i8*, i8** %bytes, align 8, !dbg !4111, !tbaa !1367
  %incdec.ptr = getelementptr i8, i8* %7, i32 1, !dbg !4111
  store i8* %incdec.ptr, i8** %bytes, align 8, !dbg !4111, !tbaa !1367
  %8 = load i8, i8* %7, align 1, !dbg !4112, !tbaa !2498
  %conv = zext i8 %8 to i64, !dbg !4112
  %or = or i64 %shl, %conv, !dbg !4113
  store i64 %or, i64* %x, align 8, !dbg !4114, !tbaa !1563
  br label %do.cond, !dbg !4115

do.cond:                                          ; preds = %do.body
  %9 = load i64, i64* %i, align 8, !dbg !4116, !tbaa !1563
  %dec = add i64 %9, -1, !dbg !4116
  store i64 %dec, i64* %i, align 8, !dbg !4116, !tbaa !1563
  %cmp = icmp sgt i64 %dec, 0, !dbg !4118
  br i1 %cmp, label %do.body, label %do.end, !dbg !4115

do.end:                                           ; preds = %do.cond
  %10 = load i64, i64* %x, align 8, !dbg !4119, !tbaa !1563
  %cmp2 = icmp ule i64 %10, 9223372036854775807, !dbg !4121
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4122

if.then:                                          ; preds = %do.end
  %11 = load i64, i64* %x, align 8, !dbg !4123, !tbaa !1563
  %call = call %struct._object* @PyLong_FromLong(i64 %11), !dbg !4124
  store %struct._object* %call, %struct._object** %retval, !dbg !4125
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4125

if.end:                                           ; preds = %do.end
  %12 = load i64, i64* %x, align 8, !dbg !4126, !tbaa !1563
  %call4 = call %struct._object* @PyLong_FromUnsignedLong(i64 %12), !dbg !4127
  store %struct._object* %call4, %struct._object** %retval, !dbg !4128
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4128

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i8** %bytes to i8*, !dbg !4129
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !4129
  %14 = bitcast i64* %i to i8*, !dbg !4129
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !4129
  %15 = bitcast i64* %x to i8*, !dbg !4129
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !4129
  %16 = load %struct._object*, %struct._object** %retval, !dbg !4129
  ret %struct._object* %16, !dbg !4129
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
  %cleanup.dest.slot = alloca i32
  %maxint = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !840, metadata !1363), !dbg !4130
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !841, metadata !1363), !dbg !4131
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !842, metadata !1363), !dbg !4132
  %0 = bitcast i64* %x to i8*, !dbg !4133
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4133
  call void @llvm.dbg.declare(metadata i64* %x, metadata !843, metadata !1363), !dbg !4134
  %1 = bitcast i64* %i to i8*, !dbg !4135
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4135
  call void @llvm.dbg.declare(metadata i64* %i, metadata !844, metadata !1363), !dbg !4136
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4137, !tbaa !1367
  %call = call i32 @get_ulong(%struct._object* %2, i64* %x), !dbg !4139
  %cmp = icmp slt i32 %call, 0, !dbg !4140
  br i1 %cmp, label %if.then, label %if.end, !dbg !4141

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4142
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10, !dbg !4142

if.end:                                           ; preds = %entry
  %3 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4143, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %3, i32 0, i32 1, !dbg !4144
  %4 = load i64, i64* %size, align 8, !dbg !4144, !tbaa !1437
  store i64 %4, i64* %i, align 8, !dbg !4145, !tbaa !1563
  %5 = load i64, i64* %i, align 8, !dbg !4146, !tbaa !1563
  %cmp1 = icmp ne i64 %5, 8, !dbg !4147
  br i1 %cmp1, label %if.then.2, label %if.end.7, !dbg !4148

if.then.2:                                        ; preds = %if.end
  %6 = bitcast i64* %maxint to i8*, !dbg !4149
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !4149
  call void @llvm.dbg.declare(metadata i64* %maxint, metadata !845, metadata !1363), !dbg !4150
  store i64 1, i64* %maxint, align 8, !dbg !4150, !tbaa !1563
  %7 = load i64, i64* %i, align 8, !dbg !4151, !tbaa !1563
  %mul = mul i64 %7, 8, !dbg !4152
  %8 = load i64, i64* %maxint, align 8, !dbg !4153, !tbaa !1563
  %shl = shl i64 %8, %mul, !dbg !4153
  store i64 %shl, i64* %maxint, align 8, !dbg !4153, !tbaa !1563
  %9 = load i64, i64* %x, align 8, !dbg !4154, !tbaa !1563
  %10 = load i64, i64* %maxint, align 8, !dbg !4156, !tbaa !1563
  %cmp3 = icmp uge i64 %9, %10, !dbg !4157
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !4158

if.then.4:                                        ; preds = %if.then.2
  %11 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4159, !tbaa !1367
  %call5 = call i32 @_range_error(%struct._formatdef* %11, i32 1), !dbg !4160
  store i32 %call5, i32* %retval, !dbg !4161
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4161

if.end.6:                                         ; preds = %if.then.2
  store i32 0, i32* %cleanup.dest.slot, !dbg !4162
  br label %cleanup, !dbg !4162

cleanup:                                          ; preds = %if.end.6, %if.then.4
  %12 = bitcast i64* %maxint to i8*, !dbg !4163
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !4163
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.7, !dbg !4165

if.end.7:                                         ; preds = %cleanup.cont, %if.end
  br label %do.body, !dbg !4166

do.body:                                          ; preds = %do.cond, %if.end.7
  %13 = load i64, i64* %x, align 8, !dbg !4167, !tbaa !1563
  %conv = trunc i64 %13 to i8, !dbg !4169
  %14 = load i64, i64* %i, align 8, !dbg !4170, !tbaa !1563
  %dec = add i64 %14, -1, !dbg !4170
  store i64 %dec, i64* %i, align 8, !dbg !4170, !tbaa !1563
  %15 = load i8*, i8** %p.addr, align 8, !dbg !4171, !tbaa !1367
  %arrayidx = getelementptr i8, i8* %15, i64 %dec, !dbg !4171
  store i8 %conv, i8* %arrayidx, align 1, !dbg !4172, !tbaa !2498
  %16 = load i64, i64* %x, align 8, !dbg !4173, !tbaa !1563
  %shr = lshr i64 %16, 8, !dbg !4173
  store i64 %shr, i64* %x, align 8, !dbg !4173, !tbaa !1563
  br label %do.cond, !dbg !4174

do.cond:                                          ; preds = %do.body
  %17 = load i64, i64* %i, align 8, !dbg !4175, !tbaa !1563
  %cmp8 = icmp sgt i64 %17, 0, !dbg !4177
  br i1 %cmp8, label %do.body, label %do.end, !dbg !4174

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, !dbg !4178
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10, !dbg !4178

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.10

cleanup.10:                                       ; preds = %NewDefault, %do.end, %if.then
  %18 = bitcast i64* %i to i8*, !dbg !4179
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !4179
  %19 = bitcast i64* %x to i8*, !dbg !4179
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !4179
  %20 = load i32, i32* %retval, !dbg !4179
  ret i32 %20, !dbg !4179
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !860, metadata !1363), !dbg !4180
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !861, metadata !1363), !dbg !4181
  %0 = bitcast i64* %x to i8*, !dbg !4182
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4182
  call void @llvm.dbg.declare(metadata i64* %x, metadata !862, metadata !1363), !dbg !4183
  store i64 0, i64* %x, align 8, !dbg !4183, !tbaa !4184
  %1 = bitcast i64* %i to i8*, !dbg !4186
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4186
  call void @llvm.dbg.declare(metadata i64* %i, metadata !863, metadata !1363), !dbg !4187
  %2 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4188, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %2, i32 0, i32 1, !dbg !4189
  %3 = load i64, i64* %size, align 8, !dbg !4189, !tbaa !1437
  store i64 %3, i64* %i, align 8, !dbg !4187, !tbaa !1563
  %4 = bitcast i8** %bytes to i8*, !dbg !4190
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4190
  call void @llvm.dbg.declare(metadata i8** %bytes, metadata !864, metadata !1363), !dbg !4191
  %5 = load i8*, i8** %p.addr, align 8, !dbg !4192, !tbaa !1367
  store i8* %5, i8** %bytes, align 8, !dbg !4191, !tbaa !1367
  br label %do.body, !dbg !4193

do.body:                                          ; preds = %do.cond, %entry
  %6 = load i64, i64* %x, align 8, !dbg !4194, !tbaa !4184
  %shl = shl i64 %6, 8, !dbg !4196
  %7 = load i8*, i8** %bytes, align 8, !dbg !4197, !tbaa !1367
  %incdec.ptr = getelementptr i8, i8* %7, i32 1, !dbg !4197
  store i8* %incdec.ptr, i8** %bytes, align 8, !dbg !4197, !tbaa !1367
  %8 = load i8, i8* %7, align 1, !dbg !4198, !tbaa !2498
  %conv = zext i8 %8 to i64, !dbg !4198
  %or = or i64 %shl, %conv, !dbg !4199
  store i64 %or, i64* %x, align 8, !dbg !4200, !tbaa !4184
  br label %do.cond, !dbg !4201

do.cond:                                          ; preds = %do.body
  %9 = load i64, i64* %i, align 8, !dbg !4202, !tbaa !1563
  %dec = add i64 %9, -1, !dbg !4202
  store i64 %dec, i64* %i, align 8, !dbg !4202, !tbaa !1563
  %cmp = icmp sgt i64 %dec, 0, !dbg !4204
  br i1 %cmp, label %do.body, label %do.end, !dbg !4201

do.end:                                           ; preds = %do.cond
  %10 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4205, !tbaa !1367
  %size2 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %10, i32 0, i32 1, !dbg !4207
  %11 = load i64, i64* %size2, align 8, !dbg !4207, !tbaa !1437
  %cmp3 = icmp sgt i64 8, %11, !dbg !4208
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4209

if.then:                                          ; preds = %do.end
  %12 = load i64, i64* %x, align 8, !dbg !4210, !tbaa !4184
  %13 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4211, !tbaa !1367
  %size5 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %13, i32 0, i32 1, !dbg !4212
  %14 = load i64, i64* %size5, align 8, !dbg !4212, !tbaa !1437
  %mul = mul i64 8, %14, !dbg !4213
  %sub = sub i64 %mul, 1, !dbg !4214
  %shl6 = shl i64 1, %sub, !dbg !4215
  %and = and i64 %12, %shl6, !dbg !4216
  %sub7 = sub i64 0, %and, !dbg !4217
  %15 = load i64, i64* %x, align 8, !dbg !4218, !tbaa !4184
  %or8 = or i64 %15, %sub7, !dbg !4218
  store i64 %or8, i64* %x, align 8, !dbg !4218, !tbaa !4184
  br label %if.end, !dbg !4219

if.end:                                           ; preds = %if.then, %do.end
  %16 = load i64, i64* %x, align 8, !dbg !4220, !tbaa !4184
  %cmp9 = icmp sge i64 %16, -9223372036854775808, !dbg !4222
  br i1 %cmp9, label %land.lhs.true, label %if.end.14, !dbg !4223

land.lhs.true:                                    ; preds = %if.end
  %17 = load i64, i64* %x, align 8, !dbg !4224, !tbaa !4184
  %cmp11 = icmp sle i64 %17, 9223372036854775807, !dbg !4226
  br i1 %cmp11, label %if.then.13, label %if.end.14, !dbg !4227

if.then.13:                                       ; preds = %land.lhs.true
  %18 = load i64, i64* %x, align 8, !dbg !4228, !tbaa !4184
  %call = call %struct._object* @PyLong_FromLong(i64 %18), !dbg !4229
  store %struct._object* %call, %struct._object** %retval, !dbg !4230
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4230

if.end.14:                                        ; preds = %land.lhs.true, %if.end
  %19 = load i64, i64* %x, align 8, !dbg !4231, !tbaa !4184
  %call15 = call %struct._object* @PyLong_FromLongLong(i64 %19), !dbg !4232
  store %struct._object* %call15, %struct._object** %retval, !dbg !4233
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4233

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %20 = bitcast i8** %bytes to i8*, !dbg !4234
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !4234
  %21 = bitcast i64* %i to i8*, !dbg !4234
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !4234
  %22 = bitcast i64* %x to i8*, !dbg !4234
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !4234
  %23 = load %struct._object*, %struct._object** %retval, !dbg !4234
  ret %struct._object* %23, !dbg !4234
}

; Function Attrs: nounwind uwtable
define internal i32 @bp_longlong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !867, metadata !1363), !dbg !4235
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !868, metadata !1363), !dbg !4236
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !869, metadata !1363), !dbg !4237
  %0 = bitcast i32* %res to i8*, !dbg !4238
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !4238
  call void @llvm.dbg.declare(metadata i32* %res, metadata !870, metadata !1363), !dbg !4239
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4240, !tbaa !1367
  %call = call %struct._object* @get_pylong(%struct._object* %1), !dbg !4241
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !4242, !tbaa !1367
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4243, !tbaa !1367
  %cmp = icmp eq %struct._object* %2, null, !dbg !4245
  br i1 %cmp, label %if.then, label %if.end, !dbg !4246

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4247
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4247

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4248, !tbaa !1367
  %4 = bitcast %struct._object* %3 to %struct._longobject*, !dbg !4249
  %5 = load i8*, i8** %p.addr, align 8, !dbg !4250, !tbaa !1367
  %call1 = call i32 @_PyLong_AsByteArray(%struct._longobject* %4, i8* %5, i64 8, i32 0, i32 1), !dbg !4251
  store i32 %call1, i32* %res, align 4, !dbg !4252, !tbaa !2291
  br label %do.body, !dbg !4253

do.body:                                          ; preds = %if.end
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4254
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !4254
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !871, metadata !1363), !dbg !4256
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4257, !tbaa !1367
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !4256, !tbaa !1367
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4258, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4260
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4261, !tbaa !1487
  %dec = add i64 %9, -1, !dbg !4261
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4261, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !4262
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !4263

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !4264

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4266, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !4268
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4268, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !4269
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4269, !tbaa !1525
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4270, !tbaa !1367
  call void %12(%struct._object* %13), !dbg !4271
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4272
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !4272
  br label %do.cond, !dbg !4274

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !4275

do.end:                                           ; preds = %do.cond
  %15 = load i32, i32* %res, align 4, !dbg !4277, !tbaa !2291
  store i32 %15, i32* %retval, !dbg !4278
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4278

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast i32* %res to i8*, !dbg !4279
  call void @llvm.lifetime.end(i64 4, i8* %16) #1, !dbg !4279
  %17 = load i32, i32* %retval, !dbg !4279
  ret i32 %17, !dbg !4279
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !875, metadata !1363), !dbg !4280
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !876, metadata !1363), !dbg !4281
  %0 = bitcast i64* %x to i8*, !dbg !4282
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4282
  call void @llvm.dbg.declare(metadata i64* %x, metadata !877, metadata !1363), !dbg !4283
  store i64 0, i64* %x, align 8, !dbg !4283, !tbaa !4184
  %1 = bitcast i64* %i to i8*, !dbg !4284
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4284
  call void @llvm.dbg.declare(metadata i64* %i, metadata !878, metadata !1363), !dbg !4285
  %2 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4286, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %2, i32 0, i32 1, !dbg !4287
  %3 = load i64, i64* %size, align 8, !dbg !4287, !tbaa !1437
  store i64 %3, i64* %i, align 8, !dbg !4285, !tbaa !1563
  %4 = bitcast i8** %bytes to i8*, !dbg !4288
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4288
  call void @llvm.dbg.declare(metadata i8** %bytes, metadata !879, metadata !1363), !dbg !4289
  %5 = load i8*, i8** %p.addr, align 8, !dbg !4290, !tbaa !1367
  store i8* %5, i8** %bytes, align 8, !dbg !4289, !tbaa !1367
  br label %do.body, !dbg !4291

do.body:                                          ; preds = %do.cond, %entry
  %6 = load i64, i64* %x, align 8, !dbg !4292, !tbaa !4184
  %shl = shl i64 %6, 8, !dbg !4294
  %7 = load i8*, i8** %bytes, align 8, !dbg !4295, !tbaa !1367
  %incdec.ptr = getelementptr i8, i8* %7, i32 1, !dbg !4295
  store i8* %incdec.ptr, i8** %bytes, align 8, !dbg !4295, !tbaa !1367
  %8 = load i8, i8* %7, align 1, !dbg !4296, !tbaa !2498
  %conv = zext i8 %8 to i64, !dbg !4296
  %or = or i64 %shl, %conv, !dbg !4297
  store i64 %or, i64* %x, align 8, !dbg !4298, !tbaa !4184
  br label %do.cond, !dbg !4299

do.cond:                                          ; preds = %do.body
  %9 = load i64, i64* %i, align 8, !dbg !4300, !tbaa !1563
  %dec = add i64 %9, -1, !dbg !4300
  store i64 %dec, i64* %i, align 8, !dbg !4300, !tbaa !1563
  %cmp = icmp sgt i64 %dec, 0, !dbg !4302
  br i1 %cmp, label %do.body, label %do.end, !dbg !4299

do.end:                                           ; preds = %do.cond
  %10 = load i64, i64* %x, align 8, !dbg !4303, !tbaa !4184
  %cmp2 = icmp ule i64 %10, 9223372036854775807, !dbg !4305
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4306

if.then:                                          ; preds = %do.end
  %11 = load i64, i64* %x, align 8, !dbg !4307, !tbaa !4184
  %call = call %struct._object* @PyLong_FromLong(i64 %11), !dbg !4308
  store %struct._object* %call, %struct._object** %retval, !dbg !4309
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4309

if.end:                                           ; preds = %do.end
  %12 = load i64, i64* %x, align 8, !dbg !4310, !tbaa !4184
  %call4 = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %12), !dbg !4311
  store %struct._object* %call4, %struct._object** %retval, !dbg !4312
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4312

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i8** %bytes to i8*, !dbg !4313
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !4313
  %14 = bitcast i64* %i to i8*, !dbg !4313
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !4313
  %15 = bitcast i64* %x to i8*, !dbg !4313
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !4313
  %16 = load %struct._object*, %struct._object** %retval, !dbg !4313
  ret %struct._object* %16, !dbg !4313
}

; Function Attrs: nounwind uwtable
define internal i32 @bp_ulonglong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !882, metadata !1363), !dbg !4314
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !883, metadata !1363), !dbg !4315
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !884, metadata !1363), !dbg !4316
  %0 = bitcast i32* %res to i8*, !dbg !4317
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !4317
  call void @llvm.dbg.declare(metadata i32* %res, metadata !885, metadata !1363), !dbg !4318
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4319, !tbaa !1367
  %call = call %struct._object* @get_pylong(%struct._object* %1), !dbg !4320
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !4321, !tbaa !1367
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4322, !tbaa !1367
  %cmp = icmp eq %struct._object* %2, null, !dbg !4324
  br i1 %cmp, label %if.then, label %if.end, !dbg !4325

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4326
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4326

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4327, !tbaa !1367
  %4 = bitcast %struct._object* %3 to %struct._longobject*, !dbg !4328
  %5 = load i8*, i8** %p.addr, align 8, !dbg !4329, !tbaa !1367
  %call1 = call i32 @_PyLong_AsByteArray(%struct._longobject* %4, i8* %5, i64 8, i32 0, i32 0), !dbg !4330
  store i32 %call1, i32* %res, align 4, !dbg !4331, !tbaa !2291
  br label %do.body, !dbg !4332

do.body:                                          ; preds = %if.end
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4333
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !4333
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !886, metadata !1363), !dbg !4335
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4336, !tbaa !1367
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !4335, !tbaa !1367
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4337, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4339
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4340, !tbaa !1487
  %dec = add i64 %9, -1, !dbg !4340
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4340, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !4341
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !4342

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !4343

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4345, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !4347
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4347, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !4348
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4348, !tbaa !1525
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4349, !tbaa !1367
  call void %12(%struct._object* %13), !dbg !4350
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4351
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !4351
  br label %do.cond, !dbg !4353

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !4354

do.end:                                           ; preds = %do.cond
  %15 = load i32, i32* %res, align 4, !dbg !4356, !tbaa !2291
  store i32 %15, i32* %retval, !dbg !4357
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4357

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast i32* %res to i8*, !dbg !4358
  call void @llvm.lifetime.end(i64 4, i8* %16) #1, !dbg !4358
  %17 = load i32, i32* %retval, !dbg !4358
  ret i32 %17, !dbg !4358
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bu_bool(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i8, align 1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !890, metadata !1363), !dbg !4359
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !891, metadata !1363), !dbg !4360
  call void @llvm.lifetime.start(i64 1, i8* %x) #1, !dbg !4361
  call void @llvm.dbg.declare(metadata i8* %x, metadata !892, metadata !1363), !dbg !4362
  %0 = load i8*, i8** %p.addr, align 8, !dbg !4363, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x, i8* %0, i64 1, i32 1, i1 false), !dbg !4364
  %1 = load i8, i8* %x, align 1, !dbg !4365, !tbaa !2498
  %conv = sext i8 %1 to i32, !dbg !4365
  %cmp = icmp ne i32 %conv, 0, !dbg !4366
  %conv1 = zext i1 %cmp to i32, !dbg !4366
  %conv2 = sext i32 %conv1 to i64, !dbg !4365
  %call = call %struct._object* @PyBool_FromLong(i64 %conv2), !dbg !4367
  call void @llvm.lifetime.end(i64 1, i8* %x) #1, !dbg !4368
  ret %struct._object* %call, !dbg !4369
}

; Function Attrs: nounwind uwtable
define internal i32 @bp_bool(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !895, metadata !1363), !dbg !4370
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !896, metadata !1363), !dbg !4371
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !897, metadata !1363), !dbg !4372
  %0 = bitcast i32* %y to i8*, !dbg !4373
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !4373
  call void @llvm.dbg.declare(metadata i32* %y, metadata !898, metadata !1363), !dbg !4374
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4375, !tbaa !1367
  %call = call i32 @PyObject_IsTrue(%struct._object* %1), !dbg !4376
  store i32 %call, i32* %y, align 4, !dbg !4377, !tbaa !2291
  %2 = load i32, i32* %y, align 4, !dbg !4378, !tbaa !2291
  %cmp = icmp slt i32 %2, 0, !dbg !4380
  br i1 %cmp, label %if.then, label %if.end, !dbg !4381

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4382
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4382

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %y, align 4, !dbg !4383, !tbaa !2291
  %conv = trunc i32 %3 to i8, !dbg !4384
  %4 = load i8*, i8** %p.addr, align 8, !dbg !4385, !tbaa !1367
  store i8 %conv, i8* %4, align 1, !dbg !4386, !tbaa !2498
  store i32 0, i32* %retval, !dbg !4387
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4387

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i32* %y to i8*, !dbg !4388
  call void @llvm.lifetime.end(i64 4, i8* %5) #1, !dbg !4388
  %6 = load i32, i32* %retval, !dbg !4388
  ret i32 %6, !dbg !4388
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bu_float(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !901, metadata !1363), !dbg !4389
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !902, metadata !1363), !dbg !4390
  %0 = load i8*, i8** %p.addr, align 8, !dbg !4391, !tbaa !1367
  %call = call %struct._object* @unpack_float(i8* %0, i32 0), !dbg !4392
  ret %struct._object* %call, !dbg !4393
}

; Function Attrs: nounwind uwtable
define internal i32 @bp_float(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !912, metadata !1363), !dbg !4394
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !913, metadata !1363), !dbg !4395
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !914, metadata !1363), !dbg !4396
  %0 = bitcast double* %x to i8*, !dbg !4397
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4397
  call void @llvm.dbg.declare(metadata double* %x, metadata !915, metadata !1363), !dbg !4398
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4399, !tbaa !1367
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !4400
  store double %call, double* %x, align 8, !dbg !4398, !tbaa !4401
  %2 = load double, double* %x, align 8, !dbg !4403, !tbaa !4401
  %cmp = fcmp oeq double %2, -1.000000e+00, !dbg !4405
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4406

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !4407
  %tobool = icmp ne %struct._object* %call1, null, !dbg !4407
  br i1 %tobool, label %if.then, label %if.end, !dbg !4409

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !4410, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0)), !dbg !4412
  store i32 -1, i32* %retval, !dbg !4413
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4413

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load double, double* %x, align 8, !dbg !4414, !tbaa !4401
  %5 = load i8*, i8** %p.addr, align 8, !dbg !4415, !tbaa !1367
  %call2 = call i32 @_PyFloat_Pack4(double %4, i8* %5, i32 0), !dbg !4416
  store i32 %call2, i32* %retval, !dbg !4417
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4417

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast double* %x to i8*, !dbg !4418
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !4418
  %7 = load i32, i32* %retval, !dbg !4418
  ret i32 %7, !dbg !4418
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bu_double(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !918, metadata !1363), !dbg !4419
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !919, metadata !1363), !dbg !4420
  %0 = load i8*, i8** %p.addr, align 8, !dbg !4421, !tbaa !1367
  %call = call %struct._object* @unpack_double(i8* %0, i32 0), !dbg !4422
  ret %struct._object* %call, !dbg !4423
}

; Function Attrs: nounwind uwtable
define internal i32 @bp_double(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !927, metadata !1363), !dbg !4424
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !928, metadata !1363), !dbg !4425
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !929, metadata !1363), !dbg !4426
  %0 = bitcast double* %x to i8*, !dbg !4427
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4427
  call void @llvm.dbg.declare(metadata double* %x, metadata !930, metadata !1363), !dbg !4428
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4429, !tbaa !1367
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !4430
  store double %call, double* %x, align 8, !dbg !4428, !tbaa !4401
  %2 = load double, double* %x, align 8, !dbg !4431, !tbaa !4401
  %cmp = fcmp oeq double %2, -1.000000e+00, !dbg !4433
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4434

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !4435
  %tobool = icmp ne %struct._object* %call1, null, !dbg !4435
  br i1 %tobool, label %if.then, label %if.end, !dbg !4437

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !4438, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0)), !dbg !4440
  store i32 -1, i32* %retval, !dbg !4441
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4441

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load double, double* %x, align 8, !dbg !4442, !tbaa !4401
  %5 = load i8*, i8** %p.addr, align 8, !dbg !4443, !tbaa !1367
  %call2 = call i32 @_PyFloat_Pack8(double %4, i8* %5, i32 0), !dbg !4444
  store i32 %call2, i32* %retval, !dbg !4445
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4445

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast double* %x to i8*, !dbg !4446
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !4446
  %7 = load i32, i32* %retval, !dbg !4446
  ret i32 %7, !dbg !4446
}

declare %struct._object* @PyLong_FromLong(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_long(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !778, metadata !1363), !dbg !4447
  store i64* %p, i64** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !779, metadata !1363), !dbg !4448
  %0 = bitcast i64* %x to i8*, !dbg !4449
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4449
  call void @llvm.dbg.declare(metadata i64* %x, metadata !780, metadata !1363), !dbg !4450
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4451, !tbaa !1367
  %call = call %struct._object* @get_pylong(%struct._object* %1), !dbg !4452
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !4453, !tbaa !1367
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4454, !tbaa !1367
  %cmp = icmp eq %struct._object* %2, null, !dbg !4456
  br i1 %cmp, label %if.then, label %if.end, !dbg !4457

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4458
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4458

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4459, !tbaa !1367
  %call1 = call i64 @PyLong_AsLong(%struct._object* %3), !dbg !4460
  store i64 %call1, i64* %x, align 8, !dbg !4461, !tbaa !1563
  br label %do.body, !dbg !4462

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4463
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4463
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !781, metadata !1363), !dbg !4465
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4466, !tbaa !1367
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !4465, !tbaa !1367
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4467, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !4469
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !4470, !tbaa !1487
  %dec = add i64 %7, -1, !dbg !4470
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4470, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !4471
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !4472

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !4473

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4475, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !4477
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4477, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !4478
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4478, !tbaa !1525
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4479, !tbaa !1367
  call void %10(%struct._object* %11), !dbg !4480
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4481
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !4481
  br label %do.cond, !dbg !4483

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !4484

do.end:                                           ; preds = %do.cond
  %13 = load i64, i64* %x, align 8, !dbg !4486, !tbaa !1563
  %cmp5 = icmp eq i64 %13, -1, !dbg !4488
  br i1 %cmp5, label %land.lhs.true, label %if.end.12, !dbg !4489

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred(), !dbg !4490
  %tobool = icmp ne %struct._object* %call6, null, !dbg !4490
  br i1 %tobool, label %if.then.7, label %if.end.12, !dbg !4492

if.then.7:                                        ; preds = %land.lhs.true
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !4493, !tbaa !1367
  %call8 = call i32 @PyErr_ExceptionMatches(%struct._object* %14), !dbg !4496
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4496
  br i1 %tobool9, label %if.then.10, label %if.end.11, !dbg !4497

if.then.10:                                       ; preds = %if.then.7
  %15 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !4498, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0)), !dbg !4499
  br label %if.end.11, !dbg !4499

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  store i32 -1, i32* %retval, !dbg !4500
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4500

if.end.12:                                        ; preds = %land.lhs.true, %do.end
  %16 = load i64, i64* %x, align 8, !dbg !4501, !tbaa !1563
  %17 = load i64*, i64** %p.addr, align 8, !dbg !4502, !tbaa !1367
  store i64 %16, i64* %17, align 8, !dbg !4503, !tbaa !1563
  store i32 0, i32* %retval, !dbg !4504
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4504

cleanup:                                          ; preds = %if.end.12, %if.end.11, %if.then
  %18 = bitcast i64* %x to i8*, !dbg !4505
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !4505
  %19 = load i32, i32* %retval, !dbg !4505
  ret i32 %19, !dbg !4505
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_pylong(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !785, metadata !1363), !dbg !4506
  %0 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4507, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4509
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4509, !tbaa !1377
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19, !dbg !4510
  %2 = load i64, i64* %tp_flags, align 8, !dbg !4510, !tbaa !2732
  %and = and i64 %2, 16777216, !dbg !4511
  %cmp = icmp ne i64 %and, 0, !dbg !4512
  br i1 %cmp, label %if.else.10, label %if.then, !dbg !4513

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4514, !tbaa !1367
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !4517
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4517, !tbaa !1377
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10, !dbg !4518
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !4518, !tbaa !4519
  %cmp2 = icmp ne %struct.PyNumberMethods* %5, null, !dbg !4520
  br i1 %cmp2, label %land.lhs.true, label %if.else, !dbg !4521

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4522, !tbaa !1367
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !4524
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !4524, !tbaa !1377
  %tp_as_number4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 10, !dbg !4525
  %8 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number4, align 8, !dbg !4525, !tbaa !4519
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %8, i32 0, i32 33, !dbg !4526
  %9 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8, !dbg !4526, !tbaa !4527
  %cmp5 = icmp ne %struct._object* (%struct._object*)* %9, null, !dbg !4529
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !4530

if.then.6:                                        ; preds = %land.lhs.true
  %10 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4531, !tbaa !1367
  %call = call %struct._object* @PyNumber_Index(%struct._object* %10), !dbg !4533
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !4534, !tbaa !1367
  %11 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4535, !tbaa !1367
  %cmp7 = icmp eq %struct._object* %11, null, !dbg !4537
  br i1 %cmp7, label %if.then.8, label %if.end, !dbg !4538

if.then.8:                                        ; preds = %if.then.6
  store %struct._object* null, %struct._object** %retval, !dbg !4539
  br label %return, !dbg !4539

if.end:                                           ; preds = %if.then.6
  br label %if.end.9, !dbg !4540

if.else:                                          ; preds = %land.lhs.true, %if.then
  %12 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !4541, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0)), !dbg !4543
  store %struct._object* null, %struct._object** %retval, !dbg !4544
  br label %return, !dbg !4544

if.end.9:                                         ; preds = %if.end
  br label %if.end.11, !dbg !4545

if.else.10:                                       ; preds = %entry
  %13 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4546, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !4547
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !4548, !tbaa !1487
  %inc = add i64 %14, 1, !dbg !4548
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4548, !tbaa !1487
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.end.9
  %15 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4549, !tbaa !1367
  store %struct._object* %15, %struct._object** %retval, !dbg !4550
  br label %return, !dbg !4550

return:                                           ; preds = %if.end.11, %if.else, %if.then.8
  %16 = load %struct._object*, %struct._object** %retval, !dbg !4551
  ret %struct._object* %16, !dbg !4551
}

declare i64 @PyLong_AsLong(%struct._object*) #3

declare %struct._object* @PyNumber_Index(%struct._object*) #3

declare i64 @PyBytes_Size(%struct._object*) #3

declare i8* @PyBytes_AsString(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @_range_error(%struct._formatdef* %f, i32 %is_unsigned) #0 {
entry:
  %f.addr = alloca %struct._formatdef*, align 8
  %is_unsigned.addr = alloca i32, align 4
  %ulargest = alloca i64, align 8
  %largest = alloca i64, align 8
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !823, metadata !1363), !dbg !4552
  store i32 %is_unsigned, i32* %is_unsigned.addr, align 4, !tbaa !2291
  call void @llvm.dbg.declare(metadata i32* %is_unsigned.addr, metadata !824, metadata !1363), !dbg !4553
  %0 = bitcast i64* %ulargest to i8*, !dbg !4554
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4554
  call void @llvm.dbg.declare(metadata i64* %ulargest, metadata !825, metadata !1363), !dbg !4555
  %1 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4556, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %1, i32 0, i32 1, !dbg !4557
  %2 = load i64, i64* %size, align 8, !dbg !4557, !tbaa !1437
  %sub = sub i64 8, %2, !dbg !4558
  %mul = mul i64 %sub, 8, !dbg !4559
  %shr = lshr i64 -1, %mul, !dbg !4560
  store i64 %shr, i64* %ulargest, align 8, !dbg !4555, !tbaa !1563
  %3 = load i32, i32* %is_unsigned.addr, align 4, !dbg !4561, !tbaa !2291
  %tobool = icmp ne i32 %3, 0, !dbg !4561
  br i1 %tobool, label %if.then, label %if.else, !dbg !4562

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !4563, !tbaa !1367
  %5 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4564, !tbaa !1367
  %format = getelementptr inbounds %struct._formatdef, %struct._formatdef* %5, i32 0, i32 0, !dbg !4565
  %6 = load i8, i8* %format, align 1, !dbg !4565, !tbaa !1396
  %conv = sext i8 %6 to i32, !dbg !4564
  %7 = load i64, i64* %ulargest, align 8, !dbg !4566, !tbaa !1563
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i32 0, i32 0), i32 %conv, i64 %7), !dbg !4567
  br label %if.end, !dbg !4567

if.else:                                          ; preds = %entry
  %8 = bitcast i64* %largest to i8*, !dbg !4568
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !4568
  call void @llvm.dbg.declare(metadata i64* %largest, metadata !827, metadata !1363), !dbg !4569
  %9 = load i64, i64* %ulargest, align 8, !dbg !4570, !tbaa !1563
  %shr1 = lshr i64 %9, 1, !dbg !4571
  store i64 %shr1, i64* %largest, align 8, !dbg !4569, !tbaa !1563
  %10 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !4572, !tbaa !1367
  %11 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4573, !tbaa !1367
  %format2 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %11, i32 0, i32 0, !dbg !4574
  %12 = load i8, i8* %format2, align 1, !dbg !4574, !tbaa !1396
  %conv3 = sext i8 %12 to i32, !dbg !4573
  %13 = load i64, i64* %largest, align 8, !dbg !4575, !tbaa !1563
  %neg = xor i64 %13, -1, !dbg !4576
  %14 = load i64, i64* %largest, align 8, !dbg !4577, !tbaa !1563
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i32 0, i32 0), i32 %conv3, i64 %neg, i64 %14), !dbg !4578
  %15 = bitcast i64* %largest to i8*, !dbg !4579
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !4579
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = bitcast i64* %ulargest to i8*, !dbg !4580
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !4580
  ret i32 -1, !dbg !4581
}

declare %struct._object* @PyLong_FromUnsignedLong(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_ulong(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !853, metadata !1363), !dbg !4582
  store i64* %p, i64** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !854, metadata !1363), !dbg !4583
  %0 = bitcast i64* %x to i8*, !dbg !4584
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4584
  call void @llvm.dbg.declare(metadata i64* %x, metadata !855, metadata !1363), !dbg !4585
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4586, !tbaa !1367
  %call = call %struct._object* @get_pylong(%struct._object* %1), !dbg !4587
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !4588, !tbaa !1367
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4589, !tbaa !1367
  %cmp = icmp eq %struct._object* %2, null, !dbg !4591
  br i1 %cmp, label %if.then, label %if.end, !dbg !4592

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4593
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4593

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4594, !tbaa !1367
  %call1 = call i64 @PyLong_AsUnsignedLong(%struct._object* %3), !dbg !4595
  store i64 %call1, i64* %x, align 8, !dbg !4596, !tbaa !1563
  br label %do.body, !dbg !4597

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4598
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4598
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !856, metadata !1363), !dbg !4600
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4601, !tbaa !1367
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !4600, !tbaa !1367
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4602, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !4604
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !4605, !tbaa !1487
  %dec = add i64 %7, -1, !dbg !4605
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4605, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !4606
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !4607

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !4608

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4610, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !4612
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4612, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !4613
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4613, !tbaa !1525
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4614, !tbaa !1367
  call void %10(%struct._object* %11), !dbg !4615
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4616
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !4616
  br label %do.cond, !dbg !4618

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !4619

do.end:                                           ; preds = %do.cond
  %13 = load i64, i64* %x, align 8, !dbg !4621, !tbaa !1563
  %cmp5 = icmp eq i64 %13, -1, !dbg !4623
  br i1 %cmp5, label %land.lhs.true, label %if.end.12, !dbg !4624

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred(), !dbg !4625
  %tobool = icmp ne %struct._object* %call6, null, !dbg !4625
  br i1 %tobool, label %if.then.7, label %if.end.12, !dbg !4627

if.then.7:                                        ; preds = %land.lhs.true
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !4628, !tbaa !1367
  %call8 = call i32 @PyErr_ExceptionMatches(%struct._object* %14), !dbg !4631
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4631
  br i1 %tobool9, label %if.then.10, label %if.end.11, !dbg !4632

if.then.10:                                       ; preds = %if.then.7
  %15 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !4633, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0)), !dbg !4634
  br label %if.end.11, !dbg !4634

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  store i32 -1, i32* %retval, !dbg !4635
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4635

if.end.12:                                        ; preds = %land.lhs.true, %do.end
  %16 = load i64, i64* %x, align 8, !dbg !4636, !tbaa !1563
  %17 = load i64*, i64** %p.addr, align 8, !dbg !4637, !tbaa !1367
  store i64 %16, i64* %17, align 8, !dbg !4638, !tbaa !1563
  store i32 0, i32* %retval, !dbg !4639
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4639

cleanup:                                          ; preds = %if.end.12, %if.end.11, %if.then
  %18 = bitcast i64* %x to i8*, !dbg !4640
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !4640
  %19 = load i32, i32* %retval, !dbg !4640
  ret i32 %19, !dbg !4640
}

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #3

declare %struct._object* @PyLong_FromLongLong(i64) #3

declare i32 @_PyLong_AsByteArray(%struct._longobject*, i8*, i64, i32, i32) #3

declare %struct._object* @PyLong_FromUnsignedLongLong(i64) #3

declare %struct._object* @PyBool_FromLong(i64) #3

declare i32 @PyObject_IsTrue(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @unpack_float(i8* %p, i32 %le) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %le.addr = alloca i32, align 4
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !907, metadata !1363), !dbg !4641
  store i32 %le, i32* %le.addr, align 4, !tbaa !2291
  call void @llvm.dbg.declare(metadata i32* %le.addr, metadata !908, metadata !1363), !dbg !4642
  %0 = bitcast double* %x to i8*, !dbg !4643
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4643
  call void @llvm.dbg.declare(metadata double* %x, metadata !909, metadata !1363), !dbg !4644
  %1 = load i8*, i8** %p.addr, align 8, !dbg !4645, !tbaa !1367
  %2 = load i32, i32* %le.addr, align 4, !dbg !4646, !tbaa !2291
  %call = call double @_PyFloat_Unpack4(i8* %1, i32 %2), !dbg !4647
  store double %call, double* %x, align 8, !dbg !4648, !tbaa !4401
  %3 = load double, double* %x, align 8, !dbg !4649, !tbaa !4401
  %cmp = fcmp oeq double %3, -1.000000e+00, !dbg !4651
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4652

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !4653
  %tobool = icmp ne %struct._object* %call1, null, !dbg !4653
  br i1 %tobool, label %if.then, label %if.end, !dbg !4655

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !4656
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4656

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load double, double* %x, align 8, !dbg !4657, !tbaa !4401
  %call2 = call %struct._object* @PyFloat_FromDouble(double %4), !dbg !4658
  store %struct._object* %call2, %struct._object** %retval, !dbg !4659
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4659

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast double* %x to i8*, !dbg !4660
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !4660
  %6 = load %struct._object*, %struct._object** %retval, !dbg !4660
  ret %struct._object* %6, !dbg !4660
}

declare double @_PyFloat_Unpack4(i8*, i32) #3

declare %struct._object* @PyFloat_FromDouble(double) #3

declare double @PyFloat_AsDouble(%struct._object*) #3

declare i32 @_PyFloat_Pack4(double, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @unpack_double(i8* %p, i32 %le) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %le.addr = alloca i32, align 4
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !922, metadata !1363), !dbg !4661
  store i32 %le, i32* %le.addr, align 4, !tbaa !2291
  call void @llvm.dbg.declare(metadata i32* %le.addr, metadata !923, metadata !1363), !dbg !4662
  %0 = bitcast double* %x to i8*, !dbg !4663
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4663
  call void @llvm.dbg.declare(metadata double* %x, metadata !924, metadata !1363), !dbg !4664
  %1 = load i8*, i8** %p.addr, align 8, !dbg !4665, !tbaa !1367
  %2 = load i32, i32* %le.addr, align 4, !dbg !4666, !tbaa !2291
  %call = call double @_PyFloat_Unpack8(i8* %1, i32 %2), !dbg !4667
  store double %call, double* %x, align 8, !dbg !4668, !tbaa !4401
  %3 = load double, double* %x, align 8, !dbg !4669, !tbaa !4401
  %cmp = fcmp oeq double %3, -1.000000e+00, !dbg !4671
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4672

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !4673
  %tobool = icmp ne %struct._object* %call1, null, !dbg !4673
  br i1 %tobool, label %if.then, label %if.end, !dbg !4675

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !4676
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4676

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load double, double* %x, align 8, !dbg !4677, !tbaa !4401
  %call2 = call %struct._object* @PyFloat_FromDouble(double %4), !dbg !4678
  store %struct._object* %call2, %struct._object** %retval, !dbg !4679
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4679

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast double* %x to i8*, !dbg !4680
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !4680
  %6 = load %struct._object*, %struct._object** %retval, !dbg !4680
  ret %struct._object* %6, !dbg !4680
}

declare double @_PyFloat_Unpack8(i8*, i32) #3

declare i32 @_PyFloat_Pack8(double, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_short(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i16, align 2
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !960, metadata !1363), !dbg !4681
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !961, metadata !1363), !dbg !4682
  %0 = bitcast i16* %x to i8*, !dbg !4683
  call void @llvm.lifetime.start(i64 2, i8* %0) #1, !dbg !4683
  call void @llvm.dbg.declare(metadata i16* %x, metadata !962, metadata !1363), !dbg !4684
  %1 = bitcast i16* %x to i8*, !dbg !4685
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4686, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 2, i32 1, i1 false), !dbg !4687
  %3 = load i16, i16* %x, align 2, !dbg !4688, !tbaa !4689
  %conv = sext i16 %3 to i64, !dbg !4691
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !4692
  %4 = bitcast i16* %x to i8*, !dbg !4693
  call void @llvm.lifetime.end(i64 2, i8* %4) #1, !dbg !4693
  ret %struct._object* %call, !dbg !4694
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !965, metadata !1363), !dbg !4695
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !966, metadata !1363), !dbg !4696
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !967, metadata !1363), !dbg !4697
  %0 = bitcast i64* %x to i8*, !dbg !4698
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4698
  call void @llvm.dbg.declare(metadata i64* %x, metadata !968, metadata !1363), !dbg !4699
  %1 = bitcast i16* %y to i8*, !dbg !4700
  call void @llvm.lifetime.start(i64 2, i8* %1) #1, !dbg !4700
  call void @llvm.dbg.declare(metadata i16* %y, metadata !969, metadata !1363), !dbg !4701
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4702, !tbaa !1367
  %call = call i32 @get_long(%struct._object* %2, i64* %x), !dbg !4704
  %cmp = icmp slt i32 %call, 0, !dbg !4705
  br i1 %cmp, label %if.then, label %if.end, !dbg !4706

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4707
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4707

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %x, align 8, !dbg !4708, !tbaa !1563
  %cmp1 = icmp slt i64 %3, -32768, !dbg !4710
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !4711

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %x, align 8, !dbg !4712, !tbaa !1563
  %cmp2 = icmp sgt i64 %4, 32767, !dbg !4714
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !4715

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !4716, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.48, i32 0, i32 0)), !dbg !4718
  store i32 -1, i32* %retval, !dbg !4719
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4719

if.end.4:                                         ; preds = %lor.lhs.false
  %6 = load i64, i64* %x, align 8, !dbg !4720, !tbaa !1563
  %conv = trunc i64 %6 to i16, !dbg !4721
  store i16 %conv, i16* %y, align 2, !dbg !4722, !tbaa !4689
  %7 = load i8*, i8** %p.addr, align 8, !dbg !4723, !tbaa !1367
  %8 = bitcast i16* %y to i8*, !dbg !4724
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 2, i32 1, i1 false), !dbg !4725
  store i32 0, i32* %retval, !dbg !4726
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4726

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %9 = bitcast i16* %y to i8*, !dbg !4727
  call void @llvm.lifetime.end(i64 2, i8* %9) #1, !dbg !4727
  %10 = bitcast i64* %x to i8*, !dbg !4727
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !4727
  %11 = load i32, i32* %retval, !dbg !4727
  ret i32 %11, !dbg !4727
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_ushort(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i16, align 2
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !972, metadata !1363), !dbg !4728
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !973, metadata !1363), !dbg !4729
  %0 = bitcast i16* %x to i8*, !dbg !4730
  call void @llvm.lifetime.start(i64 2, i8* %0) #1, !dbg !4730
  call void @llvm.dbg.declare(metadata i16* %x, metadata !974, metadata !1363), !dbg !4731
  %1 = bitcast i16* %x to i8*, !dbg !4732
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4733, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 2, i32 1, i1 false), !dbg !4734
  %3 = load i16, i16* %x, align 2, !dbg !4735, !tbaa !4689
  %conv = zext i16 %3 to i64, !dbg !4736
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !4737
  %4 = bitcast i16* %x to i8*, !dbg !4738
  call void @llvm.lifetime.end(i64 2, i8* %4) #1, !dbg !4738
  ret %struct._object* %call, !dbg !4739
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !977, metadata !1363), !dbg !4740
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !978, metadata !1363), !dbg !4741
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !979, metadata !1363), !dbg !4742
  %0 = bitcast i64* %x to i8*, !dbg !4743
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4743
  call void @llvm.dbg.declare(metadata i64* %x, metadata !980, metadata !1363), !dbg !4744
  %1 = bitcast i16* %y to i8*, !dbg !4745
  call void @llvm.lifetime.start(i64 2, i8* %1) #1, !dbg !4745
  call void @llvm.dbg.declare(metadata i16* %y, metadata !981, metadata !1363), !dbg !4746
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4747, !tbaa !1367
  %call = call i32 @get_long(%struct._object* %2, i64* %x), !dbg !4749
  %cmp = icmp slt i32 %call, 0, !dbg !4750
  br i1 %cmp, label %if.then, label %if.end, !dbg !4751

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4752
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4752

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %x, align 8, !dbg !4753, !tbaa !1563
  %cmp1 = icmp slt i64 %3, 0, !dbg !4755
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !4756

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %x, align 8, !dbg !4757, !tbaa !1563
  %cmp2 = icmp sgt i64 %4, 65535, !dbg !4759
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !4760

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !4761, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.49, i32 0, i32 0)), !dbg !4763
  store i32 -1, i32* %retval, !dbg !4764
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4764

if.end.4:                                         ; preds = %lor.lhs.false
  %6 = load i64, i64* %x, align 8, !dbg !4765, !tbaa !1563
  %conv = trunc i64 %6 to i16, !dbg !4766
  store i16 %conv, i16* %y, align 2, !dbg !4767, !tbaa !4689
  %7 = load i8*, i8** %p.addr, align 8, !dbg !4768, !tbaa !1367
  %8 = bitcast i16* %y to i8*, !dbg !4769
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 2, i32 1, i1 false), !dbg !4770
  store i32 0, i32* %retval, !dbg !4771
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4771

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %9 = bitcast i16* %y to i8*, !dbg !4772
  call void @llvm.lifetime.end(i64 2, i8* %9) #1, !dbg !4772
  %10 = bitcast i64* %x to i8*, !dbg !4772
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !4772
  %11 = load i32, i32* %retval, !dbg !4772
  ret i32 %11, !dbg !4772
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_int(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !984, metadata !1363), !dbg !4773
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !985, metadata !1363), !dbg !4774
  %0 = bitcast i32* %x to i8*, !dbg !4775
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !4775
  call void @llvm.dbg.declare(metadata i32* %x, metadata !986, metadata !1363), !dbg !4776
  %1 = bitcast i32* %x to i8*, !dbg !4777
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4778, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false), !dbg !4779
  %3 = load i32, i32* %x, align 4, !dbg !4780, !tbaa !2291
  %conv = sext i32 %3 to i64, !dbg !4781
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !4782
  %4 = bitcast i32* %x to i8*, !dbg !4783
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !4783
  ret %struct._object* %call, !dbg !4784
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !989, metadata !1363), !dbg !4785
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !990, metadata !1363), !dbg !4786
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !991, metadata !1363), !dbg !4787
  %0 = bitcast i64* %x to i8*, !dbg !4788
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4788
  call void @llvm.dbg.declare(metadata i64* %x, metadata !992, metadata !1363), !dbg !4789
  %1 = bitcast i32* %y to i8*, !dbg !4790
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !4790
  call void @llvm.dbg.declare(metadata i32* %y, metadata !993, metadata !1363), !dbg !4791
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4792, !tbaa !1367
  %call = call i32 @get_long(%struct._object* %2, i64* %x), !dbg !4794
  %cmp = icmp slt i32 %call, 0, !dbg !4795
  br i1 %cmp, label %if.then, label %if.end, !dbg !4796

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4797
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4797

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %x, align 8, !dbg !4798, !tbaa !1563
  %cmp1 = icmp slt i64 %3, -2147483648, !dbg !4800
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !4801

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %x, align 8, !dbg !4802, !tbaa !1563
  %cmp2 = icmp sgt i64 %4, 2147483647, !dbg !4804
  br i1 %cmp2, label %if.then.3, label %if.end.5, !dbg !4805

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4806, !tbaa !1367
  %call4 = call i32 @_range_error(%struct._formatdef* %5, i32 0), !dbg !4807
  store i32 %call4, i32* %retval, !dbg !4808
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4808

if.end.5:                                         ; preds = %lor.lhs.false
  %6 = load i64, i64* %x, align 8, !dbg !4809, !tbaa !1563
  %conv = trunc i64 %6 to i32, !dbg !4810
  store i32 %conv, i32* %y, align 4, !dbg !4811, !tbaa !2291
  %7 = load i8*, i8** %p.addr, align 8, !dbg !4812, !tbaa !1367
  %8 = bitcast i32* %y to i8*, !dbg !4813
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 4, i32 1, i1 false), !dbg !4814
  store i32 0, i32* %retval, !dbg !4815
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4815

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %9 = bitcast i32* %y to i8*, !dbg !4816
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !4816
  %10 = bitcast i64* %x to i8*, !dbg !4816
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !4816
  %11 = load i32, i32* %retval, !dbg !4816
  ret i32 %11, !dbg !4816
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_uint(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !996, metadata !1363), !dbg !4817
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !997, metadata !1363), !dbg !4818
  %0 = bitcast i32* %x to i8*, !dbg !4819
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !4819
  call void @llvm.dbg.declare(metadata i32* %x, metadata !998, metadata !1363), !dbg !4820
  %1 = bitcast i32* %x to i8*, !dbg !4821
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4822, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false), !dbg !4823
  %3 = load i32, i32* %x, align 4, !dbg !4824, !tbaa !2291
  %conv = zext i32 %3 to i64, !dbg !4825
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !4826
  %4 = bitcast i32* %x to i8*, !dbg !4827
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !4827
  ret %struct._object* %call, !dbg !4828
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1001, metadata !1363), !dbg !4829
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1002, metadata !1363), !dbg !4830
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1003, metadata !1363), !dbg !4831
  %0 = bitcast i64* %x to i8*, !dbg !4832
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4832
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1004, metadata !1363), !dbg !4833
  %1 = bitcast i32* %y to i8*, !dbg !4834
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !4834
  call void @llvm.dbg.declare(metadata i32* %y, metadata !1005, metadata !1363), !dbg !4835
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4836, !tbaa !1367
  %call = call i32 @get_ulong(%struct._object* %2, i64* %x), !dbg !4838
  %cmp = icmp slt i32 %call, 0, !dbg !4839
  br i1 %cmp, label %if.then, label %if.end, !dbg !4840

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4841
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4841

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %x, align 8, !dbg !4842, !tbaa !1563
  %conv = trunc i64 %3 to i32, !dbg !4843
  store i32 %conv, i32* %y, align 4, !dbg !4844, !tbaa !2291
  %4 = load i64, i64* %x, align 8, !dbg !4845, !tbaa !1563
  %cmp1 = icmp ugt i64 %4, 4294967295, !dbg !4847
  br i1 %cmp1, label %if.then.3, label %if.end.5, !dbg !4848

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !4849, !tbaa !1367
  %call4 = call i32 @_range_error(%struct._formatdef* %5, i32 1), !dbg !4850
  store i32 %call4, i32* %retval, !dbg !4851
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4851

if.end.5:                                         ; preds = %if.end
  %6 = load i8*, i8** %p.addr, align 8, !dbg !4852, !tbaa !1367
  %7 = bitcast i32* %y to i8*, !dbg !4853
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 4, i32 1, i1 false), !dbg !4854
  store i32 0, i32* %retval, !dbg !4855
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4855

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %8 = bitcast i32* %y to i8*, !dbg !4856
  call void @llvm.lifetime.end(i64 4, i8* %8) #1, !dbg !4856
  %9 = bitcast i64* %x to i8*, !dbg !4856
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !4856
  %10 = load i32, i32* %retval, !dbg !4856
  ret i32 %10, !dbg !4856
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_long(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1008, metadata !1363), !dbg !4857
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1009, metadata !1363), !dbg !4858
  %0 = bitcast i64* %x to i8*, !dbg !4859
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4859
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1010, metadata !1363), !dbg !4860
  %1 = bitcast i64* %x to i8*, !dbg !4861
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4862, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !4863
  %3 = load i64, i64* %x, align 8, !dbg !4864, !tbaa !1563
  %call = call %struct._object* @PyLong_FromLong(i64 %3), !dbg !4865
  %4 = bitcast i64* %x to i8*, !dbg !4866
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !4866
  ret %struct._object* %call, !dbg !4867
}

; Function Attrs: nounwind uwtable
define internal i32 @np_long(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1013, metadata !1363), !dbg !4868
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1014, metadata !1363), !dbg !4869
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1015, metadata !1363), !dbg !4870
  %0 = bitcast i64* %x to i8*, !dbg !4871
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4871
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1016, metadata !1363), !dbg !4872
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4873, !tbaa !1367
  %call = call i32 @get_long(%struct._object* %1, i64* %x), !dbg !4875
  %cmp = icmp slt i32 %call, 0, !dbg !4876
  br i1 %cmp, label %if.then, label %if.end, !dbg !4877

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4878
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4878

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4879, !tbaa !1367
  %3 = bitcast i64* %x to i8*, !dbg !4880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 1, i1 false), !dbg !4881
  store i32 0, i32* %retval, !dbg !4882
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4882

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i64* %x to i8*, !dbg !4883
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !4883
  %5 = load i32, i32* %retval, !dbg !4883
  ret i32 %5, !dbg !4883
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_ulong(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1019, metadata !1363), !dbg !4884
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1020, metadata !1363), !dbg !4885
  %0 = bitcast i64* %x to i8*, !dbg !4886
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4886
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1021, metadata !1363), !dbg !4887
  %1 = bitcast i64* %x to i8*, !dbg !4888
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4889, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !4890
  %3 = load i64, i64* %x, align 8, !dbg !4891, !tbaa !1563
  %cmp = icmp ule i64 %3, 9223372036854775807, !dbg !4893
  br i1 %cmp, label %if.then, label %if.end, !dbg !4894

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %x, align 8, !dbg !4895, !tbaa !1563
  %call = call %struct._object* @PyLong_FromLong(i64 %4), !dbg !4896
  store %struct._object* %call, %struct._object** %retval, !dbg !4897
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4897

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %x, align 8, !dbg !4898, !tbaa !1563
  %call1 = call %struct._object* @PyLong_FromUnsignedLong(i64 %5), !dbg !4899
  store %struct._object* %call1, %struct._object** %retval, !dbg !4900
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4900

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast i64* %x to i8*, !dbg !4901
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !4901
  %7 = load %struct._object*, %struct._object** %retval, !dbg !4901
  ret %struct._object* %7, !dbg !4901
}

; Function Attrs: nounwind uwtable
define internal i32 @np_ulong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1024, metadata !1363), !dbg !4902
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1025, metadata !1363), !dbg !4903
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1026, metadata !1363), !dbg !4904
  %0 = bitcast i64* %x to i8*, !dbg !4905
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4905
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1027, metadata !1363), !dbg !4906
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4907, !tbaa !1367
  %call = call i32 @get_ulong(%struct._object* %1, i64* %x), !dbg !4909
  %cmp = icmp slt i32 %call, 0, !dbg !4910
  br i1 %cmp, label %if.then, label %if.end, !dbg !4911

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4912
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4912

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4913, !tbaa !1367
  %3 = bitcast i64* %x to i8*, !dbg !4914
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 1, i1 false), !dbg !4915
  store i32 0, i32* %retval, !dbg !4916
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4916

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i64* %x to i8*, !dbg !4917
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !4917
  %5 = load i32, i32* %retval, !dbg !4917
  ret i32 %5, !dbg !4917
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_ssize_t(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1030, metadata !1363), !dbg !4918
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1031, metadata !1363), !dbg !4919
  %0 = bitcast i64* %x to i8*, !dbg !4920
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4920
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1032, metadata !1363), !dbg !4921
  %1 = bitcast i64* %x to i8*, !dbg !4922
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4923, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !4924
  %3 = load i64, i64* %x, align 8, !dbg !4925, !tbaa !1563
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %3), !dbg !4926
  %4 = bitcast i64* %x to i8*, !dbg !4927
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !4927
  ret %struct._object* %call, !dbg !4928
}

; Function Attrs: nounwind uwtable
define internal i32 @np_ssize_t(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1035, metadata !1363), !dbg !4929
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1036, metadata !1363), !dbg !4930
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1037, metadata !1363), !dbg !4931
  %0 = bitcast i64* %x to i8*, !dbg !4932
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4932
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1038, metadata !1363), !dbg !4933
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4934, !tbaa !1367
  %call = call i32 @get_ssize_t(%struct._object* %1, i64* %x), !dbg !4936
  %cmp = icmp slt i32 %call, 0, !dbg !4937
  br i1 %cmp, label %if.then, label %if.end, !dbg !4938

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4939
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4939

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4940, !tbaa !1367
  %3 = bitcast i64* %x to i8*, !dbg !4941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 1, i1 false), !dbg !4942
  store i32 0, i32* %retval, !dbg !4943
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4943

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i64* %x to i8*, !dbg !4944
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !4944
  %5 = load i32, i32* %retval, !dbg !4944
  ret i32 %5, !dbg !4944
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_size_t(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1050, metadata !1363), !dbg !4945
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1051, metadata !1363), !dbg !4946
  %0 = bitcast i64* %x to i8*, !dbg !4947
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4947
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1052, metadata !1363), !dbg !4948
  %1 = bitcast i64* %x to i8*, !dbg !4949
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4950, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !4951
  %3 = load i64, i64* %x, align 8, !dbg !4952, !tbaa !1563
  %call = call %struct._object* @PyLong_FromSize_t(i64 %3), !dbg !4953
  %4 = bitcast i64* %x to i8*, !dbg !4954
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !4954
  ret %struct._object* %call, !dbg !4955
}

; Function Attrs: nounwind uwtable
define internal i32 @np_size_t(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1055, metadata !1363), !dbg !4956
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1056, metadata !1363), !dbg !4957
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1057, metadata !1363), !dbg !4958
  %0 = bitcast i64* %x to i8*, !dbg !4959
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4959
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1058, metadata !1363), !dbg !4960
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4961, !tbaa !1367
  %call = call i32 @get_size_t(%struct._object* %1, i64* %x), !dbg !4963
  %cmp = icmp slt i32 %call, 0, !dbg !4964
  br i1 %cmp, label %if.then, label %if.end, !dbg !4965

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4966
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4966

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4967, !tbaa !1367
  %3 = bitcast i64* %x to i8*, !dbg !4968
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 1, i1 false), !dbg !4969
  store i32 0, i32* %retval, !dbg !4970
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4970

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i64* %x to i8*, !dbg !4971
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !4971
  %5 = load i32, i32* %retval, !dbg !4971
  ret i32 %5, !dbg !4971
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_longlong(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1071, metadata !1363), !dbg !4972
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1072, metadata !1363), !dbg !4973
  %0 = bitcast i64* %x to i8*, !dbg !4974
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4974
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1073, metadata !1363), !dbg !4975
  %1 = bitcast i64* %x to i8*, !dbg !4976
  %2 = load i8*, i8** %p.addr, align 8, !dbg !4977, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !4978
  %3 = load i64, i64* %x, align 8, !dbg !4979, !tbaa !4184
  %cmp = icmp sge i64 %3, -9223372036854775808, !dbg !4981
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4982

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* %x, align 8, !dbg !4983, !tbaa !4184
  %cmp1 = icmp sle i64 %4, 9223372036854775807, !dbg !4985
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4986

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, i64* %x, align 8, !dbg !4987, !tbaa !4184
  %call = call %struct._object* @PyLong_FromLong(i64 %5), !dbg !4988
  store %struct._object* %call, %struct._object** %retval, !dbg !4989
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4989

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i64, i64* %x, align 8, !dbg !4990, !tbaa !4184
  %call2 = call %struct._object* @PyLong_FromLongLong(i64 %6), !dbg !4991
  store %struct._object* %call2, %struct._object** %retval, !dbg !4992
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4992

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i64* %x to i8*, !dbg !4993
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !4993
  %8 = load %struct._object*, %struct._object** %retval, !dbg !4993
  ret %struct._object* %8, !dbg !4993
}

; Function Attrs: nounwind uwtable
define internal i32 @np_longlong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1076, metadata !1363), !dbg !4994
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1077, metadata !1363), !dbg !4995
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1078, metadata !1363), !dbg !4996
  %0 = bitcast i64* %x to i8*, !dbg !4997
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4997
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1079, metadata !1363), !dbg !4998
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4999, !tbaa !1367
  %call = call i32 @get_longlong(%struct._object* %1, i64* %x), !dbg !5001
  %cmp = icmp slt i32 %call, 0, !dbg !5002
  br i1 %cmp, label %if.then, label %if.end, !dbg !5003

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5004
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5004

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !dbg !5005, !tbaa !1367
  %3 = bitcast i64* %x to i8*, !dbg !5006
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 1, i1 false), !dbg !5007
  store i32 0, i32* %retval, !dbg !5008
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5008

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i64* %x to i8*, !dbg !5009
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !5009
  %5 = load i32, i32* %retval, !dbg !5009
  ret i32 %5, !dbg !5009
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_ulonglong(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1092, metadata !1363), !dbg !5010
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1093, metadata !1363), !dbg !5011
  %0 = bitcast i64* %x to i8*, !dbg !5012
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5012
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1094, metadata !1363), !dbg !5013
  %1 = bitcast i64* %x to i8*, !dbg !5014
  %2 = load i8*, i8** %p.addr, align 8, !dbg !5015, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !5016
  %3 = load i64, i64* %x, align 8, !dbg !5017, !tbaa !4184
  %cmp = icmp ule i64 %3, 9223372036854775807, !dbg !5019
  br i1 %cmp, label %if.then, label %if.end, !dbg !5020

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %x, align 8, !dbg !5021, !tbaa !4184
  %call = call %struct._object* @PyLong_FromLong(i64 %4), !dbg !5022
  store %struct._object* %call, %struct._object** %retval, !dbg !5023
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5023

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %x, align 8, !dbg !5024, !tbaa !4184
  %call1 = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %5), !dbg !5025
  store %struct._object* %call1, %struct._object** %retval, !dbg !5026
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5026

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast i64* %x to i8*, !dbg !5027
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !5027
  %7 = load %struct._object*, %struct._object** %retval, !dbg !5027
  ret %struct._object* %7, !dbg !5027
}

; Function Attrs: nounwind uwtable
define internal i32 @np_ulonglong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1097, metadata !1363), !dbg !5028
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1098, metadata !1363), !dbg !5029
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1099, metadata !1363), !dbg !5030
  %0 = bitcast i64* %x to i8*, !dbg !5031
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5031
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1100, metadata !1363), !dbg !5032
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5033, !tbaa !1367
  %call = call i32 @get_ulonglong(%struct._object* %1, i64* %x), !dbg !5035
  %cmp = icmp slt i32 %call, 0, !dbg !5036
  br i1 %cmp, label %if.then, label %if.end, !dbg !5037

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5038
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5038

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !dbg !5039, !tbaa !1367
  %3 = bitcast i64* %x to i8*, !dbg !5040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 1, i1 false), !dbg !5041
  store i32 0, i32* %retval, !dbg !5042
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5042

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i64* %x to i8*, !dbg !5043
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !5043
  %5 = load i32, i32* %retval, !dbg !5043
  ret i32 %5, !dbg !5043
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_bool(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i8, align 1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1113, metadata !1363), !dbg !5044
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1114, metadata !1363), !dbg !5045
  call void @llvm.lifetime.start(i64 1, i8* %x) #1, !dbg !5046
  call void @llvm.dbg.declare(metadata i8* %x, metadata !1115, metadata !1363), !dbg !5047
  %0 = load i8*, i8** %p.addr, align 8, !dbg !5048, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x, i8* %0, i64 1, i32 1, i1 false), !dbg !5049
  %1 = load i8, i8* %x, align 1, !dbg !5050, !tbaa !5051, !range !5053
  %tobool = trunc i8 %1 to i1, !dbg !5050
  %conv = zext i1 %tobool to i32, !dbg !5050
  %cmp = icmp ne i32 %conv, 0, !dbg !5054
  %conv1 = zext i1 %cmp to i32, !dbg !5054
  %conv2 = sext i32 %conv1 to i64, !dbg !5050
  %call = call %struct._object* @PyBool_FromLong(i64 %conv2), !dbg !5055
  call void @llvm.lifetime.end(i64 1, i8* %x) #1, !dbg !5056
  ret %struct._object* %call, !dbg !5057
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1119, metadata !1363), !dbg !5058
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1120, metadata !1363), !dbg !5059
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1121, metadata !1363), !dbg !5060
  %0 = bitcast i32* %y to i8*, !dbg !5061
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !5061
  call void @llvm.dbg.declare(metadata i32* %y, metadata !1122, metadata !1363), !dbg !5062
  call void @llvm.lifetime.start(i64 1, i8* %x) #1, !dbg !5063
  call void @llvm.dbg.declare(metadata i8* %x, metadata !1123, metadata !1363), !dbg !5064
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5065, !tbaa !1367
  %call = call i32 @PyObject_IsTrue(%struct._object* %1), !dbg !5066
  store i32 %call, i32* %y, align 4, !dbg !5067, !tbaa !2291
  %2 = load i32, i32* %y, align 4, !dbg !5068, !tbaa !2291
  %cmp = icmp slt i32 %2, 0, !dbg !5070
  br i1 %cmp, label %if.then, label %if.end, !dbg !5071

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5072
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5072

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %y, align 4, !dbg !5073, !tbaa !2291
  %tobool = icmp ne i32 %3, 0, !dbg !5073
  %frombool = zext i1 %tobool to i8, !dbg !5074
  store i8 %frombool, i8* %x, align 1, !dbg !5074, !tbaa !5051
  %4 = load i8*, i8** %p.addr, align 8, !dbg !5075, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %x, i64 1, i32 1, i1 false), !dbg !5076
  store i32 0, i32* %retval, !dbg !5077
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5077

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %x) #1, !dbg !5078
  %5 = bitcast i32* %y to i8*, !dbg !5078
  call void @llvm.lifetime.end(i64 4, i8* %5) #1, !dbg !5078
  %6 = load i32, i32* %retval, !dbg !5078
  ret i32 %6, !dbg !5078
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_float(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca float, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1126, metadata !1363), !dbg !5079
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1127, metadata !1363), !dbg !5080
  %0 = bitcast float* %x to i8*, !dbg !5081
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !5081
  call void @llvm.dbg.declare(metadata float* %x, metadata !1128, metadata !1363), !dbg !5082
  %1 = bitcast float* %x to i8*, !dbg !5083
  %2 = load i8*, i8** %p.addr, align 8, !dbg !5084, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false), !dbg !5085
  %3 = load float, float* %x, align 4, !dbg !5086, !tbaa !5087
  %conv = fpext float %3 to double, !dbg !5089
  %call = call %struct._object* @PyFloat_FromDouble(double %conv), !dbg !5090
  %4 = bitcast float* %x to i8*, !dbg !5091
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !5091
  ret %struct._object* %call, !dbg !5092
}

; Function Attrs: nounwind uwtable
define internal i32 @np_float(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1131, metadata !1363), !dbg !5093
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1132, metadata !1363), !dbg !5094
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1133, metadata !1363), !dbg !5095
  %0 = bitcast float* %x to i8*, !dbg !5096
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !5096
  call void @llvm.dbg.declare(metadata float* %x, metadata !1134, metadata !1363), !dbg !5097
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5098, !tbaa !1367
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !5099
  %conv = fptrunc double %call to float, !dbg !5100
  store float %conv, float* %x, align 4, !dbg !5097, !tbaa !5087
  %2 = load float, float* %x, align 4, !dbg !5101, !tbaa !5087
  %cmp = fcmp oeq float %2, -1.000000e+00, !dbg !5103
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5104

land.lhs.true:                                    ; preds = %entry
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !5105
  %tobool = icmp ne %struct._object* %call2, null, !dbg !5105
  br i1 %tobool, label %if.then, label %if.end, !dbg !5107

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !5108, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0)), !dbg !5110
  store i32 -1, i32* %retval, !dbg !5111
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5111

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** %p.addr, align 8, !dbg !5112, !tbaa !1367
  %5 = bitcast float* %x to i8*, !dbg !5113
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 4, i32 1, i1 false), !dbg !5114
  store i32 0, i32* %retval, !dbg !5115
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5115

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast float* %x to i8*, !dbg !5116
  call void @llvm.lifetime.end(i64 4, i8* %6) #1, !dbg !5116
  %7 = load i32, i32* %retval, !dbg !5116
  ret i32 %7, !dbg !5116
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_double(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca double, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1137, metadata !1363), !dbg !5117
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1138, metadata !1363), !dbg !5118
  %0 = bitcast double* %x to i8*, !dbg !5119
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5119
  call void @llvm.dbg.declare(metadata double* %x, metadata !1139, metadata !1363), !dbg !5120
  %1 = bitcast double* %x to i8*, !dbg !5121
  %2 = load i8*, i8** %p.addr, align 8, !dbg !5122, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !5123
  %3 = load double, double* %x, align 8, !dbg !5124, !tbaa !4401
  %call = call %struct._object* @PyFloat_FromDouble(double %3), !dbg !5125
  %4 = bitcast double* %x to i8*, !dbg !5126
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !5126
  ret %struct._object* %call, !dbg !5127
}

; Function Attrs: nounwind uwtable
define internal i32 @np_double(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1142, metadata !1363), !dbg !5128
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1143, metadata !1363), !dbg !5129
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1144, metadata !1363), !dbg !5130
  %0 = bitcast double* %x to i8*, !dbg !5131
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5131
  call void @llvm.dbg.declare(metadata double* %x, metadata !1145, metadata !1363), !dbg !5132
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5133, !tbaa !1367
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !5134
  store double %call, double* %x, align 8, !dbg !5132, !tbaa !4401
  %2 = load double, double* %x, align 8, !dbg !5135, !tbaa !4401
  %cmp = fcmp oeq double %2, -1.000000e+00, !dbg !5137
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5138

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !5139
  %tobool = icmp ne %struct._object* %call1, null, !dbg !5139
  br i1 %tobool, label %if.then, label %if.end, !dbg !5141

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !5142, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0)), !dbg !5144
  store i32 -1, i32* %retval, !dbg !5145
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5145

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** %p.addr, align 8, !dbg !5146, !tbaa !1367
  %5 = bitcast double* %x to i8*, !dbg !5147
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 1, i1 false), !dbg !5148
  store i32 0, i32* %retval, !dbg !5149
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5149

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast double* %x to i8*, !dbg !5150
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !5150
  %7 = load i32, i32* %retval, !dbg !5150
  ret i32 %7, !dbg !5150
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nu_void_p(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1148, metadata !1363), !dbg !5151
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1149, metadata !1363), !dbg !5152
  %0 = bitcast i8** %x to i8*, !dbg !5153
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5153
  call void @llvm.dbg.declare(metadata i8** %x, metadata !1150, metadata !1363), !dbg !5154
  %1 = bitcast i8** %x to i8*, !dbg !5155
  %2 = load i8*, i8** %p.addr, align 8, !dbg !5156, !tbaa !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !5157
  %3 = load i8*, i8** %x, align 8, !dbg !5158, !tbaa !1367
  %call = call %struct._object* @PyLong_FromVoidPtr(i8* %3), !dbg !5159
  %4 = bitcast i8** %x to i8*, !dbg !5160
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !5160
  ret %struct._object* %call, !dbg !5161
}

; Function Attrs: nounwind uwtable
define internal i32 @np_void_p(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1153, metadata !1363), !dbg !5162
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1154, metadata !1363), !dbg !5163
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1155, metadata !1363), !dbg !5164
  %0 = bitcast i8** %x to i8*, !dbg !5165
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5165
  call void @llvm.dbg.declare(metadata i8** %x, metadata !1156, metadata !1363), !dbg !5166
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5167, !tbaa !1367
  %call = call %struct._object* @get_pylong(%struct._object* %1), !dbg !5168
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !5169, !tbaa !1367
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5170, !tbaa !1367
  %cmp = icmp eq %struct._object* %2, null, !dbg !5172
  br i1 %cmp, label %if.then, label %if.end, !dbg !5173

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5174
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5174

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5175, !tbaa !1367
  %call1 = call i8* @PyLong_AsVoidPtr(%struct._object* %3), !dbg !5176
  store i8* %call1, i8** %x, align 8, !dbg !5177, !tbaa !1367
  br label %do.body, !dbg !5178

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5179
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !5179
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1157, metadata !1363), !dbg !5181
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5182, !tbaa !1367
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !5181, !tbaa !1367
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5183, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !5185
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !5186, !tbaa !1487
  %dec = add i64 %7, -1, !dbg !5186
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5186, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !5187
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !5188

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !5189

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5191, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !5193
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5193, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !5194
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5194, !tbaa !1525
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5195, !tbaa !1367
  call void %10(%struct._object* %11), !dbg !5196
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5197
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !5197
  br label %do.cond, !dbg !5199

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !5200

do.end:                                           ; preds = %do.cond
  %13 = load i8*, i8** %x, align 8, !dbg !5202, !tbaa !1367
  %cmp5 = icmp eq i8* %13, null, !dbg !5204
  br i1 %cmp5, label %land.lhs.true, label %if.end.8, !dbg !5205

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred(), !dbg !5206
  %tobool = icmp ne %struct._object* %call6, null, !dbg !5206
  br i1 %tobool, label %if.then.7, label %if.end.8, !dbg !5208

if.then.7:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !5209
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5209

if.end.8:                                         ; preds = %land.lhs.true, %do.end
  %14 = load i8*, i8** %p.addr, align 8, !dbg !5210, !tbaa !1367
  %15 = bitcast i8** %x to i8*, !dbg !5211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 1, i1 false), !dbg !5212
  store i32 0, i32* %retval, !dbg !5213
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5213

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then
  %16 = bitcast i8** %x to i8*, !dbg !5214
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !5214
  %17 = load i32, i32* %retval, !dbg !5214
  ret i32 %17, !dbg !5214
}

; Function Attrs: nounwind uwtable
define internal i32 @get_ssize_t(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1043, metadata !1363), !dbg !5215
  store i64* %p, i64** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !1044, metadata !1363), !dbg !5216
  %0 = bitcast i64* %x to i8*, !dbg !5217
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5217
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1045, metadata !1363), !dbg !5218
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5219, !tbaa !1367
  %call = call %struct._object* @get_pylong(%struct._object* %1), !dbg !5220
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !5221, !tbaa !1367
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5222, !tbaa !1367
  %cmp = icmp eq %struct._object* %2, null, !dbg !5224
  br i1 %cmp, label %if.then, label %if.end, !dbg !5225

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5226
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5226

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5227, !tbaa !1367
  %call1 = call i64 @PyLong_AsSsize_t(%struct._object* %3), !dbg !5228
  store i64 %call1, i64* %x, align 8, !dbg !5229, !tbaa !1563
  br label %do.body, !dbg !5230

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5231
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !5231
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1046, metadata !1363), !dbg !5233
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5234, !tbaa !1367
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !5233, !tbaa !1367
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5235, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !5237
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !5238, !tbaa !1487
  %dec = add i64 %7, -1, !dbg !5238
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5238, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !5239
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !5240

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !5241

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5243, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !5245
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5245, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !5246
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5246, !tbaa !1525
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5247, !tbaa !1367
  call void %10(%struct._object* %11), !dbg !5248
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5249
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !5249
  br label %do.cond, !dbg !5251

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !5252

do.end:                                           ; preds = %do.cond
  %13 = load i64, i64* %x, align 8, !dbg !5254, !tbaa !1563
  %cmp5 = icmp eq i64 %13, -1, !dbg !5256
  br i1 %cmp5, label %land.lhs.true, label %if.end.12, !dbg !5257

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred(), !dbg !5258
  %tobool = icmp ne %struct._object* %call6, null, !dbg !5258
  br i1 %tobool, label %if.then.7, label %if.end.12, !dbg !5260

if.then.7:                                        ; preds = %land.lhs.true
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !5261, !tbaa !1367
  %call8 = call i32 @PyErr_ExceptionMatches(%struct._object* %14), !dbg !5264
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5264
  br i1 %tobool9, label %if.then.10, label %if.end.11, !dbg !5265

if.then.10:                                       ; preds = %if.then.7
  %15 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !5266, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0)), !dbg !5267
  br label %if.end.11, !dbg !5267

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  store i32 -1, i32* %retval, !dbg !5268
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5268

if.end.12:                                        ; preds = %land.lhs.true, %do.end
  %16 = load i64, i64* %x, align 8, !dbg !5269, !tbaa !1563
  %17 = load i64*, i64** %p.addr, align 8, !dbg !5270, !tbaa !1367
  store i64 %16, i64* %17, align 8, !dbg !5271, !tbaa !1563
  store i32 0, i32* %retval, !dbg !5272
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5272

cleanup:                                          ; preds = %if.end.12, %if.end.11, %if.then
  %18 = bitcast i64* %x to i8*, !dbg !5273
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !5273
  %19 = load i32, i32* %retval, !dbg !5273
  ret i32 %19, !dbg !5273
}

declare i64 @PyLong_AsSsize_t(%struct._object*) #3

declare %struct._object* @PyLong_FromSize_t(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_size_t(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1064, metadata !1363), !dbg !5274
  store i64* %p, i64** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !1065, metadata !1363), !dbg !5275
  %0 = bitcast i64* %x to i8*, !dbg !5276
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5276
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1066, metadata !1363), !dbg !5277
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5278, !tbaa !1367
  %call = call %struct._object* @get_pylong(%struct._object* %1), !dbg !5279
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !5280, !tbaa !1367
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5281, !tbaa !1367
  %cmp = icmp eq %struct._object* %2, null, !dbg !5283
  br i1 %cmp, label %if.then, label %if.end, !dbg !5284

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5285
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5285

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5286, !tbaa !1367
  %call1 = call i64 @PyLong_AsSize_t(%struct._object* %3), !dbg !5287
  store i64 %call1, i64* %x, align 8, !dbg !5288, !tbaa !1563
  br label %do.body, !dbg !5289

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5290
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !5290
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1067, metadata !1363), !dbg !5292
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5293, !tbaa !1367
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !5292, !tbaa !1367
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5294, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !5296
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !5297, !tbaa !1487
  %dec = add i64 %7, -1, !dbg !5297
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5297, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !5298
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !5299

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !5300

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5302, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !5304
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5304, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !5305
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5305, !tbaa !1525
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5306, !tbaa !1367
  call void %10(%struct._object* %11), !dbg !5307
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5308
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !5308
  br label %do.cond, !dbg !5310

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !5311

do.end:                                           ; preds = %do.cond
  %13 = load i64, i64* %x, align 8, !dbg !5313, !tbaa !1563
  %cmp5 = icmp eq i64 %13, -1, !dbg !5315
  br i1 %cmp5, label %land.lhs.true, label %if.end.12, !dbg !5316

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred(), !dbg !5317
  %tobool = icmp ne %struct._object* %call6, null, !dbg !5317
  br i1 %tobool, label %if.then.7, label %if.end.12, !dbg !5319

if.then.7:                                        ; preds = %land.lhs.true
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !5320, !tbaa !1367
  %call8 = call i32 @PyErr_ExceptionMatches(%struct._object* %14), !dbg !5323
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5323
  br i1 %tobool9, label %if.then.10, label %if.end.11, !dbg !5324

if.then.10:                                       ; preds = %if.then.7
  %15 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !5325, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0)), !dbg !5326
  br label %if.end.11, !dbg !5326

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  store i32 -1, i32* %retval, !dbg !5327
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5327

if.end.12:                                        ; preds = %land.lhs.true, %do.end
  %16 = load i64, i64* %x, align 8, !dbg !5328, !tbaa !1563
  %17 = load i64*, i64** %p.addr, align 8, !dbg !5329, !tbaa !1367
  store i64 %16, i64* %17, align 8, !dbg !5330, !tbaa !1563
  store i32 0, i32* %retval, !dbg !5331
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5331

cleanup:                                          ; preds = %if.end.12, %if.end.11, %if.then
  %18 = bitcast i64* %x to i8*, !dbg !5332
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !5332
  %19 = load i32, i32* %retval, !dbg !5332
  ret i32 %19, !dbg !5332
}

declare i64 @PyLong_AsSize_t(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_longlong(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1085, metadata !1363), !dbg !5333
  store i64* %p, i64** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !1086, metadata !1363), !dbg !5334
  %0 = bitcast i64* %x to i8*, !dbg !5335
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5335
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1087, metadata !1363), !dbg !5336
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5337, !tbaa !1367
  %call = call %struct._object* @get_pylong(%struct._object* %1), !dbg !5338
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !5339, !tbaa !1367
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5340, !tbaa !1367
  %cmp = icmp eq %struct._object* %2, null, !dbg !5342
  br i1 %cmp, label %if.then, label %if.end, !dbg !5343

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5344
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5344

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5345, !tbaa !1367
  %call1 = call i64 @PyLong_AsLongLong(%struct._object* %3), !dbg !5346
  store i64 %call1, i64* %x, align 8, !dbg !5347, !tbaa !4184
  br label %do.body, !dbg !5348

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5349
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !5349
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1088, metadata !1363), !dbg !5351
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5352, !tbaa !1367
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !5351, !tbaa !1367
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5353, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !5355
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !5356, !tbaa !1487
  %dec = add i64 %7, -1, !dbg !5356
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5356, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !5357
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !5358

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !5359

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5361, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !5363
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5363, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !5364
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5364, !tbaa !1525
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5365, !tbaa !1367
  call void %10(%struct._object* %11), !dbg !5366
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5367
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !5367
  br label %do.cond, !dbg !5369

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !5370

do.end:                                           ; preds = %do.cond
  %13 = load i64, i64* %x, align 8, !dbg !5372, !tbaa !4184
  %cmp5 = icmp eq i64 %13, -1, !dbg !5374
  br i1 %cmp5, label %land.lhs.true, label %if.end.12, !dbg !5375

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred(), !dbg !5376
  %tobool = icmp ne %struct._object* %call6, null, !dbg !5376
  br i1 %tobool, label %if.then.7, label %if.end.12, !dbg !5378

if.then.7:                                        ; preds = %land.lhs.true
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !5379, !tbaa !1367
  %call8 = call i32 @PyErr_ExceptionMatches(%struct._object* %14), !dbg !5382
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5382
  br i1 %tobool9, label %if.then.10, label %if.end.11, !dbg !5383

if.then.10:                                       ; preds = %if.then.7
  %15 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !5384, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0)), !dbg !5385
  br label %if.end.11, !dbg !5385

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  store i32 -1, i32* %retval, !dbg !5386
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5386

if.end.12:                                        ; preds = %land.lhs.true, %do.end
  %16 = load i64, i64* %x, align 8, !dbg !5387, !tbaa !4184
  %17 = load i64*, i64** %p.addr, align 8, !dbg !5388, !tbaa !1367
  store i64 %16, i64* %17, align 8, !dbg !5389, !tbaa !4184
  store i32 0, i32* %retval, !dbg !5390
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5390

cleanup:                                          ; preds = %if.end.12, %if.end.11, %if.then
  %18 = bitcast i64* %x to i8*, !dbg !5391
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !5391
  %19 = load i32, i32* %retval, !dbg !5391
  ret i32 %19, !dbg !5391
}

declare i64 @PyLong_AsLongLong(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_ulonglong(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1106, metadata !1363), !dbg !5392
  store i64* %p, i64** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !1107, metadata !1363), !dbg !5393
  %0 = bitcast i64* %x to i8*, !dbg !5394
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5394
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1108, metadata !1363), !dbg !5395
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5396, !tbaa !1367
  %call = call %struct._object* @get_pylong(%struct._object* %1), !dbg !5397
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !5398, !tbaa !1367
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5399, !tbaa !1367
  %cmp = icmp eq %struct._object* %2, null, !dbg !5401
  br i1 %cmp, label %if.then, label %if.end, !dbg !5402

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5403
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5403

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5404, !tbaa !1367
  %call1 = call i64 @PyLong_AsUnsignedLongLong(%struct._object* %3), !dbg !5405
  store i64 %call1, i64* %x, align 8, !dbg !5406, !tbaa !4184
  br label %do.body, !dbg !5407

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5408
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !5408
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1109, metadata !1363), !dbg !5410
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5411, !tbaa !1367
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !5410, !tbaa !1367
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5412, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !5414
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !5415, !tbaa !1487
  %dec = add i64 %7, -1, !dbg !5415
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5415, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !5416
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !5417

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !5418

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5420, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !5422
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5422, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !5423
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5423, !tbaa !1525
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5424, !tbaa !1367
  call void %10(%struct._object* %11), !dbg !5425
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5426
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !5426
  br label %do.cond, !dbg !5428

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !5429

do.end:                                           ; preds = %do.cond
  %13 = load i64, i64* %x, align 8, !dbg !5431, !tbaa !4184
  %cmp5 = icmp eq i64 %13, -1, !dbg !5433
  br i1 %cmp5, label %land.lhs.true, label %if.end.12, !dbg !5434

land.lhs.true:                                    ; preds = %do.end
  %call6 = call %struct._object* @PyErr_Occurred(), !dbg !5435
  %tobool = icmp ne %struct._object* %call6, null, !dbg !5435
  br i1 %tobool, label %if.then.7, label %if.end.12, !dbg !5437

if.then.7:                                        ; preds = %land.lhs.true
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !5438, !tbaa !1367
  %call8 = call i32 @PyErr_ExceptionMatches(%struct._object* %14), !dbg !5441
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5441
  br i1 %tobool9, label %if.then.10, label %if.end.11, !dbg !5442

if.then.10:                                       ; preds = %if.then.7
  %15 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !5443, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0)), !dbg !5444
  br label %if.end.11, !dbg !5444

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  store i32 -1, i32* %retval, !dbg !5445
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5445

if.end.12:                                        ; preds = %land.lhs.true, %do.end
  %16 = load i64, i64* %x, align 8, !dbg !5446, !tbaa !4184
  %17 = load i64*, i64** %p.addr, align 8, !dbg !5447, !tbaa !1367
  store i64 %16, i64* %17, align 8, !dbg !5448, !tbaa !4184
  store i32 0, i32* %retval, !dbg !5449
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5449

cleanup:                                          ; preds = %if.end.12, %if.end.11, %if.then
  %18 = bitcast i64* %x to i8*, !dbg !5450
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !5450
  %19 = load i32, i32* %retval, !dbg !5450
  ret i32 %19, !dbg !5450
}

declare i64 @PyLong_AsUnsignedLongLong(%struct._object*) #3

declare %struct._object* @PyLong_FromVoidPtr(i8*) #3

declare i8* @PyLong_AsVoidPtr(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @lu_int(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %bytes = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1161, metadata !1363), !dbg !5451
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1162, metadata !1363), !dbg !5452
  %0 = bitcast i64* %x to i8*, !dbg !5453
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5453
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1163, metadata !1363), !dbg !5454
  store i64 0, i64* %x, align 8, !dbg !5454, !tbaa !1563
  %1 = bitcast i64* %i to i8*, !dbg !5455
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !5455
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1164, metadata !1363), !dbg !5456
  %2 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5457, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %2, i32 0, i32 1, !dbg !5458
  %3 = load i64, i64* %size, align 8, !dbg !5458, !tbaa !1437
  store i64 %3, i64* %i, align 8, !dbg !5456, !tbaa !1563
  %4 = bitcast i8** %bytes to i8*, !dbg !5459
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !5459
  call void @llvm.dbg.declare(metadata i8** %bytes, metadata !1165, metadata !1363), !dbg !5460
  %5 = load i8*, i8** %p.addr, align 8, !dbg !5461, !tbaa !1367
  store i8* %5, i8** %bytes, align 8, !dbg !5460, !tbaa !1367
  br label %do.body, !dbg !5462

do.body:                                          ; preds = %do.cond, %entry
  %6 = load i64, i64* %x, align 8, !dbg !5463, !tbaa !1563
  %shl = shl i64 %6, 8, !dbg !5465
  %7 = load i64, i64* %i, align 8, !dbg !5466, !tbaa !1563
  %dec = add i64 %7, -1, !dbg !5466
  store i64 %dec, i64* %i, align 8, !dbg !5466, !tbaa !1563
  %8 = load i8*, i8** %bytes, align 8, !dbg !5467, !tbaa !1367
  %arrayidx = getelementptr i8, i8* %8, i64 %dec, !dbg !5467
  %9 = load i8, i8* %arrayidx, align 1, !dbg !5467, !tbaa !2498
  %conv = zext i8 %9 to i64, !dbg !5467
  %or = or i64 %shl, %conv, !dbg !5468
  store i64 %or, i64* %x, align 8, !dbg !5469, !tbaa !1563
  br label %do.cond, !dbg !5470

do.cond:                                          ; preds = %do.body
  %10 = load i64, i64* %i, align 8, !dbg !5471, !tbaa !1563
  %cmp = icmp sgt i64 %10, 0, !dbg !5473
  br i1 %cmp, label %do.body, label %do.end, !dbg !5470

do.end:                                           ; preds = %do.cond
  %11 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5474, !tbaa !1367
  %size2 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %11, i32 0, i32 1, !dbg !5476
  %12 = load i64, i64* %size2, align 8, !dbg !5476, !tbaa !1437
  %cmp3 = icmp sgt i64 8, %12, !dbg !5477
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5478

if.then:                                          ; preds = %do.end
  %13 = load i64, i64* %x, align 8, !dbg !5479, !tbaa !1563
  %14 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5480, !tbaa !1367
  %size5 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %14, i32 0, i32 1, !dbg !5481
  %15 = load i64, i64* %size5, align 8, !dbg !5481, !tbaa !1437
  %mul = mul i64 8, %15, !dbg !5482
  %sub = sub i64 %mul, 1, !dbg !5483
  %shl6 = shl i64 1, %sub, !dbg !5484
  %and = and i64 %13, %shl6, !dbg !5485
  %sub7 = sub i64 0, %and, !dbg !5486
  %16 = load i64, i64* %x, align 8, !dbg !5487, !tbaa !1563
  %or8 = or i64 %16, %sub7, !dbg !5487
  store i64 %or8, i64* %x, align 8, !dbg !5487, !tbaa !1563
  br label %if.end, !dbg !5488

if.end:                                           ; preds = %if.then, %do.end
  %17 = load i64, i64* %x, align 8, !dbg !5489, !tbaa !1563
  %call = call %struct._object* @PyLong_FromLong(i64 %17), !dbg !5490
  %18 = bitcast i8** %bytes to i8*, !dbg !5491
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !5491
  %19 = bitcast i64* %i to i8*, !dbg !5491
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !5491
  %20 = bitcast i64* %x to i8*, !dbg !5491
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !5491
  ret %struct._object* %call, !dbg !5492
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1168, metadata !1363), !dbg !5493
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1169, metadata !1363), !dbg !5494
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1170, metadata !1363), !dbg !5495
  %0 = bitcast i64* %x to i8*, !dbg !5496
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5496
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1171, metadata !1363), !dbg !5497
  %1 = bitcast i64* %i to i8*, !dbg !5498
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !5498
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1172, metadata !1363), !dbg !5499
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5500, !tbaa !1367
  %call = call i32 @get_long(%struct._object* %2, i64* %x), !dbg !5502
  %cmp = icmp slt i32 %call, 0, !dbg !5503
  br i1 %cmp, label %if.then, label %if.end, !dbg !5504

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5505
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5505

if.end:                                           ; preds = %entry
  %3 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5506, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %3, i32 0, i32 1, !dbg !5507
  %4 = load i64, i64* %size, align 8, !dbg !5507, !tbaa !1437
  store i64 %4, i64* %i, align 8, !dbg !5508, !tbaa !1563
  %5 = load i64, i64* %i, align 8, !dbg !5509, !tbaa !1563
  %cmp1 = icmp ne i64 %5, 8, !dbg !5511
  br i1 %cmp1, label %if.then.2, label %if.end.17, !dbg !5512

if.then.2:                                        ; preds = %if.end
  %6 = load i64, i64* %i, align 8, !dbg !5513, !tbaa !1563
  %cmp3 = icmp eq i64 %6, 2, !dbg !5516
  br i1 %cmp3, label %land.lhs.true, label %if.else, !dbg !5517

land.lhs.true:                                    ; preds = %if.then.2
  %7 = load i64, i64* %x, align 8, !dbg !5518, !tbaa !1563
  %cmp4 = icmp slt i64 %7, -32768, !dbg !5520
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false, !dbg !5521

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i64, i64* %x, align 8, !dbg !5522, !tbaa !1563
  %cmp5 = icmp sgt i64 %8, 32767, !dbg !5524
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !5525

if.then.6:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5526, !tbaa !1367
  %call7 = call i32 @_range_error(%struct._formatdef* %9, i32 0), !dbg !5527
  store i32 %call7, i32* %retval, !dbg !5528
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5528

if.else:                                          ; preds = %lor.lhs.false, %if.then.2
  %10 = load i64, i64* %i, align 8, !dbg !5529, !tbaa !1563
  %cmp8 = icmp eq i64 %10, 4, !dbg !5531
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.15, !dbg !5532

land.lhs.true.9:                                  ; preds = %if.else
  %11 = load i64, i64* %x, align 8, !dbg !5533, !tbaa !1563
  %cmp10 = icmp slt i64 %11, -2147483648, !dbg !5535
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11, !dbg !5536

lor.lhs.false.11:                                 ; preds = %land.lhs.true.9
  %12 = load i64, i64* %x, align 8, !dbg !5537, !tbaa !1563
  %cmp12 = icmp sgt i64 %12, 2147483647, !dbg !5539
  br i1 %cmp12, label %if.then.13, label %if.end.15, !dbg !5540

if.then.13:                                       ; preds = %lor.lhs.false.11, %land.lhs.true.9
  %13 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5541, !tbaa !1367
  %call14 = call i32 @_range_error(%struct._formatdef* %13, i32 0), !dbg !5542
  store i32 %call14, i32* %retval, !dbg !5543
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5543

if.end.15:                                        ; preds = %lor.lhs.false.11, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  br label %if.end.17, !dbg !5544

if.end.17:                                        ; preds = %if.end.16, %if.end
  br label %do.body, !dbg !5545

do.body:                                          ; preds = %do.cond, %if.end.17
  %14 = load i64, i64* %x, align 8, !dbg !5546, !tbaa !1563
  %conv = trunc i64 %14 to i8, !dbg !5548
  %15 = load i8*, i8** %p.addr, align 8, !dbg !5549, !tbaa !1367
  %incdec.ptr = getelementptr i8, i8* %15, i32 1, !dbg !5549
  store i8* %incdec.ptr, i8** %p.addr, align 8, !dbg !5549, !tbaa !1367
  store i8 %conv, i8* %15, align 1, !dbg !5550, !tbaa !2498
  %16 = load i64, i64* %x, align 8, !dbg !5551, !tbaa !1563
  %shr = ashr i64 %16, 8, !dbg !5551
  store i64 %shr, i64* %x, align 8, !dbg !5551, !tbaa !1563
  br label %do.cond, !dbg !5552

do.cond:                                          ; preds = %do.body
  %17 = load i64, i64* %i, align 8, !dbg !5553, !tbaa !1563
  %dec = add i64 %17, -1, !dbg !5553
  store i64 %dec, i64* %i, align 8, !dbg !5553, !tbaa !1563
  %cmp18 = icmp sgt i64 %dec, 0, !dbg !5555
  br i1 %cmp18, label %do.body, label %do.end, !dbg !5552

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, !dbg !5556
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5556

cleanup:                                          ; preds = %do.end, %if.then.13, %if.then.6, %if.then
  %18 = bitcast i64* %i to i8*, !dbg !5557
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !5557
  %19 = bitcast i64* %x to i8*, !dbg !5557
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !5557
  %20 = load i32, i32* %retval, !dbg !5557
  ret i32 %20, !dbg !5557
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1175, metadata !1363), !dbg !5558
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1176, metadata !1363), !dbg !5559
  %0 = bitcast i64* %x to i8*, !dbg !5560
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5560
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1177, metadata !1363), !dbg !5561
  store i64 0, i64* %x, align 8, !dbg !5561, !tbaa !1563
  %1 = bitcast i64* %i to i8*, !dbg !5562
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !5562
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1178, metadata !1363), !dbg !5563
  %2 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5564, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %2, i32 0, i32 1, !dbg !5565
  %3 = load i64, i64* %size, align 8, !dbg !5565, !tbaa !1437
  store i64 %3, i64* %i, align 8, !dbg !5563, !tbaa !1563
  %4 = bitcast i8** %bytes to i8*, !dbg !5566
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !5566
  call void @llvm.dbg.declare(metadata i8** %bytes, metadata !1179, metadata !1363), !dbg !5567
  %5 = load i8*, i8** %p.addr, align 8, !dbg !5568, !tbaa !1367
  store i8* %5, i8** %bytes, align 8, !dbg !5567, !tbaa !1367
  br label %do.body, !dbg !5569

do.body:                                          ; preds = %do.cond, %entry
  %6 = load i64, i64* %x, align 8, !dbg !5570, !tbaa !1563
  %shl = shl i64 %6, 8, !dbg !5572
  %7 = load i64, i64* %i, align 8, !dbg !5573, !tbaa !1563
  %dec = add i64 %7, -1, !dbg !5573
  store i64 %dec, i64* %i, align 8, !dbg !5573, !tbaa !1563
  %8 = load i8*, i8** %bytes, align 8, !dbg !5574, !tbaa !1367
  %arrayidx = getelementptr i8, i8* %8, i64 %dec, !dbg !5574
  %9 = load i8, i8* %arrayidx, align 1, !dbg !5574, !tbaa !2498
  %conv = zext i8 %9 to i64, !dbg !5574
  %or = or i64 %shl, %conv, !dbg !5575
  store i64 %or, i64* %x, align 8, !dbg !5576, !tbaa !1563
  br label %do.cond, !dbg !5577

do.cond:                                          ; preds = %do.body
  %10 = load i64, i64* %i, align 8, !dbg !5578, !tbaa !1563
  %cmp = icmp sgt i64 %10, 0, !dbg !5580
  br i1 %cmp, label %do.body, label %do.end, !dbg !5577

do.end:                                           ; preds = %do.cond
  %11 = load i64, i64* %x, align 8, !dbg !5581, !tbaa !1563
  %cmp2 = icmp ule i64 %11, 9223372036854775807, !dbg !5583
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5584

if.then:                                          ; preds = %do.end
  %12 = load i64, i64* %x, align 8, !dbg !5585, !tbaa !1563
  %call = call %struct._object* @PyLong_FromLong(i64 %12), !dbg !5586
  store %struct._object* %call, %struct._object** %retval, !dbg !5587
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5587

if.end:                                           ; preds = %do.end
  %13 = load i64, i64* %x, align 8, !dbg !5588, !tbaa !1563
  %call4 = call %struct._object* @PyLong_FromUnsignedLong(i64 %13), !dbg !5589
  store %struct._object* %call4, %struct._object** %retval, !dbg !5590
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5590

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i8** %bytes to i8*, !dbg !5591
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !5591
  %15 = bitcast i64* %i to i8*, !dbg !5591
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !5591
  %16 = bitcast i64* %x to i8*, !dbg !5591
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !5591
  %17 = load %struct._object*, %struct._object** %retval, !dbg !5591
  ret %struct._object* %17, !dbg !5591
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
  %cleanup.dest.slot = alloca i32
  %maxint = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1182, metadata !1363), !dbg !5592
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1183, metadata !1363), !dbg !5593
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1184, metadata !1363), !dbg !5594
  %0 = bitcast i64* %x to i8*, !dbg !5595
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5595
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1185, metadata !1363), !dbg !5596
  %1 = bitcast i64* %i to i8*, !dbg !5597
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !5597
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1186, metadata !1363), !dbg !5598
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5599, !tbaa !1367
  %call = call i32 @get_ulong(%struct._object* %2, i64* %x), !dbg !5601
  %cmp = icmp slt i32 %call, 0, !dbg !5602
  br i1 %cmp, label %if.then, label %if.end, !dbg !5603

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5604
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10, !dbg !5604

if.end:                                           ; preds = %entry
  %3 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5605, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %3, i32 0, i32 1, !dbg !5606
  %4 = load i64, i64* %size, align 8, !dbg !5606, !tbaa !1437
  store i64 %4, i64* %i, align 8, !dbg !5607, !tbaa !1563
  %5 = load i64, i64* %i, align 8, !dbg !5608, !tbaa !1563
  %cmp1 = icmp ne i64 %5, 8, !dbg !5609
  br i1 %cmp1, label %if.then.2, label %if.end.7, !dbg !5610

if.then.2:                                        ; preds = %if.end
  %6 = bitcast i64* %maxint to i8*, !dbg !5611
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !5611
  call void @llvm.dbg.declare(metadata i64* %maxint, metadata !1187, metadata !1363), !dbg !5612
  store i64 1, i64* %maxint, align 8, !dbg !5612, !tbaa !1563
  %7 = load i64, i64* %i, align 8, !dbg !5613, !tbaa !1563
  %mul = mul i64 %7, 8, !dbg !5614
  %8 = load i64, i64* %maxint, align 8, !dbg !5615, !tbaa !1563
  %shl = shl i64 %8, %mul, !dbg !5615
  store i64 %shl, i64* %maxint, align 8, !dbg !5615, !tbaa !1563
  %9 = load i64, i64* %x, align 8, !dbg !5616, !tbaa !1563
  %10 = load i64, i64* %maxint, align 8, !dbg !5618, !tbaa !1563
  %cmp3 = icmp uge i64 %9, %10, !dbg !5619
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !5620

if.then.4:                                        ; preds = %if.then.2
  %11 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5621, !tbaa !1367
  %call5 = call i32 @_range_error(%struct._formatdef* %11, i32 1), !dbg !5622
  store i32 %call5, i32* %retval, !dbg !5623
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5623

if.end.6:                                         ; preds = %if.then.2
  store i32 0, i32* %cleanup.dest.slot, !dbg !5624
  br label %cleanup, !dbg !5624

cleanup:                                          ; preds = %if.end.6, %if.then.4
  %12 = bitcast i64* %maxint to i8*, !dbg !5625
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !5625
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.7, !dbg !5627

if.end.7:                                         ; preds = %cleanup.cont, %if.end
  br label %do.body, !dbg !5628

do.body:                                          ; preds = %do.cond, %if.end.7
  %13 = load i64, i64* %x, align 8, !dbg !5629, !tbaa !1563
  %conv = trunc i64 %13 to i8, !dbg !5631
  %14 = load i8*, i8** %p.addr, align 8, !dbg !5632, !tbaa !1367
  %incdec.ptr = getelementptr i8, i8* %14, i32 1, !dbg !5632
  store i8* %incdec.ptr, i8** %p.addr, align 8, !dbg !5632, !tbaa !1367
  store i8 %conv, i8* %14, align 1, !dbg !5633, !tbaa !2498
  %15 = load i64, i64* %x, align 8, !dbg !5634, !tbaa !1563
  %shr = lshr i64 %15, 8, !dbg !5634
  store i64 %shr, i64* %x, align 8, !dbg !5634, !tbaa !1563
  br label %do.cond, !dbg !5635

do.cond:                                          ; preds = %do.body
  %16 = load i64, i64* %i, align 8, !dbg !5636, !tbaa !1563
  %dec = add i64 %16, -1, !dbg !5636
  store i64 %dec, i64* %i, align 8, !dbg !5636, !tbaa !1563
  %cmp8 = icmp sgt i64 %dec, 0, !dbg !5638
  br i1 %cmp8, label %do.body, label %do.end, !dbg !5635

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, !dbg !5639
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10, !dbg !5639

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.10

cleanup.10:                                       ; preds = %NewDefault, %do.end, %if.then
  %17 = bitcast i64* %i to i8*, !dbg !5640
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !5640
  %18 = bitcast i64* %x to i8*, !dbg !5640
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !5640
  %19 = load i32, i32* %retval, !dbg !5640
  ret i32 %19, !dbg !5640
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1192, metadata !1363), !dbg !5641
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1193, metadata !1363), !dbg !5642
  %0 = bitcast i64* %x to i8*, !dbg !5643
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5643
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1194, metadata !1363), !dbg !5644
  store i64 0, i64* %x, align 8, !dbg !5644, !tbaa !4184
  %1 = bitcast i64* %i to i8*, !dbg !5645
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !5645
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1195, metadata !1363), !dbg !5646
  %2 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5647, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %2, i32 0, i32 1, !dbg !5648
  %3 = load i64, i64* %size, align 8, !dbg !5648, !tbaa !1437
  store i64 %3, i64* %i, align 8, !dbg !5646, !tbaa !1563
  %4 = bitcast i8** %bytes to i8*, !dbg !5649
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !5649
  call void @llvm.dbg.declare(metadata i8** %bytes, metadata !1196, metadata !1363), !dbg !5650
  %5 = load i8*, i8** %p.addr, align 8, !dbg !5651, !tbaa !1367
  store i8* %5, i8** %bytes, align 8, !dbg !5650, !tbaa !1367
  br label %do.body, !dbg !5652

do.body:                                          ; preds = %do.cond, %entry
  %6 = load i64, i64* %x, align 8, !dbg !5653, !tbaa !4184
  %shl = shl i64 %6, 8, !dbg !5655
  %7 = load i64, i64* %i, align 8, !dbg !5656, !tbaa !1563
  %dec = add i64 %7, -1, !dbg !5656
  store i64 %dec, i64* %i, align 8, !dbg !5656, !tbaa !1563
  %8 = load i8*, i8** %bytes, align 8, !dbg !5657, !tbaa !1367
  %arrayidx = getelementptr i8, i8* %8, i64 %dec, !dbg !5657
  %9 = load i8, i8* %arrayidx, align 1, !dbg !5657, !tbaa !2498
  %conv = zext i8 %9 to i64, !dbg !5657
  %or = or i64 %shl, %conv, !dbg !5658
  store i64 %or, i64* %x, align 8, !dbg !5659, !tbaa !4184
  br label %do.cond, !dbg !5660

do.cond:                                          ; preds = %do.body
  %10 = load i64, i64* %i, align 8, !dbg !5661, !tbaa !1563
  %cmp = icmp sgt i64 %10, 0, !dbg !5663
  br i1 %cmp, label %do.body, label %do.end, !dbg !5660

do.end:                                           ; preds = %do.cond
  %11 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5664, !tbaa !1367
  %size2 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %11, i32 0, i32 1, !dbg !5666
  %12 = load i64, i64* %size2, align 8, !dbg !5666, !tbaa !1437
  %cmp3 = icmp sgt i64 8, %12, !dbg !5667
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5668

if.then:                                          ; preds = %do.end
  %13 = load i64, i64* %x, align 8, !dbg !5669, !tbaa !4184
  %14 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5670, !tbaa !1367
  %size5 = getelementptr inbounds %struct._formatdef, %struct._formatdef* %14, i32 0, i32 1, !dbg !5671
  %15 = load i64, i64* %size5, align 8, !dbg !5671, !tbaa !1437
  %mul = mul i64 8, %15, !dbg !5672
  %sub = sub i64 %mul, 1, !dbg !5673
  %shl6 = shl i64 1, %sub, !dbg !5674
  %and = and i64 %13, %shl6, !dbg !5675
  %sub7 = sub i64 0, %and, !dbg !5676
  %16 = load i64, i64* %x, align 8, !dbg !5677, !tbaa !4184
  %or8 = or i64 %16, %sub7, !dbg !5677
  store i64 %or8, i64* %x, align 8, !dbg !5677, !tbaa !4184
  br label %if.end, !dbg !5678

if.end:                                           ; preds = %if.then, %do.end
  %17 = load i64, i64* %x, align 8, !dbg !5679, !tbaa !4184
  %cmp9 = icmp sge i64 %17, -9223372036854775808, !dbg !5681
  br i1 %cmp9, label %land.lhs.true, label %if.end.14, !dbg !5682

land.lhs.true:                                    ; preds = %if.end
  %18 = load i64, i64* %x, align 8, !dbg !5683, !tbaa !4184
  %cmp11 = icmp sle i64 %18, 9223372036854775807, !dbg !5685
  br i1 %cmp11, label %if.then.13, label %if.end.14, !dbg !5686

if.then.13:                                       ; preds = %land.lhs.true
  %19 = load i64, i64* %x, align 8, !dbg !5687, !tbaa !4184
  %call = call %struct._object* @PyLong_FromLong(i64 %19), !dbg !5688
  store %struct._object* %call, %struct._object** %retval, !dbg !5689
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5689

if.end.14:                                        ; preds = %land.lhs.true, %if.end
  %20 = load i64, i64* %x, align 8, !dbg !5690, !tbaa !4184
  %call15 = call %struct._object* @PyLong_FromLongLong(i64 %20), !dbg !5691
  store %struct._object* %call15, %struct._object** %retval, !dbg !5692
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5692

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %21 = bitcast i8** %bytes to i8*, !dbg !5693
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !5693
  %22 = bitcast i64* %i to i8*, !dbg !5693
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !5693
  %23 = bitcast i64* %x to i8*, !dbg !5693
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !5693
  %24 = load %struct._object*, %struct._object** %retval, !dbg !5693
  ret %struct._object* %24, !dbg !5693
}

; Function Attrs: nounwind uwtable
define internal i32 @lp_longlong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1199, metadata !1363), !dbg !5694
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1200, metadata !1363), !dbg !5695
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1201, metadata !1363), !dbg !5696
  %0 = bitcast i32* %res to i8*, !dbg !5697
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !5697
  call void @llvm.dbg.declare(metadata i32* %res, metadata !1202, metadata !1363), !dbg !5698
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5699, !tbaa !1367
  %call = call %struct._object* @get_pylong(%struct._object* %1), !dbg !5700
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !5701, !tbaa !1367
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5702, !tbaa !1367
  %cmp = icmp eq %struct._object* %2, null, !dbg !5704
  br i1 %cmp, label %if.then, label %if.end, !dbg !5705

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5706
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5706

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5707, !tbaa !1367
  %4 = bitcast %struct._object* %3 to %struct._longobject*, !dbg !5708
  %5 = load i8*, i8** %p.addr, align 8, !dbg !5709, !tbaa !1367
  %call1 = call i32 @_PyLong_AsByteArray(%struct._longobject* %4, i8* %5, i64 8, i32 1, i32 1), !dbg !5710
  store i32 %call1, i32* %res, align 4, !dbg !5711, !tbaa !2291
  br label %do.body, !dbg !5712

do.body:                                          ; preds = %if.end
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5713
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !5713
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1203, metadata !1363), !dbg !5715
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5716, !tbaa !1367
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !5715, !tbaa !1367
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5717, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !5719
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !5720, !tbaa !1487
  %dec = add i64 %9, -1, !dbg !5720
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5720, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !5721
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !5722

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !5723

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5725, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !5727
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5727, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !5728
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5728, !tbaa !1525
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5729, !tbaa !1367
  call void %12(%struct._object* %13), !dbg !5730
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5731
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !5731
  br label %do.cond, !dbg !5733

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !5734

do.end:                                           ; preds = %do.cond
  %15 = load i32, i32* %res, align 4, !dbg !5736, !tbaa !2291
  store i32 %15, i32* %retval, !dbg !5737
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5737

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast i32* %res to i8*, !dbg !5738
  call void @llvm.lifetime.end(i64 4, i8* %16) #1, !dbg !5738
  %17 = load i32, i32* %retval, !dbg !5738
  ret i32 %17, !dbg !5738
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
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1207, metadata !1363), !dbg !5739
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1208, metadata !1363), !dbg !5740
  %0 = bitcast i64* %x to i8*, !dbg !5741
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5741
  call void @llvm.dbg.declare(metadata i64* %x, metadata !1209, metadata !1363), !dbg !5742
  store i64 0, i64* %x, align 8, !dbg !5742, !tbaa !4184
  %1 = bitcast i64* %i to i8*, !dbg !5743
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !5743
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1210, metadata !1363), !dbg !5744
  %2 = load %struct._formatdef*, %struct._formatdef** %f.addr, align 8, !dbg !5745, !tbaa !1367
  %size = getelementptr inbounds %struct._formatdef, %struct._formatdef* %2, i32 0, i32 1, !dbg !5746
  %3 = load i64, i64* %size, align 8, !dbg !5746, !tbaa !1437
  store i64 %3, i64* %i, align 8, !dbg !5744, !tbaa !1563
  %4 = bitcast i8** %bytes to i8*, !dbg !5747
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !5747
  call void @llvm.dbg.declare(metadata i8** %bytes, metadata !1211, metadata !1363), !dbg !5748
  %5 = load i8*, i8** %p.addr, align 8, !dbg !5749, !tbaa !1367
  store i8* %5, i8** %bytes, align 8, !dbg !5748, !tbaa !1367
  br label %do.body, !dbg !5750

do.body:                                          ; preds = %do.cond, %entry
  %6 = load i64, i64* %x, align 8, !dbg !5751, !tbaa !4184
  %shl = shl i64 %6, 8, !dbg !5753
  %7 = load i64, i64* %i, align 8, !dbg !5754, !tbaa !1563
  %dec = add i64 %7, -1, !dbg !5754
  store i64 %dec, i64* %i, align 8, !dbg !5754, !tbaa !1563
  %8 = load i8*, i8** %bytes, align 8, !dbg !5755, !tbaa !1367
  %arrayidx = getelementptr i8, i8* %8, i64 %dec, !dbg !5755
  %9 = load i8, i8* %arrayidx, align 1, !dbg !5755, !tbaa !2498
  %conv = zext i8 %9 to i64, !dbg !5755
  %or = or i64 %shl, %conv, !dbg !5756
  store i64 %or, i64* %x, align 8, !dbg !5757, !tbaa !4184
  br label %do.cond, !dbg !5758

do.cond:                                          ; preds = %do.body
  %10 = load i64, i64* %i, align 8, !dbg !5759, !tbaa !1563
  %cmp = icmp sgt i64 %10, 0, !dbg !5761
  br i1 %cmp, label %do.body, label %do.end, !dbg !5758

do.end:                                           ; preds = %do.cond
  %11 = load i64, i64* %x, align 8, !dbg !5762, !tbaa !4184
  %cmp2 = icmp ule i64 %11, 9223372036854775807, !dbg !5764
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5765

if.then:                                          ; preds = %do.end
  %12 = load i64, i64* %x, align 8, !dbg !5766, !tbaa !4184
  %call = call %struct._object* @PyLong_FromLong(i64 %12), !dbg !5767
  store %struct._object* %call, %struct._object** %retval, !dbg !5768
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5768

if.end:                                           ; preds = %do.end
  %13 = load i64, i64* %x, align 8, !dbg !5769, !tbaa !4184
  %call4 = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %13), !dbg !5770
  store %struct._object* %call4, %struct._object** %retval, !dbg !5771
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5771

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i8** %bytes to i8*, !dbg !5772
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !5772
  %15 = bitcast i64* %i to i8*, !dbg !5772
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !5772
  %16 = bitcast i64* %x to i8*, !dbg !5772
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !5772
  %17 = load %struct._object*, %struct._object** %retval, !dbg !5772
  ret %struct._object* %17, !dbg !5772
}

; Function Attrs: nounwind uwtable
define internal i32 @lp_ulonglong(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1214, metadata !1363), !dbg !5773
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1215, metadata !1363), !dbg !5774
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1216, metadata !1363), !dbg !5775
  %0 = bitcast i32* %res to i8*, !dbg !5776
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !5776
  call void @llvm.dbg.declare(metadata i32* %res, metadata !1217, metadata !1363), !dbg !5777
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5778, !tbaa !1367
  %call = call %struct._object* @get_pylong(%struct._object* %1), !dbg !5779
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !5780, !tbaa !1367
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5781, !tbaa !1367
  %cmp = icmp eq %struct._object* %2, null, !dbg !5783
  br i1 %cmp, label %if.then, label %if.end, !dbg !5784

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !5785
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5785

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5786, !tbaa !1367
  %4 = bitcast %struct._object* %3 to %struct._longobject*, !dbg !5787
  %5 = load i8*, i8** %p.addr, align 8, !dbg !5788, !tbaa !1367
  %call1 = call i32 @_PyLong_AsByteArray(%struct._longobject* %4, i8* %5, i64 8, i32 1, i32 0), !dbg !5789
  store i32 %call1, i32* %res, align 4, !dbg !5790, !tbaa !2291
  br label %do.body, !dbg !5791

do.body:                                          ; preds = %if.end
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5792
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !5792
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1218, metadata !1363), !dbg !5794
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5795, !tbaa !1367
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !5794, !tbaa !1367
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5796, !tbaa !1367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !5798
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !5799, !tbaa !1487
  %dec = add i64 %9, -1, !dbg !5799
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5799, !tbaa !1487
  %cmp2 = icmp ne i64 %dec, 0, !dbg !5800
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !5801

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !5802

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5804, !tbaa !1367
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !5806
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5806, !tbaa !1377
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !5807
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5807, !tbaa !1525
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5808, !tbaa !1367
  call void %12(%struct._object* %13), !dbg !5809
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5810
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !5810
  br label %do.cond, !dbg !5812

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !5813

do.end:                                           ; preds = %do.cond
  %15 = load i32, i32* %res, align 4, !dbg !5815, !tbaa !2291
  store i32 %15, i32* %retval, !dbg !5816
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5816

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast i32* %res to i8*, !dbg !5817
  call void @llvm.lifetime.end(i64 4, i8* %16) #1, !dbg !5817
  %17 = load i32, i32* %retval, !dbg !5817
  ret i32 %17, !dbg !5817
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lu_float(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1222, metadata !1363), !dbg !5818
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1223, metadata !1363), !dbg !5819
  %0 = load i8*, i8** %p.addr, align 8, !dbg !5820, !tbaa !1367
  %call = call %struct._object* @unpack_float(i8* %0, i32 1), !dbg !5821
  ret %struct._object* %call, !dbg !5822
}

; Function Attrs: nounwind uwtable
define internal i32 @lp_float(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1226, metadata !1363), !dbg !5823
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1227, metadata !1363), !dbg !5824
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1228, metadata !1363), !dbg !5825
  %0 = bitcast double* %x to i8*, !dbg !5826
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5826
  call void @llvm.dbg.declare(metadata double* %x, metadata !1229, metadata !1363), !dbg !5827
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5828, !tbaa !1367
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !5829
  store double %call, double* %x, align 8, !dbg !5827, !tbaa !4401
  %2 = load double, double* %x, align 8, !dbg !5830, !tbaa !4401
  %cmp = fcmp oeq double %2, -1.000000e+00, !dbg !5832
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5833

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !5834
  %tobool = icmp ne %struct._object* %call1, null, !dbg !5834
  br i1 %tobool, label %if.then, label %if.end, !dbg !5836

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !5837, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0)), !dbg !5839
  store i32 -1, i32* %retval, !dbg !5840
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5840

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load double, double* %x, align 8, !dbg !5841, !tbaa !4401
  %5 = load i8*, i8** %p.addr, align 8, !dbg !5842, !tbaa !1367
  %call2 = call i32 @_PyFloat_Pack4(double %4, i8* %5, i32 1), !dbg !5843
  store i32 %call2, i32* %retval, !dbg !5844
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5844

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast double* %x to i8*, !dbg !5845
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !5845
  %7 = load i32, i32* %retval, !dbg !5845
  ret i32 %7, !dbg !5845
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lu_double(i8* %p, %struct._formatdef* %f) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1232, metadata !1363), !dbg !5846
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1233, metadata !1363), !dbg !5847
  %0 = load i8*, i8** %p.addr, align 8, !dbg !5848, !tbaa !1367
  %call = call %struct._object* @unpack_double(i8* %0, i32 1), !dbg !5849
  ret %struct._object* %call, !dbg !5850
}

; Function Attrs: nounwind uwtable
define internal i32 @lp_double(i8* %p, %struct._object* %v, %struct._formatdef* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._formatdef*, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1236, metadata !1363), !dbg !5851
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !1237, metadata !1363), !dbg !5852
  store %struct._formatdef* %f, %struct._formatdef** %f.addr, align 8, !tbaa !1367
  call void @llvm.dbg.declare(metadata %struct._formatdef** %f.addr, metadata !1238, metadata !1363), !dbg !5853
  %0 = bitcast double* %x to i8*, !dbg !5854
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5854
  call void @llvm.dbg.declare(metadata double* %x, metadata !1239, metadata !1363), !dbg !5855
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5856, !tbaa !1367
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !5857
  store double %call, double* %x, align 8, !dbg !5855, !tbaa !4401
  %2 = load double, double* %x, align 8, !dbg !5858, !tbaa !4401
  %cmp = fcmp oeq double %2, -1.000000e+00, !dbg !5860
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5861

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !5862
  %tobool = icmp ne %struct._object* %call1, null, !dbg !5862
  br i1 %tobool, label %if.then, label %if.end, !dbg !5864

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @StructError, align 8, !dbg !5865, !tbaa !1367
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0)), !dbg !5867
  store i32 -1, i32* %retval, !dbg !5868
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5868

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load double, double* %x, align 8, !dbg !5869, !tbaa !4401
  %5 = load i8*, i8** %p.addr, align 8, !dbg !5870, !tbaa !1367
  %call2 = call i32 @_PyFloat_Pack8(double %4, i8* %5, i32 1), !dbg !5871
  store i32 %call2, i32* %retval, !dbg !5872
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5872

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast double* %x to i8*, !dbg !5873
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !5873
  %7 = load i32, i32* %retval, !dbg !5873
  ret i32 %7, !dbg !5873
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1358, !1359, !1360}
!llvm.ident = !{!1361}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !443, globals: !1240)
!1 = !DIFile(filename: "_struct.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !350, !384, !52, !392, !394, !402, !403, !411, !393, !421, !422, !11, !94, !17, !423, !31, !424, !96, !426, !427, !439, !77, !44, !348, !440, !441, !442}
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
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructObject", file: !352, line: 41, baseType: !353)
!352 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_struct.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 34, size: 448, align: 64, elements: !354)
!354 = !{!355, !356, !357, !358, !382, !383}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !353, file: !352, line: 35, baseType: !6, size: 128, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "s_size", scope: !353, file: !352, line: 36, baseType: !11, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "s_len", scope: !353, file: !352, line: 37, baseType: !11, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "s_codes", scope: !353, file: !352, line: 38, baseType: !359, size: 64, align: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "formatcode", file: !352, line: 30, baseType: !361)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "_formatcode", file: !352, line: 25, size: 256, align: 64, elements: !362)
!362 = !{!363, !379, !380, !381}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "fmtdef", scope: !361, file: !352, line: 26, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "_formatdef", file: !352, line: 15, size: 320, align: 64, elements: !367)
!367 = !{!368, !369, !370, !371, !375}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !366, file: !352, line: 16, baseType: !31, size: 8, align: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !366, file: !352, line: 17, baseType: !11, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !366, file: !352, line: 18, baseType: !11, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "unpack", scope: !366, file: !352, line: 19, baseType: !372, size: 64, align: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!5, !29, !364}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pack", scope: !366, file: !352, line: 21, baseType: !376, size: 64, align: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!44, !52, !5, !364}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !361, file: !352, line: 27, baseType: !11, size: 64, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !361, file: !352, line: 28, baseType: !11, size: 64, align: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "repeat", scope: !361, file: !352, line: 29, baseType: !11, size: 64, align: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "s_format", scope: !353, file: !352, line: 39, baseType: !5, size: 64, align: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !353, file: !352, line: 40, baseType: !5, size: 64, align: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "unpackiterobject", file: !352, line: 1576, baseType: !386)
!386 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 1571, size: 896, align: 64, elements: !387)
!387 = !{!388, !389, !390, !391}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !386, file: !352, line: 1572, baseType: !6, size: 128, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "so", scope: !386, file: !352, line: 1573, baseType: !350, size: 64, align: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !386, file: !352, line: 1574, baseType: !236, size: 640, align: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !386, file: !352, line: 1575, baseType: !11, size: 64, align: 64, offset: 832)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !396, line: 33, baseType: !397)
!396 = !DIFile(filename: "./Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!397 = !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 25, size: 256, align: 64, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !397, file: !396, line: 26, baseType: !23, size: 192, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !397, file: !396, line: 27, baseType: !401, size: 64, align: 64, offset: 192)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !405, line: 41, baseType: !406)
!405 = !DIFile(filename: "./Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!406 = !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 31, size: 320, align: 64, elements: !407)
!407 = !{!408, !409, !410}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !406, file: !405, line: 32, baseType: !23, size: 192, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !406, file: !405, line: 33, baseType: !218, size: 64, align: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !406, file: !405, line: 34, baseType: !81, size: 8, align: 8, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyByteArrayObject", file: !413, line: 30, baseType: !414)
!413 = !DIFile(filename: "./Include/bytearrayobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!414 = !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 23, size: 448, align: 64, elements: !415)
!415 = !{!416, !417, !418, !419, !420}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !414, file: !413, line: 24, baseType: !23, size: 192, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ob_alloc", scope: !414, file: !413, line: 25, baseType: !11, size: 64, align: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ob_bytes", scope: !414, file: !413, line: 26, baseType: !52, size: 64, align: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ob_start", scope: !414, file: !413, line: 27, baseType: !52, size: 64, align: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ob_exports", scope: !414, file: !413, line: 29, baseType: !44, size: 32, align: 32, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!426 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyLongObject", file: !429, line: 10, baseType: !430)
!429 = !DIFile(filename: "./Include/longobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "_longobject", file: !431, line: 89, size: 256, align: 64, elements: !432)
!431 = !DIFile(filename: "./Include/longintrepr.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !430, file: !431, line: 90, baseType: !23, size: 192, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ob_digit", scope: !430, file: !431, line: 91, baseType: !435, size: 32, align: 32, offset: 192)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 32, align: 32, elements: !82)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "digit", file: !431, line: 49, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !438, line: 51, baseType: !348)
!438 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!439 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!440 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!441 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!442 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!443 = !{!444, !455, !464, !472, !476, !486, !500, !510, !525, !539, !564, !568, !585, !595, !623, !640, !648, !658, !665, !683, !693, !703, !711, !715, !719, !737, !753, !759, !765, !773, !783, !786, !790, !796, !800, !805, !812, !819, !831, !838, !848, !858, !865, !873, !880, !888, !893, !899, !903, !910, !916, !920, !925, !931, !937, !945, !958, !963, !970, !975, !982, !987, !994, !999, !1006, !1011, !1017, !1022, !1028, !1033, !1039, !1048, !1053, !1059, !1069, !1074, !1080, !1090, !1095, !1101, !1111, !1117, !1124, !1129, !1135, !1140, !1146, !1151, !1159, !1166, !1173, !1180, !1190, !1197, !1205, !1212, !1220, !1224, !1230, !1234}
!444 = !DISubprogram(name: "PyInit__struct", scope: !352, file: !352, line: 2266, type: !445, isLocal: false, isDefinition: true, scopeLine: 2267, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__struct, variables: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{!5}
!447 = !{!448, !449, !453, !454}
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !444, file: !352, line: 2268, type: !5)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "native", scope: !450, file: !352, line: 2280, type: !451)
!450 = distinct !DILexicalBlock(scope: !444, file: !352, line: 2279, column: 5)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "formatdef", file: !352, line: 23, baseType: !366)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "other", scope: !450, file: !352, line: 2281, type: !451)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !450, file: !352, line: 2281, type: !451)
!455 = !DISubprogram(name: "clearcache", scope: !352, file: !352, line: 2038, type: !116, isLocal: true, isDefinition: true, scopeLine: 2039, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @clearcache, variables: !456)
!456 = !{!457, !458, !460}
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !455, file: !352, line: 2038, type: !5)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !459, file: !352, line: 2040, type: !5)
!459 = distinct !DILexicalBlock(scope: !455, file: !352, line: 2040, column: 8)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !461, file: !352, line: 2040, type: !5)
!461 = distinct !DILexicalBlock(scope: !462, file: !352, line: 2040, column: 105)
!462 = distinct !DILexicalBlock(scope: !463, file: !352, line: 2040, column: 78)
!463 = distinct !DILexicalBlock(scope: !459, file: !352, line: 2040, column: 55)
!464 = !DISubprogram(name: "calcsize", scope: !352, file: !352, line: 2050, type: !126, isLocal: true, isDefinition: true, scopeLine: 2051, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @calcsize, variables: !465)
!465 = !{!466, !467, !468, !469, !470}
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !464, file: !352, line: 2050, type: !5)
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 2, scope: !464, file: !352, line: 2050, type: !5)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !464, file: !352, line: 2052, type: !11)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_object", scope: !464, file: !352, line: 2053, type: !5)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !471, file: !352, line: 2057, type: !5)
!471 = distinct !DILexicalBlock(scope: !464, file: !352, line: 2057, column: 8)
!472 = !DISubprogram(name: "cache_struct", scope: !352, file: !352, line: 2007, type: !116, isLocal: true, isDefinition: true, scopeLine: 2008, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @cache_struct, variables: !473)
!473 = !{!474, !475}
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 1, scope: !472, file: !352, line: 2007, type: !5)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_object", scope: !472, file: !352, line: 2009, type: !5)
!476 = !DISubprogram(name: "iter_unpack", scope: !352, file: !352, line: 2192, type: !126, isLocal: true, isDefinition: true, scopeLine: 2193, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @iter_unpack, variables: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484}
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !476, file: !352, line: 2192, type: !5)
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !476, file: !352, line: 2192, type: !5)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_object", scope: !476, file: !352, line: 2194, type: !5)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmt", scope: !476, file: !352, line: 2194, type: !5)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "input", scope: !476, file: !352, line: 2194, type: !5)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !476, file: !352, line: 2194, type: !5)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !485, file: !352, line: 2203, type: !5)
!485 = distinct !DILexicalBlock(scope: !476, file: !352, line: 2203, column: 8)
!486 = !DISubprogram(name: "s_iter_unpack", scope: !352, file: !352, line: 1668, type: !126, isLocal: true, isDefinition: true, scopeLine: 1669, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @s_iter_unpack, variables: !487)
!487 = !{!488, !489, !490, !491, !492, !496}
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_so", arg: 1, scope: !486, file: !352, line: 1668, type: !5)
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "input", arg: 2, scope: !486, file: !352, line: 1668, type: !5)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "so", scope: !486, file: !352, line: 1670, type: !350)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !486, file: !352, line: 1671, type: !384)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !493, file: !352, line: 1687, type: !5)
!493 = distinct !DILexicalBlock(scope: !494, file: !352, line: 1687, column: 12)
!494 = distinct !DILexicalBlock(scope: !495, file: !352, line: 1686, column: 55)
!495 = distinct !DILexicalBlock(scope: !486, file: !352, line: 1686, column: 9)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !497, file: !352, line: 1695, type: !5)
!497 = distinct !DILexicalBlock(scope: !498, file: !352, line: 1695, column: 12)
!498 = distinct !DILexicalBlock(scope: !499, file: !352, line: 1690, column: 42)
!499 = distinct !DILexicalBlock(scope: !486, file: !352, line: 1690, column: 9)
!500 = !DISubprogram(name: "unpackiter_dealloc", scope: !352, file: !352, line: 1579, type: !501, isLocal: true, isDefinition: true, scopeLine: 1580, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.unpackiterobject*)* @unpackiter_dealloc, variables: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !384}
!503 = !{!504, !505, !507}
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !500, file: !352, line: 1579, type: !384)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !506, file: !352, line: 1581, type: !5)
!506 = distinct !DILexicalBlock(scope: !500, file: !352, line: 1581, column: 8)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !508, file: !352, line: 1581, type: !5)
!508 = distinct !DILexicalBlock(scope: !509, file: !352, line: 1581, column: 100)
!509 = distinct !DILexicalBlock(scope: !506, file: !352, line: 1581, column: 66)
!510 = !DISubprogram(name: "unpackiter_traverse", scope: !352, file: !352, line: 1587, type: !511, isLocal: true, isDefinition: true, scopeLine: 1588, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.unpackiterobject*, i32 (%struct._object*, i8*)*, i8*)* @unpackiter_traverse, variables: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!44, !384, !263, !4}
!513 = !{!514, !515, !516, !517, !521}
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !510, file: !352, line: 1587, type: !384)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !510, file: !352, line: 1587, type: !263)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !510, file: !352, line: 1587, type: !4)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !518, file: !352, line: 1589, type: !44)
!518 = distinct !DILexicalBlock(scope: !519, file: !352, line: 1589, column: 24)
!519 = distinct !DILexicalBlock(scope: !520, file: !352, line: 1589, column: 14)
!520 = distinct !DILexicalBlock(scope: !510, file: !352, line: 1589, column: 8)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !522, file: !352, line: 1590, type: !44)
!522 = distinct !DILexicalBlock(scope: !523, file: !352, line: 1590, column: 29)
!523 = distinct !DILexicalBlock(scope: !524, file: !352, line: 1590, column: 14)
!524 = distinct !DILexicalBlock(scope: !510, file: !352, line: 1590, column: 8)
!525 = !DISubprogram(name: "unpackiter_iternext", scope: !352, file: !352, line: 1611, type: !526, isLocal: true, isDefinition: true, scopeLine: 1612, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.unpackiterobject*)* @unpackiter_iternext, variables: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{!5, !384}
!528 = !{!529, !530, !531, !535}
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !525, file: !352, line: 1611, type: !384)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !525, file: !352, line: 1613, type: !5)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !532, file: !352, line: 1618, type: !5)
!532 = distinct !DILexicalBlock(scope: !533, file: !352, line: 1618, column: 12)
!533 = distinct !DILexicalBlock(scope: !534, file: !352, line: 1616, column: 39)
!534 = distinct !DILexicalBlock(scope: !525, file: !352, line: 1616, column: 9)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !536, file: !352, line: 1618, type: !5)
!536 = distinct !DILexicalBlock(scope: !537, file: !352, line: 1618, column: 115)
!537 = distinct !DILexicalBlock(scope: !538, file: !352, line: 1618, column: 85)
!538 = distinct !DILexicalBlock(scope: !532, file: !352, line: 1618, column: 62)
!539 = !DISubprogram(name: "s_unpack_internal", scope: !352, file: !352, line: 1460, type: !540, isLocal: true, isDefinition: true, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStructObject*, i8*)* @s_unpack_internal, variables: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{!5, !350, !52}
!542 = !{!543, !544, !545, !546, !547, !548, !554, !555, !556, !558, !562}
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "soself", arg: 1, scope: !539, file: !352, line: 1460, type: !350)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "startfrom", arg: 2, scope: !539, file: !352, line: 1460, type: !52)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !539, file: !352, line: 1461, type: !359)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !539, file: !352, line: 1462, type: !11)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !539, file: !352, line: 1463, type: !5)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !549, file: !352, line: 1468, type: !552)
!549 = distinct !DILexicalBlock(scope: !550, file: !352, line: 1467, column: 70)
!550 = distinct !DILexicalBlock(scope: !551, file: !352, line: 1467, column: 5)
!551 = distinct !DILexicalBlock(scope: !539, file: !352, line: 1467, column: 5)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !549, file: !352, line: 1469, type: !29)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !549, file: !352, line: 1470, type: !11)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !557, file: !352, line: 1472, type: !5)
!557 = distinct !DILexicalBlock(scope: !549, file: !352, line: 1471, column: 21)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !559, file: !352, line: 1476, type: !11)
!559 = distinct !DILexicalBlock(scope: !560, file: !352, line: 1475, column: 42)
!560 = distinct !DILexicalBlock(scope: !561, file: !352, line: 1475, column: 24)
!561 = distinct !DILexicalBlock(scope: !557, file: !352, line: 1473, column: 17)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !563, file: !352, line: 1492, type: !5)
!563 = distinct !DILexicalBlock(scope: !539, file: !352, line: 1492, column: 8)
!564 = !DISubprogram(name: "unpackiter_len", scope: !352, file: !352, line: 1595, type: !526, isLocal: true, isDefinition: true, scopeLine: 1596, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.unpackiterobject*)* @unpackiter_len, variables: !565)
!565 = !{!566, !567}
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !564, file: !352, line: 1595, type: !384)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !564, file: !352, line: 1597, type: !11)
!568 = !DISubprogram(name: "pack", scope: !352, file: !352, line: 2068, type: !126, isLocal: true, isDefinition: true, scopeLine: 2069, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @pack, variables: !569)
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !581, !583}
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !568, file: !352, line: 2068, type: !5)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !568, file: !352, line: 2068, type: !5)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_object", scope: !568, file: !352, line: 2070, type: !5)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmt", scope: !568, file: !352, line: 2070, type: !5)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newargs", scope: !568, file: !352, line: 2070, type: !5)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !568, file: !352, line: 2070, type: !5)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !568, file: !352, line: 2071, type: !11)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !578, file: !352, line: 2084, type: !5)
!578 = distinct !DILexicalBlock(scope: !579, file: !352, line: 2084, column: 12)
!579 = distinct !DILexicalBlock(scope: !580, file: !352, line: 2083, column: 33)
!580 = distinct !DILexicalBlock(scope: !568, file: !352, line: 2083, column: 9)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !582, file: !352, line: 2088, type: !5)
!582 = distinct !DILexicalBlock(scope: !568, file: !352, line: 2088, column: 8)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !352, line: 2089, type: !5)
!584 = distinct !DILexicalBlock(scope: !568, file: !352, line: 2089, column: 8)
!585 = !DISubprogram(name: "s_pack", scope: !352, file: !352, line: 1803, type: !126, isLocal: true, isDefinition: true, scopeLine: 1804, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @s_pack, variables: !586)
!586 = !{!587, !588, !589, !590, !591}
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !585, file: !352, line: 1803, type: !5)
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !585, file: !352, line: 1803, type: !5)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "soself", scope: !585, file: !352, line: 1805, type: !350)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !585, file: !352, line: 1806, type: !5)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !592, file: !352, line: 1826, type: !5)
!592 = distinct !DILexicalBlock(scope: !593, file: !352, line: 1826, column: 12)
!593 = distinct !DILexicalBlock(scope: !594, file: !352, line: 1825, column: 106)
!594 = distinct !DILexicalBlock(scope: !585, file: !352, line: 1825, column: 10)
!595 = !DISubprogram(name: "s_pack_internal", scope: !352, file: !352, line: 1716, type: !596, isLocal: true, isDefinition: true, scopeLine: 1717, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyStructObject*, %struct._object*, i32, i8*)* @s_pack_internal, variables: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!44, !350, !5, !44, !52}
!598 = !{!599, !600, !601, !602, !603, !604, !605, !609, !610, !611, !613, !616, !617, !618, !621, !622}
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "soself", arg: 1, scope: !595, file: !352, line: 1716, type: !350)
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !595, file: !352, line: 1716, type: !5)
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "offset", arg: 3, scope: !595, file: !352, line: 1716, type: !44)
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 4, scope: !595, file: !352, line: 1716, type: !52)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !595, file: !352, line: 1718, type: !359)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !595, file: !352, line: 1721, type: !11)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !606, file: !352, line: 1726, type: !552)
!606 = distinct !DILexicalBlock(scope: !607, file: !352, line: 1725, column: 70)
!607 = distinct !DILexicalBlock(scope: !608, file: !352, line: 1725, column: 5)
!608 = distinct !DILexicalBlock(scope: !595, file: !352, line: 1725, column: 5)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !606, file: !352, line: 1727, type: !52)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !606, file: !352, line: 1728, type: !11)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !612, file: !352, line: 1730, type: !5)
!612 = distinct !DILexicalBlock(scope: !606, file: !352, line: 1729, column: 21)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !614, file: !352, line: 1732, type: !11)
!614 = distinct !DILexicalBlock(scope: !615, file: !352, line: 1731, column: 35)
!615 = distinct !DILexicalBlock(scope: !612, file: !352, line: 1731, column: 17)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isstring", scope: !614, file: !352, line: 1733, type: !44)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !614, file: !352, line: 1734, type: !4)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !619, file: !352, line: 1754, type: !11)
!619 = distinct !DILexicalBlock(scope: !620, file: !352, line: 1753, column: 42)
!620 = distinct !DILexicalBlock(scope: !615, file: !352, line: 1753, column: 24)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isstring", scope: !619, file: !352, line: 1755, type: !44)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !619, file: !352, line: 1756, type: !4)
!623 = !DISubprogram(name: "pack_into", scope: !352, file: !352, line: 2102, type: !126, isLocal: true, isDefinition: true, scopeLine: 2103, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @pack_into, variables: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !636, !638}
!625 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !623, file: !352, line: 2102, type: !5)
!626 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !623, file: !352, line: 2102, type: !5)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_object", scope: !623, file: !352, line: 2104, type: !5)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmt", scope: !623, file: !352, line: 2104, type: !5)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newargs", scope: !623, file: !352, line: 2104, type: !5)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !623, file: !352, line: 2104, type: !5)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !623, file: !352, line: 2105, type: !11)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !633, file: !352, line: 2118, type: !5)
!633 = distinct !DILexicalBlock(scope: !634, file: !352, line: 2118, column: 12)
!634 = distinct !DILexicalBlock(scope: !635, file: !352, line: 2117, column: 33)
!635 = distinct !DILexicalBlock(scope: !623, file: !352, line: 2117, column: 9)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !637, file: !352, line: 2122, type: !5)
!637 = distinct !DILexicalBlock(scope: !623, file: !352, line: 2122, column: 8)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !639, file: !352, line: 2123, type: !5)
!639 = distinct !DILexicalBlock(scope: !623, file: !352, line: 2123, column: 8)
!640 = !DISubprogram(name: "s_pack_into", scope: !352, file: !352, line: 1842, type: !126, isLocal: true, isDefinition: true, scopeLine: 1843, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @s_pack_into, variables: !641)
!641 = !{!642, !643, !644, !645, !646, !647}
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !640, file: !352, line: 1842, type: !5)
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !640, file: !352, line: 1842, type: !5)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "soself", scope: !640, file: !352, line: 1844, type: !350)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !640, file: !352, line: 1845, type: !52)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer_len", scope: !640, file: !352, line: 1846, type: !11)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !640, file: !352, line: 1846, type: !11)
!648 = !DISubprogram(name: "unpack", scope: !352, file: !352, line: 2135, type: !126, isLocal: true, isDefinition: true, scopeLine: 2136, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @unpack, variables: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !656}
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !648, file: !352, line: 2135, type: !5)
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !648, file: !352, line: 2135, type: !5)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_object", scope: !648, file: !352, line: 2137, type: !5)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmt", scope: !648, file: !352, line: 2137, type: !5)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inputstr", scope: !648, file: !352, line: 2137, type: !5)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !648, file: !352, line: 2137, type: !5)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !657, file: !352, line: 2146, type: !5)
!657 = distinct !DILexicalBlock(scope: !648, file: !352, line: 2146, column: 8)
!658 = !DISubprogram(name: "s_unpack", scope: !352, file: !352, line: 1505, type: !126, isLocal: true, isDefinition: true, scopeLine: 1506, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @s_unpack, variables: !659)
!659 = !{!660, !661, !662, !663, !664}
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !658, file: !352, line: 1505, type: !5)
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "input", arg: 2, scope: !658, file: !352, line: 1505, type: !5)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vbuf", scope: !658, file: !352, line: 1507, type: !236)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !658, file: !352, line: 1508, type: !5)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "soself", scope: !658, file: !352, line: 1509, type: !350)
!665 = !DISubprogram(name: "unpack_from", scope: !352, file: !352, line: 2158, type: !135, isLocal: true, isDefinition: true, scopeLine: 2159, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @unpack_from, variables: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !679, !681}
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !665, file: !352, line: 2158, type: !5)
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !665, file: !352, line: 2158, type: !5)
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !665, file: !352, line: 2158, type: !5)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_object", scope: !665, file: !352, line: 2160, type: !5)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmt", scope: !665, file: !352, line: 2160, type: !5)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newargs", scope: !665, file: !352, line: 2160, type: !5)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !665, file: !352, line: 2160, type: !5)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !665, file: !352, line: 2161, type: !11)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !676, file: !352, line: 2174, type: !5)
!676 = distinct !DILexicalBlock(scope: !677, file: !352, line: 2174, column: 12)
!677 = distinct !DILexicalBlock(scope: !678, file: !352, line: 2173, column: 33)
!678 = distinct !DILexicalBlock(scope: !665, file: !352, line: 2173, column: 9)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !680, file: !352, line: 2178, type: !5)
!680 = distinct !DILexicalBlock(scope: !665, file: !352, line: 2178, column: 8)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !682, file: !352, line: 2179, type: !5)
!682 = distinct !DILexicalBlock(scope: !665, file: !352, line: 2179, column: 8)
!683 = !DISubprogram(name: "s_unpack_from", scope: !352, file: !352, line: 1535, type: !135, isLocal: true, isDefinition: true, scopeLine: 1536, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @s_unpack_from, variables: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692}
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !683, file: !352, line: 1535, type: !5)
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !683, file: !352, line: 1535, type: !5)
!687 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !683, file: !352, line: 1535, type: !5)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "input", scope: !683, file: !352, line: 1539, type: !5)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !683, file: !352, line: 1540, type: !11)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vbuf", scope: !683, file: !352, line: 1541, type: !236)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !683, file: !352, line: 1542, type: !5)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "soself", scope: !683, file: !352, line: 1543, type: !350)
!693 = !DISubprogram(name: "s_dealloc", scope: !352, file: !352, line: 1448, type: !694, isLocal: true, isDefinition: true, scopeLine: 1449, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyStructObject*)* @s_dealloc, variables: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !350}
!696 = !{!697, !698, !700}
!697 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !693, file: !352, line: 1448, type: !350)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !699, file: !352, line: 1455, type: !5)
!699 = distinct !DILexicalBlock(scope: !693, file: !352, line: 1455, column: 8)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !701, file: !352, line: 1455, type: !5)
!701 = distinct !DILexicalBlock(scope: !702, file: !352, line: 1455, column: 103)
!702 = distinct !DILexicalBlock(scope: !699, file: !352, line: 1455, column: 69)
!703 = !DISubprogram(name: "s_sizeof", scope: !352, file: !352, line: 1919, type: !704, isLocal: true, isDefinition: true, scopeLine: 1920, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStructObject*, i8*)* @s_sizeof, variables: !706)
!704 = !DISubroutineType(types: !705)
!705 = !{!5, !350, !4}
!706 = !{!707, !708, !709, !710}
!707 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !703, file: !352, line: 1919, type: !350)
!708 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !703, file: !352, line: 1919, type: !4)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !703, file: !352, line: 1921, type: !11)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !703, file: !352, line: 1922, type: !359)
!711 = !DISubprogram(name: "s_get_format", scope: !352, file: !352, line: 1903, type: !704, isLocal: true, isDefinition: true, scopeLine: 1904, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStructObject*, i8*)* @s_get_format, variables: !712)
!712 = !{!713, !714}
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !711, file: !352, line: 1903, type: !350)
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !711, file: !352, line: 1903, type: !4)
!715 = !DISubprogram(name: "s_get_size", scope: !352, file: !352, line: 1910, type: !704, isLocal: true, isDefinition: true, scopeLine: 1911, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyStructObject*, i8*)* @s_get_size, variables: !716)
!716 = !{!717, !718}
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !715, file: !352, line: 1910, type: !350)
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !715, file: !352, line: 1910, type: !4)
!719 = !DISubprogram(name: "s_init", scope: !352, file: !352, line: 1409, type: !211, isLocal: true, isDefinition: true, scopeLine: 1410, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @s_init, variables: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !731, !733}
!721 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !719, file: !352, line: 1409, type: !5)
!722 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !719, file: !352, line: 1409, type: !5)
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !719, file: !352, line: 1409, type: !5)
!724 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "soself", scope: !719, file: !352, line: 1411, type: !350)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o_format", scope: !719, file: !352, line: 1412, type: !5)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !719, file: !352, line: 1413, type: !44)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !728, file: !352, line: 1433, type: !5)
!728 = distinct !DILexicalBlock(scope: !729, file: !352, line: 1433, column: 12)
!729 = distinct !DILexicalBlock(scope: !730, file: !352, line: 1432, column: 83)
!730 = distinct !DILexicalBlock(scope: !719, file: !352, line: 1432, column: 9)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !732, file: !352, line: 1440, type: !5)
!732 = distinct !DILexicalBlock(scope: !719, file: !352, line: 1440, column: 8)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !734, file: !352, line: 1440, type: !5)
!734 = distinct !DILexicalBlock(scope: !735, file: !352, line: 1440, column: 127)
!735 = distinct !DILexicalBlock(scope: !736, file: !352, line: 1440, column: 89)
!736 = distinct !DILexicalBlock(scope: !732, file: !352, line: 1440, column: 66)
!737 = !DISubprogram(name: "prepare_s", scope: !352, file: !352, line: 1258, type: !738, isLocal: true, isDefinition: true, scopeLine: 1259, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyStructObject*)* @prepare_s, variables: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{!44, !350}
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!741 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !737, file: !352, line: 1258, type: !350)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !737, file: !352, line: 1260, type: !552)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !737, file: !352, line: 1261, type: !552)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codes", scope: !737, file: !352, line: 1262, type: !359)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !737, file: !352, line: 1264, type: !29)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmt", scope: !737, file: !352, line: 1265, type: !29)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !737, file: !352, line: 1266, type: !31)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !737, file: !352, line: 1267, type: !11)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !737, file: !352, line: 1267, type: !11)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncodes", scope: !737, file: !352, line: 1267, type: !11)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num", scope: !737, file: !352, line: 1267, type: !11)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemsize", scope: !737, file: !352, line: 1267, type: !11)
!753 = !DISubprogram(name: "whichtable", scope: !352, file: !352, line: 1193, type: !754, isLocal: true, isDefinition: true, scopeLine: 1194, flags: DIFlagPrototyped, isOptimized: true, function: %struct._formatdef* (i8**)* @whichtable, variables: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{!552, !422}
!756 = !{!757, !758}
!757 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pfmt", arg: 1, scope: !753, file: !352, line: 1193, type: !422)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmt", scope: !753, file: !352, line: 1195, type: !29)
!759 = !DISubprogram(name: "nu_byte", scope: !352, file: !352, line: 354, type: !760, isLocal: true, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_byte, variables: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{!5, !29, !552}
!762 = !{!763, !764}
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !759, file: !352, line: 354, type: !29)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !759, file: !352, line: 354, type: !552)
!765 = !DISubprogram(name: "np_byte", scope: !352, file: !352, line: 499, type: !766, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_byte, variables: !768)
!766 = !DISubroutineType(types: !767)
!767 = !{!44, !52, !5, !552}
!768 = !{!769, !770, !771, !772}
!769 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !765, file: !352, line: 499, type: !52)
!770 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !765, file: !352, line: 499, type: !5)
!771 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !765, file: !352, line: 499, type: !552)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !765, file: !352, line: 501, type: !17)
!773 = !DISubprogram(name: "get_long", scope: !352, file: !352, line: 125, type: !774, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*)* @get_long, variables: !777)
!774 = !DISubroutineType(types: !775)
!775 = !{!44, !5, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!777 = !{!778, !779, !780, !781}
!778 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !773, file: !352, line: 125, type: !5)
!779 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !773, file: !352, line: 125, type: !776)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !773, file: !352, line: 127, type: !17)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !782, file: !352, line: 134, type: !5)
!782 = distinct !DILexicalBlock(scope: !773, file: !352, line: 134, column: 8)
!783 = !DISubprogram(name: "get_pylong", scope: !352, file: !352, line: 98, type: !116, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @get_pylong, variables: !784)
!784 = !{!785}
!785 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !783, file: !352, line: 98, type: !5)
!786 = !DISubprogram(name: "nu_ubyte", scope: !352, file: !352, line: 360, type: !760, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_ubyte, variables: !787)
!787 = !{!788, !789}
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !786, file: !352, line: 360, type: !29)
!789 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !786, file: !352, line: 360, type: !552)
!790 = !DISubprogram(name: "np_ubyte", scope: !352, file: !352, line: 514, type: !766, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_ubyte, variables: !791)
!791 = !{!792, !793, !794, !795}
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !790, file: !352, line: 514, type: !52)
!793 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !790, file: !352, line: 514, type: !5)
!794 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !790, file: !352, line: 514, type: !552)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !790, file: !352, line: 516, type: !17)
!796 = !DISubprogram(name: "nu_char", scope: !352, file: !352, line: 348, type: !760, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_char, variables: !797)
!797 = !{!798, !799}
!798 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !796, file: !352, line: 348, type: !29)
!799 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !796, file: !352, line: 348, type: !552)
!800 = !DISubprogram(name: "np_char", scope: !352, file: !352, line: 529, type: !766, isLocal: true, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_char, variables: !801)
!801 = !{!802, !803, !804}
!802 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !800, file: !352, line: 529, type: !52)
!803 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !800, file: !352, line: 529, type: !5)
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !800, file: !352, line: 529, type: !552)
!805 = !DISubprogram(name: "bu_int", scope: !352, file: !352, line: 756, type: !760, isLocal: true, isDefinition: true, scopeLine: 757, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @bu_int, variables: !806)
!806 = !{!807, !808, !809, !810, !811}
!807 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !805, file: !352, line: 756, type: !29)
!808 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !805, file: !352, line: 756, type: !552)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !805, file: !352, line: 758, type: !17)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !805, file: !352, line: 759, type: !11)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !805, file: !352, line: 760, type: !424)
!812 = !DISubprogram(name: "bp_int", scope: !352, file: !352, line: 850, type: !766, isLocal: true, isDefinition: true, scopeLine: 851, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_int, variables: !813)
!813 = !{!814, !815, !816, !817, !818}
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !812, file: !352, line: 850, type: !52)
!815 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !812, file: !352, line: 850, type: !5)
!816 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !812, file: !352, line: 850, type: !552)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !812, file: !352, line: 852, type: !17)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !812, file: !352, line: 853, type: !11)
!819 = !DISubprogram(name: "_range_error", scope: !352, file: !352, line: 297, type: !820, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._formatdef*, i32)* @_range_error, variables: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{!44, !552, !44}
!822 = !{!823, !824, !825, !827}
!823 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 1, scope: !819, file: !352, line: 297, type: !552)
!824 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "is_unsigned", arg: 2, scope: !819, file: !352, line: 297, type: !44)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ulargest", scope: !819, file: !352, line: 307, type: !826)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "largest", scope: !828, file: !352, line: 315, type: !830)
!828 = distinct !DILexicalBlock(scope: !829, file: !352, line: 314, column: 10)
!829 = distinct !DILexicalBlock(scope: !819, file: !352, line: 309, column: 9)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!831 = !DISubprogram(name: "bu_uint", scope: !352, file: !352, line: 771, type: !760, isLocal: true, isDefinition: true, scopeLine: 772, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @bu_uint, variables: !832)
!832 = !{!833, !834, !835, !836, !837}
!833 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !831, file: !352, line: 771, type: !29)
!834 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !831, file: !352, line: 771, type: !552)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !831, file: !352, line: 773, type: !96)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !831, file: !352, line: 774, type: !11)
!837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !831, file: !352, line: 775, type: !424)
!838 = !DISubprogram(name: "bp_uint", scope: !352, file: !352, line: 873, type: !766, isLocal: true, isDefinition: true, scopeLine: 874, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_uint, variables: !839)
!839 = !{!840, !841, !842, !843, !844, !845}
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !838, file: !352, line: 873, type: !52)
!841 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !838, file: !352, line: 873, type: !5)
!842 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !838, file: !352, line: 873, type: !552)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !838, file: !352, line: 875, type: !96)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !838, file: !352, line: 876, type: !11)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxint", scope: !846, file: !352, line: 881, type: !96)
!846 = distinct !DILexicalBlock(scope: !847, file: !352, line: 880, column: 17)
!847 = distinct !DILexicalBlock(scope: !838, file: !352, line: 880, column: 9)
!848 = !DISubprogram(name: "get_ulong", scope: !352, file: !352, line: 149, type: !849, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*)* @get_ulong, variables: !852)
!849 = !DISubroutineType(types: !850)
!850 = !{!44, !5, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!852 = !{!853, !854, !855, !856}
!853 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !848, file: !352, line: 149, type: !5)
!854 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !848, file: !352, line: 149, type: !851)
!855 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !848, file: !352, line: 151, type: !96)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !857, file: !352, line: 158, type: !5)
!857 = distinct !DILexicalBlock(scope: !848, file: !352, line: 158, column: 8)
!858 = !DISubprogram(name: "bu_longlong", scope: !352, file: !352, line: 785, type: !760, isLocal: true, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @bu_longlong, variables: !859)
!859 = !{!860, !861, !862, !863, !864}
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !858, file: !352, line: 785, type: !29)
!861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !858, file: !352, line: 785, type: !552)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !858, file: !352, line: 788, type: !426)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !858, file: !352, line: 789, type: !11)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !858, file: !352, line: 790, type: !424)
!865 = !DISubprogram(name: "bp_longlong", scope: !352, file: !352, line: 894, type: !766, isLocal: true, isDefinition: true, scopeLine: 895, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_longlong, variables: !866)
!866 = !{!867, !868, !869, !870, !871}
!867 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !865, file: !352, line: 894, type: !52)
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !865, file: !352, line: 894, type: !5)
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !865, file: !352, line: 894, type: !552)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !865, file: !352, line: 896, type: !44)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !872, file: !352, line: 905, type: !5)
!872 = distinct !DILexicalBlock(scope: !865, file: !352, line: 905, column: 8)
!873 = !DISubprogram(name: "bu_ulonglong", scope: !352, file: !352, line: 809, type: !760, isLocal: true, isDefinition: true, scopeLine: 810, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @bu_ulonglong, variables: !874)
!874 = !{!875, !876, !877, !878, !879}
!875 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !873, file: !352, line: 809, type: !29)
!876 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !873, file: !352, line: 809, type: !552)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !873, file: !352, line: 812, type: !440)
!878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !873, file: !352, line: 813, type: !11)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !873, file: !352, line: 814, type: !424)
!880 = !DISubprogram(name: "bp_ulonglong", scope: !352, file: !352, line: 910, type: !766, isLocal: true, isDefinition: true, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_ulonglong, variables: !881)
!881 = !{!882, !883, !884, !885, !886}
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !880, file: !352, line: 910, type: !52)
!883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !880, file: !352, line: 910, type: !5)
!884 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !880, file: !352, line: 910, type: !552)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !880, file: !352, line: 912, type: !44)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !887, file: !352, line: 921, type: !5)
!887 = distinct !DILexicalBlock(scope: !880, file: !352, line: 921, column: 8)
!888 = !DISubprogram(name: "bu_bool", scope: !352, file: !352, line: 842, type: !760, isLocal: true, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @bu_bool, variables: !889)
!889 = !{!890, !891, !892}
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !888, file: !352, line: 842, type: !29)
!891 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !888, file: !352, line: 842, type: !552)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !888, file: !352, line: 844, type: !31)
!893 = !DISubprogram(name: "bp_bool", scope: !352, file: !352, line: 950, type: !766, isLocal: true, isDefinition: true, scopeLine: 951, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_bool, variables: !894)
!894 = !{!895, !896, !897, !898}
!895 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !893, file: !352, line: 950, type: !52)
!896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !893, file: !352, line: 950, type: !5)
!897 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !893, file: !352, line: 950, type: !552)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !893, file: !352, line: 952, type: !44)
!899 = !DISubprogram(name: "bu_float", scope: !352, file: !352, line: 830, type: !760, isLocal: true, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @bu_float, variables: !900)
!900 = !{!901, !902}
!901 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !899, file: !352, line: 830, type: !29)
!902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !899, file: !352, line: 830, type: !552)
!903 = !DISubprogram(name: "unpack_float", scope: !352, file: !352, line: 272, type: !904, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i32)* @unpack_float, variables: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{!5, !29, !44}
!906 = !{!907, !908, !909}
!907 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !903, file: !352, line: 272, type: !29)
!908 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "le", arg: 2, scope: !903, file: !352, line: 273, type: !44)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !903, file: !352, line: 275, type: !441)
!910 = !DISubprogram(name: "bp_float", scope: !352, file: !352, line: 926, type: !766, isLocal: true, isDefinition: true, scopeLine: 927, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_float, variables: !911)
!911 = !{!912, !913, !914, !915}
!912 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !910, file: !352, line: 926, type: !52)
!913 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !910, file: !352, line: 926, type: !5)
!914 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !910, file: !352, line: 926, type: !552)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !910, file: !352, line: 928, type: !441)
!916 = !DISubprogram(name: "bu_double", scope: !352, file: !352, line: 836, type: !760, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @bu_double, variables: !917)
!917 = !{!918, !919}
!918 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !916, file: !352, line: 836, type: !29)
!919 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !916, file: !352, line: 836, type: !552)
!920 = !DISubprogram(name: "unpack_double", scope: !352, file: !352, line: 284, type: !904, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i32)* @unpack_double, variables: !921)
!921 = !{!922, !923, !924}
!922 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !920, file: !352, line: 284, type: !29)
!923 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "le", arg: 2, scope: !920, file: !352, line: 285, type: !44)
!924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !920, file: !352, line: 287, type: !441)
!925 = !DISubprogram(name: "bp_double", scope: !352, file: !352, line: 938, type: !766, isLocal: true, isDefinition: true, scopeLine: 939, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @bp_double, variables: !926)
!926 = !{!927, !928, !929, !930}
!927 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !925, file: !352, line: 938, type: !52)
!928 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !925, file: !352, line: 938, type: !5)
!929 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !925, file: !352, line: 938, type: !552)
!930 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !925, file: !352, line: 940, type: !441)
!931 = !DISubprogram(name: "getentry", scope: !352, file: !352, line: 1221, type: !932, isLocal: true, isDefinition: true, scopeLine: 1222, flags: DIFlagPrototyped, isOptimized: true, function: %struct._formatdef* (i32, %struct._formatdef*)* @getentry, variables: !934)
!932 = !DISubroutineType(types: !933)
!933 = !{!552, !44, !552}
!934 = !{!935, !936}
!935 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !931, file: !352, line: 1221, type: !44)
!936 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !931, file: !352, line: 1221, type: !552)
!937 = !DISubprogram(name: "align", scope: !352, file: !352, line: 1236, type: !938, isLocal: true, isDefinition: true, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64, i8, %struct._formatdef*)* @align, variables: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{!11, !11, !31, !552}
!940 = !{!941, !942, !943, !944}
!941 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !937, file: !352, line: 1236, type: !11)
!942 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !937, file: !352, line: 1236, type: !31)
!943 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "e", arg: 3, scope: !937, file: !352, line: 1236, type: !552)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "extra", scope: !937, file: !352, line: 1238, type: !11)
!945 = !DISubprogram(name: "s_new", scope: !352, file: !352, line: 1390, type: !946, isLocal: true, isDefinition: true, scopeLine: 1391, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @s_new, variables: !950)
!946 = !DISubroutineType(types: !947)
!947 = !{!5, !948, !5, !5}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!950 = !{!951, !952, !953, !954, !955}
!951 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !945, file: !352, line: 1390, type: !948)
!952 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !945, file: !352, line: 1390, type: !5)
!953 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !945, file: !352, line: 1390, type: !5)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !945, file: !352, line: 1392, type: !5)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !956, file: !352, line: 1398, type: !350)
!956 = distinct !DILexicalBlock(scope: !957, file: !352, line: 1397, column: 29)
!957 = distinct !DILexicalBlock(scope: !945, file: !352, line: 1397, column: 9)
!958 = !DISubprogram(name: "nu_short", scope: !352, file: !352, line: 366, type: !760, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_short, variables: !959)
!959 = !{!960, !961, !962}
!960 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !958, file: !352, line: 366, type: !29)
!961 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !958, file: !352, line: 366, type: !552)
!962 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !958, file: !352, line: 368, type: !439)
!963 = !DISubprogram(name: "np_short", scope: !352, file: !352, line: 541, type: !766, isLocal: true, isDefinition: true, scopeLine: 542, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_short, variables: !964)
!964 = !{!965, !966, !967, !968, !969}
!965 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !963, file: !352, line: 541, type: !52)
!966 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !963, file: !352, line: 541, type: !5)
!967 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !963, file: !352, line: 541, type: !552)
!968 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !963, file: !352, line: 543, type: !17)
!969 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !963, file: !352, line: 544, type: !439)
!970 = !DISubprogram(name: "nu_ushort", scope: !352, file: !352, line: 374, type: !760, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_ushort, variables: !971)
!971 = !{!972, !973, !974}
!972 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !970, file: !352, line: 374, type: !29)
!973 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !970, file: !352, line: 374, type: !552)
!974 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !970, file: !352, line: 376, type: !77)
!975 = !DISubprogram(name: "np_ushort", scope: !352, file: !352, line: 559, type: !766, isLocal: true, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_ushort, variables: !976)
!976 = !{!977, !978, !979, !980, !981}
!977 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !975, file: !352, line: 559, type: !52)
!978 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !975, file: !352, line: 559, type: !5)
!979 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !975, file: !352, line: 559, type: !552)
!980 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !975, file: !352, line: 561, type: !17)
!981 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !975, file: !352, line: 562, type: !77)
!982 = !DISubprogram(name: "nu_int", scope: !352, file: !352, line: 382, type: !760, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_int, variables: !983)
!983 = !{!984, !985, !986}
!984 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !982, file: !352, line: 382, type: !29)
!985 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !982, file: !352, line: 382, type: !552)
!986 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !982, file: !352, line: 384, type: !44)
!987 = !DISubprogram(name: "np_int", scope: !352, file: !352, line: 576, type: !766, isLocal: true, isDefinition: true, scopeLine: 577, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_int, variables: !988)
!988 = !{!989, !990, !991, !992, !993}
!989 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !987, file: !352, line: 576, type: !52)
!990 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !987, file: !352, line: 576, type: !5)
!991 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !987, file: !352, line: 576, type: !552)
!992 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !987, file: !352, line: 578, type: !17)
!993 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !987, file: !352, line: 579, type: !44)
!994 = !DISubprogram(name: "nu_uint", scope: !352, file: !352, line: 390, type: !760, isLocal: true, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_uint, variables: !995)
!995 = !{!996, !997, !998}
!996 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !994, file: !352, line: 390, type: !29)
!997 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !994, file: !352, line: 390, type: !552)
!998 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !994, file: !352, line: 392, type: !348)
!999 = !DISubprogram(name: "np_uint", scope: !352, file: !352, line: 592, type: !766, isLocal: true, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_uint, variables: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1005}
!1001 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !999, file: !352, line: 592, type: !52)
!1002 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !999, file: !352, line: 592, type: !5)
!1003 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !999, file: !352, line: 592, type: !552)
!1004 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !999, file: !352, line: 594, type: !96)
!1005 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !999, file: !352, line: 595, type: !348)
!1006 = !DISubprogram(name: "nu_long", scope: !352, file: !352, line: 404, type: !760, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_long, variables: !1007)
!1007 = !{!1008, !1009, !1010}
!1008 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1006, file: !352, line: 404, type: !29)
!1009 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1006, file: !352, line: 404, type: !552)
!1010 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1006, file: !352, line: 406, type: !17)
!1011 = !DISubprogram(name: "np_long", scope: !352, file: !352, line: 608, type: !766, isLocal: true, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_long, variables: !1012)
!1012 = !{!1013, !1014, !1015, !1016}
!1013 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1011, file: !352, line: 608, type: !52)
!1014 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1011, file: !352, line: 608, type: !5)
!1015 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1011, file: !352, line: 608, type: !552)
!1016 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1011, file: !352, line: 610, type: !17)
!1017 = !DISubprogram(name: "nu_ulong", scope: !352, file: !352, line: 412, type: !760, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_ulong, variables: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1017, file: !352, line: 412, type: !29)
!1020 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1017, file: !352, line: 412, type: !552)
!1021 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1017, file: !352, line: 414, type: !96)
!1022 = !DISubprogram(name: "np_ulong", scope: !352, file: !352, line: 618, type: !766, isLocal: true, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_ulong, variables: !1023)
!1023 = !{!1024, !1025, !1026, !1027}
!1024 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1022, file: !352, line: 618, type: !52)
!1025 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1022, file: !352, line: 618, type: !5)
!1026 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1022, file: !352, line: 618, type: !552)
!1027 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1022, file: !352, line: 620, type: !96)
!1028 = !DISubprogram(name: "nu_ssize_t", scope: !352, file: !352, line: 422, type: !760, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_ssize_t, variables: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1028, file: !352, line: 422, type: !29)
!1031 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1028, file: !352, line: 422, type: !552)
!1032 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1028, file: !352, line: 424, type: !11)
!1033 = !DISubprogram(name: "np_ssize_t", scope: !352, file: !352, line: 628, type: !766, isLocal: true, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_ssize_t, variables: !1034)
!1034 = !{!1035, !1036, !1037, !1038}
!1035 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1033, file: !352, line: 628, type: !52)
!1036 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1033, file: !352, line: 628, type: !5)
!1037 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1033, file: !352, line: 628, type: !552)
!1038 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1033, file: !352, line: 630, type: !11)
!1039 = !DISubprogram(name: "get_ssize_t", scope: !352, file: !352, line: 222, type: !1040, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*)* @get_ssize_t, variables: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!44, !5, !247}
!1042 = !{!1043, !1044, !1045, !1046}
!1043 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !1039, file: !352, line: 222, type: !5)
!1044 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !1039, file: !352, line: 222, type: !247)
!1045 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1039, file: !352, line: 224, type: !11)
!1046 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1047, file: !352, line: 231, type: !5)
!1047 = distinct !DILexicalBlock(scope: !1039, file: !352, line: 231, column: 8)
!1048 = !DISubprogram(name: "nu_size_t", scope: !352, file: !352, line: 430, type: !760, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_size_t, variables: !1049)
!1049 = !{!1050, !1051, !1052}
!1050 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1048, file: !352, line: 430, type: !29)
!1051 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1048, file: !352, line: 430, type: !552)
!1052 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1048, file: !352, line: 432, type: !94)
!1053 = !DISubprogram(name: "np_size_t", scope: !352, file: !352, line: 638, type: !766, isLocal: true, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_size_t, variables: !1054)
!1054 = !{!1055, !1056, !1057, !1058}
!1055 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1053, file: !352, line: 638, type: !52)
!1056 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1053, file: !352, line: 638, type: !5)
!1057 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1053, file: !352, line: 638, type: !552)
!1058 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1053, file: !352, line: 640, type: !94)
!1059 = !DISubprogram(name: "get_size_t", scope: !352, file: !352, line: 245, type: !1060, isLocal: true, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*)* @get_size_t, variables: !1063)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!44, !5, !1062}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!1063 = !{!1064, !1065, !1066, !1067}
!1064 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !1059, file: !352, line: 245, type: !5)
!1065 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !1059, file: !352, line: 245, type: !1062)
!1066 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1059, file: !352, line: 247, type: !94)
!1067 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1068, file: !352, line: 254, type: !5)
!1068 = distinct !DILexicalBlock(scope: !1059, file: !352, line: 254, column: 8)
!1069 = !DISubprogram(name: "nu_longlong", scope: !352, file: !352, line: 444, type: !760, isLocal: true, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_longlong, variables: !1070)
!1070 = !{!1071, !1072, !1073}
!1071 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1069, file: !352, line: 444, type: !29)
!1072 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1069, file: !352, line: 444, type: !552)
!1073 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1069, file: !352, line: 446, type: !426)
!1074 = !DISubprogram(name: "np_longlong", scope: !352, file: !352, line: 650, type: !766, isLocal: true, isDefinition: true, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_longlong, variables: !1075)
!1075 = !{!1076, !1077, !1078, !1079}
!1076 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1074, file: !352, line: 650, type: !52)
!1077 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1074, file: !352, line: 650, type: !5)
!1078 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1074, file: !352, line: 650, type: !552)
!1079 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1074, file: !352, line: 652, type: !426)
!1080 = !DISubprogram(name: "get_longlong", scope: !352, file: !352, line: 174, type: !1081, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*)* @get_longlong, variables: !1084)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!44, !5, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!1084 = !{!1085, !1086, !1087, !1088}
!1085 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !1080, file: !352, line: 174, type: !5)
!1086 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !1080, file: !352, line: 174, type: !1083)
!1087 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1080, file: !352, line: 176, type: !426)
!1088 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1089, file: !352, line: 183, type: !5)
!1089 = distinct !DILexicalBlock(scope: !1080, file: !352, line: 183, column: 8)
!1090 = !DISubprogram(name: "nu_ulonglong", scope: !352, file: !352, line: 454, type: !760, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_ulonglong, variables: !1091)
!1091 = !{!1092, !1093, !1094}
!1092 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1090, file: !352, line: 454, type: !29)
!1093 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1090, file: !352, line: 454, type: !552)
!1094 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1090, file: !352, line: 456, type: !440)
!1095 = !DISubprogram(name: "np_ulonglong", scope: !352, file: !352, line: 660, type: !766, isLocal: true, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_ulonglong, variables: !1096)
!1096 = !{!1097, !1098, !1099, !1100}
!1097 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1095, file: !352, line: 660, type: !52)
!1098 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1095, file: !352, line: 660, type: !5)
!1099 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1095, file: !352, line: 660, type: !552)
!1100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1095, file: !352, line: 662, type: !440)
!1101 = !DISubprogram(name: "get_ulonglong", scope: !352, file: !352, line: 197, type: !1102, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*)* @get_ulonglong, variables: !1105)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!44, !5, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!1105 = !{!1106, !1107, !1108, !1109}
!1106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !1101, file: !352, line: 197, type: !5)
!1107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !1101, file: !352, line: 197, type: !1104)
!1108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1101, file: !352, line: 199, type: !440)
!1109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1110, file: !352, line: 206, type: !5)
!1110 = distinct !DILexicalBlock(scope: !1101, file: !352, line: 206, column: 8)
!1111 = !DISubprogram(name: "nu_bool", scope: !352, file: !352, line: 466, type: !760, isLocal: true, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_bool, variables: !1112)
!1112 = !{!1113, !1114, !1115}
!1113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1111, file: !352, line: 466, type: !29)
!1114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1111, file: !352, line: 466, type: !552)
!1115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1111, file: !352, line: 468, type: !1116)
!1116 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!1117 = !DISubprogram(name: "np_bool", scope: !352, file: !352, line: 672, type: !766, isLocal: true, isDefinition: true, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_bool, variables: !1118)
!1118 = !{!1119, !1120, !1121, !1122, !1123}
!1119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1117, file: !352, line: 672, type: !52)
!1120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1117, file: !352, line: 672, type: !5)
!1121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1117, file: !352, line: 672, type: !552)
!1122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !1117, file: !352, line: 674, type: !44)
!1123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1117, file: !352, line: 675, type: !1116)
!1124 = !DISubprogram(name: "nu_float", scope: !352, file: !352, line: 475, type: !760, isLocal: true, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_float, variables: !1125)
!1125 = !{!1126, !1127, !1128}
!1126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1124, file: !352, line: 475, type: !29)
!1127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1124, file: !352, line: 475, type: !552)
!1128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1124, file: !352, line: 477, type: !442)
!1129 = !DISubprogram(name: "np_float", scope: !352, file: !352, line: 685, type: !766, isLocal: true, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_float, variables: !1130)
!1130 = !{!1131, !1132, !1133, !1134}
!1131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1129, file: !352, line: 685, type: !52)
!1132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1129, file: !352, line: 685, type: !5)
!1133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1129, file: !352, line: 685, type: !552)
!1134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1129, file: !352, line: 687, type: !442)
!1135 = !DISubprogram(name: "nu_double", scope: !352, file: !352, line: 483, type: !760, isLocal: true, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_double, variables: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1135, file: !352, line: 483, type: !29)
!1138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1135, file: !352, line: 483, type: !552)
!1139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1135, file: !352, line: 485, type: !441)
!1140 = !DISubprogram(name: "np_double", scope: !352, file: !352, line: 698, type: !766, isLocal: true, isDefinition: true, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_double, variables: !1141)
!1141 = !{!1142, !1143, !1144, !1145}
!1142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1140, file: !352, line: 698, type: !52)
!1143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1140, file: !352, line: 698, type: !5)
!1144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1140, file: !352, line: 698, type: !552)
!1145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1140, file: !352, line: 700, type: !441)
!1146 = !DISubprogram(name: "nu_void_p", scope: !352, file: !352, line: 491, type: !760, isLocal: true, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @nu_void_p, variables: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1146, file: !352, line: 491, type: !29)
!1149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1146, file: !352, line: 491, type: !552)
!1150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1146, file: !352, line: 493, type: !4)
!1151 = !DISubprogram(name: "np_void_p", scope: !352, file: !352, line: 711, type: !766, isLocal: true, isDefinition: true, scopeLine: 712, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @np_void_p, variables: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157}
!1153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1151, file: !352, line: 711, type: !52)
!1154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1151, file: !352, line: 711, type: !5)
!1155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1151, file: !352, line: 711, type: !552)
!1156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1151, file: !352, line: 713, type: !4)
!1157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1158, file: !352, line: 720, type: !5)
!1158 = distinct !DILexicalBlock(scope: !1151, file: !352, line: 720, column: 8)
!1159 = !DISubprogram(name: "lu_int", scope: !352, file: !352, line: 984, type: !760, isLocal: true, isDefinition: true, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @lu_int, variables: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165}
!1161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1159, file: !352, line: 984, type: !29)
!1162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1159, file: !352, line: 984, type: !552)
!1163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1159, file: !352, line: 986, type: !17)
!1164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1159, file: !352, line: 987, type: !11)
!1165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !1159, file: !352, line: 988, type: !424)
!1166 = !DISubprogram(name: "lp_int", scope: !352, file: !352, line: 1070, type: !766, isLocal: true, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_int, variables: !1167)
!1167 = !{!1168, !1169, !1170, !1171, !1172}
!1168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1166, file: !352, line: 1070, type: !52)
!1169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1166, file: !352, line: 1070, type: !5)
!1170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1166, file: !352, line: 1070, type: !552)
!1171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1166, file: !352, line: 1072, type: !17)
!1172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1166, file: !352, line: 1073, type: !11)
!1173 = !DISubprogram(name: "lu_uint", scope: !352, file: !352, line: 999, type: !760, isLocal: true, isDefinition: true, scopeLine: 1000, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @lu_uint, variables: !1174)
!1174 = !{!1175, !1176, !1177, !1178, !1179}
!1175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1173, file: !352, line: 999, type: !29)
!1176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1173, file: !352, line: 999, type: !552)
!1177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1173, file: !352, line: 1001, type: !96)
!1178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1173, file: !352, line: 1002, type: !11)
!1179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !1173, file: !352, line: 1003, type: !424)
!1180 = !DISubprogram(name: "lp_uint", scope: !352, file: !352, line: 1093, type: !766, isLocal: true, isDefinition: true, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_uint, variables: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187}
!1182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1180, file: !352, line: 1093, type: !52)
!1183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1180, file: !352, line: 1093, type: !5)
!1184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1180, file: !352, line: 1093, type: !552)
!1185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1180, file: !352, line: 1095, type: !96)
!1186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1180, file: !352, line: 1096, type: !11)
!1187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxint", scope: !1188, file: !352, line: 1101, type: !96)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !352, line: 1100, column: 17)
!1189 = distinct !DILexicalBlock(scope: !1180, file: !352, line: 1100, column: 9)
!1190 = !DISubprogram(name: "lu_longlong", scope: !352, file: !352, line: 1013, type: !760, isLocal: true, isDefinition: true, scopeLine: 1014, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @lu_longlong, variables: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196}
!1192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1190, file: !352, line: 1013, type: !29)
!1193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1190, file: !352, line: 1013, type: !552)
!1194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1190, file: !352, line: 1016, type: !426)
!1195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1190, file: !352, line: 1017, type: !11)
!1196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !1190, file: !352, line: 1018, type: !424)
!1197 = !DISubprogram(name: "lp_longlong", scope: !352, file: !352, line: 1114, type: !766, isLocal: true, isDefinition: true, scopeLine: 1115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_longlong, variables: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203}
!1199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1197, file: !352, line: 1114, type: !52)
!1200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1197, file: !352, line: 1114, type: !5)
!1201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1197, file: !352, line: 1114, type: !552)
!1202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !1197, file: !352, line: 1116, type: !44)
!1203 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1204, file: !352, line: 1125, type: !5)
!1204 = distinct !DILexicalBlock(scope: !1197, file: !352, line: 1125, column: 8)
!1205 = !DISubprogram(name: "lu_ulonglong", scope: !352, file: !352, line: 1037, type: !760, isLocal: true, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @lu_ulonglong, variables: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1211}
!1207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1205, file: !352, line: 1037, type: !29)
!1208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1205, file: !352, line: 1037, type: !552)
!1209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1205, file: !352, line: 1040, type: !440)
!1210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1205, file: !352, line: 1041, type: !11)
!1211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !1205, file: !352, line: 1042, type: !424)
!1212 = !DISubprogram(name: "lp_ulonglong", scope: !352, file: !352, line: 1130, type: !766, isLocal: true, isDefinition: true, scopeLine: 1131, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_ulonglong, variables: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218}
!1214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1212, file: !352, line: 1130, type: !52)
!1215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1212, file: !352, line: 1130, type: !5)
!1216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1212, file: !352, line: 1130, type: !552)
!1217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !1212, file: !352, line: 1132, type: !44)
!1218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1219, file: !352, line: 1141, type: !5)
!1219 = distinct !DILexicalBlock(scope: !1212, file: !352, line: 1141, column: 8)
!1220 = !DISubprogram(name: "lu_float", scope: !352, file: !352, line: 1058, type: !760, isLocal: true, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @lu_float, variables: !1221)
!1221 = !{!1222, !1223}
!1222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1220, file: !352, line: 1058, type: !29)
!1223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1220, file: !352, line: 1058, type: !552)
!1224 = !DISubprogram(name: "lp_float", scope: !352, file: !352, line: 1146, type: !766, isLocal: true, isDefinition: true, scopeLine: 1147, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_float, variables: !1225)
!1225 = !{!1226, !1227, !1228, !1229}
!1226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1224, file: !352, line: 1146, type: !52)
!1227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1224, file: !352, line: 1146, type: !5)
!1228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1224, file: !352, line: 1146, type: !552)
!1229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1224, file: !352, line: 1148, type: !441)
!1230 = !DISubprogram(name: "lu_double", scope: !352, file: !352, line: 1064, type: !760, isLocal: true, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._formatdef*)* @lu_double, variables: !1231)
!1231 = !{!1232, !1233}
!1232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1230, file: !352, line: 1064, type: !29)
!1233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !1230, file: !352, line: 1064, type: !552)
!1234 = !DISubprogram(name: "lp_double", scope: !352, file: !352, line: 1158, type: !766, isLocal: true, isDefinition: true, scopeLine: 1159, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object*, %struct._formatdef*)* @lp_double, variables: !1235)
!1235 = !{!1236, !1237, !1238, !1239}
!1236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !1234, file: !352, line: 1158, type: !52)
!1237 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !1234, file: !352, line: 1158, type: !5)
!1238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !1234, file: !352, line: 1158, type: !552)
!1239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1234, file: !352, line: 1160, type: !441)
!1240 = !{!1241, !1242, !1265, !1269, !1273, !1274, !1278, !1282, !1283, !1287, !1291, !1295, !1299, !1303, !1307, !1311, !1312, !1316, !1320, !1324, !1328, !1332, !1336, !1340, !1344, !1347, !1349, !1353, !1357}
!1241 = !DIGlobalVariable(name: "StructError", scope: !0, file: !352, line: 50, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @StructError)
!1242 = !DIGlobalVariable(name: "_structmodule", scope: !0, file: !352, line: 2253, type: !1243, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @_structmodule)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !1244, line: 47, size: 832, align: 64, elements: !1245)
!1244 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!1245 = !{!1246, !1255, !1256, !1257, !1258, !1261, !1262, !1263, !1264}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !1243, file: !1244, line: 48, baseType: !1247, size: 320, align: 64)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !1244, line: 38, baseType: !1248)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !1244, line: 33, size: 320, align: 64, elements: !1249)
!1249 = !{!1250, !1251, !1253, !1254}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !1248, file: !1244, line: 34, baseType: !6, size: 128, align: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !1248, file: !1244, line: 35, baseType: !1252, size: 64, align: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !1248, file: !1244, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !1248, file: !1244, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !1243, file: !1244, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !1243, file: !1244, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !1243, file: !1244, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !1243, file: !1244, line: 52, baseType: !1259, size: 64, align: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64, align: 64)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !1243, file: !1244, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !1243, file: !1244, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !1243, file: !1244, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !1243, file: !1244, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!1265 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !352, line: 2222, type: !1266, isLocal: true, isDefinition: true, variable: [1285 x i8]* @module_doc)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 10280, align: 8, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 1285)
!1269 = !DIGlobalVariable(name: "module_functions", scope: !0, file: !352, line: 2207, type: !1270, isLocal: true, isDefinition: true, variable: [8 x %struct.PyMethodDef]* @module_functions)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 2048, align: 64, elements: !1271)
!1271 = !{!1272}
!1272 = !DISubrange(count: 8)
!1273 = !DIGlobalVariable(name: "cache", scope: !0, file: !352, line: 2004, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @cache)
!1274 = !DIGlobalVariable(name: "clearcache_doc", scope: !0, file: !352, line: 2034, type: !1275, isLocal: true, isDefinition: true, variable: [26 x i8]* @clearcache_doc)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 208, align: 8, elements: !1276)
!1276 = !{!1277}
!1277 = !DISubrange(count: 26)
!1278 = !DIGlobalVariable(name: "calcsize_doc", scope: !0, file: !352, line: 2044, type: !1279, isLocal: true, isDefinition: true, variable: [97 x i8]* @calcsize_doc)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 776, align: 8, elements: !1280)
!1280 = !{!1281}
!1281 = !DISubrange(count: 97)
!1282 = !DIGlobalVariable(name: "unpackiter_type", scope: !0, file: !352, line: 1629, type: !949, isLocal: true, isDefinition: true, variable: %struct._typeobject* @unpackiter_type)
!1283 = !DIGlobalVariable(name: "unpackiter_methods", scope: !0, file: !352, line: 1605, type: !1284, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @unpackiter_methods)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1260, size: 512, align: 64, elements: !1285)
!1285 = !{!1286}
!1286 = !DISubrange(count: 2)
!1287 = !DIGlobalVariable(name: "iter_unpack_doc", scope: !0, file: !352, line: 2183, type: !1288, isLocal: true, isDefinition: true, variable: [273 x i8]* @iter_unpack_doc)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2184, align: 8, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 273)
!1291 = !DIGlobalVariable(name: "pack_doc", scope: !0, file: !352, line: 2061, type: !1292, isLocal: true, isDefinition: true, variable: [178 x i8]* @pack_doc)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1424, align: 8, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 178)
!1295 = !DIGlobalVariable(name: "pack_into_doc", scope: !0, file: !352, line: 2093, type: !1296, isLocal: true, isDefinition: true, variable: [276 x i8]* @pack_into_doc)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2208, align: 8, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: 276)
!1299 = !DIGlobalVariable(name: "unpack_doc", scope: !0, file: !352, line: 2127, type: !1300, isLocal: true, isDefinition: true, variable: [201 x i8]* @unpack_doc)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1608, align: 8, elements: !1301)
!1301 = !{!1302}
!1302 = !DISubrange(count: 201)
!1303 = !DIGlobalVariable(name: "kwlist", scope: !683, file: !352, line: 1537, type: !1304, isLocal: true, isDefinition: true, variable: [3 x i8*]* @s_unpack_from.kwlist)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 192, align: 64, elements: !1305)
!1305 = !{!1306}
!1306 = !DISubrange(count: 3)
!1307 = !DIGlobalVariable(name: "unpack_from_doc", scope: !0, file: !352, line: 2150, type: !1308, isLocal: true, isDefinition: true, variable: [226 x i8]* @unpack_from_doc)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1808, align: 8, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: 226)
!1311 = !DIGlobalVariable(name: "PyStructType", scope: !0, file: !352, line: 1958, type: !949, isLocal: true, isDefinition: true, variable: %struct._typeobject* @PyStructType)
!1312 = !DIGlobalVariable(name: "s__doc__", scope: !0, file: !352, line: 1943, type: !1313, isLocal: true, isDefinition: true, variable: [184 x i8]* @s__doc__)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1472, align: 8, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 184)
!1316 = !DIGlobalVariable(name: "s_methods", scope: !0, file: !352, line: 1932, type: !1317, isLocal: true, isDefinition: true, variable: [7 x %struct.PyMethodDef]* @s_methods)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 1792, align: 64, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 7)
!1320 = !DIGlobalVariable(name: "s_iter_unpack__doc__", scope: !0, file: !352, line: 1660, type: !1321, isLocal: true, isDefinition: true, variable: [232 x i8]* @s_iter_unpack__doc__)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1856, align: 8, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 232)
!1324 = !DIGlobalVariable(name: "s_pack__doc__", scope: !0, file: !352, line: 1795, type: !1325, isLocal: true, isDefinition: true, variable: [176 x i8]* @s_pack__doc__)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1408, align: 8, elements: !1326)
!1326 = !{!1327}
!1327 = !DISubrange(count: 176)
!1328 = !DIGlobalVariable(name: "s_pack_into__doc__", scope: !0, file: !352, line: 1833, type: !1329, isLocal: true, isDefinition: true, variable: [278 x i8]* @s_pack_into__doc__)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2224, align: 8, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 278)
!1332 = !DIGlobalVariable(name: "s_unpack__doc__", scope: !0, file: !352, line: 1497, type: !1333, isLocal: true, isDefinition: true, variable: [197 x i8]* @s_unpack__doc__)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1576, align: 8, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: 197)
!1336 = !DIGlobalVariable(name: "s_unpack_from__doc__", scope: !0, file: !352, line: 1527, type: !1337, isLocal: true, isDefinition: true, variable: [221 x i8]* @s_unpack_from__doc__)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1768, align: 8, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 221)
!1340 = !DIGlobalVariable(name: "s_sizeof__doc__", scope: !0, file: !352, line: 1915, type: !1341, isLocal: true, isDefinition: true, variable: [48 x i8]* @s_sizeof__doc__)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 384, align: 8, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 48)
!1344 = !DIGlobalVariable(name: "s_getsetlist", scope: !0, file: !352, line: 1951, type: !1345, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @s_getsetlist)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 960, align: 64, elements: !1305)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !301, line: 17, baseType: !300)
!1347 = !DIGlobalVariable(name: "kwlist", scope: !719, file: !352, line: 1414, type: !1348, isLocal: true, isDefinition: true, variable: [2 x i8*]* @s_init.kwlist)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, align: 64, elements: !1285)
!1349 = !DIGlobalVariable(name: "bigendian_table", scope: !0, file: !352, line: 960, type: !1350, isLocal: true, isDefinition: true, variable: [18 x %struct._formatdef]* @bigendian_table)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 5760, align: 64, elements: !1351)
!1351 = !{!1352}
!1352 = !DISubrange(count: 18)
!1353 = !DIGlobalVariable(name: "native_table", scope: !0, file: !352, line: 727, type: !1354, isLocal: true, isDefinition: true, variable: [21 x %struct._formatdef]* @native_table)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 6720, align: 64, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 21)
!1357 = !DIGlobalVariable(name: "lilendian_table", scope: !0, file: !352, line: 1169, type: !1350, isLocal: true, isDefinition: true, variable: [18 x %struct._formatdef]* @lilendian_table)
!1358 = !{i32 2, !"Dwarf Version", i32 4}
!1359 = !{i32 2, !"Debug Info Version", i32 3}
!1360 = !{i32 1, !"PIC Level", i32 2}
!1361 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1362 = !DILocation(line: 2268, column: 5, scope: !444)
!1363 = !DIExpression()
!1364 = !DILocation(line: 2268, column: 15, scope: !444)
!1365 = !DILocation(line: 2270, column: 9, scope: !444)
!1366 = !DILocation(line: 2270, column: 7, scope: !444)
!1367 = !{!1368, !1368, i64 0}
!1368 = !{!"any pointer", !1369, i64 0}
!1369 = !{!"omnipotent char", !1370, i64 0}
!1370 = !{!"Simple C/C++ TBAA"}
!1371 = !DILocation(line: 2271, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !444, file: !352, line: 2271, column: 9)
!1373 = !DILocation(line: 2271, column: 11, scope: !1372)
!1374 = !DILocation(line: 2271, column: 9, scope: !444)
!1375 = !DILocation(line: 2272, column: 9, scope: !1372)
!1376 = !DILocation(line: 2274, column: 45, scope: !444)
!1377 = !{!1378, !1368, i64 8}
!1378 = !{!"_object", !1379, i64 0, !1368, i64 8}
!1379 = !{!"long", !1369, i64 0}
!1380 = !DILocation(line: 2275, column: 9, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !444, file: !352, line: 2275, column: 9)
!1382 = !DILocation(line: 2275, column: 37, scope: !1381)
!1383 = !DILocation(line: 2275, column: 9, scope: !444)
!1384 = !DILocation(line: 2276, column: 9, scope: !1381)
!1385 = !DILocation(line: 2280, column: 9, scope: !450)
!1386 = !DILocation(line: 2280, column: 20, scope: !450)
!1387 = !DILocation(line: 2281, column: 9, scope: !450)
!1388 = !DILocation(line: 2281, column: 20, scope: !450)
!1389 = !DILocation(line: 2281, column: 28, scope: !450)
!1390 = !DILocation(line: 2283, column: 15, scope: !450)
!1391 = !DILocation(line: 2291, column: 9, scope: !450)
!1392 = !DILocation(line: 2291, column: 16, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1394, file: !352, discriminator: 4)
!1394 = !DILexicalBlockFile(scope: !450, file: !352, discriminator: 1)
!1395 = !DILocation(line: 2291, column: 24, scope: !450)
!1396 = !{!1397, !1369, i64 0}
!1397 = !{!"_formatdef", !1369, i64 0, !1379, i64 8, !1379, i64 16, !1368, i64 24, !1368, i64 32}
!1398 = !DILocation(line: 2291, column: 16, scope: !450)
!1399 = !DILocation(line: 2291, column: 31, scope: !450)
!1400 = !DILocation(line: 2291, column: 39, scope: !450)
!1401 = !DILocation(line: 2291, column: 42, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !450, file: !352, discriminator: 2)
!1403 = !DILocation(line: 2291, column: 49, scope: !450)
!1404 = !DILocation(line: 2291, column: 42, scope: !450)
!1405 = !DILocation(line: 2291, column: 56, scope: !450)
!1406 = !DILocation(line: 2291, column: 9, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !450, file: !352, discriminator: 3)
!1408 = !DILocation(line: 2292, column: 19, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !450, file: !352, line: 2291, column: 65)
!1410 = !DILocation(line: 2292, column: 17, scope: !1409)
!1411 = !DILocation(line: 2293, column: 13, scope: !1409)
!1412 = !DILocation(line: 2293, column: 20, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1414, file: !352, discriminator: 2)
!1414 = !DILexicalBlockFile(scope: !1409, file: !352, discriminator: 1)
!1415 = !DILocation(line: 2293, column: 25, scope: !1409)
!1416 = !DILocation(line: 2293, column: 20, scope: !1409)
!1417 = !DILocation(line: 2293, column: 32, scope: !1409)
!1418 = !DILocation(line: 2294, column: 21, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !352, line: 2294, column: 21)
!1420 = distinct !DILexicalBlock(scope: !1409, file: !352, line: 2293, column: 41)
!1421 = !DILocation(line: 2294, column: 26, scope: !1419)
!1422 = !DILocation(line: 2294, column: 36, scope: !1419)
!1423 = !DILocation(line: 2294, column: 44, scope: !1419)
!1424 = !DILocation(line: 2294, column: 33, scope: !1419)
!1425 = !DILocation(line: 2294, column: 21, scope: !1420)
!1426 = !DILocation(line: 2297, column: 25, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !352, line: 2297, column: 25)
!1428 = distinct !DILexicalBlock(scope: !1419, file: !352, line: 2294, column: 52)
!1429 = !DILocation(line: 2297, column: 32, scope: !1427)
!1430 = !DILocation(line: 2297, column: 29, scope: !1427)
!1431 = !DILocation(line: 2297, column: 25, scope: !1428)
!1432 = !DILocation(line: 2298, column: 30, scope: !1427)
!1433 = !DILocation(line: 2298, column: 25, scope: !1427)
!1434 = !DILocation(line: 2301, column: 25, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1428, file: !352, line: 2301, column: 25)
!1436 = !DILocation(line: 2301, column: 30, scope: !1435)
!1437 = !{!1397, !1379, i64 8}
!1438 = !DILocation(line: 2301, column: 38, scope: !1435)
!1439 = !DILocation(line: 2301, column: 46, scope: !1435)
!1440 = !DILocation(line: 2301, column: 35, scope: !1435)
!1441 = !DILocation(line: 2301, column: 25, scope: !1428)
!1442 = !DILocation(line: 2302, column: 25, scope: !1435)
!1443 = !DILocation(line: 2305, column: 25, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1428, file: !352, line: 2305, column: 25)
!1445 = !DILocation(line: 2305, column: 30, scope: !1444)
!1446 = !DILocation(line: 2305, column: 37, scope: !1444)
!1447 = !DILocation(line: 2305, column: 44, scope: !1444)
!1448 = !DILocation(line: 2305, column: 47, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1444, file: !352, discriminator: 1)
!1450 = !DILocation(line: 2305, column: 52, scope: !1444)
!1451 = !DILocation(line: 2305, column: 47, scope: !1444)
!1452 = !DILocation(line: 2305, column: 59, scope: !1444)
!1453 = !DILocation(line: 2305, column: 25, scope: !1428)
!1454 = !DILocation(line: 2306, column: 25, scope: !1444)
!1455 = !DILocation(line: 2307, column: 33, scope: !1428)
!1456 = !DILocation(line: 2307, column: 41, scope: !1428)
!1457 = !{!1397, !1368, i64 32}
!1458 = !DILocation(line: 2307, column: 21, scope: !1428)
!1459 = !DILocation(line: 2307, column: 26, scope: !1428)
!1460 = !DILocation(line: 2307, column: 31, scope: !1428)
!1461 = !DILocation(line: 2308, column: 35, scope: !1428)
!1462 = !DILocation(line: 2308, column: 43, scope: !1428)
!1463 = !{!1397, !1368, i64 24}
!1464 = !DILocation(line: 2308, column: 21, scope: !1428)
!1465 = !DILocation(line: 2308, column: 26, scope: !1428)
!1466 = !DILocation(line: 2308, column: 33, scope: !1428)
!1467 = !DILocation(line: 2309, column: 21, scope: !1428)
!1468 = !DILocation(line: 2311, column: 20, scope: !1420)
!1469 = !DILocation(line: 2313, column: 19, scope: !1409)
!1470 = !DILocation(line: 2315, column: 5, scope: !444)
!1471 = !DILocation(line: 2318, column: 9, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !444, file: !352, line: 2318, column: 9)
!1473 = !DILocation(line: 2318, column: 21, scope: !1472)
!1474 = !DILocation(line: 2318, column: 9, scope: !444)
!1475 = !DILocation(line: 2319, column: 23, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !352, line: 2318, column: 36)
!1477 = !DILocation(line: 2319, column: 21, scope: !1476)
!1478 = !DILocation(line: 2320, column: 13, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !352, line: 2320, column: 13)
!1480 = !DILocation(line: 2320, column: 25, scope: !1479)
!1481 = !DILocation(line: 2320, column: 13, scope: !1476)
!1482 = !DILocation(line: 2321, column: 13, scope: !1479)
!1483 = !DILocation(line: 2322, column: 5, scope: !1476)
!1484 = !DILocation(line: 2324, column: 21, scope: !444)
!1485 = !DILocation(line: 2324, column: 36, scope: !444)
!1486 = !DILocation(line: 2324, column: 45, scope: !444)
!1487 = !{!1378, !1379, i64 0}
!1488 = !DILocation(line: 2325, column: 24, scope: !444)
!1489 = !DILocation(line: 2325, column: 36, scope: !444)
!1490 = !DILocation(line: 2325, column: 5, scope: !444)
!1491 = !DILocation(line: 2327, column: 58, scope: !444)
!1492 = !DILocation(line: 2328, column: 24, scope: !444)
!1493 = !DILocation(line: 2328, column: 5, scope: !444)
!1494 = !DILocation(line: 2330, column: 12, scope: !444)
!1495 = !DILocation(line: 2330, column: 5, scope: !444)
!1496 = !DILocation(line: 2331, column: 1, scope: !444)
!1497 = !DILocation(line: 2038, column: 22, scope: !455)
!1498 = !DILocation(line: 2040, column: 5, scope: !455)
!1499 = !DILocation(line: 2040, column: 10, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !459, file: !352, discriminator: 1)
!1501 = !DILocation(line: 2040, column: 20, scope: !459)
!1502 = !DILocation(line: 2040, column: 43, scope: !459)
!1503 = !DILocation(line: 2040, column: 55, scope: !463)
!1504 = !DILocation(line: 2040, column: 63, scope: !463)
!1505 = !DILocation(line: 2040, column: 55, scope: !459)
!1506 = !DILocation(line: 2040, column: 88, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !462, file: !352, discriminator: 2)
!1508 = !DILocation(line: 2040, column: 102, scope: !462)
!1509 = !DILocation(line: 2040, column: 107, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !461, file: !352, discriminator: 4)
!1511 = !DILocation(line: 2040, column: 117, scope: !461)
!1512 = !DILocation(line: 2040, column: 147, scope: !461)
!1513 = !DILocation(line: 2040, column: 165, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !461, file: !352, line: 2040, column: 162)
!1515 = !DILocation(line: 2040, column: 182, scope: !1514)
!1516 = !DILocation(line: 2040, column: 162, scope: !1514)
!1517 = !DILocation(line: 2040, column: 192, scope: !1514)
!1518 = !DILocation(line: 2040, column: 162, scope: !461)
!1519 = !DILocation(line: 2040, column: 162, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !461, file: !352, discriminator: 5)
!1521 = !DILocation(line: 2040, column: 223, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1514, file: !352, discriminator: 6)
!1523 = !DILocation(line: 2040, column: 241, scope: !1514)
!1524 = !DILocation(line: 2040, column: 251, scope: !1514)
!1525 = !{!1526, !1368, i64 48}
!1526 = !{!"_typeobject", !1527, i64 0, !1368, i64 24, !1379, i64 32, !1379, i64 40, !1368, i64 48, !1368, i64 56, !1368, i64 64, !1368, i64 72, !1368, i64 80, !1368, i64 88, !1368, i64 96, !1368, i64 104, !1368, i64 112, !1368, i64 120, !1368, i64 128, !1368, i64 136, !1368, i64 144, !1368, i64 152, !1368, i64 160, !1379, i64 168, !1368, i64 176, !1368, i64 184, !1368, i64 192, !1368, i64 200, !1379, i64 208, !1368, i64 216, !1368, i64 224, !1368, i64 232, !1368, i64 240, !1368, i64 248, !1368, i64 256, !1368, i64 264, !1368, i64 272, !1368, i64 280, !1379, i64 288, !1368, i64 296, !1368, i64 304, !1368, i64 312, !1368, i64 320, !1368, i64 328, !1368, i64 336, !1368, i64 344, !1368, i64 352, !1368, i64 360, !1368, i64 368, !1368, i64 376, !1528, i64 384, !1368, i64 392}
!1527 = !{!"", !1378, i64 0, !1379, i64 16}
!1528 = !{!"int", !1369, i64 0}
!1529 = !DILocation(line: 2040, column: 276, scope: !1514)
!1530 = !DILocation(line: 2040, column: 207, scope: !1514)
!1531 = !DILocation(line: 2040, column: 295, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !462, file: !352, discriminator: 7)
!1533 = !DILocation(line: 2040, column: 295, scope: !461)
!1534 = !DILocation(line: 2040, column: 295, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !461, file: !352, discriminator: 8)
!1536 = !DILocation(line: 2040, column: 308, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !462, file: !352, discriminator: 9)
!1538 = !DILocation(line: 2040, column: 310, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1540, file: !352, discriminator: 10)
!1540 = !DILexicalBlockFile(scope: !455, file: !352, discriminator: 3)
!1541 = !DILocation(line: 2040, column: 310, scope: !459)
!1542 = !DILocation(line: 2041, column: 58, scope: !455)
!1543 = !DILocation(line: 2041, column: 5, scope: !455)
!1544 = !DILocation(line: 2050, column: 20, scope: !464)
!1545 = !DILocation(line: 2050, column: 36, scope: !464)
!1546 = !DILocation(line: 2052, column: 5, scope: !464)
!1547 = !DILocation(line: 2052, column: 16, scope: !464)
!1548 = !DILocation(line: 2053, column: 5, scope: !464)
!1549 = !DILocation(line: 2053, column: 15, scope: !464)
!1550 = !DILocation(line: 2053, column: 39, scope: !464)
!1551 = !DILocation(line: 2053, column: 26, scope: !464)
!1552 = !DILocation(line: 2054, column: 9, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !464, file: !352, line: 2054, column: 9)
!1554 = !DILocation(line: 2054, column: 18, scope: !1553)
!1555 = !DILocation(line: 2054, column: 9, scope: !464)
!1556 = !DILocation(line: 2055, column: 9, scope: !1553)
!1557 = !DILocation(line: 2056, column: 28, scope: !464)
!1558 = !DILocation(line: 2056, column: 10, scope: !464)
!1559 = !DILocation(line: 2056, column: 39, scope: !464)
!1560 = !{!1561, !1379, i64 16}
!1561 = !{!"", !1378, i64 0, !1379, i64 16, !1379, i64 24, !1368, i64 32, !1368, i64 40, !1368, i64 48}
!1562 = !DILocation(line: 2056, column: 7, scope: !464)
!1563 = !{!1379, !1379, i64 0}
!1564 = !DILocation(line: 2057, column: 5, scope: !464)
!1565 = !DILocation(line: 2057, column: 10, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !471, file: !352, discriminator: 1)
!1567 = !DILocation(line: 2057, column: 20, scope: !471)
!1568 = !DILocation(line: 2057, column: 50, scope: !471)
!1569 = !DILocation(line: 2057, column: 69, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !471, file: !352, line: 2057, column: 66)
!1571 = !DILocation(line: 2057, column: 86, scope: !1570)
!1572 = !DILocation(line: 2057, column: 66, scope: !1570)
!1573 = !DILocation(line: 2057, column: 96, scope: !1570)
!1574 = !DILocation(line: 2057, column: 66, scope: !471)
!1575 = !DILocation(line: 2057, column: 66, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !471, file: !352, discriminator: 2)
!1577 = !DILocation(line: 2057, column: 127, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1570, file: !352, discriminator: 3)
!1579 = !DILocation(line: 2057, column: 145, scope: !1570)
!1580 = !DILocation(line: 2057, column: 155, scope: !1570)
!1581 = !DILocation(line: 2057, column: 180, scope: !1570)
!1582 = !DILocation(line: 2057, column: 111, scope: !1570)
!1583 = !DILocation(line: 2057, column: 199, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !464, file: !352, discriminator: 4)
!1585 = !DILocation(line: 2057, column: 199, scope: !471)
!1586 = !DILocation(line: 2057, column: 199, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !471, file: !352, discriminator: 5)
!1588 = !DILocation(line: 2058, column: 31, scope: !464)
!1589 = !DILocation(line: 2058, column: 12, scope: !464)
!1590 = !DILocation(line: 2058, column: 5, scope: !464)
!1591 = !DILocation(line: 2059, column: 1, scope: !464)
!1592 = !DILocation(line: 2192, column: 23, scope: !476)
!1593 = !DILocation(line: 2192, column: 39, scope: !476)
!1594 = !DILocation(line: 2194, column: 5, scope: !476)
!1595 = !DILocation(line: 2194, column: 15, scope: !476)
!1596 = !DILocation(line: 2194, column: 26, scope: !476)
!1597 = !DILocation(line: 2194, column: 32, scope: !476)
!1598 = !DILocation(line: 2194, column: 40, scope: !476)
!1599 = !DILocation(line: 2196, column: 34, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !476, file: !352, line: 2196, column: 9)
!1601 = !DILocation(line: 2196, column: 10, scope: !1600)
!1602 = !DILocation(line: 2196, column: 9, scope: !476)
!1603 = !DILocation(line: 2197, column: 9, scope: !1600)
!1604 = !DILocation(line: 2199, column: 29, scope: !476)
!1605 = !DILocation(line: 2199, column: 16, scope: !476)
!1606 = !DILocation(line: 2199, column: 14, scope: !476)
!1607 = !DILocation(line: 2200, column: 9, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !476, file: !352, line: 2200, column: 9)
!1609 = !DILocation(line: 2200, column: 18, scope: !1608)
!1610 = !DILocation(line: 2200, column: 9, scope: !476)
!1611 = !DILocation(line: 2201, column: 9, scope: !1608)
!1612 = !DILocation(line: 2202, column: 28, scope: !476)
!1613 = !DILocation(line: 2202, column: 38, scope: !476)
!1614 = !DILocation(line: 2202, column: 14, scope: !476)
!1615 = !DILocation(line: 2202, column: 12, scope: !476)
!1616 = !DILocation(line: 2203, column: 5, scope: !476)
!1617 = !DILocation(line: 2203, column: 10, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !485, file: !352, discriminator: 1)
!1619 = !DILocation(line: 2203, column: 20, scope: !485)
!1620 = !DILocation(line: 2203, column: 50, scope: !485)
!1621 = !DILocation(line: 2203, column: 69, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !485, file: !352, line: 2203, column: 66)
!1623 = !DILocation(line: 2203, column: 86, scope: !1622)
!1624 = !DILocation(line: 2203, column: 66, scope: !1622)
!1625 = !DILocation(line: 2203, column: 96, scope: !1622)
!1626 = !DILocation(line: 2203, column: 66, scope: !485)
!1627 = !DILocation(line: 2203, column: 66, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !485, file: !352, discriminator: 2)
!1629 = !DILocation(line: 2203, column: 127, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1622, file: !352, discriminator: 3)
!1631 = !DILocation(line: 2203, column: 145, scope: !1622)
!1632 = !DILocation(line: 2203, column: 155, scope: !1622)
!1633 = !DILocation(line: 2203, column: 180, scope: !1622)
!1634 = !DILocation(line: 2203, column: 111, scope: !1622)
!1635 = !DILocation(line: 2203, column: 199, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !476, file: !352, discriminator: 4)
!1637 = !DILocation(line: 2203, column: 199, scope: !485)
!1638 = !DILocation(line: 2203, column: 199, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !485, file: !352, discriminator: 5)
!1640 = !DILocation(line: 2204, column: 12, scope: !476)
!1641 = !DILocation(line: 2204, column: 5, scope: !476)
!1642 = !DILocation(line: 2205, column: 1, scope: !476)
!1643 = !DILocation(line: 2068, column: 16, scope: !568)
!1644 = !DILocation(line: 2068, column: 32, scope: !568)
!1645 = !DILocation(line: 2070, column: 5, scope: !568)
!1646 = !DILocation(line: 2070, column: 15, scope: !568)
!1647 = !DILocation(line: 2070, column: 26, scope: !568)
!1648 = !DILocation(line: 2070, column: 32, scope: !568)
!1649 = !DILocation(line: 2070, column: 42, scope: !568)
!1650 = !DILocation(line: 2071, column: 5, scope: !568)
!1651 = !DILocation(line: 2071, column: 16, scope: !568)
!1652 = !DILocation(line: 2071, column: 37, scope: !568)
!1653 = !DILocation(line: 2071, column: 22, scope: !568)
!1654 = !DILocation(line: 2071, column: 45, scope: !568)
!1655 = !{!1527, !1379, i64 16}
!1656 = !DILocation(line: 2073, column: 9, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !568, file: !352, line: 2073, column: 9)
!1658 = !DILocation(line: 2073, column: 11, scope: !1657)
!1659 = !DILocation(line: 2073, column: 9, scope: !568)
!1660 = !DILocation(line: 2074, column: 25, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !352, line: 2073, column: 17)
!1662 = !DILocation(line: 2074, column: 9, scope: !1661)
!1663 = !DILocation(line: 2075, column: 9, scope: !1661)
!1664 = !DILocation(line: 2077, column: 31, scope: !568)
!1665 = !DILocation(line: 2077, column: 13, scope: !568)
!1666 = !DILocation(line: 2077, column: 39, scope: !568)
!1667 = !DILocation(line: 2077, column: 12, scope: !568)
!1668 = !DILocation(line: 2077, column: 9, scope: !568)
!1669 = !DILocation(line: 2078, column: 32, scope: !568)
!1670 = !DILocation(line: 2078, column: 41, scope: !568)
!1671 = !DILocation(line: 2078, column: 15, scope: !568)
!1672 = !DILocation(line: 2078, column: 13, scope: !568)
!1673 = !DILocation(line: 2079, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !568, file: !352, line: 2079, column: 9)
!1675 = !DILocation(line: 2079, column: 17, scope: !1674)
!1676 = !DILocation(line: 2079, column: 9, scope: !568)
!1677 = !DILocation(line: 2080, column: 9, scope: !1674)
!1678 = !DILocation(line: 2082, column: 29, scope: !568)
!1679 = !DILocation(line: 2082, column: 16, scope: !568)
!1680 = !DILocation(line: 2082, column: 14, scope: !568)
!1681 = !DILocation(line: 2083, column: 9, scope: !580)
!1682 = !DILocation(line: 2083, column: 18, scope: !580)
!1683 = !DILocation(line: 2083, column: 9, scope: !568)
!1684 = !DILocation(line: 2084, column: 9, scope: !579)
!1685 = !DILocation(line: 2084, column: 14, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !578, file: !352, discriminator: 1)
!1687 = !DILocation(line: 2084, column: 24, scope: !578)
!1688 = !DILocation(line: 2084, column: 54, scope: !578)
!1689 = !DILocation(line: 2084, column: 72, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !578, file: !352, line: 2084, column: 69)
!1691 = !DILocation(line: 2084, column: 89, scope: !1690)
!1692 = !DILocation(line: 2084, column: 69, scope: !1690)
!1693 = !DILocation(line: 2084, column: 99, scope: !1690)
!1694 = !DILocation(line: 2084, column: 69, scope: !578)
!1695 = !DILocation(line: 2084, column: 69, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !578, file: !352, discriminator: 2)
!1697 = !DILocation(line: 2084, column: 130, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1690, file: !352, discriminator: 3)
!1699 = !DILocation(line: 2084, column: 148, scope: !1690)
!1700 = !DILocation(line: 2084, column: 158, scope: !1690)
!1701 = !DILocation(line: 2084, column: 183, scope: !1690)
!1702 = !DILocation(line: 2084, column: 114, scope: !1690)
!1703 = !DILocation(line: 2084, column: 202, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !579, file: !352, discriminator: 4)
!1705 = !DILocation(line: 2084, column: 202, scope: !578)
!1706 = !DILocation(line: 2084, column: 202, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !578, file: !352, discriminator: 5)
!1708 = !DILocation(line: 2085, column: 9, scope: !579)
!1709 = !DILocation(line: 2087, column: 21, scope: !568)
!1710 = !DILocation(line: 2087, column: 31, scope: !568)
!1711 = !DILocation(line: 2087, column: 14, scope: !568)
!1712 = !DILocation(line: 2087, column: 12, scope: !568)
!1713 = !DILocation(line: 2088, column: 5, scope: !568)
!1714 = !DILocation(line: 2088, column: 10, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !582, file: !352, discriminator: 1)
!1716 = !DILocation(line: 2088, column: 20, scope: !582)
!1717 = !DILocation(line: 2088, column: 50, scope: !582)
!1718 = !DILocation(line: 2088, column: 68, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !582, file: !352, line: 2088, column: 65)
!1720 = !DILocation(line: 2088, column: 85, scope: !1719)
!1721 = !DILocation(line: 2088, column: 65, scope: !1719)
!1722 = !DILocation(line: 2088, column: 95, scope: !1719)
!1723 = !DILocation(line: 2088, column: 65, scope: !582)
!1724 = !DILocation(line: 2088, column: 65, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !582, file: !352, discriminator: 2)
!1726 = !DILocation(line: 2088, column: 126, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1719, file: !352, discriminator: 3)
!1728 = !DILocation(line: 2088, column: 144, scope: !1719)
!1729 = !DILocation(line: 2088, column: 154, scope: !1719)
!1730 = !DILocation(line: 2088, column: 179, scope: !1719)
!1731 = !DILocation(line: 2088, column: 110, scope: !1719)
!1732 = !DILocation(line: 2088, column: 198, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !568, file: !352, discriminator: 4)
!1734 = !DILocation(line: 2088, column: 198, scope: !582)
!1735 = !DILocation(line: 2088, column: 198, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !582, file: !352, discriminator: 5)
!1737 = !DILocation(line: 2089, column: 5, scope: !568)
!1738 = !DILocation(line: 2089, column: 10, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !584, file: !352, discriminator: 1)
!1740 = !DILocation(line: 2089, column: 20, scope: !584)
!1741 = !DILocation(line: 2089, column: 50, scope: !584)
!1742 = !DILocation(line: 2089, column: 69, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !584, file: !352, line: 2089, column: 66)
!1744 = !DILocation(line: 2089, column: 86, scope: !1743)
!1745 = !DILocation(line: 2089, column: 66, scope: !1743)
!1746 = !DILocation(line: 2089, column: 96, scope: !1743)
!1747 = !DILocation(line: 2089, column: 66, scope: !584)
!1748 = !DILocation(line: 2089, column: 66, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !584, file: !352, discriminator: 2)
!1750 = !DILocation(line: 2089, column: 127, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1743, file: !352, discriminator: 3)
!1752 = !DILocation(line: 2089, column: 145, scope: !1743)
!1753 = !DILocation(line: 2089, column: 155, scope: !1743)
!1754 = !DILocation(line: 2089, column: 180, scope: !1743)
!1755 = !DILocation(line: 2089, column: 111, scope: !1743)
!1756 = !DILocation(line: 2089, column: 199, scope: !1733)
!1757 = !DILocation(line: 2089, column: 199, scope: !584)
!1758 = !DILocation(line: 2089, column: 199, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !584, file: !352, discriminator: 5)
!1760 = !DILocation(line: 2090, column: 12, scope: !568)
!1761 = !DILocation(line: 2090, column: 5, scope: !568)
!1762 = !DILocation(line: 2091, column: 1, scope: !568)
!1763 = !DILocation(line: 2102, column: 21, scope: !623)
!1764 = !DILocation(line: 2102, column: 37, scope: !623)
!1765 = !DILocation(line: 2104, column: 5, scope: !623)
!1766 = !DILocation(line: 2104, column: 15, scope: !623)
!1767 = !DILocation(line: 2104, column: 26, scope: !623)
!1768 = !DILocation(line: 2104, column: 32, scope: !623)
!1769 = !DILocation(line: 2104, column: 42, scope: !623)
!1770 = !DILocation(line: 2105, column: 5, scope: !623)
!1771 = !DILocation(line: 2105, column: 16, scope: !623)
!1772 = !DILocation(line: 2105, column: 37, scope: !623)
!1773 = !DILocation(line: 2105, column: 22, scope: !623)
!1774 = !DILocation(line: 2105, column: 45, scope: !623)
!1775 = !DILocation(line: 2107, column: 9, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !623, file: !352, line: 2107, column: 9)
!1777 = !DILocation(line: 2107, column: 11, scope: !1776)
!1778 = !DILocation(line: 2107, column: 9, scope: !623)
!1779 = !DILocation(line: 2108, column: 25, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !352, line: 2107, column: 17)
!1781 = !DILocation(line: 2108, column: 9, scope: !1780)
!1782 = !DILocation(line: 2109, column: 9, scope: !1780)
!1783 = !DILocation(line: 2111, column: 31, scope: !623)
!1784 = !DILocation(line: 2111, column: 13, scope: !623)
!1785 = !DILocation(line: 2111, column: 39, scope: !623)
!1786 = !DILocation(line: 2111, column: 12, scope: !623)
!1787 = !DILocation(line: 2111, column: 9, scope: !623)
!1788 = !DILocation(line: 2112, column: 32, scope: !623)
!1789 = !DILocation(line: 2112, column: 41, scope: !623)
!1790 = !DILocation(line: 2112, column: 15, scope: !623)
!1791 = !DILocation(line: 2112, column: 13, scope: !623)
!1792 = !DILocation(line: 2113, column: 9, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !623, file: !352, line: 2113, column: 9)
!1794 = !DILocation(line: 2113, column: 17, scope: !1793)
!1795 = !DILocation(line: 2113, column: 9, scope: !623)
!1796 = !DILocation(line: 2114, column: 9, scope: !1793)
!1797 = !DILocation(line: 2116, column: 29, scope: !623)
!1798 = !DILocation(line: 2116, column: 16, scope: !623)
!1799 = !DILocation(line: 2116, column: 14, scope: !623)
!1800 = !DILocation(line: 2117, column: 9, scope: !635)
!1801 = !DILocation(line: 2117, column: 18, scope: !635)
!1802 = !DILocation(line: 2117, column: 9, scope: !623)
!1803 = !DILocation(line: 2118, column: 9, scope: !634)
!1804 = !DILocation(line: 2118, column: 14, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !633, file: !352, discriminator: 1)
!1806 = !DILocation(line: 2118, column: 24, scope: !633)
!1807 = !DILocation(line: 2118, column: 54, scope: !633)
!1808 = !DILocation(line: 2118, column: 72, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !633, file: !352, line: 2118, column: 69)
!1810 = !DILocation(line: 2118, column: 89, scope: !1809)
!1811 = !DILocation(line: 2118, column: 69, scope: !1809)
!1812 = !DILocation(line: 2118, column: 99, scope: !1809)
!1813 = !DILocation(line: 2118, column: 69, scope: !633)
!1814 = !DILocation(line: 2118, column: 69, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !633, file: !352, discriminator: 2)
!1816 = !DILocation(line: 2118, column: 130, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1809, file: !352, discriminator: 3)
!1818 = !DILocation(line: 2118, column: 148, scope: !1809)
!1819 = !DILocation(line: 2118, column: 158, scope: !1809)
!1820 = !DILocation(line: 2118, column: 183, scope: !1809)
!1821 = !DILocation(line: 2118, column: 114, scope: !1809)
!1822 = !DILocation(line: 2118, column: 202, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !634, file: !352, discriminator: 4)
!1824 = !DILocation(line: 2118, column: 202, scope: !633)
!1825 = !DILocation(line: 2118, column: 202, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !633, file: !352, discriminator: 5)
!1827 = !DILocation(line: 2119, column: 9, scope: !634)
!1828 = !DILocation(line: 2121, column: 26, scope: !623)
!1829 = !DILocation(line: 2121, column: 36, scope: !623)
!1830 = !DILocation(line: 2121, column: 14, scope: !623)
!1831 = !DILocation(line: 2121, column: 12, scope: !623)
!1832 = !DILocation(line: 2122, column: 5, scope: !623)
!1833 = !DILocation(line: 2122, column: 10, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !637, file: !352, discriminator: 1)
!1835 = !DILocation(line: 2122, column: 20, scope: !637)
!1836 = !DILocation(line: 2122, column: 50, scope: !637)
!1837 = !DILocation(line: 2122, column: 68, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !637, file: !352, line: 2122, column: 65)
!1839 = !DILocation(line: 2122, column: 85, scope: !1838)
!1840 = !DILocation(line: 2122, column: 65, scope: !1838)
!1841 = !DILocation(line: 2122, column: 95, scope: !1838)
!1842 = !DILocation(line: 2122, column: 65, scope: !637)
!1843 = !DILocation(line: 2122, column: 65, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !637, file: !352, discriminator: 2)
!1845 = !DILocation(line: 2122, column: 126, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1838, file: !352, discriminator: 3)
!1847 = !DILocation(line: 2122, column: 144, scope: !1838)
!1848 = !DILocation(line: 2122, column: 154, scope: !1838)
!1849 = !DILocation(line: 2122, column: 179, scope: !1838)
!1850 = !DILocation(line: 2122, column: 110, scope: !1838)
!1851 = !DILocation(line: 2122, column: 198, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !623, file: !352, discriminator: 4)
!1853 = !DILocation(line: 2122, column: 198, scope: !637)
!1854 = !DILocation(line: 2122, column: 198, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !637, file: !352, discriminator: 5)
!1856 = !DILocation(line: 2123, column: 5, scope: !623)
!1857 = !DILocation(line: 2123, column: 10, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !639, file: !352, discriminator: 1)
!1859 = !DILocation(line: 2123, column: 20, scope: !639)
!1860 = !DILocation(line: 2123, column: 50, scope: !639)
!1861 = !DILocation(line: 2123, column: 69, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !639, file: !352, line: 2123, column: 66)
!1863 = !DILocation(line: 2123, column: 86, scope: !1862)
!1864 = !DILocation(line: 2123, column: 66, scope: !1862)
!1865 = !DILocation(line: 2123, column: 96, scope: !1862)
!1866 = !DILocation(line: 2123, column: 66, scope: !639)
!1867 = !DILocation(line: 2123, column: 66, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !639, file: !352, discriminator: 2)
!1869 = !DILocation(line: 2123, column: 127, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1862, file: !352, discriminator: 3)
!1871 = !DILocation(line: 2123, column: 145, scope: !1862)
!1872 = !DILocation(line: 2123, column: 155, scope: !1862)
!1873 = !DILocation(line: 2123, column: 180, scope: !1862)
!1874 = !DILocation(line: 2123, column: 111, scope: !1862)
!1875 = !DILocation(line: 2123, column: 199, scope: !1852)
!1876 = !DILocation(line: 2123, column: 199, scope: !639)
!1877 = !DILocation(line: 2123, column: 199, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !639, file: !352, discriminator: 5)
!1879 = !DILocation(line: 2124, column: 12, scope: !623)
!1880 = !DILocation(line: 2124, column: 5, scope: !623)
!1881 = !DILocation(line: 2125, column: 1, scope: !623)
!1882 = !DILocation(line: 2135, column: 18, scope: !648)
!1883 = !DILocation(line: 2135, column: 34, scope: !648)
!1884 = !DILocation(line: 2137, column: 5, scope: !648)
!1885 = !DILocation(line: 2137, column: 15, scope: !648)
!1886 = !DILocation(line: 2137, column: 26, scope: !648)
!1887 = !DILocation(line: 2137, column: 32, scope: !648)
!1888 = !DILocation(line: 2137, column: 43, scope: !648)
!1889 = !DILocation(line: 2139, column: 28, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !648, file: !352, line: 2139, column: 9)
!1891 = !DILocation(line: 2139, column: 10, scope: !1890)
!1892 = !DILocation(line: 2139, column: 9, scope: !648)
!1893 = !DILocation(line: 2140, column: 9, scope: !1890)
!1894 = !DILocation(line: 2142, column: 29, scope: !648)
!1895 = !DILocation(line: 2142, column: 16, scope: !648)
!1896 = !DILocation(line: 2142, column: 14, scope: !648)
!1897 = !DILocation(line: 2143, column: 9, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !648, file: !352, line: 2143, column: 9)
!1899 = !DILocation(line: 2143, column: 18, scope: !1898)
!1900 = !DILocation(line: 2143, column: 9, scope: !648)
!1901 = !DILocation(line: 2144, column: 9, scope: !1898)
!1902 = !DILocation(line: 2145, column: 23, scope: !648)
!1903 = !DILocation(line: 2145, column: 33, scope: !648)
!1904 = !DILocation(line: 2145, column: 14, scope: !648)
!1905 = !DILocation(line: 2145, column: 12, scope: !648)
!1906 = !DILocation(line: 2146, column: 5, scope: !648)
!1907 = !DILocation(line: 2146, column: 10, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !657, file: !352, discriminator: 1)
!1909 = !DILocation(line: 2146, column: 20, scope: !657)
!1910 = !DILocation(line: 2146, column: 50, scope: !657)
!1911 = !DILocation(line: 2146, column: 69, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !657, file: !352, line: 2146, column: 66)
!1913 = !DILocation(line: 2146, column: 86, scope: !1912)
!1914 = !DILocation(line: 2146, column: 66, scope: !1912)
!1915 = !DILocation(line: 2146, column: 96, scope: !1912)
!1916 = !DILocation(line: 2146, column: 66, scope: !657)
!1917 = !DILocation(line: 2146, column: 66, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !657, file: !352, discriminator: 2)
!1919 = !DILocation(line: 2146, column: 127, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1912, file: !352, discriminator: 3)
!1921 = !DILocation(line: 2146, column: 145, scope: !1912)
!1922 = !DILocation(line: 2146, column: 155, scope: !1912)
!1923 = !DILocation(line: 2146, column: 180, scope: !1912)
!1924 = !DILocation(line: 2146, column: 111, scope: !1912)
!1925 = !DILocation(line: 2146, column: 199, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !648, file: !352, discriminator: 4)
!1927 = !DILocation(line: 2146, column: 199, scope: !657)
!1928 = !DILocation(line: 2146, column: 199, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !657, file: !352, discriminator: 5)
!1930 = !DILocation(line: 2147, column: 12, scope: !648)
!1931 = !DILocation(line: 2147, column: 5, scope: !648)
!1932 = !DILocation(line: 2148, column: 1, scope: !648)
!1933 = !DILocation(line: 2158, column: 23, scope: !665)
!1934 = !DILocation(line: 2158, column: 39, scope: !665)
!1935 = !DILocation(line: 2158, column: 55, scope: !665)
!1936 = !DILocation(line: 2160, column: 5, scope: !665)
!1937 = !DILocation(line: 2160, column: 15, scope: !665)
!1938 = !DILocation(line: 2160, column: 26, scope: !665)
!1939 = !DILocation(line: 2160, column: 32, scope: !665)
!1940 = !DILocation(line: 2160, column: 42, scope: !665)
!1941 = !DILocation(line: 2161, column: 5, scope: !665)
!1942 = !DILocation(line: 2161, column: 16, scope: !665)
!1943 = !DILocation(line: 2161, column: 37, scope: !665)
!1944 = !DILocation(line: 2161, column: 22, scope: !665)
!1945 = !DILocation(line: 2161, column: 45, scope: !665)
!1946 = !DILocation(line: 2163, column: 9, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !665, file: !352, line: 2163, column: 9)
!1948 = !DILocation(line: 2163, column: 11, scope: !1947)
!1949 = !DILocation(line: 2163, column: 9, scope: !665)
!1950 = !DILocation(line: 2164, column: 25, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !352, line: 2163, column: 17)
!1952 = !DILocation(line: 2164, column: 9, scope: !1951)
!1953 = !DILocation(line: 2165, column: 9, scope: !1951)
!1954 = !DILocation(line: 2167, column: 31, scope: !665)
!1955 = !DILocation(line: 2167, column: 13, scope: !665)
!1956 = !DILocation(line: 2167, column: 39, scope: !665)
!1957 = !DILocation(line: 2167, column: 12, scope: !665)
!1958 = !DILocation(line: 2167, column: 9, scope: !665)
!1959 = !DILocation(line: 2168, column: 32, scope: !665)
!1960 = !DILocation(line: 2168, column: 41, scope: !665)
!1961 = !DILocation(line: 2168, column: 15, scope: !665)
!1962 = !DILocation(line: 2168, column: 13, scope: !665)
!1963 = !DILocation(line: 2169, column: 9, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !665, file: !352, line: 2169, column: 9)
!1965 = !DILocation(line: 2169, column: 17, scope: !1964)
!1966 = !DILocation(line: 2169, column: 9, scope: !665)
!1967 = !DILocation(line: 2170, column: 9, scope: !1964)
!1968 = !DILocation(line: 2172, column: 29, scope: !665)
!1969 = !DILocation(line: 2172, column: 16, scope: !665)
!1970 = !DILocation(line: 2172, column: 14, scope: !665)
!1971 = !DILocation(line: 2173, column: 9, scope: !678)
!1972 = !DILocation(line: 2173, column: 18, scope: !678)
!1973 = !DILocation(line: 2173, column: 9, scope: !665)
!1974 = !DILocation(line: 2174, column: 9, scope: !677)
!1975 = !DILocation(line: 2174, column: 14, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !676, file: !352, discriminator: 1)
!1977 = !DILocation(line: 2174, column: 24, scope: !676)
!1978 = !DILocation(line: 2174, column: 54, scope: !676)
!1979 = !DILocation(line: 2174, column: 72, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !676, file: !352, line: 2174, column: 69)
!1981 = !DILocation(line: 2174, column: 89, scope: !1980)
!1982 = !DILocation(line: 2174, column: 69, scope: !1980)
!1983 = !DILocation(line: 2174, column: 99, scope: !1980)
!1984 = !DILocation(line: 2174, column: 69, scope: !676)
!1985 = !DILocation(line: 2174, column: 69, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !676, file: !352, discriminator: 2)
!1987 = !DILocation(line: 2174, column: 130, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1980, file: !352, discriminator: 3)
!1989 = !DILocation(line: 2174, column: 148, scope: !1980)
!1990 = !DILocation(line: 2174, column: 158, scope: !1980)
!1991 = !DILocation(line: 2174, column: 183, scope: !1980)
!1992 = !DILocation(line: 2174, column: 114, scope: !1980)
!1993 = !DILocation(line: 2174, column: 202, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !677, file: !352, discriminator: 4)
!1995 = !DILocation(line: 2174, column: 202, scope: !676)
!1996 = !DILocation(line: 2174, column: 202, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !676, file: !352, discriminator: 5)
!1998 = !DILocation(line: 2175, column: 9, scope: !677)
!1999 = !DILocation(line: 2177, column: 28, scope: !665)
!2000 = !DILocation(line: 2177, column: 38, scope: !665)
!2001 = !DILocation(line: 2177, column: 47, scope: !665)
!2002 = !DILocation(line: 2177, column: 14, scope: !665)
!2003 = !DILocation(line: 2177, column: 12, scope: !665)
!2004 = !DILocation(line: 2178, column: 5, scope: !665)
!2005 = !DILocation(line: 2178, column: 10, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !680, file: !352, discriminator: 1)
!2007 = !DILocation(line: 2178, column: 20, scope: !680)
!2008 = !DILocation(line: 2178, column: 50, scope: !680)
!2009 = !DILocation(line: 2178, column: 68, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !680, file: !352, line: 2178, column: 65)
!2011 = !DILocation(line: 2178, column: 85, scope: !2010)
!2012 = !DILocation(line: 2178, column: 65, scope: !2010)
!2013 = !DILocation(line: 2178, column: 95, scope: !2010)
!2014 = !DILocation(line: 2178, column: 65, scope: !680)
!2015 = !DILocation(line: 2178, column: 65, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !680, file: !352, discriminator: 2)
!2017 = !DILocation(line: 2178, column: 126, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !2010, file: !352, discriminator: 3)
!2019 = !DILocation(line: 2178, column: 144, scope: !2010)
!2020 = !DILocation(line: 2178, column: 154, scope: !2010)
!2021 = !DILocation(line: 2178, column: 179, scope: !2010)
!2022 = !DILocation(line: 2178, column: 110, scope: !2010)
!2023 = !DILocation(line: 2178, column: 198, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !665, file: !352, discriminator: 4)
!2025 = !DILocation(line: 2178, column: 198, scope: !680)
!2026 = !DILocation(line: 2178, column: 198, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !680, file: !352, discriminator: 5)
!2028 = !DILocation(line: 2179, column: 5, scope: !665)
!2029 = !DILocation(line: 2179, column: 10, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !682, file: !352, discriminator: 1)
!2031 = !DILocation(line: 2179, column: 20, scope: !682)
!2032 = !DILocation(line: 2179, column: 50, scope: !682)
!2033 = !DILocation(line: 2179, column: 69, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !682, file: !352, line: 2179, column: 66)
!2035 = !DILocation(line: 2179, column: 86, scope: !2034)
!2036 = !DILocation(line: 2179, column: 66, scope: !2034)
!2037 = !DILocation(line: 2179, column: 96, scope: !2034)
!2038 = !DILocation(line: 2179, column: 66, scope: !682)
!2039 = !DILocation(line: 2179, column: 66, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !682, file: !352, discriminator: 2)
!2041 = !DILocation(line: 2179, column: 127, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2034, file: !352, discriminator: 3)
!2043 = !DILocation(line: 2179, column: 145, scope: !2034)
!2044 = !DILocation(line: 2179, column: 155, scope: !2034)
!2045 = !DILocation(line: 2179, column: 180, scope: !2034)
!2046 = !DILocation(line: 2179, column: 111, scope: !2034)
!2047 = !DILocation(line: 2179, column: 199, scope: !2024)
!2048 = !DILocation(line: 2179, column: 199, scope: !682)
!2049 = !DILocation(line: 2179, column: 199, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !682, file: !352, discriminator: 5)
!2051 = !DILocation(line: 2180, column: 12, scope: !665)
!2052 = !DILocation(line: 2180, column: 5, scope: !665)
!2053 = !DILocation(line: 2181, column: 1, scope: !665)
!2054 = !DILocation(line: 2007, column: 24, scope: !472)
!2055 = !DILocation(line: 2009, column: 5, scope: !472)
!2056 = !DILocation(line: 2009, column: 16, scope: !472)
!2057 = !DILocation(line: 2011, column: 9, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !472, file: !352, line: 2011, column: 9)
!2059 = !DILocation(line: 2011, column: 15, scope: !2058)
!2060 = !DILocation(line: 2011, column: 9, scope: !472)
!2061 = !DILocation(line: 2012, column: 17, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !352, line: 2011, column: 30)
!2063 = !DILocation(line: 2012, column: 15, scope: !2062)
!2064 = !DILocation(line: 2013, column: 13, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2062, file: !352, line: 2013, column: 13)
!2066 = !DILocation(line: 2013, column: 19, scope: !2065)
!2067 = !DILocation(line: 2013, column: 13, scope: !2062)
!2068 = !DILocation(line: 2014, column: 13, scope: !2065)
!2069 = !DILocation(line: 2015, column: 5, scope: !2062)
!2070 = !DILocation(line: 2017, column: 31, scope: !472)
!2071 = !DILocation(line: 2017, column: 38, scope: !472)
!2072 = !DILocation(line: 2017, column: 16, scope: !472)
!2073 = !DILocation(line: 2017, column: 14, scope: !472)
!2074 = !DILocation(line: 2018, column: 9, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !472, file: !352, line: 2018, column: 9)
!2076 = !DILocation(line: 2018, column: 18, scope: !2075)
!2077 = !DILocation(line: 2018, column: 9, scope: !472)
!2078 = !DILocation(line: 2019, column: 25, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !352, line: 2018, column: 33)
!2080 = !DILocation(line: 2019, column: 37, scope: !2079)
!2081 = !DILocation(line: 2019, column: 46, scope: !2079)
!2082 = !DILocation(line: 2020, column: 16, scope: !2079)
!2083 = !DILocation(line: 2020, column: 9, scope: !2079)
!2084 = !DILocation(line: 2023, column: 74, scope: !472)
!2085 = !DILocation(line: 2023, column: 16, scope: !472)
!2086 = !DILocation(line: 2023, column: 14, scope: !472)
!2087 = !DILocation(line: 2024, column: 9, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !472, file: !352, line: 2024, column: 9)
!2089 = !DILocation(line: 2024, column: 18, scope: !2088)
!2090 = !DILocation(line: 2024, column: 9, scope: !472)
!2091 = !DILocation(line: 2025, column: 25, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !352, line: 2025, column: 13)
!2093 = distinct !DILexicalBlock(scope: !2088, file: !352, line: 2024, column: 33)
!2094 = !DILocation(line: 2025, column: 13, scope: !2092)
!2095 = !DILocation(line: 2025, column: 32, scope: !2092)
!2096 = !DILocation(line: 2025, column: 13, scope: !2093)
!2097 = !DILocation(line: 2026, column: 26, scope: !2092)
!2098 = !DILocation(line: 2026, column: 13, scope: !2092)
!2099 = !DILocation(line: 2028, column: 28, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2093, file: !352, line: 2028, column: 13)
!2101 = !DILocation(line: 2028, column: 35, scope: !2100)
!2102 = !DILocation(line: 2028, column: 40, scope: !2100)
!2103 = !DILocation(line: 2028, column: 13, scope: !2100)
!2104 = !DILocation(line: 2028, column: 50, scope: !2100)
!2105 = !DILocation(line: 2028, column: 13, scope: !2093)
!2106 = !DILocation(line: 2029, column: 13, scope: !2100)
!2107 = !DILocation(line: 2030, column: 5, scope: !2093)
!2108 = !DILocation(line: 2031, column: 12, scope: !472)
!2109 = !DILocation(line: 2031, column: 5, scope: !472)
!2110 = !DILocation(line: 2032, column: 1, scope: !472)
!2111 = !DILocation(line: 1668, column: 25, scope: !486)
!2112 = !DILocation(line: 1668, column: 40, scope: !486)
!2113 = !DILocation(line: 1670, column: 5, scope: !486)
!2114 = !DILocation(line: 1670, column: 21, scope: !486)
!2115 = !DILocation(line: 1670, column: 45, scope: !486)
!2116 = !DILocation(line: 1670, column: 26, scope: !486)
!2117 = !DILocation(line: 1671, column: 5, scope: !486)
!2118 = !DILocation(line: 1671, column: 23, scope: !486)
!2119 = !DILocation(line: 1676, column: 9, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !486, file: !352, line: 1676, column: 9)
!2121 = !DILocation(line: 1676, column: 13, scope: !2120)
!2122 = !DILocation(line: 1676, column: 20, scope: !2120)
!2123 = !DILocation(line: 1676, column: 9, scope: !486)
!2124 = !DILocation(line: 1677, column: 22, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2120, file: !352, line: 1676, column: 26)
!2126 = !DILocation(line: 1677, column: 9, scope: !2125)
!2127 = !DILocation(line: 1679, column: 9, scope: !2125)
!2128 = !DILocation(line: 1682, column: 33, scope: !486)
!2129 = !DILocation(line: 1682, column: 12, scope: !486)
!2130 = !DILocation(line: 1682, column: 10, scope: !486)
!2131 = !DILocation(line: 1683, column: 9, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !486, file: !352, line: 1683, column: 9)
!2133 = !DILocation(line: 1683, column: 14, scope: !2132)
!2134 = !DILocation(line: 1683, column: 9, scope: !486)
!2135 = !DILocation(line: 1684, column: 9, scope: !2132)
!2136 = !DILocation(line: 1686, column: 28, scope: !495)
!2137 = !DILocation(line: 1686, column: 36, scope: !495)
!2138 = !DILocation(line: 1686, column: 42, scope: !495)
!2139 = !DILocation(line: 1686, column: 9, scope: !495)
!2140 = !DILocation(line: 1686, column: 50, scope: !495)
!2141 = !DILocation(line: 1686, column: 9, scope: !486)
!2142 = !DILocation(line: 1687, column: 9, scope: !494)
!2143 = !DILocation(line: 1687, column: 14, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !493, file: !352, discriminator: 1)
!2145 = !DILocation(line: 1687, column: 24, scope: !493)
!2146 = !DILocation(line: 1687, column: 54, scope: !493)
!2147 = !DILocation(line: 1687, column: 41, scope: !493)
!2148 = !DILocation(line: 1687, column: 69, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !493, file: !352, line: 1687, column: 66)
!2150 = !DILocation(line: 1687, column: 86, scope: !2149)
!2151 = !DILocation(line: 1687, column: 66, scope: !2149)
!2152 = !DILocation(line: 1687, column: 96, scope: !2149)
!2153 = !DILocation(line: 1687, column: 66, scope: !493)
!2154 = !DILocation(line: 1687, column: 66, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !493, file: !352, discriminator: 2)
!2156 = !DILocation(line: 1687, column: 127, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2149, file: !352, discriminator: 3)
!2158 = !DILocation(line: 1687, column: 145, scope: !2149)
!2159 = !DILocation(line: 1687, column: 155, scope: !2149)
!2160 = !DILocation(line: 1687, column: 180, scope: !2149)
!2161 = !DILocation(line: 1687, column: 111, scope: !2149)
!2162 = !DILocation(line: 1687, column: 199, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !494, file: !352, discriminator: 4)
!2164 = !DILocation(line: 1687, column: 199, scope: !493)
!2165 = !DILocation(line: 1687, column: 199, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !493, file: !352, discriminator: 5)
!2167 = !DILocation(line: 1688, column: 9, scope: !494)
!2168 = !DILocation(line: 1690, column: 9, scope: !499)
!2169 = !DILocation(line: 1690, column: 15, scope: !499)
!2170 = !DILocation(line: 1690, column: 19, scope: !499)
!2171 = !{!2172, !1379, i64 40}
!2172 = !{!"", !1378, i64 0, !1368, i64 16, !2173, i64 24, !1379, i64 104}
!2173 = !{!"bufferinfo", !1368, i64 0, !1368, i64 8, !1379, i64 16, !1379, i64 24, !1528, i64 32, !1528, i64 36, !1368, i64 40, !1368, i64 48, !1368, i64 56, !1368, i64 64, !1368, i64 72}
!2174 = !DILocation(line: 1690, column: 25, scope: !499)
!2175 = !DILocation(line: 1690, column: 29, scope: !499)
!2176 = !DILocation(line: 1690, column: 23, scope: !499)
!2177 = !DILocation(line: 1690, column: 36, scope: !499)
!2178 = !DILocation(line: 1690, column: 9, scope: !486)
!2179 = !DILocation(line: 1691, column: 22, scope: !498)
!2180 = !DILocation(line: 1694, column: 22, scope: !498)
!2181 = !DILocation(line: 1694, column: 26, scope: !498)
!2182 = !DILocation(line: 1691, column: 9, scope: !498)
!2183 = !DILocation(line: 1695, column: 9, scope: !498)
!2184 = !DILocation(line: 1695, column: 14, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !497, file: !352, discriminator: 1)
!2186 = !DILocation(line: 1695, column: 24, scope: !497)
!2187 = !DILocation(line: 1695, column: 54, scope: !497)
!2188 = !DILocation(line: 1695, column: 41, scope: !497)
!2189 = !DILocation(line: 1695, column: 69, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !497, file: !352, line: 1695, column: 66)
!2191 = !DILocation(line: 1695, column: 86, scope: !2190)
!2192 = !DILocation(line: 1695, column: 66, scope: !2190)
!2193 = !DILocation(line: 1695, column: 96, scope: !2190)
!2194 = !DILocation(line: 1695, column: 66, scope: !497)
!2195 = !DILocation(line: 1695, column: 66, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !497, file: !352, discriminator: 2)
!2197 = !DILocation(line: 1695, column: 127, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2190, file: !352, discriminator: 3)
!2199 = !DILocation(line: 1695, column: 145, scope: !2190)
!2200 = !DILocation(line: 1695, column: 155, scope: !2190)
!2201 = !DILocation(line: 1695, column: 180, scope: !2190)
!2202 = !DILocation(line: 1695, column: 111, scope: !2190)
!2203 = !DILocation(line: 1695, column: 199, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !498, file: !352, discriminator: 4)
!2205 = !DILocation(line: 1695, column: 199, scope: !497)
!2206 = !DILocation(line: 1695, column: 199, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !497, file: !352, discriminator: 5)
!2208 = !DILocation(line: 1696, column: 9, scope: !498)
!2209 = !DILocation(line: 1698, column: 21, scope: !486)
!2210 = !DILocation(line: 1698, column: 8, scope: !486)
!2211 = !DILocation(line: 1698, column: 27, scope: !486)
!2212 = !DILocation(line: 1698, column: 36, scope: !486)
!2213 = !DILocation(line: 1699, column: 16, scope: !486)
!2214 = !DILocation(line: 1699, column: 5, scope: !486)
!2215 = !DILocation(line: 1699, column: 11, scope: !486)
!2216 = !DILocation(line: 1699, column: 14, scope: !486)
!2217 = !{!2172, !1368, i64 16}
!2218 = !DILocation(line: 1700, column: 5, scope: !486)
!2219 = !DILocation(line: 1700, column: 11, scope: !486)
!2220 = !DILocation(line: 1700, column: 17, scope: !486)
!2221 = !{!2172, !1379, i64 104}
!2222 = !DILocation(line: 1701, column: 25, scope: !486)
!2223 = !DILocation(line: 1701, column: 12, scope: !486)
!2224 = !DILocation(line: 1701, column: 5, scope: !486)
!2225 = !DILocation(line: 1702, column: 1, scope: !486)
!2226 = !DILocation(line: 1579, column: 38, scope: !500)
!2227 = !DILocation(line: 1581, column: 5, scope: !500)
!2228 = !DILocation(line: 1581, column: 10, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !506, file: !352, discriminator: 1)
!2230 = !DILocation(line: 1581, column: 20, scope: !506)
!2231 = !DILocation(line: 1581, column: 51, scope: !506)
!2232 = !DILocation(line: 1581, column: 57, scope: !506)
!2233 = !DILocation(line: 1581, column: 38, scope: !506)
!2234 = !DILocation(line: 1581, column: 66, scope: !509)
!2235 = !DILocation(line: 1581, column: 82, scope: !509)
!2236 = !DILocation(line: 1581, column: 66, scope: !506)
!2237 = !DILocation(line: 1581, column: 97, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !509, file: !352, discriminator: 2)
!2239 = !DILocation(line: 1581, column: 102, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !508, file: !352, discriminator: 4)
!2241 = !DILocation(line: 1581, column: 112, scope: !508)
!2242 = !DILocation(line: 1581, column: 142, scope: !508)
!2243 = !DILocation(line: 1581, column: 168, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !508, file: !352, line: 1581, column: 165)
!2245 = !DILocation(line: 1581, column: 185, scope: !2244)
!2246 = !DILocation(line: 1581, column: 165, scope: !2244)
!2247 = !DILocation(line: 1581, column: 195, scope: !2244)
!2248 = !DILocation(line: 1581, column: 165, scope: !508)
!2249 = !DILocation(line: 1581, column: 165, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !508, file: !352, discriminator: 5)
!2251 = !DILocation(line: 1581, column: 226, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2244, file: !352, discriminator: 6)
!2253 = !DILocation(line: 1581, column: 244, scope: !2244)
!2254 = !DILocation(line: 1581, column: 254, scope: !2244)
!2255 = !DILocation(line: 1581, column: 279, scope: !2244)
!2256 = !DILocation(line: 1581, column: 210, scope: !2244)
!2257 = !DILocation(line: 1581, column: 298, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !509, file: !352, discriminator: 7)
!2259 = !DILocation(line: 1581, column: 298, scope: !508)
!2260 = !DILocation(line: 1581, column: 298, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !508, file: !352, discriminator: 8)
!2262 = !DILocation(line: 1581, column: 298, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !508, file: !352, discriminator: 9)
!2264 = !DILocation(line: 1581, column: 311, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2266, file: !352, discriminator: 10)
!2266 = !DILexicalBlockFile(scope: !500, file: !352, discriminator: 3)
!2267 = !DILocation(line: 1581, column: 311, scope: !506)
!2268 = !DILocation(line: 1582, column: 23, scope: !500)
!2269 = !DILocation(line: 1582, column: 29, scope: !500)
!2270 = !DILocation(line: 1582, column: 5, scope: !500)
!2271 = !DILocation(line: 1583, column: 21, scope: !500)
!2272 = !DILocation(line: 1583, column: 5, scope: !500)
!2273 = !DILocation(line: 1584, column: 1, scope: !500)
!2274 = !DILocation(line: 1587, column: 39, scope: !510)
!2275 = !DILocation(line: 1587, column: 55, scope: !510)
!2276 = !DILocation(line: 1587, column: 68, scope: !510)
!2277 = !DILocation(line: 1589, column: 5, scope: !510)
!2278 = !DILocation(line: 1589, column: 14, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !519, file: !352, discriminator: 1)
!2280 = !DILocation(line: 1589, column: 20, scope: !519)
!2281 = !DILocation(line: 1589, column: 14, scope: !519)
!2282 = !DILocation(line: 1589, column: 14, scope: !520)
!2283 = !DILocation(line: 1589, column: 26, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !518, file: !352, discriminator: 2)
!2285 = !DILocation(line: 1589, column: 30, scope: !518)
!2286 = !DILocation(line: 1589, column: 37, scope: !518)
!2287 = !DILocation(line: 1589, column: 56, scope: !518)
!2288 = !DILocation(line: 1589, column: 62, scope: !518)
!2289 = !DILocation(line: 1589, column: 43, scope: !518)
!2290 = !DILocation(line: 1589, column: 67, scope: !518)
!2291 = !{!1528, !1528, i64 0}
!2292 = !DILocation(line: 1589, column: 77, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !518, file: !352, line: 1589, column: 77)
!2294 = !DILocation(line: 1589, column: 77, scope: !518)
!2295 = !DILocation(line: 1589, column: 90, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2293, file: !352, discriminator: 4)
!2297 = !DILocation(line: 1589, column: 83, scope: !2293)
!2298 = !DILocation(line: 1589, column: 96, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !519, file: !352, discriminator: 5)
!2300 = !DILocation(line: 1589, column: 96, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2302, file: !352, discriminator: 7)
!2302 = !DILexicalBlockFile(scope: !519, file: !352, discriminator: 6)
!2303 = !DILocation(line: 1589, column: 96, scope: !518)
!2304 = !DILocation(line: 1589, column: 98, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2306, file: !352, discriminator: 8)
!2306 = !DILexicalBlockFile(scope: !520, file: !352, discriminator: 3)
!2307 = !DILocation(line: 1590, column: 5, scope: !510)
!2308 = !DILocation(line: 1590, column: 14, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !523, file: !352, discriminator: 1)
!2310 = !DILocation(line: 1590, column: 20, scope: !523)
!2311 = !DILocation(line: 1590, column: 24, scope: !523)
!2312 = !{!2172, !1368, i64 32}
!2313 = !DILocation(line: 1590, column: 14, scope: !523)
!2314 = !DILocation(line: 1590, column: 14, scope: !524)
!2315 = !DILocation(line: 1590, column: 31, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !522, file: !352, discriminator: 2)
!2317 = !DILocation(line: 1590, column: 35, scope: !522)
!2318 = !DILocation(line: 1590, column: 42, scope: !522)
!2319 = !DILocation(line: 1590, column: 61, scope: !522)
!2320 = !DILocation(line: 1590, column: 67, scope: !522)
!2321 = !DILocation(line: 1590, column: 71, scope: !522)
!2322 = !DILocation(line: 1590, column: 77, scope: !522)
!2323 = !DILocation(line: 1590, column: 87, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !522, file: !352, line: 1590, column: 87)
!2325 = !DILocation(line: 1590, column: 87, scope: !522)
!2326 = !DILocation(line: 1590, column: 100, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2324, file: !352, discriminator: 4)
!2328 = !DILocation(line: 1590, column: 93, scope: !2324)
!2329 = !DILocation(line: 1590, column: 106, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !523, file: !352, discriminator: 5)
!2331 = !DILocation(line: 1590, column: 106, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2333, file: !352, discriminator: 7)
!2333 = !DILexicalBlockFile(scope: !523, file: !352, discriminator: 6)
!2334 = !DILocation(line: 1590, column: 106, scope: !522)
!2335 = !DILocation(line: 1590, column: 108, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !2337, file: !352, discriminator: 8)
!2337 = !DILexicalBlockFile(scope: !524, file: !352, discriminator: 3)
!2338 = !DILocation(line: 1591, column: 5, scope: !510)
!2339 = !DILocation(line: 1592, column: 1, scope: !510)
!2340 = !DILocation(line: 1611, column: 39, scope: !525)
!2341 = !DILocation(line: 1613, column: 5, scope: !525)
!2342 = !DILocation(line: 1613, column: 15, scope: !525)
!2343 = !DILocation(line: 1614, column: 9, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !525, file: !352, line: 1614, column: 9)
!2345 = !DILocation(line: 1614, column: 15, scope: !2344)
!2346 = !DILocation(line: 1614, column: 18, scope: !2344)
!2347 = !DILocation(line: 1614, column: 9, scope: !525)
!2348 = !DILocation(line: 1615, column: 9, scope: !2344)
!2349 = !DILocation(line: 1616, column: 9, scope: !534)
!2350 = !DILocation(line: 1616, column: 15, scope: !534)
!2351 = !DILocation(line: 1616, column: 24, scope: !534)
!2352 = !DILocation(line: 1616, column: 30, scope: !534)
!2353 = !DILocation(line: 1616, column: 34, scope: !534)
!2354 = !DILocation(line: 1616, column: 21, scope: !534)
!2355 = !DILocation(line: 1616, column: 9, scope: !525)
!2356 = !DILocation(line: 1618, column: 9, scope: !533)
!2357 = !DILocation(line: 1618, column: 14, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !532, file: !352, discriminator: 1)
!2359 = !DILocation(line: 1618, column: 24, scope: !532)
!2360 = !DILocation(line: 1618, column: 47, scope: !532)
!2361 = !DILocation(line: 1618, column: 53, scope: !532)
!2362 = !DILocation(line: 1618, column: 34, scope: !532)
!2363 = !DILocation(line: 1618, column: 62, scope: !538)
!2364 = !DILocation(line: 1618, column: 70, scope: !538)
!2365 = !DILocation(line: 1618, column: 62, scope: !532)
!2366 = !DILocation(line: 1618, column: 88, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !537, file: !352, discriminator: 2)
!2368 = !DILocation(line: 1618, column: 94, scope: !537)
!2369 = !DILocation(line: 1618, column: 98, scope: !537)
!2370 = !DILocation(line: 1618, column: 112, scope: !537)
!2371 = !DILocation(line: 1618, column: 117, scope: !2372)
!2372 = !DILexicalBlockFile(scope: !536, file: !352, discriminator: 4)
!2373 = !DILocation(line: 1618, column: 127, scope: !536)
!2374 = !DILocation(line: 1618, column: 157, scope: !536)
!2375 = !DILocation(line: 1618, column: 175, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !536, file: !352, line: 1618, column: 172)
!2377 = !DILocation(line: 1618, column: 192, scope: !2376)
!2378 = !DILocation(line: 1618, column: 172, scope: !2376)
!2379 = !DILocation(line: 1618, column: 202, scope: !2376)
!2380 = !DILocation(line: 1618, column: 172, scope: !536)
!2381 = !DILocation(line: 1618, column: 172, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !536, file: !352, discriminator: 5)
!2383 = !DILocation(line: 1618, column: 233, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2376, file: !352, discriminator: 6)
!2385 = !DILocation(line: 1618, column: 251, scope: !2376)
!2386 = !DILocation(line: 1618, column: 261, scope: !2376)
!2387 = !DILocation(line: 1618, column: 286, scope: !2376)
!2388 = !DILocation(line: 1618, column: 217, scope: !2376)
!2389 = !DILocation(line: 1618, column: 305, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !537, file: !352, discriminator: 7)
!2391 = !DILocation(line: 1618, column: 305, scope: !536)
!2392 = !DILocation(line: 1618, column: 305, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !536, file: !352, discriminator: 8)
!2394 = !DILocation(line: 1618, column: 318, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !537, file: !352, discriminator: 9)
!2396 = !DILocation(line: 1618, column: 320, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2398, file: !352, discriminator: 10)
!2398 = !DILexicalBlockFile(scope: !533, file: !352, discriminator: 3)
!2399 = !DILocation(line: 1618, column: 320, scope: !532)
!2400 = !DILocation(line: 1618, column: 320, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !532, file: !352, discriminator: 11)
!2402 = !DILocation(line: 1619, column: 27, scope: !533)
!2403 = !DILocation(line: 1619, column: 33, scope: !533)
!2404 = !DILocation(line: 1619, column: 9, scope: !533)
!2405 = !DILocation(line: 1620, column: 9, scope: !533)
!2406 = !DILocation(line: 1623, column: 32, scope: !525)
!2407 = !DILocation(line: 1623, column: 38, scope: !525)
!2408 = !DILocation(line: 1624, column: 40, scope: !525)
!2409 = !DILocation(line: 1624, column: 46, scope: !525)
!2410 = !DILocation(line: 1624, column: 50, scope: !525)
!2411 = !{!2172, !1368, i64 24}
!2412 = !DILocation(line: 1624, column: 56, scope: !525)
!2413 = !DILocation(line: 1624, column: 62, scope: !525)
!2414 = !DILocation(line: 1624, column: 54, scope: !525)
!2415 = !DILocation(line: 1623, column: 14, scope: !525)
!2416 = !DILocation(line: 1623, column: 12, scope: !525)
!2417 = !DILocation(line: 1625, column: 20, scope: !525)
!2418 = !DILocation(line: 1625, column: 26, scope: !525)
!2419 = !DILocation(line: 1625, column: 30, scope: !525)
!2420 = !DILocation(line: 1625, column: 5, scope: !525)
!2421 = !DILocation(line: 1625, column: 11, scope: !525)
!2422 = !DILocation(line: 1625, column: 17, scope: !525)
!2423 = !DILocation(line: 1626, column: 12, scope: !525)
!2424 = !DILocation(line: 1626, column: 5, scope: !525)
!2425 = !DILocation(line: 1627, column: 1, scope: !525)
!2426 = !DILocation(line: 1460, column: 35, scope: !539)
!2427 = !DILocation(line: 1460, column: 49, scope: !539)
!2428 = !DILocation(line: 1461, column: 5, scope: !539)
!2429 = !DILocation(line: 1461, column: 17, scope: !539)
!2430 = !DILocation(line: 1462, column: 5, scope: !539)
!2431 = !DILocation(line: 1462, column: 16, scope: !539)
!2432 = !DILocation(line: 1463, column: 5, scope: !539)
!2433 = !DILocation(line: 1463, column: 15, scope: !539)
!2434 = !DILocation(line: 1463, column: 36, scope: !539)
!2435 = !DILocation(line: 1463, column: 44, scope: !539)
!2436 = !{!1561, !1379, i64 24}
!2437 = !DILocation(line: 1463, column: 24, scope: !539)
!2438 = !DILocation(line: 1464, column: 9, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !539, file: !352, line: 1464, column: 9)
!2440 = !DILocation(line: 1464, column: 16, scope: !2439)
!2441 = !DILocation(line: 1464, column: 9, scope: !539)
!2442 = !DILocation(line: 1465, column: 9, scope: !2439)
!2443 = !DILocation(line: 1467, column: 17, scope: !551)
!2444 = !DILocation(line: 1467, column: 25, scope: !551)
!2445 = !{!1561, !1368, i64 32}
!2446 = !DILocation(line: 1467, column: 15, scope: !551)
!2447 = !DILocation(line: 1467, column: 10, scope: !551)
!2448 = !DILocation(line: 1467, column: 34, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2450, file: !352, discriminator: 2)
!2450 = !DILexicalBlockFile(scope: !550, file: !352, discriminator: 1)
!2451 = !DILocation(line: 1467, column: 40, scope: !550)
!2452 = !{!2453, !1368, i64 0}
!2453 = !{!"_formatcode", !1368, i64 0, !1379, i64 8, !1379, i64 16, !1379, i64 24}
!2454 = !DILocation(line: 1467, column: 47, scope: !550)
!2455 = !DILocation(line: 1467, column: 5, scope: !551)
!2456 = !DILocation(line: 1468, column: 9, scope: !549)
!2457 = !DILocation(line: 1468, column: 26, scope: !549)
!2458 = !DILocation(line: 1468, column: 30, scope: !549)
!2459 = !DILocation(line: 1468, column: 36, scope: !549)
!2460 = !DILocation(line: 1469, column: 9, scope: !549)
!2461 = !DILocation(line: 1469, column: 21, scope: !549)
!2462 = !DILocation(line: 1469, column: 27, scope: !549)
!2463 = !DILocation(line: 1469, column: 39, scope: !549)
!2464 = !DILocation(line: 1469, column: 45, scope: !549)
!2465 = !{!2453, !1379, i64 8}
!2466 = !DILocation(line: 1469, column: 37, scope: !549)
!2467 = !DILocation(line: 1470, column: 9, scope: !549)
!2468 = !DILocation(line: 1470, column: 20, scope: !549)
!2469 = !DILocation(line: 1470, column: 24, scope: !549)
!2470 = !DILocation(line: 1470, column: 30, scope: !549)
!2471 = !{!2453, !1379, i64 24}
!2472 = !DILocation(line: 1471, column: 9, scope: !549)
!2473 = !DILocation(line: 1471, column: 17, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !2475, file: !352, discriminator: 2)
!2475 = !DILexicalBlockFile(scope: !549, file: !352, discriminator: 1)
!2476 = !DILocation(line: 1472, column: 13, scope: !557)
!2477 = !DILocation(line: 1472, column: 23, scope: !557)
!2478 = !DILocation(line: 1473, column: 17, scope: !561)
!2479 = !DILocation(line: 1473, column: 20, scope: !561)
!2480 = !DILocation(line: 1473, column: 27, scope: !561)
!2481 = !DILocation(line: 1473, column: 17, scope: !557)
!2482 = !DILocation(line: 1474, column: 47, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !561, file: !352, line: 1473, column: 35)
!2484 = !DILocation(line: 1474, column: 52, scope: !2483)
!2485 = !DILocation(line: 1474, column: 58, scope: !2483)
!2486 = !{!2453, !1379, i64 16}
!2487 = !DILocation(line: 1474, column: 21, scope: !2483)
!2488 = !DILocation(line: 1474, column: 19, scope: !2483)
!2489 = !DILocation(line: 1475, column: 13, scope: !2483)
!2490 = !DILocation(line: 1475, column: 24, scope: !560)
!2491 = !DILocation(line: 1475, column: 27, scope: !560)
!2492 = !DILocation(line: 1475, column: 34, scope: !560)
!2493 = !DILocation(line: 1475, column: 24, scope: !561)
!2494 = !DILocation(line: 1476, column: 17, scope: !559)
!2495 = !DILocation(line: 1476, column: 28, scope: !559)
!2496 = !DILocation(line: 1476, column: 49, scope: !559)
!2497 = !DILocation(line: 1476, column: 32, scope: !559)
!2498 = !{!1369, !1369, i64 0}
!2499 = !DILocation(line: 1477, column: 21, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !559, file: !352, line: 1477, column: 21)
!2501 = !DILocation(line: 1477, column: 26, scope: !2500)
!2502 = !DILocation(line: 1477, column: 32, scope: !2500)
!2503 = !DILocation(line: 1477, column: 23, scope: !2500)
!2504 = !DILocation(line: 1477, column: 21, scope: !559)
!2505 = !DILocation(line: 1478, column: 25, scope: !2500)
!2506 = !DILocation(line: 1478, column: 31, scope: !2500)
!2507 = !DILocation(line: 1478, column: 36, scope: !2500)
!2508 = !DILocation(line: 1478, column: 23, scope: !2500)
!2509 = !DILocation(line: 1478, column: 21, scope: !2500)
!2510 = !DILocation(line: 1479, column: 47, scope: !559)
!2511 = !DILocation(line: 1479, column: 51, scope: !559)
!2512 = !DILocation(line: 1479, column: 56, scope: !559)
!2513 = !DILocation(line: 1479, column: 21, scope: !559)
!2514 = !DILocation(line: 1479, column: 19, scope: !559)
!2515 = !DILocation(line: 1480, column: 13, scope: !560)
!2516 = !DILocation(line: 1480, column: 13, scope: !559)
!2517 = !DILocation(line: 1481, column: 21, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !560, file: !352, line: 1480, column: 20)
!2519 = !DILocation(line: 1481, column: 24, scope: !2518)
!2520 = !DILocation(line: 1481, column: 31, scope: !2518)
!2521 = !DILocation(line: 1481, column: 36, scope: !2518)
!2522 = !DILocation(line: 1481, column: 19, scope: !2518)
!2523 = !DILocation(line: 1483, column: 17, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !557, file: !352, line: 1483, column: 17)
!2525 = !DILocation(line: 1483, column: 19, scope: !2524)
!2526 = !DILocation(line: 1483, column: 17, scope: !557)
!2527 = !DILocation(line: 1484, column: 17, scope: !2524)
!2528 = !DILocation(line: 1485, column: 58, scope: !557)
!2529 = !DILocation(line: 1485, column: 52, scope: !557)
!2530 = !DILocation(line: 1485, column: 33, scope: !557)
!2531 = !DILocation(line: 1485, column: 15, scope: !557)
!2532 = !DILocation(line: 1485, column: 43, scope: !557)
!2533 = !DILocation(line: 1485, column: 14, scope: !557)
!2534 = !DILocation(line: 1485, column: 56, scope: !557)
!2535 = !DILocation(line: 1486, column: 20, scope: !557)
!2536 = !DILocation(line: 1486, column: 26, scope: !557)
!2537 = !DILocation(line: 1486, column: 17, scope: !557)
!2538 = !DILocation(line: 1487, column: 9, scope: !549)
!2539 = !DILocation(line: 1487, column: 9, scope: !2475)
!2540 = !DILocation(line: 1488, column: 5, scope: !550)
!2541 = !DILocation(line: 1488, column: 5, scope: !2450)
!2542 = !DILocation(line: 1488, column: 5, scope: !549)
!2543 = !DILocation(line: 1467, column: 66, scope: !550)
!2544 = !DILocation(line: 1467, column: 5, scope: !550)
!2545 = !DILocation(line: 1490, column: 12, scope: !539)
!2546 = !DILocation(line: 1490, column: 5, scope: !539)
!2547 = !DILocation(line: 1492, column: 5, scope: !539)
!2548 = !DILocation(line: 1492, column: 10, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !563, file: !352, discriminator: 1)
!2550 = !DILocation(line: 1492, column: 20, scope: !563)
!2551 = !DILocation(line: 1492, column: 50, scope: !563)
!2552 = !DILocation(line: 1492, column: 67, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !563, file: !352, line: 1492, column: 64)
!2554 = !DILocation(line: 1492, column: 84, scope: !2553)
!2555 = !DILocation(line: 1492, column: 64, scope: !2553)
!2556 = !DILocation(line: 1492, column: 94, scope: !2553)
!2557 = !DILocation(line: 1492, column: 64, scope: !563)
!2558 = !DILocation(line: 1492, column: 64, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !563, file: !352, discriminator: 2)
!2560 = !DILocation(line: 1492, column: 125, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2553, file: !352, discriminator: 3)
!2562 = !DILocation(line: 1492, column: 143, scope: !2553)
!2563 = !DILocation(line: 1492, column: 153, scope: !2553)
!2564 = !DILocation(line: 1492, column: 178, scope: !2553)
!2565 = !DILocation(line: 1492, column: 109, scope: !2553)
!2566 = !DILocation(line: 1492, column: 197, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !539, file: !352, discriminator: 4)
!2568 = !DILocation(line: 1492, column: 197, scope: !563)
!2569 = !DILocation(line: 1492, column: 197, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !563, file: !352, discriminator: 5)
!2571 = !DILocation(line: 1493, column: 5, scope: !539)
!2572 = !DILocation(line: 1494, column: 1, scope: !539)
!2573 = !DILocation(line: 1595, column: 34, scope: !564)
!2574 = !DILocation(line: 1597, column: 5, scope: !564)
!2575 = !DILocation(line: 1597, column: 16, scope: !564)
!2576 = !DILocation(line: 1598, column: 9, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !564, file: !352, line: 1598, column: 9)
!2578 = !DILocation(line: 1598, column: 15, scope: !2577)
!2579 = !DILocation(line: 1598, column: 18, scope: !2577)
!2580 = !DILocation(line: 1598, column: 9, scope: !564)
!2581 = !DILocation(line: 1599, column: 13, scope: !2577)
!2582 = !DILocation(line: 1599, column: 9, scope: !2577)
!2583 = !DILocation(line: 1601, column: 16, scope: !2577)
!2584 = !DILocation(line: 1601, column: 22, scope: !2577)
!2585 = !DILocation(line: 1601, column: 26, scope: !2577)
!2586 = !DILocation(line: 1601, column: 32, scope: !2577)
!2587 = !DILocation(line: 1601, column: 38, scope: !2577)
!2588 = !DILocation(line: 1601, column: 30, scope: !2577)
!2589 = !DILocation(line: 1601, column: 47, scope: !2577)
!2590 = !DILocation(line: 1601, column: 53, scope: !2577)
!2591 = !DILocation(line: 1601, column: 57, scope: !2577)
!2592 = !DILocation(line: 1601, column: 45, scope: !2577)
!2593 = !DILocation(line: 1601, column: 13, scope: !2577)
!2594 = !DILocation(line: 1602, column: 31, scope: !564)
!2595 = !DILocation(line: 1602, column: 12, scope: !564)
!2596 = !DILocation(line: 1603, column: 1, scope: !564)
!2597 = !DILocation(line: 1602, column: 5, scope: !564)
!2598 = !DILocation(line: 1803, column: 18, scope: !585)
!2599 = !DILocation(line: 1803, column: 34, scope: !585)
!2600 = !DILocation(line: 1805, column: 5, scope: !585)
!2601 = !DILocation(line: 1805, column: 21, scope: !585)
!2602 = !DILocation(line: 1806, column: 5, scope: !585)
!2603 = !DILocation(line: 1806, column: 15, scope: !585)
!2604 = !DILocation(line: 1809, column: 32, scope: !585)
!2605 = !DILocation(line: 1809, column: 14, scope: !585)
!2606 = !DILocation(line: 1809, column: 12, scope: !585)
!2607 = !DILocation(line: 1812, column: 26, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !585, file: !352, line: 1812, column: 9)
!2609 = !DILocation(line: 1812, column: 11, scope: !2608)
!2610 = !DILocation(line: 1812, column: 34, scope: !2608)
!2611 = !DILocation(line: 1812, column: 46, scope: !2608)
!2612 = !DILocation(line: 1812, column: 54, scope: !2608)
!2613 = !DILocation(line: 1812, column: 43, scope: !2608)
!2614 = !DILocation(line: 1812, column: 9, scope: !585)
!2615 = !DILocation(line: 1814, column: 22, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2608, file: !352, line: 1813, column: 5)
!2617 = !DILocation(line: 1815, column: 62, scope: !2616)
!2618 = !DILocation(line: 1815, column: 70, scope: !2616)
!2619 = !DILocation(line: 1815, column: 94, scope: !2616)
!2620 = !DILocation(line: 1815, column: 79, scope: !2616)
!2621 = !DILocation(line: 1815, column: 102, scope: !2616)
!2622 = !DILocation(line: 1814, column: 9, scope: !2616)
!2623 = !DILocation(line: 1816, column: 9, scope: !2616)
!2624 = !DILocation(line: 1820, column: 60, scope: !585)
!2625 = !DILocation(line: 1820, column: 68, scope: !585)
!2626 = !DILocation(line: 1820, column: 14, scope: !585)
!2627 = !DILocation(line: 1820, column: 12, scope: !585)
!2628 = !DILocation(line: 1821, column: 9, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !585, file: !352, line: 1821, column: 9)
!2630 = !DILocation(line: 1821, column: 16, scope: !2629)
!2631 = !DILocation(line: 1821, column: 9, scope: !585)
!2632 = !DILocation(line: 1822, column: 9, scope: !2629)
!2633 = !DILocation(line: 1825, column: 26, scope: !594)
!2634 = !DILocation(line: 1825, column: 34, scope: !594)
!2635 = !DILocation(line: 1825, column: 78, scope: !594)
!2636 = !DILocation(line: 1825, column: 60, scope: !594)
!2637 = !DILocation(line: 1825, column: 88, scope: !594)
!2638 = !DILocation(line: 1825, column: 58, scope: !594)
!2639 = !DILocation(line: 1825, column: 10, scope: !594)
!2640 = !DILocation(line: 1825, column: 99, scope: !594)
!2641 = !DILocation(line: 1825, column: 10, scope: !585)
!2642 = !DILocation(line: 1826, column: 9, scope: !593)
!2643 = !DILocation(line: 1826, column: 14, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !592, file: !352, discriminator: 1)
!2645 = !DILocation(line: 1826, column: 24, scope: !592)
!2646 = !DILocation(line: 1826, column: 54, scope: !592)
!2647 = !DILocation(line: 1826, column: 71, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !592, file: !352, line: 1826, column: 68)
!2649 = !DILocation(line: 1826, column: 88, scope: !2648)
!2650 = !DILocation(line: 1826, column: 68, scope: !2648)
!2651 = !DILocation(line: 1826, column: 98, scope: !2648)
!2652 = !DILocation(line: 1826, column: 68, scope: !592)
!2653 = !DILocation(line: 1826, column: 68, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !592, file: !352, discriminator: 2)
!2655 = !DILocation(line: 1826, column: 129, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !2648, file: !352, discriminator: 3)
!2657 = !DILocation(line: 1826, column: 147, scope: !2648)
!2658 = !DILocation(line: 1826, column: 157, scope: !2648)
!2659 = !DILocation(line: 1826, column: 182, scope: !2648)
!2660 = !DILocation(line: 1826, column: 113, scope: !2648)
!2661 = !DILocation(line: 1826, column: 201, scope: !2662)
!2662 = !DILexicalBlockFile(scope: !593, file: !352, discriminator: 4)
!2663 = !DILocation(line: 1826, column: 201, scope: !592)
!2664 = !DILocation(line: 1826, column: 201, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !592, file: !352, discriminator: 5)
!2666 = !DILocation(line: 1827, column: 9, scope: !593)
!2667 = !DILocation(line: 1830, column: 12, scope: !585)
!2668 = !DILocation(line: 1830, column: 5, scope: !585)
!2669 = !DILocation(line: 1831, column: 1, scope: !585)
!2670 = !DILocation(line: 1716, column: 33, scope: !595)
!2671 = !DILocation(line: 1716, column: 51, scope: !595)
!2672 = !DILocation(line: 1716, column: 61, scope: !595)
!2673 = !DILocation(line: 1716, column: 75, scope: !595)
!2674 = !DILocation(line: 1718, column: 5, scope: !595)
!2675 = !DILocation(line: 1718, column: 17, scope: !595)
!2676 = !DILocation(line: 1721, column: 5, scope: !595)
!2677 = !DILocation(line: 1721, column: 16, scope: !595)
!2678 = !DILocation(line: 1723, column: 12, scope: !595)
!2679 = !DILocation(line: 1723, column: 23, scope: !595)
!2680 = !DILocation(line: 1723, column: 31, scope: !595)
!2681 = !DILocation(line: 1723, column: 5, scope: !595)
!2682 = !DILocation(line: 1724, column: 9, scope: !595)
!2683 = !DILocation(line: 1724, column: 7, scope: !595)
!2684 = !DILocation(line: 1725, column: 17, scope: !608)
!2685 = !DILocation(line: 1725, column: 25, scope: !608)
!2686 = !DILocation(line: 1725, column: 15, scope: !608)
!2687 = !DILocation(line: 1725, column: 10, scope: !608)
!2688 = !DILocation(line: 1725, column: 34, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2690, file: !352, discriminator: 2)
!2690 = !DILexicalBlockFile(scope: !607, file: !352, discriminator: 1)
!2691 = !DILocation(line: 1725, column: 40, scope: !607)
!2692 = !DILocation(line: 1725, column: 47, scope: !607)
!2693 = !DILocation(line: 1725, column: 5, scope: !608)
!2694 = !DILocation(line: 1726, column: 9, scope: !606)
!2695 = !DILocation(line: 1726, column: 26, scope: !606)
!2696 = !DILocation(line: 1726, column: 30, scope: !606)
!2697 = !DILocation(line: 1726, column: 36, scope: !606)
!2698 = !DILocation(line: 1727, column: 9, scope: !606)
!2699 = !DILocation(line: 1727, column: 15, scope: !606)
!2700 = !DILocation(line: 1727, column: 21, scope: !606)
!2701 = !DILocation(line: 1727, column: 27, scope: !606)
!2702 = !DILocation(line: 1727, column: 33, scope: !606)
!2703 = !DILocation(line: 1727, column: 25, scope: !606)
!2704 = !DILocation(line: 1728, column: 9, scope: !606)
!2705 = !DILocation(line: 1728, column: 20, scope: !606)
!2706 = !DILocation(line: 1728, column: 24, scope: !606)
!2707 = !DILocation(line: 1728, column: 30, scope: !606)
!2708 = !DILocation(line: 1729, column: 9, scope: !606)
!2709 = !DILocation(line: 1729, column: 17, scope: !2710)
!2710 = !DILexicalBlockFile(scope: !2711, file: !352, discriminator: 2)
!2711 = !DILexicalBlockFile(scope: !606, file: !352, discriminator: 1)
!2712 = !DILocation(line: 1730, column: 13, scope: !612)
!2713 = !DILocation(line: 1730, column: 23, scope: !612)
!2714 = !DILocation(line: 1730, column: 64, scope: !612)
!2715 = !DILocation(line: 1730, column: 47, scope: !612)
!2716 = !DILocation(line: 1730, column: 29, scope: !612)
!2717 = !DILocation(line: 1730, column: 55, scope: !612)
!2718 = !DILocation(line: 1730, column: 28, scope: !612)
!2719 = !DILocation(line: 1731, column: 17, scope: !615)
!2720 = !DILocation(line: 1731, column: 20, scope: !615)
!2721 = !DILocation(line: 1731, column: 27, scope: !615)
!2722 = !DILocation(line: 1731, column: 17, scope: !612)
!2723 = !DILocation(line: 1732, column: 17, scope: !614)
!2724 = !DILocation(line: 1732, column: 28, scope: !614)
!2725 = !DILocation(line: 1733, column: 17, scope: !614)
!2726 = !DILocation(line: 1733, column: 21, scope: !614)
!2727 = !DILocation(line: 1734, column: 17, scope: !614)
!2728 = !DILocation(line: 1734, column: 23, scope: !614)
!2729 = !DILocation(line: 1735, column: 45, scope: !614)
!2730 = !DILocation(line: 1735, column: 50, scope: !614)
!2731 = !DILocation(line: 1735, column: 61, scope: !614)
!2732 = !{!1526, !1379, i64 168}
!2733 = !DILocation(line: 1735, column: 70, scope: !614)
!2734 = !DILocation(line: 1735, column: 87, scope: !614)
!2735 = !DILocation(line: 1735, column: 26, scope: !614)
!2736 = !DILocation(line: 1736, column: 22, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !614, file: !352, line: 1736, column: 21)
!2738 = !DILocation(line: 1736, column: 31, scope: !2737)
!2739 = !DILocation(line: 1736, column: 50, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2737, file: !352, discriminator: 1)
!2741 = !DILocation(line: 1736, column: 55, scope: !2737)
!2742 = !DILocation(line: 1736, column: 64, scope: !2737)
!2743 = !DILocation(line: 1736, column: 87, scope: !2737)
!2744 = !DILocation(line: 1736, column: 121, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2737, file: !352, discriminator: 2)
!2746 = !DILocation(line: 1736, column: 126, scope: !2737)
!2747 = !DILocation(line: 1736, column: 90, scope: !2737)
!2748 = !DILocation(line: 1736, column: 21, scope: !614)
!2749 = !DILocation(line: 1737, column: 37, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2737, file: !352, line: 1736, column: 159)
!2751 = !DILocation(line: 1737, column: 21, scope: !2750)
!2752 = !DILocation(line: 1739, column: 21, scope: !2750)
!2753 = !DILocation(line: 1741, column: 21, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !614, file: !352, line: 1741, column: 21)
!2755 = !DILocation(line: 1741, column: 21, scope: !614)
!2756 = !DILocation(line: 1742, column: 56, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2754, file: !352, line: 1741, column: 31)
!2758 = !DILocation(line: 1742, column: 41, scope: !2757)
!2759 = !DILocation(line: 1742, column: 61, scope: !2757)
!2760 = !DILocation(line: 1742, column: 23, scope: !2757)
!2761 = !DILocation(line: 1743, column: 60, scope: !2757)
!2762 = !DILocation(line: 1743, column: 42, scope: !2757)
!2763 = !DILocation(line: 1743, column: 65, scope: !2757)
!2764 = !DILocation(line: 1743, column: 40, scope: !2757)
!2765 = !DILocation(line: 1743, column: 23, scope: !2757)
!2766 = !DILocation(line: 1744, column: 17, scope: !2757)
!2767 = !DILocation(line: 1746, column: 57, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2754, file: !352, line: 1745, column: 22)
!2769 = !DILocation(line: 1746, column: 42, scope: !2768)
!2770 = !DILocation(line: 1746, column: 62, scope: !2768)
!2771 = !DILocation(line: 1746, column: 23, scope: !2768)
!2772 = !DILocation(line: 1747, column: 57, scope: !2768)
!2773 = !DILocation(line: 1747, column: 42, scope: !2768)
!2774 = !DILocation(line: 1747, column: 62, scope: !2768)
!2775 = !DILocation(line: 1747, column: 40, scope: !2768)
!2776 = !DILocation(line: 1747, column: 96, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2768, file: !352, discriminator: 1)
!2778 = !DILocation(line: 1747, column: 74, scope: !2768)
!2779 = !DILocation(line: 1747, column: 101, scope: !2768)
!2780 = !{!2781, !1368, i64 40}
!2781 = !{!"", !1527, i64 0, !1379, i64 24, !1368, i64 32, !1368, i64 40, !1528, i64 48}
!2782 = !DILocation(line: 1747, column: 40, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2768, file: !352, discriminator: 2)
!2784 = !DILocation(line: 1747, column: 23, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !2786, file: !352, discriminator: 4)
!2786 = !DILexicalBlockFile(scope: !2768, file: !352, discriminator: 3)
!2787 = !DILocation(line: 1749, column: 21, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !614, file: !352, line: 1749, column: 21)
!2789 = !DILocation(line: 1749, column: 25, scope: !2788)
!2790 = !DILocation(line: 1749, column: 31, scope: !2788)
!2791 = !DILocation(line: 1749, column: 23, scope: !2788)
!2792 = !DILocation(line: 1749, column: 21, scope: !614)
!2793 = !DILocation(line: 1750, column: 25, scope: !2788)
!2794 = !DILocation(line: 1750, column: 31, scope: !2788)
!2795 = !DILocation(line: 1750, column: 23, scope: !2788)
!2796 = !DILocation(line: 1750, column: 21, scope: !2788)
!2797 = !DILocation(line: 1751, column: 21, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !614, file: !352, line: 1751, column: 21)
!2799 = !DILocation(line: 1751, column: 23, scope: !2798)
!2800 = !DILocation(line: 1751, column: 21, scope: !614)
!2801 = !DILocation(line: 1752, column: 28, scope: !2798)
!2802 = !DILocation(line: 1752, column: 33, scope: !2798)
!2803 = !DILocation(line: 1752, column: 36, scope: !2798)
!2804 = !DILocation(line: 1752, column: 21, scope: !2798)
!2805 = !DILocation(line: 1753, column: 13, scope: !615)
!2806 = !DILocation(line: 1753, column: 13, scope: !2807)
!2807 = !DILexicalBlockFile(scope: !615, file: !352, discriminator: 1)
!2808 = !DILocation(line: 1753, column: 13, scope: !614)
!2809 = !DILocation(line: 1753, column: 24, scope: !620)
!2810 = !DILocation(line: 1753, column: 27, scope: !620)
!2811 = !DILocation(line: 1753, column: 34, scope: !620)
!2812 = !DILocation(line: 1753, column: 24, scope: !615)
!2813 = !DILocation(line: 1754, column: 17, scope: !619)
!2814 = !DILocation(line: 1754, column: 28, scope: !619)
!2815 = !DILocation(line: 1755, column: 17, scope: !619)
!2816 = !DILocation(line: 1755, column: 21, scope: !619)
!2817 = !DILocation(line: 1756, column: 17, scope: !619)
!2818 = !DILocation(line: 1756, column: 23, scope: !619)
!2819 = !DILocation(line: 1757, column: 45, scope: !619)
!2820 = !DILocation(line: 1757, column: 50, scope: !619)
!2821 = !DILocation(line: 1757, column: 61, scope: !619)
!2822 = !DILocation(line: 1757, column: 70, scope: !619)
!2823 = !DILocation(line: 1757, column: 87, scope: !619)
!2824 = !DILocation(line: 1757, column: 26, scope: !619)
!2825 = !DILocation(line: 1758, column: 22, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !619, file: !352, line: 1758, column: 21)
!2827 = !DILocation(line: 1758, column: 31, scope: !2826)
!2828 = !DILocation(line: 1758, column: 50, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !2826, file: !352, discriminator: 1)
!2830 = !DILocation(line: 1758, column: 55, scope: !2826)
!2831 = !DILocation(line: 1758, column: 64, scope: !2826)
!2832 = !DILocation(line: 1758, column: 87, scope: !2826)
!2833 = !DILocation(line: 1758, column: 121, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !2826, file: !352, discriminator: 2)
!2835 = !DILocation(line: 1758, column: 126, scope: !2826)
!2836 = !DILocation(line: 1758, column: 90, scope: !2826)
!2837 = !DILocation(line: 1758, column: 21, scope: !619)
!2838 = !DILocation(line: 1759, column: 37, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2826, file: !352, line: 1758, column: 159)
!2840 = !DILocation(line: 1759, column: 21, scope: !2839)
!2841 = !DILocation(line: 1761, column: 21, scope: !2839)
!2842 = !DILocation(line: 1763, column: 21, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !619, file: !352, line: 1763, column: 21)
!2844 = !DILocation(line: 1763, column: 21, scope: !619)
!2845 = !DILocation(line: 1764, column: 56, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2843, file: !352, line: 1763, column: 31)
!2847 = !DILocation(line: 1764, column: 41, scope: !2846)
!2848 = !DILocation(line: 1764, column: 61, scope: !2846)
!2849 = !DILocation(line: 1764, column: 23, scope: !2846)
!2850 = !DILocation(line: 1765, column: 60, scope: !2846)
!2851 = !DILocation(line: 1765, column: 42, scope: !2846)
!2852 = !DILocation(line: 1765, column: 65, scope: !2846)
!2853 = !DILocation(line: 1765, column: 40, scope: !2846)
!2854 = !DILocation(line: 1765, column: 23, scope: !2846)
!2855 = !DILocation(line: 1766, column: 17, scope: !2846)
!2856 = !DILocation(line: 1768, column: 57, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2843, file: !352, line: 1767, column: 22)
!2858 = !DILocation(line: 1768, column: 42, scope: !2857)
!2859 = !DILocation(line: 1768, column: 62, scope: !2857)
!2860 = !DILocation(line: 1768, column: 23, scope: !2857)
!2861 = !DILocation(line: 1769, column: 57, scope: !2857)
!2862 = !DILocation(line: 1769, column: 42, scope: !2857)
!2863 = !DILocation(line: 1769, column: 62, scope: !2857)
!2864 = !DILocation(line: 1769, column: 40, scope: !2857)
!2865 = !DILocation(line: 1769, column: 96, scope: !2866)
!2866 = !DILexicalBlockFile(scope: !2857, file: !352, discriminator: 1)
!2867 = !DILocation(line: 1769, column: 74, scope: !2857)
!2868 = !DILocation(line: 1769, column: 101, scope: !2857)
!2869 = !DILocation(line: 1769, column: 40, scope: !2870)
!2870 = !DILexicalBlockFile(scope: !2857, file: !352, discriminator: 2)
!2871 = !DILocation(line: 1769, column: 23, scope: !2872)
!2872 = !DILexicalBlockFile(scope: !2873, file: !352, discriminator: 4)
!2873 = !DILexicalBlockFile(scope: !2857, file: !352, discriminator: 3)
!2874 = !DILocation(line: 1771, column: 21, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !619, file: !352, line: 1771, column: 21)
!2876 = !DILocation(line: 1771, column: 26, scope: !2875)
!2877 = !DILocation(line: 1771, column: 32, scope: !2875)
!2878 = !DILocation(line: 1771, column: 37, scope: !2875)
!2879 = !DILocation(line: 1771, column: 23, scope: !2875)
!2880 = !DILocation(line: 1771, column: 21, scope: !619)
!2881 = !DILocation(line: 1772, column: 25, scope: !2875)
!2882 = !DILocation(line: 1772, column: 31, scope: !2875)
!2883 = !DILocation(line: 1772, column: 36, scope: !2875)
!2884 = !DILocation(line: 1772, column: 23, scope: !2875)
!2885 = !DILocation(line: 1772, column: 21, scope: !2875)
!2886 = !DILocation(line: 1773, column: 21, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !619, file: !352, line: 1773, column: 21)
!2888 = !DILocation(line: 1773, column: 23, scope: !2887)
!2889 = !DILocation(line: 1773, column: 21, scope: !619)
!2890 = !DILocation(line: 1774, column: 28, scope: !2887)
!2891 = !DILocation(line: 1774, column: 32, scope: !2887)
!2892 = !DILocation(line: 1774, column: 37, scope: !2887)
!2893 = !DILocation(line: 1774, column: 40, scope: !2887)
!2894 = !DILocation(line: 1774, column: 21, scope: !2887)
!2895 = !DILocation(line: 1775, column: 21, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !619, file: !352, line: 1775, column: 21)
!2897 = !DILocation(line: 1775, column: 23, scope: !2896)
!2898 = !DILocation(line: 1775, column: 21, scope: !619)
!2899 = !DILocation(line: 1776, column: 23, scope: !2896)
!2900 = !DILocation(line: 1776, column: 21, scope: !2896)
!2901 = !DILocation(line: 1777, column: 40, scope: !619)
!2902 = !DILocation(line: 1777, column: 24, scope: !619)
!2903 = !DILocation(line: 1777, column: 18, scope: !619)
!2904 = !DILocation(line: 1777, column: 22, scope: !619)
!2905 = !DILocation(line: 1778, column: 13, scope: !620)
!2906 = !DILocation(line: 1778, column: 13, scope: !2907)
!2907 = !DILexicalBlockFile(scope: !620, file: !352, discriminator: 1)
!2908 = !DILocation(line: 1778, column: 13, scope: !619)
!2909 = !DILocation(line: 1779, column: 21, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !352, line: 1779, column: 21)
!2911 = distinct !DILexicalBlock(scope: !620, file: !352, line: 1778, column: 20)
!2912 = !DILocation(line: 1779, column: 24, scope: !2910)
!2913 = !DILocation(line: 1779, column: 29, scope: !2910)
!2914 = !DILocation(line: 1779, column: 34, scope: !2910)
!2915 = !DILocation(line: 1779, column: 37, scope: !2910)
!2916 = !DILocation(line: 1779, column: 40, scope: !2910)
!2917 = !DILocation(line: 1779, column: 21, scope: !2911)
!2918 = !DILocation(line: 1780, column: 42, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !352, line: 1780, column: 25)
!2920 = distinct !DILexicalBlock(scope: !2910, file: !352, line: 1779, column: 45)
!2921 = !DILocation(line: 1780, column: 47, scope: !2919)
!2922 = !DILocation(line: 1780, column: 58, scope: !2919)
!2923 = !DILocation(line: 1780, column: 67, scope: !2919)
!2924 = !DILocation(line: 1780, column: 84, scope: !2919)
!2925 = !DILocation(line: 1780, column: 90, scope: !2919)
!2926 = !DILocation(line: 1780, column: 116, scope: !2927)
!2927 = !DILexicalBlockFile(scope: !2919, file: !352, discriminator: 1)
!2928 = !DILocation(line: 1780, column: 93, scope: !2919)
!2929 = !DILocation(line: 1780, column: 25, scope: !2920)
!2930 = !DILocation(line: 1781, column: 41, scope: !2919)
!2931 = !DILocation(line: 1781, column: 25, scope: !2919)
!2932 = !DILocation(line: 1783, column: 21, scope: !2920)
!2933 = !DILocation(line: 1786, column: 20, scope: !612)
!2934 = !DILocation(line: 1786, column: 26, scope: !612)
!2935 = !DILocation(line: 1786, column: 17, scope: !612)
!2936 = !DILocation(line: 1787, column: 9, scope: !606)
!2937 = !DILocation(line: 1787, column: 9, scope: !2711)
!2938 = !DILocation(line: 1788, column: 5, scope: !607)
!2939 = !DILocation(line: 1788, column: 5, scope: !2690)
!2940 = !DILocation(line: 1788, column: 5, scope: !606)
!2941 = !DILocation(line: 1725, column: 66, scope: !607)
!2942 = !DILocation(line: 1725, column: 5, scope: !607)
!2943 = !DILocation(line: 1791, column: 5, scope: !595)
!2944 = !DILocation(line: 1792, column: 1, scope: !595)
!2945 = !DILocation(line: 1842, column: 23, scope: !640)
!2946 = !DILocation(line: 1842, column: 39, scope: !640)
!2947 = !DILocation(line: 1844, column: 5, scope: !640)
!2948 = !DILocation(line: 1844, column: 21, scope: !640)
!2949 = !DILocation(line: 1845, column: 5, scope: !640)
!2950 = !DILocation(line: 1845, column: 11, scope: !640)
!2951 = !DILocation(line: 1846, column: 5, scope: !640)
!2952 = !DILocation(line: 1846, column: 16, scope: !640)
!2953 = !DILocation(line: 1846, column: 28, scope: !640)
!2954 = !DILocation(line: 1849, column: 32, scope: !640)
!2955 = !DILocation(line: 1849, column: 14, scope: !640)
!2956 = !DILocation(line: 1849, column: 12, scope: !640)
!2957 = !DILocation(line: 1852, column: 26, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !640, file: !352, line: 1852, column: 9)
!2959 = !DILocation(line: 1852, column: 11, scope: !2958)
!2960 = !DILocation(line: 1852, column: 34, scope: !2958)
!2961 = !DILocation(line: 1852, column: 47, scope: !2958)
!2962 = !DILocation(line: 1852, column: 55, scope: !2958)
!2963 = !DILocation(line: 1852, column: 61, scope: !2958)
!2964 = !DILocation(line: 1852, column: 43, scope: !2958)
!2965 = !DILocation(line: 1852, column: 9, scope: !640)
!2966 = !DILocation(line: 1854, column: 30, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !352, line: 1854, column: 13)
!2968 = distinct !DILexicalBlock(scope: !2958, file: !352, line: 1853, column: 5)
!2969 = !DILocation(line: 1854, column: 15, scope: !2967)
!2970 = !DILocation(line: 1854, column: 38, scope: !2967)
!2971 = !DILocation(line: 1854, column: 47, scope: !2967)
!2972 = !DILocation(line: 1854, column: 13, scope: !2968)
!2973 = !DILocation(line: 1855, column: 26, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2967, file: !352, line: 1854, column: 53)
!2975 = !DILocation(line: 1855, column: 13, scope: !2974)
!2976 = !DILocation(line: 1857, column: 9, scope: !2974)
!2977 = !DILocation(line: 1858, column: 35, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2967, file: !352, line: 1858, column: 18)
!2979 = !DILocation(line: 1858, column: 20, scope: !2978)
!2980 = !DILocation(line: 1858, column: 43, scope: !2978)
!2981 = !DILocation(line: 1858, column: 52, scope: !2978)
!2982 = !DILocation(line: 1858, column: 18, scope: !2967)
!2983 = !DILocation(line: 1859, column: 26, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2978, file: !352, line: 1858, column: 58)
!2985 = !DILocation(line: 1859, column: 13, scope: !2984)
!2986 = !DILocation(line: 1861, column: 9, scope: !2984)
!2987 = !DILocation(line: 1863, column: 26, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2978, file: !352, line: 1862, column: 14)
!2989 = !DILocation(line: 1865, column: 25, scope: !2988)
!2990 = !DILocation(line: 1865, column: 33, scope: !2988)
!2991 = !DILocation(line: 1865, column: 58, scope: !2988)
!2992 = !DILocation(line: 1865, column: 43, scope: !2988)
!2993 = !DILocation(line: 1865, column: 66, scope: !2988)
!2994 = !DILocation(line: 1865, column: 75, scope: !2988)
!2995 = !DILocation(line: 1863, column: 13, scope: !2988)
!2996 = !DILocation(line: 1867, column: 9, scope: !2968)
!2997 = !DILocation(line: 1871, column: 53, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !640, file: !352, line: 1871, column: 10)
!2999 = !DILocation(line: 1871, column: 35, scope: !2998)
!3000 = !DILocation(line: 1871, column: 61, scope: !2998)
!3001 = !DILocation(line: 1871, column: 34, scope: !2998)
!3002 = !DILocation(line: 1871, column: 10, scope: !2998)
!3003 = !DILocation(line: 1872, column: 91, scope: !2998)
!3004 = !DILocation(line: 1871, column: 10, scope: !640)
!3005 = !DILocation(line: 1873, column: 9, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2998, file: !352, line: 1872, column: 99)
!3007 = !DILocation(line: 1878, column: 53, scope: !640)
!3008 = !DILocation(line: 1878, column: 35, scope: !640)
!3009 = !DILocation(line: 1878, column: 61, scope: !640)
!3010 = !DILocation(line: 1878, column: 34, scope: !640)
!3011 = !DILocation(line: 1878, column: 74, scope: !640)
!3012 = !DILocation(line: 1878, column: 14, scope: !640)
!3013 = !DILocation(line: 1878, column: 12, scope: !640)
!3014 = !DILocation(line: 1879, column: 9, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !640, file: !352, line: 1879, column: 9)
!3016 = !DILocation(line: 1879, column: 16, scope: !3015)
!3017 = !DILocation(line: 1879, column: 22, scope: !3015)
!3018 = !DILocation(line: 1879, column: 25, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !3015, file: !352, discriminator: 1)
!3020 = !DILocation(line: 1879, column: 9, scope: !640)
!3021 = !DILocation(line: 1880, column: 9, scope: !3015)
!3022 = !DILocation(line: 1883, column: 9, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !640, file: !352, line: 1883, column: 9)
!3024 = !DILocation(line: 1883, column: 16, scope: !3023)
!3025 = !DILocation(line: 1883, column: 9, scope: !640)
!3026 = !DILocation(line: 1884, column: 19, scope: !3023)
!3027 = !DILocation(line: 1884, column: 16, scope: !3023)
!3028 = !DILocation(line: 1884, column: 9, scope: !3023)
!3029 = !DILocation(line: 1887, column: 9, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !640, file: !352, line: 1887, column: 9)
!3031 = !DILocation(line: 1887, column: 16, scope: !3030)
!3032 = !DILocation(line: 1887, column: 20, scope: !3030)
!3033 = !DILocation(line: 1887, column: 24, scope: !3034)
!3034 = !DILexicalBlockFile(scope: !3030, file: !352, discriminator: 1)
!3035 = !DILocation(line: 1887, column: 37, scope: !3030)
!3036 = !DILocation(line: 1887, column: 35, scope: !3030)
!3037 = !DILocation(line: 1887, column: 47, scope: !3030)
!3038 = !DILocation(line: 1887, column: 55, scope: !3030)
!3039 = !DILocation(line: 1887, column: 45, scope: !3030)
!3040 = !DILocation(line: 1887, column: 9, scope: !640)
!3041 = !DILocation(line: 1888, column: 22, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3030, file: !352, line: 1887, column: 63)
!3043 = !DILocation(line: 1890, column: 22, scope: !3042)
!3044 = !DILocation(line: 1890, column: 30, scope: !3042)
!3045 = !DILocation(line: 1888, column: 9, scope: !3042)
!3046 = !DILocation(line: 1891, column: 9, scope: !3042)
!3047 = !DILocation(line: 1895, column: 26, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !640, file: !352, line: 1895, column: 10)
!3049 = !DILocation(line: 1895, column: 34, scope: !3048)
!3050 = !DILocation(line: 1895, column: 43, scope: !3048)
!3051 = !DILocation(line: 1895, column: 52, scope: !3048)
!3052 = !DILocation(line: 1895, column: 50, scope: !3048)
!3053 = !DILocation(line: 1895, column: 10, scope: !3048)
!3054 = !DILocation(line: 1895, column: 60, scope: !3048)
!3055 = !DILocation(line: 1895, column: 10, scope: !640)
!3056 = !DILocation(line: 1896, column: 9, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3048, file: !352, line: 1895, column: 67)
!3058 = !DILocation(line: 1899, column: 58, scope: !640)
!3059 = !DILocation(line: 1899, column: 5, scope: !640)
!3060 = !DILocation(line: 1900, column: 1, scope: !640)
!3061 = !DILocation(line: 1505, column: 20, scope: !658)
!3062 = !DILocation(line: 1505, column: 36, scope: !658)
!3063 = !DILocation(line: 1507, column: 5, scope: !658)
!3064 = !DILocation(line: 1507, column: 15, scope: !658)
!3065 = !DILocation(line: 1508, column: 5, scope: !658)
!3066 = !DILocation(line: 1508, column: 15, scope: !658)
!3067 = !DILocation(line: 1509, column: 5, scope: !658)
!3068 = !DILocation(line: 1509, column: 21, scope: !658)
!3069 = !DILocation(line: 1509, column: 48, scope: !658)
!3070 = !DILocation(line: 1509, column: 30, scope: !658)
!3071 = !DILocation(line: 1513, column: 28, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !658, file: !352, line: 1513, column: 9)
!3073 = !DILocation(line: 1513, column: 9, scope: !3072)
!3074 = !DILocation(line: 1513, column: 45, scope: !3072)
!3075 = !DILocation(line: 1513, column: 9, scope: !658)
!3076 = !DILocation(line: 1514, column: 9, scope: !3072)
!3077 = !DILocation(line: 1515, column: 14, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !658, file: !352, line: 1515, column: 9)
!3079 = !{!2173, !1379, i64 16}
!3080 = !DILocation(line: 1515, column: 21, scope: !3078)
!3081 = !DILocation(line: 1515, column: 29, scope: !3078)
!3082 = !DILocation(line: 1515, column: 18, scope: !3078)
!3083 = !DILocation(line: 1515, column: 9, scope: !658)
!3084 = !DILocation(line: 1516, column: 22, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3078, file: !352, line: 1515, column: 37)
!3086 = !DILocation(line: 1518, column: 22, scope: !3085)
!3087 = !DILocation(line: 1518, column: 30, scope: !3085)
!3088 = !DILocation(line: 1516, column: 9, scope: !3085)
!3089 = !DILocation(line: 1519, column: 9, scope: !3085)
!3090 = !DILocation(line: 1520, column: 9, scope: !3085)
!3091 = !DILocation(line: 1522, column: 32, scope: !658)
!3092 = !DILocation(line: 1522, column: 45, scope: !658)
!3093 = !{!2173, !1368, i64 0}
!3094 = !DILocation(line: 1522, column: 14, scope: !658)
!3095 = !DILocation(line: 1522, column: 12, scope: !658)
!3096 = !DILocation(line: 1523, column: 5, scope: !658)
!3097 = !DILocation(line: 1524, column: 12, scope: !658)
!3098 = !DILocation(line: 1524, column: 5, scope: !658)
!3099 = !DILocation(line: 1525, column: 1, scope: !658)
!3100 = !DILocation(line: 1535, column: 25, scope: !683)
!3101 = !DILocation(line: 1535, column: 41, scope: !683)
!3102 = !DILocation(line: 1535, column: 57, scope: !683)
!3103 = !DILocation(line: 1539, column: 5, scope: !683)
!3104 = !DILocation(line: 1539, column: 15, scope: !683)
!3105 = !DILocation(line: 1540, column: 5, scope: !683)
!3106 = !DILocation(line: 1540, column: 16, scope: !683)
!3107 = !DILocation(line: 1541, column: 5, scope: !683)
!3108 = !DILocation(line: 1541, column: 15, scope: !683)
!3109 = !DILocation(line: 1542, column: 5, scope: !683)
!3110 = !DILocation(line: 1542, column: 15, scope: !683)
!3111 = !DILocation(line: 1543, column: 5, scope: !683)
!3112 = !DILocation(line: 1543, column: 21, scope: !683)
!3113 = !DILocation(line: 1543, column: 48, scope: !683)
!3114 = !DILocation(line: 1543, column: 30, scope: !683)
!3115 = !DILocation(line: 1548, column: 45, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !683, file: !352, line: 1548, column: 9)
!3117 = !DILocation(line: 1548, column: 51, scope: !3116)
!3118 = !DILocation(line: 1548, column: 10, scope: !3116)
!3119 = !DILocation(line: 1548, column: 9, scope: !683)
!3120 = !DILocation(line: 1551, column: 9, scope: !3116)
!3121 = !DILocation(line: 1552, column: 28, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !683, file: !352, line: 1552, column: 9)
!3123 = !DILocation(line: 1552, column: 9, scope: !3122)
!3124 = !DILocation(line: 1552, column: 45, scope: !3122)
!3125 = !DILocation(line: 1552, column: 9, scope: !683)
!3126 = !DILocation(line: 1553, column: 9, scope: !3122)
!3127 = !DILocation(line: 1554, column: 9, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !683, file: !352, line: 1554, column: 9)
!3129 = !DILocation(line: 1554, column: 16, scope: !3128)
!3130 = !DILocation(line: 1554, column: 9, scope: !683)
!3131 = !DILocation(line: 1555, column: 24, scope: !3128)
!3132 = !DILocation(line: 1555, column: 16, scope: !3128)
!3133 = !DILocation(line: 1555, column: 9, scope: !3128)
!3134 = !DILocation(line: 1556, column: 9, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !683, file: !352, line: 1556, column: 9)
!3136 = !DILocation(line: 1556, column: 16, scope: !3135)
!3137 = !DILocation(line: 1556, column: 20, scope: !3135)
!3138 = !DILocation(line: 1556, column: 28, scope: !3139)
!3139 = !DILexicalBlockFile(scope: !3135, file: !352, discriminator: 1)
!3140 = !DILocation(line: 1556, column: 34, scope: !3135)
!3141 = !DILocation(line: 1556, column: 32, scope: !3135)
!3142 = !DILocation(line: 1556, column: 43, scope: !3135)
!3143 = !DILocation(line: 1556, column: 51, scope: !3135)
!3144 = !DILocation(line: 1556, column: 41, scope: !3135)
!3145 = !DILocation(line: 1556, column: 9, scope: !683)
!3146 = !DILocation(line: 1557, column: 22, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3135, file: !352, line: 1556, column: 59)
!3148 = !DILocation(line: 1559, column: 13, scope: !3147)
!3149 = !DILocation(line: 1559, column: 21, scope: !3147)
!3150 = !DILocation(line: 1557, column: 9, scope: !3147)
!3151 = !DILocation(line: 1560, column: 9, scope: !3147)
!3152 = !DILocation(line: 1561, column: 9, scope: !3147)
!3153 = !DILocation(line: 1563, column: 32, scope: !683)
!3154 = !DILocation(line: 1563, column: 52, scope: !683)
!3155 = !DILocation(line: 1563, column: 58, scope: !683)
!3156 = !DILocation(line: 1563, column: 56, scope: !683)
!3157 = !DILocation(line: 1563, column: 14, scope: !683)
!3158 = !DILocation(line: 1563, column: 12, scope: !683)
!3159 = !DILocation(line: 1564, column: 5, scope: !683)
!3160 = !DILocation(line: 1565, column: 12, scope: !683)
!3161 = !DILocation(line: 1565, column: 5, scope: !683)
!3162 = !DILocation(line: 1566, column: 1, scope: !683)
!3163 = !DILocation(line: 1448, column: 27, scope: !693)
!3164 = !DILocation(line: 1450, column: 9, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !693, file: !352, line: 1450, column: 9)
!3166 = !DILocation(line: 1450, column: 12, scope: !3165)
!3167 = !{!1561, !1368, i64 48}
!3168 = !DILocation(line: 1450, column: 24, scope: !3165)
!3169 = !DILocation(line: 1450, column: 9, scope: !693)
!3170 = !DILocation(line: 1451, column: 44, scope: !3165)
!3171 = !DILocation(line: 1451, column: 32, scope: !3165)
!3172 = !DILocation(line: 1451, column: 9, scope: !3165)
!3173 = !DILocation(line: 1452, column: 9, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !693, file: !352, line: 1452, column: 9)
!3175 = !DILocation(line: 1452, column: 12, scope: !3174)
!3176 = !DILocation(line: 1452, column: 20, scope: !3174)
!3177 = !DILocation(line: 1452, column: 9, scope: !693)
!3178 = !DILocation(line: 1453, column: 20, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3174, file: !352, line: 1452, column: 35)
!3180 = !DILocation(line: 1453, column: 23, scope: !3179)
!3181 = !DILocation(line: 1453, column: 9, scope: !3179)
!3182 = !DILocation(line: 1454, column: 5, scope: !3179)
!3183 = !DILocation(line: 1455, column: 5, scope: !693)
!3184 = !DILocation(line: 1455, column: 10, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !699, file: !352, discriminator: 1)
!3186 = !DILocation(line: 1455, column: 20, scope: !699)
!3187 = !DILocation(line: 1455, column: 51, scope: !699)
!3188 = !DILocation(line: 1455, column: 54, scope: !699)
!3189 = !{!1561, !1368, i64 40}
!3190 = !DILocation(line: 1455, column: 69, scope: !702)
!3191 = !DILocation(line: 1455, column: 85, scope: !702)
!3192 = !DILocation(line: 1455, column: 69, scope: !699)
!3193 = !DILocation(line: 1455, column: 100, scope: !3194)
!3194 = !DILexicalBlockFile(scope: !702, file: !352, discriminator: 2)
!3195 = !DILocation(line: 1455, column: 105, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !701, file: !352, discriminator: 4)
!3197 = !DILocation(line: 1455, column: 115, scope: !701)
!3198 = !DILocation(line: 1455, column: 145, scope: !701)
!3199 = !DILocation(line: 1455, column: 171, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !701, file: !352, line: 1455, column: 168)
!3201 = !DILocation(line: 1455, column: 188, scope: !3200)
!3202 = !DILocation(line: 1455, column: 168, scope: !3200)
!3203 = !DILocation(line: 1455, column: 198, scope: !3200)
!3204 = !DILocation(line: 1455, column: 168, scope: !701)
!3205 = !DILocation(line: 1455, column: 168, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !701, file: !352, discriminator: 5)
!3207 = !DILocation(line: 1455, column: 229, scope: !3208)
!3208 = !DILexicalBlockFile(scope: !3200, file: !352, discriminator: 6)
!3209 = !DILocation(line: 1455, column: 247, scope: !3200)
!3210 = !DILocation(line: 1455, column: 257, scope: !3200)
!3211 = !DILocation(line: 1455, column: 282, scope: !3200)
!3212 = !DILocation(line: 1455, column: 213, scope: !3200)
!3213 = !DILocation(line: 1455, column: 301, scope: !3214)
!3214 = !DILexicalBlockFile(scope: !702, file: !352, discriminator: 7)
!3215 = !DILocation(line: 1455, column: 301, scope: !701)
!3216 = !DILocation(line: 1455, column: 301, scope: !3217)
!3217 = !DILexicalBlockFile(scope: !701, file: !352, discriminator: 8)
!3218 = !DILocation(line: 1455, column: 301, scope: !3219)
!3219 = !DILexicalBlockFile(scope: !701, file: !352, discriminator: 9)
!3220 = !DILocation(line: 1455, column: 314, scope: !3221)
!3221 = !DILexicalBlockFile(scope: !3222, file: !352, discriminator: 10)
!3222 = !DILexicalBlockFile(scope: !693, file: !352, discriminator: 3)
!3223 = !DILocation(line: 1455, column: 314, scope: !699)
!3224 = !DILocation(line: 1456, column: 19, scope: !693)
!3225 = !DILocation(line: 1456, column: 7, scope: !693)
!3226 = !DILocation(line: 1456, column: 24, scope: !693)
!3227 = !DILocation(line: 1456, column: 34, scope: !693)
!3228 = !{!1526, !1368, i64 320}
!3229 = !DILocation(line: 1456, column: 54, scope: !693)
!3230 = !DILocation(line: 1456, column: 42, scope: !693)
!3231 = !DILocation(line: 1456, column: 5, scope: !693)
!3232 = !DILocation(line: 1457, column: 1, scope: !693)
!3233 = !DILocation(line: 1409, column: 18, scope: !719)
!3234 = !DILocation(line: 1409, column: 34, scope: !719)
!3235 = !DILocation(line: 1409, column: 50, scope: !719)
!3236 = !DILocation(line: 1411, column: 5, scope: !719)
!3237 = !DILocation(line: 1411, column: 21, scope: !719)
!3238 = !DILocation(line: 1411, column: 48, scope: !719)
!3239 = !DILocation(line: 1411, column: 30, scope: !719)
!3240 = !DILocation(line: 1412, column: 5, scope: !719)
!3241 = !DILocation(line: 1412, column: 15, scope: !719)
!3242 = !DILocation(line: 1413, column: 5, scope: !719)
!3243 = !DILocation(line: 1413, column: 9, scope: !719)
!3244 = !DILocation(line: 1418, column: 45, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !719, file: !352, line: 1418, column: 9)
!3246 = !DILocation(line: 1418, column: 51, scope: !3245)
!3247 = !DILocation(line: 1418, column: 10, scope: !3245)
!3248 = !DILocation(line: 1418, column: 9, scope: !719)
!3249 = !DILocation(line: 1420, column: 9, scope: !3245)
!3250 = !DILocation(line: 1422, column: 26, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !719, file: !352, line: 1422, column: 9)
!3252 = !DILocation(line: 1422, column: 38, scope: !3251)
!3253 = !DILocation(line: 1422, column: 49, scope: !3251)
!3254 = !DILocation(line: 1422, column: 58, scope: !3251)
!3255 = !DILocation(line: 1422, column: 75, scope: !3251)
!3256 = !DILocation(line: 1422, column: 9, scope: !719)
!3257 = !DILocation(line: 1423, column: 44, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3251, file: !352, line: 1422, column: 82)
!3259 = !DILocation(line: 1423, column: 20, scope: !3258)
!3260 = !DILocation(line: 1423, column: 18, scope: !3258)
!3261 = !DILocation(line: 1424, column: 13, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3258, file: !352, line: 1424, column: 13)
!3263 = !DILocation(line: 1424, column: 22, scope: !3262)
!3264 = !DILocation(line: 1424, column: 13, scope: !3258)
!3265 = !DILocation(line: 1425, column: 13, scope: !3262)
!3266 = !DILocation(line: 1426, column: 5, scope: !3258)
!3267 = !DILocation(line: 1429, column: 25, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3251, file: !352, line: 1428, column: 10)
!3269 = !DILocation(line: 1429, column: 37, scope: !3268)
!3270 = !DILocation(line: 1429, column: 46, scope: !3268)
!3271 = !DILocation(line: 1432, column: 27, scope: !730)
!3272 = !DILocation(line: 1432, column: 39, scope: !730)
!3273 = !DILocation(line: 1432, column: 50, scope: !730)
!3274 = !DILocation(line: 1432, column: 59, scope: !730)
!3275 = !DILocation(line: 1432, column: 76, scope: !730)
!3276 = !DILocation(line: 1432, column: 9, scope: !719)
!3277 = !DILocation(line: 1433, column: 9, scope: !729)
!3278 = !DILocation(line: 1433, column: 14, scope: !3279)
!3279 = !DILexicalBlockFile(scope: !728, file: !352, discriminator: 1)
!3280 = !DILocation(line: 1433, column: 24, scope: !728)
!3281 = !DILocation(line: 1433, column: 54, scope: !728)
!3282 = !DILocation(line: 1433, column: 73, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !728, file: !352, line: 1433, column: 70)
!3284 = !DILocation(line: 1433, column: 90, scope: !3283)
!3285 = !DILocation(line: 1433, column: 70, scope: !3283)
!3286 = !DILocation(line: 1433, column: 100, scope: !3283)
!3287 = !DILocation(line: 1433, column: 70, scope: !728)
!3288 = !DILocation(line: 1433, column: 70, scope: !3289)
!3289 = !DILexicalBlockFile(scope: !728, file: !352, discriminator: 2)
!3290 = !DILocation(line: 1433, column: 131, scope: !3291)
!3291 = !DILexicalBlockFile(scope: !3283, file: !352, discriminator: 3)
!3292 = !DILocation(line: 1433, column: 149, scope: !3283)
!3293 = !DILocation(line: 1433, column: 159, scope: !3283)
!3294 = !DILocation(line: 1433, column: 184, scope: !3283)
!3295 = !DILocation(line: 1433, column: 115, scope: !3283)
!3296 = !DILocation(line: 1433, column: 203, scope: !3297)
!3297 = !DILexicalBlockFile(scope: !729, file: !352, discriminator: 4)
!3298 = !DILocation(line: 1433, column: 203, scope: !728)
!3299 = !DILocation(line: 1433, column: 203, scope: !3300)
!3300 = !DILexicalBlockFile(scope: !728, file: !352, discriminator: 5)
!3301 = !DILocation(line: 1434, column: 22, scope: !729)
!3302 = !DILocation(line: 1436, column: 36, scope: !729)
!3303 = !DILocation(line: 1436, column: 48, scope: !729)
!3304 = !DILocation(line: 1436, column: 58, scope: !729)
!3305 = !{!1526, !1368, i64 24}
!3306 = !DILocation(line: 1434, column: 9, scope: !729)
!3307 = !DILocation(line: 1437, column: 9, scope: !729)
!3308 = !DILocation(line: 1440, column: 5, scope: !719)
!3309 = !DILocation(line: 1440, column: 10, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !732, file: !352, discriminator: 1)
!3311 = !DILocation(line: 1440, column: 20, scope: !732)
!3312 = !DILocation(line: 1440, column: 43, scope: !732)
!3313 = !DILocation(line: 1440, column: 51, scope: !732)
!3314 = !DILocation(line: 1440, column: 66, scope: !736)
!3315 = !DILocation(line: 1440, column: 74, scope: !736)
!3316 = !DILocation(line: 1440, column: 66, scope: !732)
!3317 = !DILocation(line: 1440, column: 92, scope: !3318)
!3318 = !DILexicalBlockFile(scope: !735, file: !352, discriminator: 2)
!3319 = !DILocation(line: 1440, column: 100, scope: !735)
!3320 = !DILocation(line: 1440, column: 110, scope: !735)
!3321 = !DILocation(line: 1440, column: 124, scope: !735)
!3322 = !DILocation(line: 1440, column: 129, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !734, file: !352, discriminator: 4)
!3324 = !DILocation(line: 1440, column: 139, scope: !734)
!3325 = !DILocation(line: 1440, column: 169, scope: !734)
!3326 = !DILocation(line: 1440, column: 187, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !734, file: !352, line: 1440, column: 184)
!3328 = !DILocation(line: 1440, column: 204, scope: !3327)
!3329 = !DILocation(line: 1440, column: 184, scope: !3327)
!3330 = !DILocation(line: 1440, column: 214, scope: !3327)
!3331 = !DILocation(line: 1440, column: 184, scope: !734)
!3332 = !DILocation(line: 1440, column: 184, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !734, file: !352, discriminator: 5)
!3334 = !DILocation(line: 1440, column: 245, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3327, file: !352, discriminator: 6)
!3336 = !DILocation(line: 1440, column: 263, scope: !3327)
!3337 = !DILocation(line: 1440, column: 273, scope: !3327)
!3338 = !DILocation(line: 1440, column: 298, scope: !3327)
!3339 = !DILocation(line: 1440, column: 229, scope: !3327)
!3340 = !DILocation(line: 1440, column: 317, scope: !3341)
!3341 = !DILexicalBlockFile(scope: !735, file: !352, discriminator: 7)
!3342 = !DILocation(line: 1440, column: 317, scope: !734)
!3343 = !DILocation(line: 1440, column: 317, scope: !3344)
!3344 = !DILexicalBlockFile(scope: !734, file: !352, discriminator: 8)
!3345 = !DILocation(line: 1440, column: 330, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !735, file: !352, discriminator: 9)
!3347 = !DILocation(line: 1440, column: 332, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !3349, file: !352, discriminator: 10)
!3349 = !DILexicalBlockFile(scope: !719, file: !352, discriminator: 3)
!3350 = !DILocation(line: 1440, column: 332, scope: !732)
!3351 = !DILocation(line: 1440, column: 332, scope: !3352)
!3352 = !DILexicalBlockFile(scope: !732, file: !352, discriminator: 11)
!3353 = !DILocation(line: 1441, column: 24, scope: !719)
!3354 = !DILocation(line: 1441, column: 5, scope: !719)
!3355 = !DILocation(line: 1441, column: 13, scope: !719)
!3356 = !DILocation(line: 1441, column: 22, scope: !719)
!3357 = !DILocation(line: 1443, column: 21, scope: !719)
!3358 = !DILocation(line: 1443, column: 11, scope: !719)
!3359 = !DILocation(line: 1443, column: 9, scope: !719)
!3360 = !DILocation(line: 1444, column: 12, scope: !719)
!3361 = !DILocation(line: 1444, column: 5, scope: !719)
!3362 = !DILocation(line: 1445, column: 1, scope: !719)
!3363 = !DILocation(line: 1390, column: 21, scope: !945)
!3364 = !DILocation(line: 1390, column: 37, scope: !945)
!3365 = !DILocation(line: 1390, column: 53, scope: !945)
!3366 = !DILocation(line: 1392, column: 5, scope: !945)
!3367 = !DILocation(line: 1392, column: 15, scope: !945)
!3368 = !DILocation(line: 1396, column: 12, scope: !945)
!3369 = !DILocation(line: 1396, column: 18, scope: !945)
!3370 = !{!1526, !1368, i64 304}
!3371 = !DILocation(line: 1396, column: 27, scope: !945)
!3372 = !DILocation(line: 1396, column: 10, scope: !945)
!3373 = !DILocation(line: 1397, column: 9, scope: !957)
!3374 = !DILocation(line: 1397, column: 14, scope: !957)
!3375 = !DILocation(line: 1397, column: 9, scope: !945)
!3376 = !DILocation(line: 1398, column: 9, scope: !956)
!3377 = !DILocation(line: 1398, column: 25, scope: !956)
!3378 = !DILocation(line: 1398, column: 46, scope: !956)
!3379 = !DILocation(line: 1398, column: 29, scope: !956)
!3380 = !DILocation(line: 1399, column: 55, scope: !956)
!3381 = !DILocation(line: 1400, column: 9, scope: !956)
!3382 = !DILocation(line: 1400, column: 12, scope: !956)
!3383 = !DILocation(line: 1400, column: 21, scope: !956)
!3384 = !DILocation(line: 1401, column: 9, scope: !956)
!3385 = !DILocation(line: 1401, column: 12, scope: !956)
!3386 = !DILocation(line: 1401, column: 20, scope: !956)
!3387 = !DILocation(line: 1402, column: 9, scope: !956)
!3388 = !DILocation(line: 1402, column: 12, scope: !956)
!3389 = !DILocation(line: 1402, column: 19, scope: !956)
!3390 = !DILocation(line: 1403, column: 9, scope: !956)
!3391 = !DILocation(line: 1403, column: 12, scope: !956)
!3392 = !DILocation(line: 1403, column: 18, scope: !956)
!3393 = !DILocation(line: 1404, column: 5, scope: !957)
!3394 = !DILocation(line: 1404, column: 5, scope: !956)
!3395 = !DILocation(line: 1405, column: 12, scope: !945)
!3396 = !DILocation(line: 1406, column: 1, scope: !945)
!3397 = !DILocation(line: 1405, column: 5, scope: !945)
!3398 = !DILocation(line: 1919, column: 26, scope: !703)
!3399 = !DILocation(line: 1919, column: 38, scope: !703)
!3400 = !DILocation(line: 1921, column: 5, scope: !703)
!3401 = !DILocation(line: 1921, column: 16, scope: !703)
!3402 = !DILocation(line: 1922, column: 5, scope: !703)
!3403 = !DILocation(line: 1922, column: 17, scope: !703)
!3404 = !DILocation(line: 1924, column: 10, scope: !703)
!3405 = !DILocation(line: 1925, column: 17, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !703, file: !352, line: 1925, column: 5)
!3407 = !DILocation(line: 1925, column: 23, scope: !3406)
!3408 = !DILocation(line: 1925, column: 15, scope: !3406)
!3409 = !DILocation(line: 1925, column: 10, scope: !3406)
!3410 = !DILocation(line: 1925, column: 32, scope: !3411)
!3411 = !DILexicalBlockFile(scope: !3412, file: !352, discriminator: 2)
!3412 = !DILexicalBlockFile(scope: !3413, file: !352, discriminator: 1)
!3413 = distinct !DILexicalBlock(scope: !3406, file: !352, line: 1925, column: 5)
!3414 = !DILocation(line: 1925, column: 38, scope: !3413)
!3415 = !DILocation(line: 1925, column: 45, scope: !3413)
!3416 = !DILocation(line: 1925, column: 5, scope: !3406)
!3417 = !DILocation(line: 1926, column: 14, scope: !3413)
!3418 = !DILocation(line: 1926, column: 9, scope: !3413)
!3419 = !DILocation(line: 1925, column: 64, scope: !3413)
!3420 = !DILocation(line: 1925, column: 5, scope: !3413)
!3421 = !DILocation(line: 1927, column: 31, scope: !703)
!3422 = !DILocation(line: 1927, column: 12, scope: !703)
!3423 = !DILocation(line: 1928, column: 1, scope: !703)
!3424 = !DILocation(line: 1927, column: 5, scope: !703)
!3425 = !DILocation(line: 1903, column: 30, scope: !711)
!3426 = !DILocation(line: 1903, column: 42, scope: !711)
!3427 = !DILocation(line: 1905, column: 21, scope: !711)
!3428 = !DILocation(line: 1905, column: 27, scope: !711)
!3429 = !DILocation(line: 1905, column: 39, scope: !711)
!3430 = !DILocation(line: 1905, column: 48, scope: !711)
!3431 = !DILocation(line: 1906, column: 12, scope: !711)
!3432 = !DILocation(line: 1906, column: 18, scope: !711)
!3433 = !DILocation(line: 1906, column: 5, scope: !711)
!3434 = !DILocation(line: 1910, column: 28, scope: !715)
!3435 = !DILocation(line: 1910, column: 40, scope: !715)
!3436 = !DILocation(line: 1912, column: 31, scope: !715)
!3437 = !DILocation(line: 1912, column: 37, scope: !715)
!3438 = !DILocation(line: 1912, column: 12, scope: !715)
!3439 = !DILocation(line: 1912, column: 5, scope: !715)
!3440 = !DILocation(line: 1258, column: 27, scope: !737)
!3441 = !DILocation(line: 1260, column: 5, scope: !737)
!3442 = !DILocation(line: 1260, column: 22, scope: !737)
!3443 = !DILocation(line: 1261, column: 5, scope: !737)
!3444 = !DILocation(line: 1261, column: 22, scope: !737)
!3445 = !DILocation(line: 1262, column: 5, scope: !737)
!3446 = !DILocation(line: 1262, column: 17, scope: !737)
!3447 = !DILocation(line: 1264, column: 5, scope: !737)
!3448 = !DILocation(line: 1264, column: 17, scope: !737)
!3449 = !DILocation(line: 1265, column: 5, scope: !737)
!3450 = !DILocation(line: 1265, column: 17, scope: !737)
!3451 = !DILocation(line: 1266, column: 5, scope: !737)
!3452 = !DILocation(line: 1266, column: 10, scope: !737)
!3453 = !DILocation(line: 1267, column: 5, scope: !737)
!3454 = !DILocation(line: 1267, column: 16, scope: !737)
!3455 = !DILocation(line: 1267, column: 22, scope: !737)
!3456 = !DILocation(line: 1267, column: 27, scope: !737)
!3457 = !DILocation(line: 1267, column: 35, scope: !737)
!3458 = !DILocation(line: 1267, column: 40, scope: !737)
!3459 = !DILocation(line: 1269, column: 46, scope: !737)
!3460 = !DILocation(line: 1269, column: 52, scope: !737)
!3461 = !DILocation(line: 1269, column: 28, scope: !737)
!3462 = !DILocation(line: 1269, column: 64, scope: !737)
!3463 = !DILocation(line: 1269, column: 26, scope: !737)
!3464 = !DILocation(line: 1269, column: 9, scope: !737)
!3465 = !DILocation(line: 1271, column: 9, scope: !737)
!3466 = !DILocation(line: 1271, column: 7, scope: !737)
!3467 = !DILocation(line: 1273, column: 9, scope: !737)
!3468 = !DILocation(line: 1273, column: 7, scope: !737)
!3469 = !DILocation(line: 1274, column: 10, scope: !737)
!3470 = !DILocation(line: 1275, column: 9, scope: !737)
!3471 = !DILocation(line: 1276, column: 12, scope: !737)
!3472 = !DILocation(line: 1277, column: 5, scope: !737)
!3473 = !DILocation(line: 1277, column: 19, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !3475, file: !352, discriminator: 2)
!3475 = !DILexicalBlockFile(scope: !737, file: !352, discriminator: 1)
!3476 = !DILocation(line: 1277, column: 17, scope: !737)
!3477 = !DILocation(line: 1277, column: 15, scope: !737)
!3478 = !DILocation(line: 1277, column: 12, scope: !737)
!3479 = !DILocation(line: 1277, column: 23, scope: !737)
!3480 = !DILocation(line: 1278, column: 66, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !352, line: 1278, column: 13)
!3482 = distinct !DILexicalBlock(scope: !737, file: !352, line: 1277, column: 32)
!3483 = !DILocation(line: 1278, column: 65, scope: !3481)
!3484 = !DILocation(line: 1278, column: 69, scope: !3481)
!3485 = !DILocation(line: 1278, column: 49, scope: !3481)
!3486 = !DILocation(line: 1278, column: 47, scope: !3481)
!3487 = !DILocation(line: 1278, column: 79, scope: !3481)
!3488 = !DILocation(line: 1278, column: 31, scope: !3481)
!3489 = !DILocation(line: 1278, column: 14, scope: !3481)
!3490 = !DILocation(line: 1278, column: 89, scope: !3481)
!3491 = !DILocation(line: 1278, column: 13, scope: !3482)
!3492 = !DILocation(line: 1279, column: 13, scope: !3481)
!3493 = !DILocation(line: 1280, column: 20, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3482, file: !352, line: 1280, column: 13)
!3495 = !DILocation(line: 1280, column: 17, scope: !3494)
!3496 = !DILocation(line: 1280, column: 22, scope: !3494)
!3497 = !DILocation(line: 1280, column: 25, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !3494, file: !352, discriminator: 1)
!3499 = !DILocation(line: 1280, column: 27, scope: !3494)
!3500 = !DILocation(line: 1280, column: 13, scope: !3482)
!3501 = !DILocation(line: 1281, column: 19, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3494, file: !352, line: 1280, column: 35)
!3503 = !DILocation(line: 1281, column: 21, scope: !3502)
!3504 = !DILocation(line: 1281, column: 17, scope: !3502)
!3505 = !DILocation(line: 1282, column: 13, scope: !3502)
!3506 = !DILocation(line: 1282, column: 34, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !3508, file: !352, discriminator: 4)
!3508 = !DILexicalBlockFile(scope: !3502, file: !352, discriminator: 1)
!3509 = !DILocation(line: 1282, column: 32, scope: !3502)
!3510 = !DILocation(line: 1282, column: 30, scope: !3502)
!3511 = !DILocation(line: 1282, column: 27, scope: !3502)
!3512 = !DILocation(line: 1282, column: 24, scope: !3502)
!3513 = !DILocation(line: 1282, column: 38, scope: !3502)
!3514 = !DILocation(line: 1282, column: 41, scope: !3515)
!3515 = !DILexicalBlockFile(scope: !3502, file: !352, discriminator: 2)
!3516 = !DILocation(line: 1282, column: 43, scope: !3502)
!3517 = !DILocation(line: 1282, column: 13, scope: !3518)
!3518 = !DILexicalBlockFile(scope: !3502, file: !352, discriminator: 3)
!3519 = !DILocation(line: 1285, column: 21, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !352, line: 1285, column: 21)
!3521 = distinct !DILexicalBlock(scope: !3502, file: !352, line: 1282, column: 51)
!3522 = !DILocation(line: 1285, column: 25, scope: !3520)
!3523 = !DILocation(line: 1285, column: 65, scope: !3520)
!3524 = !DILocation(line: 1286, column: 25, scope: !3520)
!3525 = !DILocation(line: 1286, column: 29, scope: !3520)
!3526 = !DILocation(line: 1286, column: 68, scope: !3520)
!3527 = !DILocation(line: 1287, column: 26, scope: !3520)
!3528 = !DILocation(line: 1287, column: 28, scope: !3520)
!3529 = !DILocation(line: 1287, column: 25, scope: !3520)
!3530 = !DILocation(line: 1287, column: 35, scope: !3520)
!3531 = !DILocation(line: 1285, column: 21, scope: !3521)
!3532 = !DILocation(line: 1288, column: 21, scope: !3520)
!3533 = !DILocation(line: 1289, column: 23, scope: !3521)
!3534 = !DILocation(line: 1289, column: 26, scope: !3521)
!3535 = !DILocation(line: 1289, column: 33, scope: !3521)
!3536 = !DILocation(line: 1289, column: 35, scope: !3521)
!3537 = !DILocation(line: 1289, column: 32, scope: !3521)
!3538 = !DILocation(line: 1289, column: 30, scope: !3521)
!3539 = !DILocation(line: 1289, column: 21, scope: !3521)
!3540 = !DILocation(line: 1291, column: 17, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3502, file: !352, line: 1291, column: 17)
!3542 = !DILocation(line: 1291, column: 19, scope: !3541)
!3543 = !DILocation(line: 1291, column: 17, scope: !3502)
!3544 = !DILocation(line: 1292, column: 33, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3541, file: !352, line: 1291, column: 28)
!3546 = !DILocation(line: 1292, column: 17, scope: !3545)
!3547 = !DILocation(line: 1294, column: 17, scope: !3545)
!3548 = !DILocation(line: 1296, column: 9, scope: !3502)
!3549 = !DILocation(line: 1298, column: 17, scope: !3494)
!3550 = !DILocation(line: 1300, column: 22, scope: !3482)
!3551 = !DILocation(line: 1300, column: 25, scope: !3482)
!3552 = !DILocation(line: 1300, column: 13, scope: !3482)
!3553 = !DILocation(line: 1300, column: 11, scope: !3482)
!3554 = !DILocation(line: 1301, column: 13, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3482, file: !352, line: 1301, column: 13)
!3556 = !DILocation(line: 1301, column: 15, scope: !3555)
!3557 = !DILocation(line: 1301, column: 13, scope: !3482)
!3558 = !DILocation(line: 1302, column: 13, scope: !3555)
!3559 = !DILocation(line: 1304, column: 17, scope: !3482)
!3560 = !DILocation(line: 1306, column: 26, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3482, file: !352, line: 1304, column: 20)
!3562 = !DILocation(line: 1306, column: 36, scope: !3561)
!3563 = !DILocation(line: 1306, column: 40, scope: !3561)
!3564 = !DILocation(line: 1308, column: 29, scope: !3561)
!3565 = !DILocation(line: 1308, column: 26, scope: !3561)
!3566 = !DILocation(line: 1308, column: 38, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3561, file: !352, line: 1308, column: 38)
!3568 = !DILocation(line: 1308, column: 38, scope: !3561)
!3569 = !DILocation(line: 1308, column: 49, scope: !3570)
!3570 = !DILexicalBlockFile(scope: !3567, file: !352, discriminator: 1)
!3571 = !DILocation(line: 1308, column: 43, scope: !3567)
!3572 = !DILocation(line: 1308, column: 53, scope: !3573)
!3573 = !DILexicalBlockFile(scope: !3574, file: !352, discriminator: 3)
!3574 = !DILexicalBlockFile(scope: !3561, file: !352, discriminator: 2)
!3575 = !DILocation(line: 1311, column: 20, scope: !3482)
!3576 = !DILocation(line: 1311, column: 23, scope: !3482)
!3577 = !DILocation(line: 1311, column: 18, scope: !3482)
!3578 = !DILocation(line: 1312, column: 22, scope: !3482)
!3579 = !DILocation(line: 1312, column: 28, scope: !3482)
!3580 = !DILocation(line: 1312, column: 31, scope: !3482)
!3581 = !DILocation(line: 1312, column: 16, scope: !3482)
!3582 = !DILocation(line: 1312, column: 14, scope: !3482)
!3583 = !DILocation(line: 1313, column: 13, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3482, file: !352, line: 1313, column: 13)
!3585 = !DILocation(line: 1313, column: 18, scope: !3584)
!3586 = !DILocation(line: 1313, column: 13, scope: !3482)
!3587 = !DILocation(line: 1314, column: 13, scope: !3584)
!3588 = !DILocation(line: 1317, column: 13, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3482, file: !352, line: 1317, column: 13)
!3590 = !DILocation(line: 1317, column: 54, scope: !3589)
!3591 = !DILocation(line: 1317, column: 52, scope: !3589)
!3592 = !DILocation(line: 1317, column: 62, scope: !3589)
!3593 = !DILocation(line: 1317, column: 60, scope: !3589)
!3594 = !DILocation(line: 1317, column: 17, scope: !3589)
!3595 = !DILocation(line: 1317, column: 13, scope: !3482)
!3596 = !DILocation(line: 1318, column: 13, scope: !3589)
!3597 = !DILocation(line: 1319, column: 17, scope: !3482)
!3598 = !DILocation(line: 1319, column: 23, scope: !3482)
!3599 = !DILocation(line: 1319, column: 21, scope: !3482)
!3600 = !DILocation(line: 1319, column: 14, scope: !3482)
!3601 = !DILocation(line: 1323, column: 10, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !737, file: !352, line: 1323, column: 9)
!3603 = !DILocation(line: 1323, column: 17, scope: !3602)
!3604 = !DILocation(line: 1323, column: 22, scope: !3602)
!3605 = !DILocation(line: 1323, column: 9, scope: !737)
!3606 = !DILocation(line: 1324, column: 9, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3602, file: !352, line: 1323, column: 80)
!3608 = !DILocation(line: 1325, column: 9, scope: !3607)
!3609 = !DILocation(line: 1328, column: 20, scope: !737)
!3610 = !DILocation(line: 1328, column: 5, scope: !737)
!3611 = !DILocation(line: 1328, column: 11, scope: !737)
!3612 = !DILocation(line: 1328, column: 18, scope: !737)
!3613 = !DILocation(line: 1329, column: 19, scope: !737)
!3614 = !DILocation(line: 1329, column: 5, scope: !737)
!3615 = !DILocation(line: 1329, column: 11, scope: !737)
!3616 = !DILocation(line: 1329, column: 17, scope: !737)
!3617 = !DILocation(line: 1330, column: 27, scope: !737)
!3618 = !DILocation(line: 1330, column: 34, scope: !737)
!3619 = !DILocation(line: 1330, column: 39, scope: !737)
!3620 = !DILocation(line: 1330, column: 13, scope: !737)
!3621 = !DILocation(line: 1330, column: 11, scope: !737)
!3622 = !DILocation(line: 1331, column: 9, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !737, file: !352, line: 1331, column: 9)
!3624 = !DILocation(line: 1331, column: 15, scope: !3623)
!3625 = !DILocation(line: 1331, column: 9, scope: !737)
!3626 = !DILocation(line: 1332, column: 9, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3623, file: !352, line: 1331, column: 30)
!3628 = !DILocation(line: 1333, column: 9, scope: !3627)
!3629 = !DILocation(line: 1336, column: 9, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !737, file: !352, line: 1336, column: 9)
!3631 = !DILocation(line: 1336, column: 15, scope: !3630)
!3632 = !DILocation(line: 1336, column: 23, scope: !3630)
!3633 = !DILocation(line: 1336, column: 9, scope: !737)
!3634 = !DILocation(line: 1337, column: 20, scope: !3630)
!3635 = !DILocation(line: 1337, column: 26, scope: !3630)
!3636 = !DILocation(line: 1337, column: 9, scope: !3630)
!3637 = !DILocation(line: 1338, column: 21, scope: !737)
!3638 = !DILocation(line: 1338, column: 5, scope: !737)
!3639 = !DILocation(line: 1338, column: 11, scope: !737)
!3640 = !DILocation(line: 1338, column: 19, scope: !737)
!3641 = !DILocation(line: 1340, column: 9, scope: !737)
!3642 = !DILocation(line: 1340, column: 7, scope: !737)
!3643 = !DILocation(line: 1341, column: 10, scope: !737)
!3644 = !DILocation(line: 1342, column: 5, scope: !737)
!3645 = !DILocation(line: 1342, column: 19, scope: !3474)
!3646 = !DILocation(line: 1342, column: 17, scope: !737)
!3647 = !DILocation(line: 1342, column: 15, scope: !737)
!3648 = !DILocation(line: 1342, column: 12, scope: !737)
!3649 = !DILocation(line: 1342, column: 23, scope: !737)
!3650 = !DILocation(line: 1343, column: 66, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !352, line: 1343, column: 13)
!3652 = distinct !DILexicalBlock(scope: !737, file: !352, line: 1342, column: 32)
!3653 = !DILocation(line: 1343, column: 65, scope: !3651)
!3654 = !DILocation(line: 1343, column: 69, scope: !3651)
!3655 = !DILocation(line: 1343, column: 49, scope: !3651)
!3656 = !DILocation(line: 1343, column: 47, scope: !3651)
!3657 = !DILocation(line: 1343, column: 79, scope: !3651)
!3658 = !DILocation(line: 1343, column: 31, scope: !3651)
!3659 = !DILocation(line: 1343, column: 14, scope: !3651)
!3660 = !DILocation(line: 1343, column: 89, scope: !3651)
!3661 = !DILocation(line: 1343, column: 13, scope: !3652)
!3662 = !DILocation(line: 1344, column: 13, scope: !3651)
!3663 = !DILocation(line: 1345, column: 20, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3652, file: !352, line: 1345, column: 13)
!3665 = !DILocation(line: 1345, column: 17, scope: !3664)
!3666 = !DILocation(line: 1345, column: 22, scope: !3664)
!3667 = !DILocation(line: 1345, column: 25, scope: !3668)
!3668 = !DILexicalBlockFile(scope: !3664, file: !352, discriminator: 1)
!3669 = !DILocation(line: 1345, column: 27, scope: !3664)
!3670 = !DILocation(line: 1345, column: 13, scope: !3652)
!3671 = !DILocation(line: 1346, column: 19, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3664, file: !352, line: 1345, column: 35)
!3673 = !DILocation(line: 1346, column: 21, scope: !3672)
!3674 = !DILocation(line: 1346, column: 17, scope: !3672)
!3675 = !DILocation(line: 1347, column: 13, scope: !3672)
!3676 = !DILocation(line: 1347, column: 34, scope: !3677)
!3677 = !DILexicalBlockFile(scope: !3678, file: !352, discriminator: 4)
!3678 = !DILexicalBlockFile(scope: !3672, file: !352, discriminator: 1)
!3679 = !DILocation(line: 1347, column: 32, scope: !3672)
!3680 = !DILocation(line: 1347, column: 30, scope: !3672)
!3681 = !DILocation(line: 1347, column: 27, scope: !3672)
!3682 = !DILocation(line: 1347, column: 24, scope: !3672)
!3683 = !DILocation(line: 1347, column: 38, scope: !3672)
!3684 = !DILocation(line: 1347, column: 41, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !3672, file: !352, discriminator: 2)
!3686 = !DILocation(line: 1347, column: 43, scope: !3672)
!3687 = !DILocation(line: 1347, column: 13, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3672, file: !352, discriminator: 3)
!3689 = !DILocation(line: 1348, column: 23, scope: !3672)
!3690 = !DILocation(line: 1348, column: 26, scope: !3672)
!3691 = !DILocation(line: 1348, column: 33, scope: !3672)
!3692 = !DILocation(line: 1348, column: 35, scope: !3672)
!3693 = !DILocation(line: 1348, column: 32, scope: !3672)
!3694 = !DILocation(line: 1348, column: 30, scope: !3672)
!3695 = !DILocation(line: 1348, column: 21, scope: !3672)
!3696 = !DILocation(line: 1349, column: 17, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3672, file: !352, line: 1349, column: 17)
!3698 = !DILocation(line: 1349, column: 19, scope: !3697)
!3699 = !DILocation(line: 1349, column: 17, scope: !3672)
!3700 = !DILocation(line: 1350, column: 17, scope: !3697)
!3701 = !DILocation(line: 1351, column: 9, scope: !3672)
!3702 = !DILocation(line: 1353, column: 17, scope: !3664)
!3703 = !DILocation(line: 1355, column: 22, scope: !3652)
!3704 = !DILocation(line: 1355, column: 25, scope: !3652)
!3705 = !DILocation(line: 1355, column: 13, scope: !3652)
!3706 = !DILocation(line: 1355, column: 11, scope: !3652)
!3707 = !DILocation(line: 1357, column: 22, scope: !3652)
!3708 = !DILocation(line: 1357, column: 28, scope: !3652)
!3709 = !DILocation(line: 1357, column: 31, scope: !3652)
!3710 = !DILocation(line: 1357, column: 16, scope: !3652)
!3711 = !DILocation(line: 1357, column: 14, scope: !3652)
!3712 = !DILocation(line: 1358, column: 13, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3652, file: !352, line: 1358, column: 13)
!3714 = !DILocation(line: 1358, column: 15, scope: !3713)
!3715 = !DILocation(line: 1358, column: 22, scope: !3713)
!3716 = !DILocation(line: 1358, column: 25, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !3713, file: !352, discriminator: 1)
!3718 = !DILocation(line: 1358, column: 27, scope: !3713)
!3719 = !DILocation(line: 1358, column: 13, scope: !3652)
!3720 = !DILocation(line: 1359, column: 29, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3713, file: !352, line: 1358, column: 35)
!3722 = !DILocation(line: 1359, column: 13, scope: !3721)
!3723 = !DILocation(line: 1359, column: 20, scope: !3721)
!3724 = !DILocation(line: 1359, column: 27, scope: !3721)
!3725 = !DILocation(line: 1360, column: 27, scope: !3721)
!3726 = !DILocation(line: 1360, column: 13, scope: !3721)
!3727 = !DILocation(line: 1360, column: 20, scope: !3721)
!3728 = !DILocation(line: 1360, column: 25, scope: !3721)
!3729 = !DILocation(line: 1361, column: 29, scope: !3721)
!3730 = !DILocation(line: 1361, column: 13, scope: !3721)
!3731 = !DILocation(line: 1361, column: 20, scope: !3721)
!3732 = !DILocation(line: 1361, column: 27, scope: !3721)
!3733 = !DILocation(line: 1362, column: 13, scope: !3721)
!3734 = !DILocation(line: 1362, column: 20, scope: !3721)
!3735 = !DILocation(line: 1362, column: 27, scope: !3721)
!3736 = !DILocation(line: 1363, column: 18, scope: !3721)
!3737 = !DILocation(line: 1364, column: 21, scope: !3721)
!3738 = !DILocation(line: 1364, column: 18, scope: !3721)
!3739 = !DILocation(line: 1365, column: 9, scope: !3721)
!3740 = !DILocation(line: 1365, column: 20, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3713, file: !352, line: 1365, column: 20)
!3742 = !DILocation(line: 1365, column: 22, scope: !3741)
!3743 = !DILocation(line: 1365, column: 20, scope: !3713)
!3744 = !DILocation(line: 1366, column: 21, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3741, file: !352, line: 1365, column: 30)
!3746 = !DILocation(line: 1366, column: 18, scope: !3745)
!3747 = !DILocation(line: 1367, column: 9, scope: !3745)
!3748 = !DILocation(line: 1367, column: 20, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3741, file: !352, line: 1367, column: 20)
!3750 = !DILocation(line: 1367, column: 20, scope: !3741)
!3751 = !DILocation(line: 1368, column: 29, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3749, file: !352, line: 1367, column: 25)
!3753 = !DILocation(line: 1368, column: 13, scope: !3752)
!3754 = !DILocation(line: 1368, column: 20, scope: !3752)
!3755 = !DILocation(line: 1368, column: 27, scope: !3752)
!3756 = !DILocation(line: 1369, column: 27, scope: !3752)
!3757 = !DILocation(line: 1369, column: 30, scope: !3752)
!3758 = !DILocation(line: 1369, column: 13, scope: !3752)
!3759 = !DILocation(line: 1369, column: 20, scope: !3752)
!3760 = !DILocation(line: 1369, column: 25, scope: !3752)
!3761 = !DILocation(line: 1370, column: 29, scope: !3752)
!3762 = !DILocation(line: 1370, column: 13, scope: !3752)
!3763 = !DILocation(line: 1370, column: 20, scope: !3752)
!3764 = !DILocation(line: 1370, column: 27, scope: !3752)
!3765 = !DILocation(line: 1371, column: 29, scope: !3752)
!3766 = !DILocation(line: 1371, column: 13, scope: !3752)
!3767 = !DILocation(line: 1371, column: 20, scope: !3752)
!3768 = !DILocation(line: 1371, column: 27, scope: !3752)
!3769 = !DILocation(line: 1372, column: 18, scope: !3752)
!3770 = !DILocation(line: 1373, column: 21, scope: !3752)
!3771 = !DILocation(line: 1373, column: 24, scope: !3752)
!3772 = !DILocation(line: 1373, column: 31, scope: !3752)
!3773 = !DILocation(line: 1373, column: 29, scope: !3752)
!3774 = !DILocation(line: 1373, column: 18, scope: !3752)
!3775 = !DILocation(line: 1374, column: 9, scope: !3752)
!3776 = !DILocation(line: 1376, column: 5, scope: !737)
!3777 = !DILocation(line: 1376, column: 12, scope: !737)
!3778 = !DILocation(line: 1376, column: 19, scope: !737)
!3779 = !DILocation(line: 1377, column: 21, scope: !737)
!3780 = !DILocation(line: 1377, column: 5, scope: !737)
!3781 = !DILocation(line: 1377, column: 12, scope: !737)
!3782 = !DILocation(line: 1377, column: 19, scope: !737)
!3783 = !DILocation(line: 1378, column: 5, scope: !737)
!3784 = !DILocation(line: 1378, column: 12, scope: !737)
!3785 = !DILocation(line: 1378, column: 17, scope: !737)
!3786 = !DILocation(line: 1379, column: 5, scope: !737)
!3787 = !DILocation(line: 1379, column: 12, scope: !737)
!3788 = !DILocation(line: 1379, column: 19, scope: !737)
!3789 = !DILocation(line: 1381, column: 5, scope: !737)
!3790 = !DILocation(line: 1384, column: 21, scope: !737)
!3791 = !DILocation(line: 1384, column: 5, scope: !737)
!3792 = !DILocation(line: 1386, column: 5, scope: !737)
!3793 = !DILocation(line: 1387, column: 1, scope: !737)
!3794 = !DILocation(line: 1193, column: 19, scope: !753)
!3795 = !DILocation(line: 1195, column: 5, scope: !753)
!3796 = !DILocation(line: 1195, column: 17, scope: !753)
!3797 = !DILocation(line: 1195, column: 25, scope: !753)
!3798 = !DILocation(line: 1195, column: 30, scope: !753)
!3799 = !DILocation(line: 1196, column: 14, scope: !753)
!3800 = !DILocation(line: 1196, column: 13, scope: !753)
!3801 = !DILocation(line: 1198, column: 9, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !753, file: !352, line: 1196, column: 19)
!3803 = !DILocation(line: 1201, column: 9, scope: !3802)
!3804 = !DILocation(line: 1204, column: 9, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3802, file: !352, line: 1202, column: 15)
!3806 = !DILocation(line: 1210, column: 12, scope: !3802)
!3807 = !DILocation(line: 1210, column: 9, scope: !3802)
!3808 = !DILocation(line: 1213, column: 9, scope: !3802)
!3809 = !DILocation(line: 1215, column: 1, scope: !753)
!3810 = !DILocation(line: 1221, column: 14, scope: !931)
!3811 = !DILocation(line: 1221, column: 34, scope: !931)
!3812 = !DILocation(line: 1223, column: 5, scope: !931)
!3813 = !DILocation(line: 1223, column: 12, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !3815, file: !352, discriminator: 2)
!3815 = !DILexicalBlockFile(scope: !3816, file: !352, discriminator: 1)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !352, line: 1223, column: 5)
!3817 = distinct !DILexicalBlock(scope: !931, file: !352, line: 1223, column: 5)
!3818 = !DILocation(line: 1223, column: 15, scope: !3816)
!3819 = !DILocation(line: 1223, column: 12, scope: !3816)
!3820 = !DILocation(line: 1223, column: 22, scope: !3816)
!3821 = !DILocation(line: 1223, column: 5, scope: !3817)
!3822 = !DILocation(line: 1224, column: 13, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !352, line: 1224, column: 13)
!3824 = distinct !DILexicalBlock(scope: !3816, file: !352, line: 1223, column: 36)
!3825 = !DILocation(line: 1224, column: 16, scope: !3823)
!3826 = !DILocation(line: 1224, column: 26, scope: !3823)
!3827 = !DILocation(line: 1224, column: 23, scope: !3823)
!3828 = !DILocation(line: 1224, column: 13, scope: !3824)
!3829 = !DILocation(line: 1225, column: 20, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3823, file: !352, line: 1224, column: 29)
!3831 = !DILocation(line: 1225, column: 13, scope: !3830)
!3832 = !DILocation(line: 1227, column: 5, scope: !3824)
!3833 = !DILocation(line: 1223, column: 32, scope: !3816)
!3834 = !DILocation(line: 1223, column: 5, scope: !3816)
!3835 = !DILocation(line: 1228, column: 21, scope: !931)
!3836 = !DILocation(line: 1228, column: 5, scope: !931)
!3837 = !DILocation(line: 1229, column: 5, scope: !931)
!3838 = !DILocation(line: 1230, column: 1, scope: !931)
!3839 = !DILocation(line: 1236, column: 18, scope: !937)
!3840 = !DILocation(line: 1236, column: 29, scope: !937)
!3841 = !DILocation(line: 1236, column: 49, scope: !937)
!3842 = !DILocation(line: 1238, column: 5, scope: !937)
!3843 = !DILocation(line: 1238, column: 16, scope: !937)
!3844 = !DILocation(line: 1240, column: 9, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !937, file: !352, line: 1240, column: 9)
!3846 = !DILocation(line: 1240, column: 12, scope: !3845)
!3847 = !DILocation(line: 1240, column: 22, scope: !3845)
!3848 = !DILocation(line: 1240, column: 19, scope: !3845)
!3849 = !DILocation(line: 1240, column: 9, scope: !937)
!3850 = !DILocation(line: 1241, column: 13, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !352, line: 1241, column: 13)
!3852 = distinct !DILexicalBlock(scope: !3845, file: !352, line: 1240, column: 25)
!3853 = !DILocation(line: 1241, column: 16, scope: !3851)
!3854 = !{!1397, !1379, i64 16}
!3855 = !DILocation(line: 1241, column: 26, scope: !3851)
!3856 = !DILocation(line: 1241, column: 29, scope: !3857)
!3857 = !DILexicalBlockFile(scope: !3851, file: !352, discriminator: 1)
!3858 = !DILocation(line: 1241, column: 34, scope: !3851)
!3859 = !DILocation(line: 1241, column: 13, scope: !3852)
!3860 = !DILocation(line: 1242, column: 22, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3851, file: !352, line: 1241, column: 39)
!3862 = !DILocation(line: 1242, column: 25, scope: !3861)
!3863 = !DILocation(line: 1242, column: 35, scope: !3861)
!3864 = !DILocation(line: 1242, column: 43, scope: !3861)
!3865 = !DILocation(line: 1242, column: 48, scope: !3861)
!3866 = !DILocation(line: 1242, column: 56, scope: !3861)
!3867 = !DILocation(line: 1242, column: 59, scope: !3861)
!3868 = !DILocation(line: 1242, column: 53, scope: !3861)
!3869 = !DILocation(line: 1242, column: 40, scope: !3861)
!3870 = !DILocation(line: 1242, column: 19, scope: !3861)
!3871 = !DILocation(line: 1243, column: 17, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3861, file: !352, line: 1243, column: 17)
!3873 = !DILocation(line: 1243, column: 59, scope: !3872)
!3874 = !DILocation(line: 1243, column: 57, scope: !3872)
!3875 = !DILocation(line: 1243, column: 23, scope: !3872)
!3876 = !DILocation(line: 1243, column: 17, scope: !3861)
!3877 = !DILocation(line: 1244, column: 17, scope: !3872)
!3878 = !DILocation(line: 1245, column: 21, scope: !3861)
!3879 = !DILocation(line: 1245, column: 18, scope: !3861)
!3880 = !DILocation(line: 1246, column: 9, scope: !3861)
!3881 = !DILocation(line: 1247, column: 5, scope: !3852)
!3882 = !DILocation(line: 1248, column: 12, scope: !937)
!3883 = !DILocation(line: 1248, column: 5, scope: !937)
!3884 = !DILocation(line: 1249, column: 1, scope: !937)
!3885 = !DILocation(line: 354, column: 21, scope: !759)
!3886 = !DILocation(line: 354, column: 41, scope: !759)
!3887 = !DILocation(line: 356, column: 51, scope: !759)
!3888 = !DILocation(line: 356, column: 35, scope: !759)
!3889 = !DILocation(line: 356, column: 28, scope: !759)
!3890 = !DILocation(line: 356, column: 12, scope: !759)
!3891 = !DILocation(line: 356, column: 5, scope: !759)
!3892 = !DILocation(line: 499, column: 15, scope: !765)
!3893 = !DILocation(line: 499, column: 28, scope: !765)
!3894 = !DILocation(line: 499, column: 48, scope: !765)
!3895 = !DILocation(line: 501, column: 5, scope: !765)
!3896 = !DILocation(line: 501, column: 10, scope: !765)
!3897 = !DILocation(line: 502, column: 18, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !765, file: !352, line: 502, column: 9)
!3899 = !DILocation(line: 502, column: 9, scope: !3898)
!3900 = !DILocation(line: 502, column: 25, scope: !3898)
!3901 = !DILocation(line: 502, column: 9, scope: !765)
!3902 = !DILocation(line: 503, column: 9, scope: !3898)
!3903 = !DILocation(line: 504, column: 9, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !765, file: !352, line: 504, column: 9)
!3905 = !DILocation(line: 504, column: 11, scope: !3904)
!3906 = !DILocation(line: 504, column: 18, scope: !3904)
!3907 = !DILocation(line: 504, column: 21, scope: !3908)
!3908 = !DILexicalBlockFile(scope: !3904, file: !352, discriminator: 1)
!3909 = !DILocation(line: 504, column: 23, scope: !3904)
!3910 = !DILocation(line: 504, column: 9, scope: !765)
!3911 = !DILocation(line: 505, column: 25, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3904, file: !352, line: 504, column: 29)
!3913 = !DILocation(line: 505, column: 9, scope: !3912)
!3914 = !DILocation(line: 507, column: 9, scope: !3912)
!3915 = !DILocation(line: 509, column: 16, scope: !765)
!3916 = !DILocation(line: 509, column: 10, scope: !765)
!3917 = !DILocation(line: 509, column: 6, scope: !765)
!3918 = !DILocation(line: 509, column: 8, scope: !765)
!3919 = !DILocation(line: 510, column: 5, scope: !765)
!3920 = !DILocation(line: 511, column: 1, scope: !765)
!3921 = !DILocation(line: 360, column: 22, scope: !786)
!3922 = !DILocation(line: 360, column: 42, scope: !786)
!3923 = !DILocation(line: 362, column: 53, scope: !786)
!3924 = !DILocation(line: 362, column: 35, scope: !786)
!3925 = !DILocation(line: 362, column: 28, scope: !786)
!3926 = !DILocation(line: 362, column: 12, scope: !786)
!3927 = !DILocation(line: 362, column: 5, scope: !786)
!3928 = !DILocation(line: 514, column: 16, scope: !790)
!3929 = !DILocation(line: 514, column: 29, scope: !790)
!3930 = !DILocation(line: 514, column: 49, scope: !790)
!3931 = !DILocation(line: 516, column: 5, scope: !790)
!3932 = !DILocation(line: 516, column: 10, scope: !790)
!3933 = !DILocation(line: 517, column: 18, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !790, file: !352, line: 517, column: 9)
!3935 = !DILocation(line: 517, column: 9, scope: !3934)
!3936 = !DILocation(line: 517, column: 25, scope: !3934)
!3937 = !DILocation(line: 517, column: 9, scope: !790)
!3938 = !DILocation(line: 518, column: 9, scope: !3934)
!3939 = !DILocation(line: 519, column: 9, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !790, file: !352, line: 519, column: 9)
!3941 = !DILocation(line: 519, column: 11, scope: !3940)
!3942 = !DILocation(line: 519, column: 15, scope: !3940)
!3943 = !DILocation(line: 519, column: 18, scope: !3944)
!3944 = !DILexicalBlockFile(scope: !3940, file: !352, discriminator: 1)
!3945 = !DILocation(line: 519, column: 20, scope: !3940)
!3946 = !DILocation(line: 519, column: 9, scope: !790)
!3947 = !DILocation(line: 520, column: 25, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3940, file: !352, line: 519, column: 26)
!3949 = !DILocation(line: 520, column: 9, scope: !3948)
!3950 = !DILocation(line: 522, column: 9, scope: !3948)
!3951 = !DILocation(line: 524, column: 16, scope: !790)
!3952 = !DILocation(line: 524, column: 10, scope: !790)
!3953 = !DILocation(line: 524, column: 6, scope: !790)
!3954 = !DILocation(line: 524, column: 8, scope: !790)
!3955 = !DILocation(line: 525, column: 5, scope: !790)
!3956 = !DILocation(line: 526, column: 1, scope: !790)
!3957 = !DILocation(line: 348, column: 21, scope: !796)
!3958 = !DILocation(line: 348, column: 41, scope: !796)
!3959 = !DILocation(line: 350, column: 38, scope: !796)
!3960 = !DILocation(line: 350, column: 12, scope: !796)
!3961 = !DILocation(line: 350, column: 5, scope: !796)
!3962 = !DILocation(line: 529, column: 15, scope: !800)
!3963 = !DILocation(line: 529, column: 28, scope: !800)
!3964 = !DILocation(line: 529, column: 48, scope: !800)
!3965 = !DILocation(line: 531, column: 27, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !800, file: !352, line: 531, column: 9)
!3967 = !DILocation(line: 531, column: 32, scope: !3966)
!3968 = !DILocation(line: 531, column: 43, scope: !3966)
!3969 = !DILocation(line: 531, column: 52, scope: !3966)
!3970 = !DILocation(line: 531, column: 69, scope: !3966)
!3971 = !DILocation(line: 531, column: 75, scope: !3966)
!3972 = !DILocation(line: 531, column: 91, scope: !3973)
!3973 = !DILexicalBlockFile(scope: !3966, file: !352, discriminator: 1)
!3974 = !DILocation(line: 531, column: 78, scope: !3966)
!3975 = !DILocation(line: 531, column: 94, scope: !3966)
!3976 = !DILocation(line: 531, column: 9, scope: !800)
!3977 = !DILocation(line: 532, column: 25, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3966, file: !352, line: 531, column: 100)
!3979 = !DILocation(line: 532, column: 9, scope: !3978)
!3980 = !DILocation(line: 534, column: 9, scope: !3978)
!3981 = !DILocation(line: 536, column: 28, scope: !800)
!3982 = !DILocation(line: 536, column: 11, scope: !800)
!3983 = !DILocation(line: 536, column: 10, scope: !800)
!3984 = !DILocation(line: 536, column: 6, scope: !800)
!3985 = !DILocation(line: 536, column: 8, scope: !800)
!3986 = !DILocation(line: 537, column: 5, scope: !800)
!3987 = !DILocation(line: 538, column: 1, scope: !800)
!3988 = !DILocation(line: 756, column: 20, scope: !805)
!3989 = !DILocation(line: 756, column: 40, scope: !805)
!3990 = !DILocation(line: 758, column: 5, scope: !805)
!3991 = !DILocation(line: 758, column: 10, scope: !805)
!3992 = !DILocation(line: 759, column: 5, scope: !805)
!3993 = !DILocation(line: 759, column: 16, scope: !805)
!3994 = !DILocation(line: 759, column: 20, scope: !805)
!3995 = !DILocation(line: 759, column: 23, scope: !805)
!3996 = !DILocation(line: 760, column: 5, scope: !805)
!3997 = !DILocation(line: 760, column: 26, scope: !805)
!3998 = !DILocation(line: 760, column: 57, scope: !805)
!3999 = !DILocation(line: 761, column: 5, scope: !805)
!4000 = !DILocation(line: 762, column: 14, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !805, file: !352, line: 761, column: 8)
!4002 = !DILocation(line: 762, column: 15, scope: !4001)
!4003 = !DILocation(line: 762, column: 28, scope: !4001)
!4004 = !DILocation(line: 762, column: 22, scope: !4001)
!4005 = !DILocation(line: 762, column: 20, scope: !4001)
!4006 = !DILocation(line: 762, column: 11, scope: !4001)
!4007 = !DILocation(line: 763, column: 5, scope: !4001)
!4008 = !DILocation(line: 763, column: 14, scope: !4009)
!4009 = !DILexicalBlockFile(scope: !805, file: !352, discriminator: 1)
!4010 = !DILocation(line: 763, column: 18, scope: !805)
!4011 = !DILocation(line: 765, column: 13, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !805, file: !352, line: 765, column: 9)
!4013 = !DILocation(line: 765, column: 16, scope: !4012)
!4014 = !DILocation(line: 765, column: 11, scope: !4012)
!4015 = !DILocation(line: 765, column: 9, scope: !805)
!4016 = !DILocation(line: 766, column: 16, scope: !4012)
!4017 = !DILocation(line: 766, column: 33, scope: !4012)
!4018 = !DILocation(line: 766, column: 36, scope: !4012)
!4019 = !DILocation(line: 766, column: 31, scope: !4012)
!4020 = !DILocation(line: 766, column: 42, scope: !4012)
!4021 = !DILocation(line: 766, column: 24, scope: !4012)
!4022 = !DILocation(line: 766, column: 18, scope: !4012)
!4023 = !DILocation(line: 766, column: 14, scope: !4012)
!4024 = !DILocation(line: 766, column: 11, scope: !4012)
!4025 = !DILocation(line: 766, column: 9, scope: !4012)
!4026 = !DILocation(line: 767, column: 28, scope: !805)
!4027 = !DILocation(line: 767, column: 12, scope: !805)
!4028 = !DILocation(line: 768, column: 1, scope: !805)
!4029 = !DILocation(line: 767, column: 5, scope: !805)
!4030 = !DILocation(line: 850, column: 14, scope: !812)
!4031 = !DILocation(line: 850, column: 27, scope: !812)
!4032 = !DILocation(line: 850, column: 47, scope: !812)
!4033 = !DILocation(line: 852, column: 5, scope: !812)
!4034 = !DILocation(line: 852, column: 10, scope: !812)
!4035 = !DILocation(line: 853, column: 5, scope: !812)
!4036 = !DILocation(line: 853, column: 16, scope: !812)
!4037 = !DILocation(line: 854, column: 18, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !812, file: !352, line: 854, column: 9)
!4039 = !DILocation(line: 854, column: 9, scope: !4038)
!4040 = !DILocation(line: 854, column: 25, scope: !4038)
!4041 = !DILocation(line: 854, column: 9, scope: !812)
!4042 = !DILocation(line: 855, column: 9, scope: !4038)
!4043 = !DILocation(line: 856, column: 9, scope: !812)
!4044 = !DILocation(line: 856, column: 12, scope: !812)
!4045 = !DILocation(line: 856, column: 7, scope: !812)
!4046 = !DILocation(line: 857, column: 9, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !812, file: !352, line: 857, column: 9)
!4048 = !DILocation(line: 857, column: 11, scope: !4047)
!4049 = !DILocation(line: 857, column: 9, scope: !812)
!4050 = !DILocation(line: 858, column: 14, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !352, line: 858, column: 13)
!4052 = distinct !DILexicalBlock(scope: !4047, file: !352, line: 857, column: 17)
!4053 = !DILocation(line: 858, column: 16, scope: !4051)
!4054 = !DILocation(line: 858, column: 22, scope: !4051)
!4055 = !DILocation(line: 858, column: 26, scope: !4056)
!4056 = !DILexicalBlockFile(scope: !4051, file: !352, discriminator: 1)
!4057 = !DILocation(line: 858, column: 28, scope: !4051)
!4058 = !DILocation(line: 858, column: 37, scope: !4051)
!4059 = !DILocation(line: 858, column: 40, scope: !4060)
!4060 = !DILexicalBlockFile(scope: !4051, file: !352, discriminator: 2)
!4061 = !DILocation(line: 858, column: 42, scope: !4051)
!4062 = !DILocation(line: 858, column: 13, scope: !4052)
!4063 = !DILocation(line: 859, column: 33, scope: !4051)
!4064 = !DILocation(line: 859, column: 20, scope: !4051)
!4065 = !DILocation(line: 859, column: 13, scope: !4051)
!4066 = !DILocation(line: 861, column: 19, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4051, file: !352, line: 861, column: 18)
!4068 = !DILocation(line: 861, column: 21, scope: !4067)
!4069 = !DILocation(line: 861, column: 27, scope: !4067)
!4070 = !DILocation(line: 861, column: 31, scope: !4071)
!4071 = !DILexicalBlockFile(scope: !4067, file: !352, discriminator: 1)
!4072 = !DILocation(line: 861, column: 33, scope: !4067)
!4073 = !DILocation(line: 861, column: 48, scope: !4067)
!4074 = !DILocation(line: 861, column: 51, scope: !4075)
!4075 = !DILexicalBlockFile(scope: !4067, file: !352, discriminator: 2)
!4076 = !DILocation(line: 861, column: 53, scope: !4067)
!4077 = !DILocation(line: 861, column: 18, scope: !4051)
!4078 = !DILocation(line: 862, column: 33, scope: !4067)
!4079 = !DILocation(line: 862, column: 20, scope: !4067)
!4080 = !DILocation(line: 862, column: 13, scope: !4067)
!4081 = !DILocation(line: 864, column: 5, scope: !4052)
!4082 = !DILocation(line: 865, column: 5, scope: !812)
!4083 = !DILocation(line: 866, column: 24, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !812, file: !352, line: 865, column: 8)
!4085 = !DILocation(line: 866, column: 18, scope: !4084)
!4086 = !DILocation(line: 866, column: 11, scope: !4084)
!4087 = !DILocation(line: 866, column: 9, scope: !4084)
!4088 = !DILocation(line: 866, column: 16, scope: !4084)
!4089 = !DILocation(line: 867, column: 11, scope: !4084)
!4090 = !DILocation(line: 868, column: 5, scope: !4084)
!4091 = !DILocation(line: 868, column: 14, scope: !4092)
!4092 = !DILexicalBlockFile(scope: !812, file: !352, discriminator: 1)
!4093 = !DILocation(line: 868, column: 16, scope: !812)
!4094 = !DILocation(line: 869, column: 5, scope: !812)
!4095 = !DILocation(line: 870, column: 1, scope: !812)
!4096 = !DILocation(line: 771, column: 21, scope: !831)
!4097 = !DILocation(line: 771, column: 41, scope: !831)
!4098 = !DILocation(line: 773, column: 5, scope: !831)
!4099 = !DILocation(line: 773, column: 19, scope: !831)
!4100 = !DILocation(line: 774, column: 5, scope: !831)
!4101 = !DILocation(line: 774, column: 16, scope: !831)
!4102 = !DILocation(line: 774, column: 20, scope: !831)
!4103 = !DILocation(line: 774, column: 23, scope: !831)
!4104 = !DILocation(line: 775, column: 5, scope: !831)
!4105 = !DILocation(line: 775, column: 26, scope: !831)
!4106 = !DILocation(line: 775, column: 57, scope: !831)
!4107 = !DILocation(line: 776, column: 5, scope: !831)
!4108 = !DILocation(line: 777, column: 14, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !831, file: !352, line: 776, column: 8)
!4110 = !DILocation(line: 777, column: 15, scope: !4109)
!4111 = !DILocation(line: 777, column: 28, scope: !4109)
!4112 = !DILocation(line: 777, column: 22, scope: !4109)
!4113 = !DILocation(line: 777, column: 20, scope: !4109)
!4114 = !DILocation(line: 777, column: 11, scope: !4109)
!4115 = !DILocation(line: 778, column: 5, scope: !4109)
!4116 = !DILocation(line: 778, column: 14, scope: !4117)
!4117 = !DILexicalBlockFile(scope: !831, file: !352, discriminator: 1)
!4118 = !DILocation(line: 778, column: 18, scope: !831)
!4119 = !DILocation(line: 779, column: 9, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !831, file: !352, line: 779, column: 9)
!4121 = !DILocation(line: 779, column: 11, scope: !4120)
!4122 = !DILocation(line: 779, column: 9, scope: !831)
!4123 = !DILocation(line: 780, column: 38, scope: !4120)
!4124 = !DILocation(line: 780, column: 16, scope: !4120)
!4125 = !DILocation(line: 780, column: 9, scope: !4120)
!4126 = !DILocation(line: 781, column: 36, scope: !831)
!4127 = !DILocation(line: 781, column: 12, scope: !831)
!4128 = !DILocation(line: 781, column: 5, scope: !831)
!4129 = !DILocation(line: 782, column: 1, scope: !831)
!4130 = !DILocation(line: 873, column: 15, scope: !838)
!4131 = !DILocation(line: 873, column: 28, scope: !838)
!4132 = !DILocation(line: 873, column: 48, scope: !838)
!4133 = !DILocation(line: 875, column: 5, scope: !838)
!4134 = !DILocation(line: 875, column: 19, scope: !838)
!4135 = !DILocation(line: 876, column: 5, scope: !838)
!4136 = !DILocation(line: 876, column: 16, scope: !838)
!4137 = !DILocation(line: 877, column: 19, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !838, file: !352, line: 877, column: 9)
!4139 = !DILocation(line: 877, column: 9, scope: !4138)
!4140 = !DILocation(line: 877, column: 26, scope: !4138)
!4141 = !DILocation(line: 877, column: 9, scope: !838)
!4142 = !DILocation(line: 878, column: 9, scope: !4138)
!4143 = !DILocation(line: 879, column: 9, scope: !838)
!4144 = !DILocation(line: 879, column: 12, scope: !838)
!4145 = !DILocation(line: 879, column: 7, scope: !838)
!4146 = !DILocation(line: 880, column: 9, scope: !847)
!4147 = !DILocation(line: 880, column: 11, scope: !847)
!4148 = !DILocation(line: 880, column: 9, scope: !838)
!4149 = !DILocation(line: 881, column: 9, scope: !846)
!4150 = !DILocation(line: 881, column: 23, scope: !846)
!4151 = !DILocation(line: 882, column: 36, scope: !846)
!4152 = !DILocation(line: 882, column: 38, scope: !846)
!4153 = !DILocation(line: 882, column: 16, scope: !846)
!4154 = !DILocation(line: 883, column: 13, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !846, file: !352, line: 883, column: 13)
!4156 = !DILocation(line: 883, column: 18, scope: !4155)
!4157 = !DILocation(line: 883, column: 15, scope: !4155)
!4158 = !DILocation(line: 883, column: 13, scope: !846)
!4159 = !DILocation(line: 884, column: 33, scope: !4155)
!4160 = !DILocation(line: 884, column: 20, scope: !4155)
!4161 = !DILocation(line: 884, column: 13, scope: !4155)
!4162 = !DILocation(line: 885, column: 5, scope: !847)
!4163 = !DILocation(line: 885, column: 5, scope: !4164)
!4164 = !DILexicalBlockFile(scope: !847, file: !352, discriminator: 1)
!4165 = !DILocation(line: 885, column: 5, scope: !846)
!4166 = !DILocation(line: 886, column: 5, scope: !838)
!4167 = !DILocation(line: 887, column: 24, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !838, file: !352, line: 886, column: 8)
!4169 = !DILocation(line: 887, column: 18, scope: !4168)
!4170 = !DILocation(line: 887, column: 11, scope: !4168)
!4171 = !DILocation(line: 887, column: 9, scope: !4168)
!4172 = !DILocation(line: 887, column: 16, scope: !4168)
!4173 = !DILocation(line: 888, column: 11, scope: !4168)
!4174 = !DILocation(line: 889, column: 5, scope: !4168)
!4175 = !DILocation(line: 889, column: 14, scope: !4176)
!4176 = !DILexicalBlockFile(scope: !838, file: !352, discriminator: 1)
!4177 = !DILocation(line: 889, column: 16, scope: !838)
!4178 = !DILocation(line: 890, column: 5, scope: !838)
!4179 = !DILocation(line: 891, column: 1, scope: !838)
!4180 = !DILocation(line: 785, column: 25, scope: !858)
!4181 = !DILocation(line: 785, column: 45, scope: !858)
!4182 = !DILocation(line: 788, column: 5, scope: !858)
!4183 = !DILocation(line: 788, column: 15, scope: !858)
!4184 = !{!4185, !4185, i64 0}
!4185 = !{!"long long", !1369, i64 0}
!4186 = !DILocation(line: 789, column: 5, scope: !858)
!4187 = !DILocation(line: 789, column: 16, scope: !858)
!4188 = !DILocation(line: 789, column: 20, scope: !858)
!4189 = !DILocation(line: 789, column: 23, scope: !858)
!4190 = !DILocation(line: 790, column: 5, scope: !858)
!4191 = !DILocation(line: 790, column: 26, scope: !858)
!4192 = !DILocation(line: 790, column: 57, scope: !858)
!4193 = !DILocation(line: 791, column: 5, scope: !858)
!4194 = !DILocation(line: 792, column: 14, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !858, file: !352, line: 791, column: 8)
!4196 = !DILocation(line: 792, column: 15, scope: !4195)
!4197 = !DILocation(line: 792, column: 28, scope: !4195)
!4198 = !DILocation(line: 792, column: 22, scope: !4195)
!4199 = !DILocation(line: 792, column: 20, scope: !4195)
!4200 = !DILocation(line: 792, column: 11, scope: !4195)
!4201 = !DILocation(line: 793, column: 5, scope: !4195)
!4202 = !DILocation(line: 793, column: 14, scope: !4203)
!4203 = !DILexicalBlockFile(scope: !858, file: !352, discriminator: 1)
!4204 = !DILocation(line: 793, column: 18, scope: !858)
!4205 = !DILocation(line: 795, column: 13, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !858, file: !352, line: 795, column: 9)
!4207 = !DILocation(line: 795, column: 16, scope: !4206)
!4208 = !DILocation(line: 795, column: 11, scope: !4206)
!4209 = !DILocation(line: 795, column: 9, scope: !858)
!4210 = !DILocation(line: 796, column: 16, scope: !4206)
!4211 = !DILocation(line: 796, column: 43, scope: !4206)
!4212 = !DILocation(line: 796, column: 46, scope: !4206)
!4213 = !DILocation(line: 796, column: 41, scope: !4206)
!4214 = !DILocation(line: 796, column: 52, scope: !4206)
!4215 = !DILocation(line: 796, column: 34, scope: !4206)
!4216 = !DILocation(line: 796, column: 18, scope: !4206)
!4217 = !DILocation(line: 796, column: 14, scope: !4206)
!4218 = !DILocation(line: 796, column: 11, scope: !4206)
!4219 = !DILocation(line: 796, column: 9, scope: !4206)
!4220 = !DILocation(line: 797, column: 9, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !858, file: !352, line: 797, column: 9)
!4222 = !DILocation(line: 797, column: 11, scope: !4221)
!4223 = !DILocation(line: 797, column: 42, scope: !4221)
!4224 = !DILocation(line: 797, column: 45, scope: !4225)
!4225 = !DILexicalBlockFile(scope: !4221, file: !352, discriminator: 1)
!4226 = !DILocation(line: 797, column: 47, scope: !4221)
!4227 = !DILocation(line: 797, column: 9, scope: !858)
!4228 = !DILocation(line: 798, column: 39, scope: !4221)
!4229 = !DILocation(line: 798, column: 16, scope: !4221)
!4230 = !DILocation(line: 798, column: 9, scope: !4221)
!4231 = !DILocation(line: 799, column: 32, scope: !858)
!4232 = !DILocation(line: 799, column: 12, scope: !858)
!4233 = !DILocation(line: 799, column: 5, scope: !858)
!4234 = !DILocation(line: 806, column: 1, scope: !858)
!4235 = !DILocation(line: 894, column: 19, scope: !865)
!4236 = !DILocation(line: 894, column: 32, scope: !865)
!4237 = !DILocation(line: 894, column: 52, scope: !865)
!4238 = !DILocation(line: 896, column: 5, scope: !865)
!4239 = !DILocation(line: 896, column: 9, scope: !865)
!4240 = !DILocation(line: 897, column: 20, scope: !865)
!4241 = !DILocation(line: 897, column: 9, scope: !865)
!4242 = !DILocation(line: 897, column: 7, scope: !865)
!4243 = !DILocation(line: 898, column: 9, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !865, file: !352, line: 898, column: 9)
!4245 = !DILocation(line: 898, column: 11, scope: !4244)
!4246 = !DILocation(line: 898, column: 9, scope: !865)
!4247 = !DILocation(line: 899, column: 9, scope: !4244)
!4248 = !DILocation(line: 900, column: 47, scope: !865)
!4249 = !DILocation(line: 900, column: 31, scope: !865)
!4250 = !DILocation(line: 901, column: 48, scope: !865)
!4251 = !DILocation(line: 900, column: 11, scope: !865)
!4252 = !DILocation(line: 900, column: 9, scope: !865)
!4253 = !DILocation(line: 905, column: 5, scope: !865)
!4254 = !DILocation(line: 905, column: 10, scope: !4255)
!4255 = !DILexicalBlockFile(scope: !872, file: !352, discriminator: 1)
!4256 = !DILocation(line: 905, column: 20, scope: !872)
!4257 = !DILocation(line: 905, column: 50, scope: !872)
!4258 = !DILocation(line: 905, column: 62, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !872, file: !352, line: 905, column: 59)
!4260 = !DILocation(line: 905, column: 79, scope: !4259)
!4261 = !DILocation(line: 905, column: 59, scope: !4259)
!4262 = !DILocation(line: 905, column: 89, scope: !4259)
!4263 = !DILocation(line: 905, column: 59, scope: !872)
!4264 = !DILocation(line: 905, column: 59, scope: !4265)
!4265 = !DILexicalBlockFile(scope: !872, file: !352, discriminator: 2)
!4266 = !DILocation(line: 905, column: 120, scope: !4267)
!4267 = !DILexicalBlockFile(scope: !4259, file: !352, discriminator: 3)
!4268 = !DILocation(line: 905, column: 138, scope: !4259)
!4269 = !DILocation(line: 905, column: 148, scope: !4259)
!4270 = !DILocation(line: 905, column: 173, scope: !4259)
!4271 = !DILocation(line: 905, column: 104, scope: !4259)
!4272 = !DILocation(line: 905, column: 192, scope: !4273)
!4273 = !DILexicalBlockFile(scope: !865, file: !352, discriminator: 4)
!4274 = !DILocation(line: 905, column: 192, scope: !872)
!4275 = !DILocation(line: 905, column: 192, scope: !4276)
!4276 = !DILexicalBlockFile(scope: !872, file: !352, discriminator: 5)
!4277 = !DILocation(line: 906, column: 12, scope: !865)
!4278 = !DILocation(line: 906, column: 5, scope: !865)
!4279 = !DILocation(line: 907, column: 1, scope: !865)
!4280 = !DILocation(line: 809, column: 26, scope: !873)
!4281 = !DILocation(line: 809, column: 46, scope: !873)
!4282 = !DILocation(line: 812, column: 5, scope: !873)
!4283 = !DILocation(line: 812, column: 24, scope: !873)
!4284 = !DILocation(line: 813, column: 5, scope: !873)
!4285 = !DILocation(line: 813, column: 16, scope: !873)
!4286 = !DILocation(line: 813, column: 20, scope: !873)
!4287 = !DILocation(line: 813, column: 23, scope: !873)
!4288 = !DILocation(line: 814, column: 5, scope: !873)
!4289 = !DILocation(line: 814, column: 26, scope: !873)
!4290 = !DILocation(line: 814, column: 57, scope: !873)
!4291 = !DILocation(line: 815, column: 5, scope: !873)
!4292 = !DILocation(line: 816, column: 14, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !873, file: !352, line: 815, column: 8)
!4294 = !DILocation(line: 816, column: 15, scope: !4293)
!4295 = !DILocation(line: 816, column: 28, scope: !4293)
!4296 = !DILocation(line: 816, column: 22, scope: !4293)
!4297 = !DILocation(line: 816, column: 20, scope: !4293)
!4298 = !DILocation(line: 816, column: 11, scope: !4293)
!4299 = !DILocation(line: 817, column: 5, scope: !4293)
!4300 = !DILocation(line: 817, column: 14, scope: !4301)
!4301 = !DILexicalBlockFile(scope: !873, file: !352, discriminator: 1)
!4302 = !DILocation(line: 817, column: 18, scope: !873)
!4303 = !DILocation(line: 818, column: 9, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !873, file: !352, line: 818, column: 9)
!4305 = !DILocation(line: 818, column: 11, scope: !4304)
!4306 = !DILocation(line: 818, column: 9, scope: !873)
!4307 = !DILocation(line: 819, column: 39, scope: !4304)
!4308 = !DILocation(line: 819, column: 16, scope: !4304)
!4309 = !DILocation(line: 819, column: 9, scope: !4304)
!4310 = !DILocation(line: 820, column: 40, scope: !873)
!4311 = !DILocation(line: 820, column: 12, scope: !873)
!4312 = !DILocation(line: 820, column: 5, scope: !873)
!4313 = !DILocation(line: 827, column: 1, scope: !873)
!4314 = !DILocation(line: 910, column: 20, scope: !880)
!4315 = !DILocation(line: 910, column: 33, scope: !880)
!4316 = !DILocation(line: 910, column: 53, scope: !880)
!4317 = !DILocation(line: 912, column: 5, scope: !880)
!4318 = !DILocation(line: 912, column: 9, scope: !880)
!4319 = !DILocation(line: 913, column: 20, scope: !880)
!4320 = !DILocation(line: 913, column: 9, scope: !880)
!4321 = !DILocation(line: 913, column: 7, scope: !880)
!4322 = !DILocation(line: 914, column: 9, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !880, file: !352, line: 914, column: 9)
!4324 = !DILocation(line: 914, column: 11, scope: !4323)
!4325 = !DILocation(line: 914, column: 9, scope: !880)
!4326 = !DILocation(line: 915, column: 9, scope: !4323)
!4327 = !DILocation(line: 916, column: 47, scope: !880)
!4328 = !DILocation(line: 916, column: 31, scope: !880)
!4329 = !DILocation(line: 917, column: 48, scope: !880)
!4330 = !DILocation(line: 916, column: 11, scope: !880)
!4331 = !DILocation(line: 916, column: 9, scope: !880)
!4332 = !DILocation(line: 921, column: 5, scope: !880)
!4333 = !DILocation(line: 921, column: 10, scope: !4334)
!4334 = !DILexicalBlockFile(scope: !887, file: !352, discriminator: 1)
!4335 = !DILocation(line: 921, column: 20, scope: !887)
!4336 = !DILocation(line: 921, column: 50, scope: !887)
!4337 = !DILocation(line: 921, column: 62, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !887, file: !352, line: 921, column: 59)
!4339 = !DILocation(line: 921, column: 79, scope: !4338)
!4340 = !DILocation(line: 921, column: 59, scope: !4338)
!4341 = !DILocation(line: 921, column: 89, scope: !4338)
!4342 = !DILocation(line: 921, column: 59, scope: !887)
!4343 = !DILocation(line: 921, column: 59, scope: !4344)
!4344 = !DILexicalBlockFile(scope: !887, file: !352, discriminator: 2)
!4345 = !DILocation(line: 921, column: 120, scope: !4346)
!4346 = !DILexicalBlockFile(scope: !4338, file: !352, discriminator: 3)
!4347 = !DILocation(line: 921, column: 138, scope: !4338)
!4348 = !DILocation(line: 921, column: 148, scope: !4338)
!4349 = !DILocation(line: 921, column: 173, scope: !4338)
!4350 = !DILocation(line: 921, column: 104, scope: !4338)
!4351 = !DILocation(line: 921, column: 192, scope: !4352)
!4352 = !DILexicalBlockFile(scope: !880, file: !352, discriminator: 4)
!4353 = !DILocation(line: 921, column: 192, scope: !887)
!4354 = !DILocation(line: 921, column: 192, scope: !4355)
!4355 = !DILexicalBlockFile(scope: !887, file: !352, discriminator: 5)
!4356 = !DILocation(line: 922, column: 12, scope: !880)
!4357 = !DILocation(line: 922, column: 5, scope: !880)
!4358 = !DILocation(line: 923, column: 1, scope: !880)
!4359 = !DILocation(line: 842, column: 21, scope: !888)
!4360 = !DILocation(line: 842, column: 41, scope: !888)
!4361 = !DILocation(line: 844, column: 5, scope: !888)
!4362 = !DILocation(line: 844, column: 10, scope: !888)
!4363 = !DILocation(line: 845, column: 24, scope: !888)
!4364 = !DILocation(line: 845, column: 5, scope: !888)
!4365 = !DILocation(line: 846, column: 28, scope: !888)
!4366 = !DILocation(line: 846, column: 30, scope: !888)
!4367 = !DILocation(line: 846, column: 12, scope: !888)
!4368 = !DILocation(line: 847, column: 1, scope: !888)
!4369 = !DILocation(line: 846, column: 5, scope: !888)
!4370 = !DILocation(line: 950, column: 15, scope: !893)
!4371 = !DILocation(line: 950, column: 28, scope: !893)
!4372 = !DILocation(line: 950, column: 48, scope: !893)
!4373 = !DILocation(line: 952, column: 5, scope: !893)
!4374 = !DILocation(line: 952, column: 9, scope: !893)
!4375 = !DILocation(line: 953, column: 25, scope: !893)
!4376 = !DILocation(line: 953, column: 9, scope: !893)
!4377 = !DILocation(line: 953, column: 7, scope: !893)
!4378 = !DILocation(line: 954, column: 9, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !893, file: !352, line: 954, column: 9)
!4380 = !DILocation(line: 954, column: 11, scope: !4379)
!4381 = !DILocation(line: 954, column: 9, scope: !893)
!4382 = !DILocation(line: 955, column: 9, scope: !4379)
!4383 = !DILocation(line: 956, column: 16, scope: !893)
!4384 = !DILocation(line: 956, column: 10, scope: !893)
!4385 = !DILocation(line: 956, column: 6, scope: !893)
!4386 = !DILocation(line: 956, column: 8, scope: !893)
!4387 = !DILocation(line: 957, column: 5, scope: !893)
!4388 = !DILocation(line: 958, column: 1, scope: !893)
!4389 = !DILocation(line: 830, column: 22, scope: !899)
!4390 = !DILocation(line: 830, column: 42, scope: !899)
!4391 = !DILocation(line: 832, column: 25, scope: !899)
!4392 = !DILocation(line: 832, column: 12, scope: !899)
!4393 = !DILocation(line: 832, column: 5, scope: !899)
!4394 = !DILocation(line: 926, column: 16, scope: !910)
!4395 = !DILocation(line: 926, column: 29, scope: !910)
!4396 = !DILocation(line: 926, column: 49, scope: !910)
!4397 = !DILocation(line: 928, column: 5, scope: !910)
!4398 = !DILocation(line: 928, column: 12, scope: !910)
!4399 = !DILocation(line: 928, column: 33, scope: !910)
!4400 = !DILocation(line: 928, column: 16, scope: !910)
!4401 = !{!4402, !4402, i64 0}
!4402 = !{!"double", !1369, i64 0}
!4403 = !DILocation(line: 929, column: 9, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !910, file: !352, line: 929, column: 9)
!4405 = !DILocation(line: 929, column: 11, scope: !4404)
!4406 = !DILocation(line: 929, column: 17, scope: !4404)
!4407 = !DILocation(line: 929, column: 20, scope: !4408)
!4408 = !DILexicalBlockFile(scope: !4404, file: !352, discriminator: 1)
!4409 = !DILocation(line: 929, column: 9, scope: !910)
!4410 = !DILocation(line: 930, column: 25, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4404, file: !352, line: 929, column: 38)
!4412 = !DILocation(line: 930, column: 9, scope: !4411)
!4413 = !DILocation(line: 932, column: 9, scope: !4411)
!4414 = !DILocation(line: 934, column: 27, scope: !910)
!4415 = !DILocation(line: 934, column: 47, scope: !910)
!4416 = !DILocation(line: 934, column: 12, scope: !910)
!4417 = !DILocation(line: 934, column: 5, scope: !910)
!4418 = !DILocation(line: 935, column: 1, scope: !910)
!4419 = !DILocation(line: 836, column: 23, scope: !916)
!4420 = !DILocation(line: 836, column: 43, scope: !916)
!4421 = !DILocation(line: 838, column: 26, scope: !916)
!4422 = !DILocation(line: 838, column: 12, scope: !916)
!4423 = !DILocation(line: 838, column: 5, scope: !916)
!4424 = !DILocation(line: 938, column: 17, scope: !925)
!4425 = !DILocation(line: 938, column: 30, scope: !925)
!4426 = !DILocation(line: 938, column: 50, scope: !925)
!4427 = !DILocation(line: 940, column: 5, scope: !925)
!4428 = !DILocation(line: 940, column: 12, scope: !925)
!4429 = !DILocation(line: 940, column: 33, scope: !925)
!4430 = !DILocation(line: 940, column: 16, scope: !925)
!4431 = !DILocation(line: 941, column: 9, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !925, file: !352, line: 941, column: 9)
!4433 = !DILocation(line: 941, column: 11, scope: !4432)
!4434 = !DILocation(line: 941, column: 17, scope: !4432)
!4435 = !DILocation(line: 941, column: 20, scope: !4436)
!4436 = !DILexicalBlockFile(scope: !4432, file: !352, discriminator: 1)
!4437 = !DILocation(line: 941, column: 9, scope: !925)
!4438 = !DILocation(line: 942, column: 25, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4432, file: !352, line: 941, column: 38)
!4440 = !DILocation(line: 942, column: 9, scope: !4439)
!4441 = !DILocation(line: 944, column: 9, scope: !4439)
!4442 = !DILocation(line: 946, column: 27, scope: !925)
!4443 = !DILocation(line: 946, column: 47, scope: !925)
!4444 = !DILocation(line: 946, column: 12, scope: !925)
!4445 = !DILocation(line: 946, column: 5, scope: !925)
!4446 = !DILocation(line: 947, column: 1, scope: !925)
!4447 = !DILocation(line: 125, column: 20, scope: !773)
!4448 = !DILocation(line: 125, column: 29, scope: !773)
!4449 = !DILocation(line: 127, column: 5, scope: !773)
!4450 = !DILocation(line: 127, column: 10, scope: !773)
!4451 = !DILocation(line: 129, column: 20, scope: !773)
!4452 = !DILocation(line: 129, column: 9, scope: !773)
!4453 = !DILocation(line: 129, column: 7, scope: !773)
!4454 = !DILocation(line: 130, column: 9, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !773, file: !352, line: 130, column: 9)
!4456 = !DILocation(line: 130, column: 11, scope: !4455)
!4457 = !DILocation(line: 130, column: 9, scope: !773)
!4458 = !DILocation(line: 131, column: 9, scope: !4455)
!4459 = !DILocation(line: 133, column: 23, scope: !773)
!4460 = !DILocation(line: 133, column: 9, scope: !773)
!4461 = !DILocation(line: 133, column: 7, scope: !773)
!4462 = !DILocation(line: 134, column: 5, scope: !773)
!4463 = !DILocation(line: 134, column: 10, scope: !4464)
!4464 = !DILexicalBlockFile(scope: !782, file: !352, discriminator: 1)
!4465 = !DILocation(line: 134, column: 20, scope: !782)
!4466 = !DILocation(line: 134, column: 50, scope: !782)
!4467 = !DILocation(line: 134, column: 62, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !782, file: !352, line: 134, column: 59)
!4469 = !DILocation(line: 134, column: 79, scope: !4468)
!4470 = !DILocation(line: 134, column: 59, scope: !4468)
!4471 = !DILocation(line: 134, column: 89, scope: !4468)
!4472 = !DILocation(line: 134, column: 59, scope: !782)
!4473 = !DILocation(line: 134, column: 59, scope: !4474)
!4474 = !DILexicalBlockFile(scope: !782, file: !352, discriminator: 2)
!4475 = !DILocation(line: 134, column: 120, scope: !4476)
!4476 = !DILexicalBlockFile(scope: !4468, file: !352, discriminator: 3)
!4477 = !DILocation(line: 134, column: 138, scope: !4468)
!4478 = !DILocation(line: 134, column: 148, scope: !4468)
!4479 = !DILocation(line: 134, column: 173, scope: !4468)
!4480 = !DILocation(line: 134, column: 104, scope: !4468)
!4481 = !DILocation(line: 134, column: 192, scope: !4482)
!4482 = !DILexicalBlockFile(scope: !773, file: !352, discriminator: 4)
!4483 = !DILocation(line: 134, column: 192, scope: !782)
!4484 = !DILocation(line: 134, column: 192, scope: !4485)
!4485 = !DILexicalBlockFile(scope: !782, file: !352, discriminator: 5)
!4486 = !DILocation(line: 135, column: 9, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !773, file: !352, line: 135, column: 9)
!4488 = !DILocation(line: 135, column: 11, scope: !4487)
!4489 = !DILocation(line: 135, column: 23, scope: !4487)
!4490 = !DILocation(line: 135, column: 26, scope: !4491)
!4491 = !DILexicalBlockFile(scope: !4487, file: !352, discriminator: 1)
!4492 = !DILocation(line: 135, column: 9, scope: !773)
!4493 = !DILocation(line: 136, column: 36, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4495, file: !352, line: 136, column: 13)
!4495 = distinct !DILexicalBlock(scope: !4487, file: !352, line: 135, column: 44)
!4496 = !DILocation(line: 136, column: 13, scope: !4494)
!4497 = !DILocation(line: 136, column: 13, scope: !4495)
!4498 = !DILocation(line: 137, column: 29, scope: !4494)
!4499 = !DILocation(line: 137, column: 13, scope: !4494)
!4500 = !DILocation(line: 139, column: 9, scope: !4495)
!4501 = !DILocation(line: 141, column: 10, scope: !773)
!4502 = !DILocation(line: 141, column: 6, scope: !773)
!4503 = !DILocation(line: 141, column: 8, scope: !773)
!4504 = !DILocation(line: 142, column: 5, scope: !773)
!4505 = !DILocation(line: 143, column: 1, scope: !773)
!4506 = !DILocation(line: 98, column: 22, scope: !783)
!4507 = !DILocation(line: 101, column: 27, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !783, file: !352, line: 101, column: 9)
!4509 = !DILocation(line: 101, column: 32, scope: !4508)
!4510 = !DILocation(line: 101, column: 43, scope: !4508)
!4511 = !DILocation(line: 101, column: 52, scope: !4508)
!4512 = !DILocation(line: 101, column: 69, scope: !4508)
!4513 = !DILocation(line: 101, column: 9, scope: !783)
!4514 = !DILocation(line: 103, column: 15, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !352, line: 103, column: 13)
!4516 = distinct !DILexicalBlock(scope: !4508, file: !352, line: 101, column: 76)
!4517 = !DILocation(line: 103, column: 19, scope: !4515)
!4518 = !DILocation(line: 103, column: 28, scope: !4515)
!4519 = !{!1526, !1368, i64 96}
!4520 = !DILocation(line: 103, column: 41, scope: !4515)
!4521 = !DILocation(line: 103, column: 55, scope: !4515)
!4522 = !DILocation(line: 103, column: 59, scope: !4523)
!4523 = !DILexicalBlockFile(scope: !4515, file: !352, discriminator: 1)
!4524 = !DILocation(line: 103, column: 63, scope: !4515)
!4525 = !DILocation(line: 103, column: 72, scope: !4515)
!4526 = !DILocation(line: 103, column: 86, scope: !4515)
!4527 = !{!4528, !1368, i64 264}
!4528 = !{!"", !1368, i64 0, !1368, i64 8, !1368, i64 16, !1368, i64 24, !1368, i64 32, !1368, i64 40, !1368, i64 48, !1368, i64 56, !1368, i64 64, !1368, i64 72, !1368, i64 80, !1368, i64 88, !1368, i64 96, !1368, i64 104, !1368, i64 112, !1368, i64 120, !1368, i64 128, !1368, i64 136, !1368, i64 144, !1368, i64 152, !1368, i64 160, !1368, i64 168, !1368, i64 176, !1368, i64 184, !1368, i64 192, !1368, i64 200, !1368, i64 208, !1368, i64 216, !1368, i64 224, !1368, i64 232, !1368, i64 240, !1368, i64 248, !1368, i64 256, !1368, i64 264}
!4529 = !DILocation(line: 103, column: 95, scope: !4515)
!4530 = !DILocation(line: 103, column: 13, scope: !4516)
!4531 = !DILocation(line: 104, column: 32, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4515, file: !352, line: 103, column: 111)
!4533 = !DILocation(line: 104, column: 17, scope: !4532)
!4534 = !DILocation(line: 104, column: 15, scope: !4532)
!4535 = !DILocation(line: 105, column: 17, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4532, file: !352, line: 105, column: 17)
!4537 = !DILocation(line: 105, column: 19, scope: !4536)
!4538 = !DILocation(line: 105, column: 17, scope: !4532)
!4539 = !DILocation(line: 106, column: 17, scope: !4536)
!4540 = !DILocation(line: 107, column: 9, scope: !4532)
!4541 = !DILocation(line: 109, column: 29, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4515, file: !352, line: 108, column: 14)
!4543 = !DILocation(line: 109, column: 13, scope: !4542)
!4544 = !DILocation(line: 111, column: 13, scope: !4542)
!4545 = !DILocation(line: 113, column: 5, scope: !4516)
!4546 = !DILocation(line: 115, column: 25, scope: !4508)
!4547 = !DILocation(line: 115, column: 30, scope: !4508)
!4548 = !DILocation(line: 115, column: 39, scope: !4508)
!4549 = !DILocation(line: 118, column: 12, scope: !783)
!4550 = !DILocation(line: 118, column: 5, scope: !783)
!4551 = !DILocation(line: 119, column: 1, scope: !783)
!4552 = !DILocation(line: 297, column: 31, scope: !819)
!4553 = !DILocation(line: 297, column: 38, scope: !819)
!4554 = !DILocation(line: 307, column: 5, scope: !819)
!4555 = !DILocation(line: 307, column: 18, scope: !819)
!4556 = !DILocation(line: 307, column: 49, scope: !819)
!4557 = !DILocation(line: 307, column: 52, scope: !819)
!4558 = !DILocation(line: 307, column: 47, scope: !819)
!4559 = !DILocation(line: 307, column: 57, scope: !819)
!4560 = !DILocation(line: 307, column: 40, scope: !819)
!4561 = !DILocation(line: 309, column: 9, scope: !829)
!4562 = !DILocation(line: 309, column: 9, scope: !819)
!4563 = !DILocation(line: 310, column: 22, scope: !829)
!4564 = !DILocation(line: 312, column: 13, scope: !829)
!4565 = !DILocation(line: 312, column: 16, scope: !829)
!4566 = !DILocation(line: 313, column: 13, scope: !829)
!4567 = !DILocation(line: 310, column: 9, scope: !829)
!4568 = !DILocation(line: 315, column: 9, scope: !828)
!4569 = !DILocation(line: 315, column: 26, scope: !828)
!4570 = !DILocation(line: 315, column: 49, scope: !828)
!4571 = !DILocation(line: 315, column: 58, scope: !828)
!4572 = !DILocation(line: 316, column: 22, scope: !828)
!4573 = !DILocation(line: 318, column: 13, scope: !828)
!4574 = !DILocation(line: 318, column: 16, scope: !828)
!4575 = !DILocation(line: 319, column: 15, scope: !828)
!4576 = !DILocation(line: 319, column: 13, scope: !828)
!4577 = !DILocation(line: 320, column: 13, scope: !828)
!4578 = !DILocation(line: 316, column: 9, scope: !828)
!4579 = !DILocation(line: 321, column: 5, scope: !829)
!4580 = !DILocation(line: 324, column: 1, scope: !819)
!4581 = !DILocation(line: 323, column: 5, scope: !819)
!4582 = !DILocation(line: 149, column: 21, scope: !848)
!4583 = !DILocation(line: 149, column: 39, scope: !848)
!4584 = !DILocation(line: 151, column: 5, scope: !848)
!4585 = !DILocation(line: 151, column: 19, scope: !848)
!4586 = !DILocation(line: 153, column: 20, scope: !848)
!4587 = !DILocation(line: 153, column: 9, scope: !848)
!4588 = !DILocation(line: 153, column: 7, scope: !848)
!4589 = !DILocation(line: 154, column: 9, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !848, file: !352, line: 154, column: 9)
!4591 = !DILocation(line: 154, column: 11, scope: !4590)
!4592 = !DILocation(line: 154, column: 9, scope: !848)
!4593 = !DILocation(line: 155, column: 9, scope: !4590)
!4594 = !DILocation(line: 157, column: 31, scope: !848)
!4595 = !DILocation(line: 157, column: 9, scope: !848)
!4596 = !DILocation(line: 157, column: 7, scope: !848)
!4597 = !DILocation(line: 158, column: 5, scope: !848)
!4598 = !DILocation(line: 158, column: 10, scope: !4599)
!4599 = !DILexicalBlockFile(scope: !857, file: !352, discriminator: 1)
!4600 = !DILocation(line: 158, column: 20, scope: !857)
!4601 = !DILocation(line: 158, column: 50, scope: !857)
!4602 = !DILocation(line: 158, column: 62, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !857, file: !352, line: 158, column: 59)
!4604 = !DILocation(line: 158, column: 79, scope: !4603)
!4605 = !DILocation(line: 158, column: 59, scope: !4603)
!4606 = !DILocation(line: 158, column: 89, scope: !4603)
!4607 = !DILocation(line: 158, column: 59, scope: !857)
!4608 = !DILocation(line: 158, column: 59, scope: !4609)
!4609 = !DILexicalBlockFile(scope: !857, file: !352, discriminator: 2)
!4610 = !DILocation(line: 158, column: 120, scope: !4611)
!4611 = !DILexicalBlockFile(scope: !4603, file: !352, discriminator: 3)
!4612 = !DILocation(line: 158, column: 138, scope: !4603)
!4613 = !DILocation(line: 158, column: 148, scope: !4603)
!4614 = !DILocation(line: 158, column: 173, scope: !4603)
!4615 = !DILocation(line: 158, column: 104, scope: !4603)
!4616 = !DILocation(line: 158, column: 192, scope: !4617)
!4617 = !DILexicalBlockFile(scope: !848, file: !352, discriminator: 4)
!4618 = !DILocation(line: 158, column: 192, scope: !857)
!4619 = !DILocation(line: 158, column: 192, scope: !4620)
!4620 = !DILexicalBlockFile(scope: !857, file: !352, discriminator: 5)
!4621 = !DILocation(line: 159, column: 9, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !848, file: !352, line: 159, column: 9)
!4623 = !DILocation(line: 159, column: 11, scope: !4622)
!4624 = !DILocation(line: 159, column: 32, scope: !4622)
!4625 = !DILocation(line: 159, column: 35, scope: !4626)
!4626 = !DILexicalBlockFile(scope: !4622, file: !352, discriminator: 1)
!4627 = !DILocation(line: 159, column: 9, scope: !848)
!4628 = !DILocation(line: 160, column: 36, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4630, file: !352, line: 160, column: 13)
!4630 = distinct !DILexicalBlock(scope: !4622, file: !352, line: 159, column: 53)
!4631 = !DILocation(line: 160, column: 13, scope: !4629)
!4632 = !DILocation(line: 160, column: 13, scope: !4630)
!4633 = !DILocation(line: 161, column: 29, scope: !4629)
!4634 = !DILocation(line: 161, column: 13, scope: !4629)
!4635 = !DILocation(line: 163, column: 9, scope: !4630)
!4636 = !DILocation(line: 165, column: 10, scope: !848)
!4637 = !DILocation(line: 165, column: 6, scope: !848)
!4638 = !DILocation(line: 165, column: 8, scope: !848)
!4639 = !DILocation(line: 166, column: 5, scope: !848)
!4640 = !DILocation(line: 167, column: 1, scope: !848)
!4641 = !DILocation(line: 272, column: 26, scope: !903)
!4642 = !DILocation(line: 273, column: 14, scope: !903)
!4643 = !DILocation(line: 275, column: 5, scope: !903)
!4644 = !DILocation(line: 275, column: 12, scope: !903)
!4645 = !DILocation(line: 277, column: 43, scope: !903)
!4646 = !DILocation(line: 277, column: 46, scope: !903)
!4647 = !DILocation(line: 277, column: 9, scope: !903)
!4648 = !DILocation(line: 277, column: 7, scope: !903)
!4649 = !DILocation(line: 278, column: 9, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !903, file: !352, line: 278, column: 9)
!4651 = !DILocation(line: 278, column: 11, scope: !4650)
!4652 = !DILocation(line: 278, column: 19, scope: !4650)
!4653 = !DILocation(line: 278, column: 22, scope: !4654)
!4654 = !DILexicalBlockFile(scope: !4650, file: !352, discriminator: 1)
!4655 = !DILocation(line: 278, column: 9, scope: !903)
!4656 = !DILocation(line: 279, column: 9, scope: !4650)
!4657 = !DILocation(line: 280, column: 31, scope: !903)
!4658 = !DILocation(line: 280, column: 12, scope: !903)
!4659 = !DILocation(line: 280, column: 5, scope: !903)
!4660 = !DILocation(line: 281, column: 1, scope: !903)
!4661 = !DILocation(line: 284, column: 27, scope: !920)
!4662 = !DILocation(line: 285, column: 15, scope: !920)
!4663 = !DILocation(line: 287, column: 5, scope: !920)
!4664 = !DILocation(line: 287, column: 12, scope: !920)
!4665 = !DILocation(line: 289, column: 43, scope: !920)
!4666 = !DILocation(line: 289, column: 46, scope: !920)
!4667 = !DILocation(line: 289, column: 9, scope: !920)
!4668 = !DILocation(line: 289, column: 7, scope: !920)
!4669 = !DILocation(line: 290, column: 9, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !920, file: !352, line: 290, column: 9)
!4671 = !DILocation(line: 290, column: 11, scope: !4670)
!4672 = !DILocation(line: 290, column: 19, scope: !4670)
!4673 = !DILocation(line: 290, column: 22, scope: !4674)
!4674 = !DILexicalBlockFile(scope: !4670, file: !352, discriminator: 1)
!4675 = !DILocation(line: 290, column: 9, scope: !920)
!4676 = !DILocation(line: 291, column: 9, scope: !4670)
!4677 = !DILocation(line: 292, column: 31, scope: !920)
!4678 = !DILocation(line: 292, column: 12, scope: !920)
!4679 = !DILocation(line: 292, column: 5, scope: !920)
!4680 = !DILocation(line: 293, column: 1, scope: !920)
!4681 = !DILocation(line: 366, column: 22, scope: !958)
!4682 = !DILocation(line: 366, column: 42, scope: !958)
!4683 = !DILocation(line: 368, column: 5, scope: !958)
!4684 = !DILocation(line: 368, column: 11, scope: !958)
!4685 = !DILocation(line: 369, column: 12, scope: !958)
!4686 = !DILocation(line: 369, column: 24, scope: !958)
!4687 = !DILocation(line: 369, column: 5, scope: !958)
!4688 = !DILocation(line: 370, column: 34, scope: !958)
!4689 = !{!4690, !4690, i64 0}
!4690 = !{!"short", !1369, i64 0}
!4691 = !DILocation(line: 370, column: 28, scope: !958)
!4692 = !DILocation(line: 370, column: 12, scope: !958)
!4693 = !DILocation(line: 371, column: 1, scope: !958)
!4694 = !DILocation(line: 370, column: 5, scope: !958)
!4695 = !DILocation(line: 541, column: 16, scope: !963)
!4696 = !DILocation(line: 541, column: 29, scope: !963)
!4697 = !DILocation(line: 541, column: 49, scope: !963)
!4698 = !DILocation(line: 543, column: 5, scope: !963)
!4699 = !DILocation(line: 543, column: 10, scope: !963)
!4700 = !DILocation(line: 544, column: 5, scope: !963)
!4701 = !DILocation(line: 544, column: 11, scope: !963)
!4702 = !DILocation(line: 545, column: 18, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !963, file: !352, line: 545, column: 9)
!4704 = !DILocation(line: 545, column: 9, scope: !4703)
!4705 = !DILocation(line: 545, column: 25, scope: !4703)
!4706 = !DILocation(line: 545, column: 9, scope: !963)
!4707 = !DILocation(line: 546, column: 9, scope: !4703)
!4708 = !DILocation(line: 547, column: 9, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !963, file: !352, line: 547, column: 9)
!4710 = !DILocation(line: 547, column: 11, scope: !4709)
!4711 = !DILocation(line: 547, column: 25, scope: !4709)
!4712 = !DILocation(line: 547, column: 28, scope: !4713)
!4713 = !DILexicalBlockFile(scope: !4709, file: !352, discriminator: 1)
!4714 = !DILocation(line: 547, column: 30, scope: !4709)
!4715 = !DILocation(line: 547, column: 9, scope: !963)
!4716 = !DILocation(line: 548, column: 25, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4709, file: !352, line: 547, column: 38)
!4718 = !DILocation(line: 548, column: 9, scope: !4717)
!4719 = !DILocation(line: 551, column: 9, scope: !4717)
!4720 = !DILocation(line: 553, column: 16, scope: !963)
!4721 = !DILocation(line: 553, column: 9, scope: !963)
!4722 = !DILocation(line: 553, column: 7, scope: !963)
!4723 = !DILocation(line: 554, column: 12, scope: !963)
!4724 = !DILocation(line: 554, column: 15, scope: !963)
!4725 = !DILocation(line: 554, column: 5, scope: !963)
!4726 = !DILocation(line: 555, column: 5, scope: !963)
!4727 = !DILocation(line: 556, column: 1, scope: !963)
!4728 = !DILocation(line: 374, column: 23, scope: !970)
!4729 = !DILocation(line: 374, column: 43, scope: !970)
!4730 = !DILocation(line: 376, column: 5, scope: !970)
!4731 = !DILocation(line: 376, column: 20, scope: !970)
!4732 = !DILocation(line: 377, column: 12, scope: !970)
!4733 = !DILocation(line: 377, column: 24, scope: !970)
!4734 = !DILocation(line: 377, column: 5, scope: !970)
!4735 = !DILocation(line: 378, column: 34, scope: !970)
!4736 = !DILocation(line: 378, column: 28, scope: !970)
!4737 = !DILocation(line: 378, column: 12, scope: !970)
!4738 = !DILocation(line: 379, column: 1, scope: !970)
!4739 = !DILocation(line: 378, column: 5, scope: !970)
!4740 = !DILocation(line: 559, column: 17, scope: !975)
!4741 = !DILocation(line: 559, column: 30, scope: !975)
!4742 = !DILocation(line: 559, column: 50, scope: !975)
!4743 = !DILocation(line: 561, column: 5, scope: !975)
!4744 = !DILocation(line: 561, column: 10, scope: !975)
!4745 = !DILocation(line: 562, column: 5, scope: !975)
!4746 = !DILocation(line: 562, column: 20, scope: !975)
!4747 = !DILocation(line: 563, column: 18, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !975, file: !352, line: 563, column: 9)
!4749 = !DILocation(line: 563, column: 9, scope: !4748)
!4750 = !DILocation(line: 563, column: 25, scope: !4748)
!4751 = !DILocation(line: 563, column: 9, scope: !975)
!4752 = !DILocation(line: 564, column: 9, scope: !4748)
!4753 = !DILocation(line: 565, column: 9, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !975, file: !352, line: 565, column: 9)
!4755 = !DILocation(line: 565, column: 11, scope: !4754)
!4756 = !DILocation(line: 565, column: 15, scope: !4754)
!4757 = !DILocation(line: 565, column: 18, scope: !4758)
!4758 = !DILexicalBlockFile(scope: !4754, file: !352, discriminator: 1)
!4759 = !DILocation(line: 565, column: 20, scope: !4754)
!4760 = !DILocation(line: 565, column: 9, scope: !975)
!4761 = !DILocation(line: 566, column: 25, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4754, file: !352, line: 565, column: 36)
!4763 = !DILocation(line: 566, column: 9, scope: !4762)
!4764 = !DILocation(line: 568, column: 9, scope: !4762)
!4765 = !DILocation(line: 570, column: 25, scope: !975)
!4766 = !DILocation(line: 570, column: 9, scope: !975)
!4767 = !DILocation(line: 570, column: 7, scope: !975)
!4768 = !DILocation(line: 571, column: 12, scope: !975)
!4769 = !DILocation(line: 571, column: 15, scope: !975)
!4770 = !DILocation(line: 571, column: 5, scope: !975)
!4771 = !DILocation(line: 572, column: 5, scope: !975)
!4772 = !DILocation(line: 573, column: 1, scope: !975)
!4773 = !DILocation(line: 382, column: 20, scope: !982)
!4774 = !DILocation(line: 382, column: 40, scope: !982)
!4775 = !DILocation(line: 384, column: 5, scope: !982)
!4776 = !DILocation(line: 384, column: 9, scope: !982)
!4777 = !DILocation(line: 385, column: 12, scope: !982)
!4778 = !DILocation(line: 385, column: 24, scope: !982)
!4779 = !DILocation(line: 385, column: 5, scope: !982)
!4780 = !DILocation(line: 386, column: 34, scope: !982)
!4781 = !DILocation(line: 386, column: 28, scope: !982)
!4782 = !DILocation(line: 386, column: 12, scope: !982)
!4783 = !DILocation(line: 387, column: 1, scope: !982)
!4784 = !DILocation(line: 386, column: 5, scope: !982)
!4785 = !DILocation(line: 576, column: 14, scope: !987)
!4786 = !DILocation(line: 576, column: 27, scope: !987)
!4787 = !DILocation(line: 576, column: 47, scope: !987)
!4788 = !DILocation(line: 578, column: 5, scope: !987)
!4789 = !DILocation(line: 578, column: 10, scope: !987)
!4790 = !DILocation(line: 579, column: 5, scope: !987)
!4791 = !DILocation(line: 579, column: 9, scope: !987)
!4792 = !DILocation(line: 580, column: 18, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !987, file: !352, line: 580, column: 9)
!4794 = !DILocation(line: 580, column: 9, scope: !4793)
!4795 = !DILocation(line: 580, column: 25, scope: !4793)
!4796 = !DILocation(line: 580, column: 9, scope: !987)
!4797 = !DILocation(line: 581, column: 9, scope: !4793)
!4798 = !DILocation(line: 583, column: 10, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !987, file: !352, line: 583, column: 9)
!4800 = !DILocation(line: 583, column: 12, scope: !4799)
!4801 = !DILocation(line: 583, column: 40, scope: !4799)
!4802 = !DILocation(line: 583, column: 44, scope: !4803)
!4803 = !DILexicalBlockFile(scope: !4799, file: !352, discriminator: 1)
!4804 = !DILocation(line: 583, column: 46, scope: !4799)
!4805 = !DILocation(line: 583, column: 9, scope: !987)
!4806 = !DILocation(line: 584, column: 29, scope: !4799)
!4807 = !DILocation(line: 584, column: 16, scope: !4799)
!4808 = !DILocation(line: 584, column: 9, scope: !4799)
!4809 = !DILocation(line: 586, column: 14, scope: !987)
!4810 = !DILocation(line: 586, column: 9, scope: !987)
!4811 = !DILocation(line: 586, column: 7, scope: !987)
!4812 = !DILocation(line: 587, column: 12, scope: !987)
!4813 = !DILocation(line: 587, column: 15, scope: !987)
!4814 = !DILocation(line: 587, column: 5, scope: !987)
!4815 = !DILocation(line: 588, column: 5, scope: !987)
!4816 = !DILocation(line: 589, column: 1, scope: !987)
!4817 = !DILocation(line: 390, column: 21, scope: !994)
!4818 = !DILocation(line: 390, column: 41, scope: !994)
!4819 = !DILocation(line: 392, column: 5, scope: !994)
!4820 = !DILocation(line: 392, column: 18, scope: !994)
!4821 = !DILocation(line: 393, column: 12, scope: !994)
!4822 = !DILocation(line: 393, column: 24, scope: !994)
!4823 = !DILocation(line: 393, column: 5, scope: !994)
!4824 = !DILocation(line: 395, column: 34, scope: !994)
!4825 = !DILocation(line: 395, column: 28, scope: !994)
!4826 = !DILocation(line: 395, column: 12, scope: !994)
!4827 = !DILocation(line: 401, column: 1, scope: !994)
!4828 = !DILocation(line: 395, column: 5, scope: !994)
!4829 = !DILocation(line: 592, column: 15, scope: !999)
!4830 = !DILocation(line: 592, column: 28, scope: !999)
!4831 = !DILocation(line: 592, column: 48, scope: !999)
!4832 = !DILocation(line: 594, column: 5, scope: !999)
!4833 = !DILocation(line: 594, column: 19, scope: !999)
!4834 = !DILocation(line: 595, column: 5, scope: !999)
!4835 = !DILocation(line: 595, column: 18, scope: !999)
!4836 = !DILocation(line: 596, column: 19, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !999, file: !352, line: 596, column: 9)
!4838 = !DILocation(line: 596, column: 9, scope: !4837)
!4839 = !DILocation(line: 596, column: 26, scope: !4837)
!4840 = !DILocation(line: 596, column: 9, scope: !999)
!4841 = !DILocation(line: 597, column: 9, scope: !4837)
!4842 = !DILocation(line: 598, column: 23, scope: !999)
!4843 = !DILocation(line: 598, column: 9, scope: !999)
!4844 = !DILocation(line: 598, column: 7, scope: !999)
!4845 = !DILocation(line: 600, column: 9, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !999, file: !352, line: 600, column: 9)
!4847 = !DILocation(line: 600, column: 11, scope: !4846)
!4848 = !DILocation(line: 600, column: 9, scope: !999)
!4849 = !DILocation(line: 601, column: 29, scope: !4846)
!4850 = !DILocation(line: 601, column: 16, scope: !4846)
!4851 = !DILocation(line: 601, column: 9, scope: !4846)
!4852 = !DILocation(line: 603, column: 12, scope: !999)
!4853 = !DILocation(line: 603, column: 15, scope: !999)
!4854 = !DILocation(line: 603, column: 5, scope: !999)
!4855 = !DILocation(line: 604, column: 5, scope: !999)
!4856 = !DILocation(line: 605, column: 1, scope: !999)
!4857 = !DILocation(line: 404, column: 21, scope: !1006)
!4858 = !DILocation(line: 404, column: 41, scope: !1006)
!4859 = !DILocation(line: 406, column: 5, scope: !1006)
!4860 = !DILocation(line: 406, column: 10, scope: !1006)
!4861 = !DILocation(line: 407, column: 12, scope: !1006)
!4862 = !DILocation(line: 407, column: 24, scope: !1006)
!4863 = !DILocation(line: 407, column: 5, scope: !1006)
!4864 = !DILocation(line: 408, column: 28, scope: !1006)
!4865 = !DILocation(line: 408, column: 12, scope: !1006)
!4866 = !DILocation(line: 409, column: 1, scope: !1006)
!4867 = !DILocation(line: 408, column: 5, scope: !1006)
!4868 = !DILocation(line: 608, column: 15, scope: !1011)
!4869 = !DILocation(line: 608, column: 28, scope: !1011)
!4870 = !DILocation(line: 608, column: 48, scope: !1011)
!4871 = !DILocation(line: 610, column: 5, scope: !1011)
!4872 = !DILocation(line: 610, column: 10, scope: !1011)
!4873 = !DILocation(line: 611, column: 18, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !1011, file: !352, line: 611, column: 9)
!4875 = !DILocation(line: 611, column: 9, scope: !4874)
!4876 = !DILocation(line: 611, column: 25, scope: !4874)
!4877 = !DILocation(line: 611, column: 9, scope: !1011)
!4878 = !DILocation(line: 612, column: 9, scope: !4874)
!4879 = !DILocation(line: 613, column: 12, scope: !1011)
!4880 = !DILocation(line: 613, column: 15, scope: !1011)
!4881 = !DILocation(line: 613, column: 5, scope: !1011)
!4882 = !DILocation(line: 614, column: 5, scope: !1011)
!4883 = !DILocation(line: 615, column: 1, scope: !1011)
!4884 = !DILocation(line: 412, column: 22, scope: !1017)
!4885 = !DILocation(line: 412, column: 42, scope: !1017)
!4886 = !DILocation(line: 414, column: 5, scope: !1017)
!4887 = !DILocation(line: 414, column: 19, scope: !1017)
!4888 = !DILocation(line: 415, column: 12, scope: !1017)
!4889 = !DILocation(line: 415, column: 24, scope: !1017)
!4890 = !DILocation(line: 415, column: 5, scope: !1017)
!4891 = !DILocation(line: 416, column: 9, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !1017, file: !352, line: 416, column: 9)
!4893 = !DILocation(line: 416, column: 11, scope: !4892)
!4894 = !DILocation(line: 416, column: 9, scope: !1017)
!4895 = !DILocation(line: 417, column: 38, scope: !4892)
!4896 = !DILocation(line: 417, column: 16, scope: !4892)
!4897 = !DILocation(line: 417, column: 9, scope: !4892)
!4898 = !DILocation(line: 418, column: 36, scope: !1017)
!4899 = !DILocation(line: 418, column: 12, scope: !1017)
!4900 = !DILocation(line: 418, column: 5, scope: !1017)
!4901 = !DILocation(line: 419, column: 1, scope: !1017)
!4902 = !DILocation(line: 618, column: 16, scope: !1022)
!4903 = !DILocation(line: 618, column: 29, scope: !1022)
!4904 = !DILocation(line: 618, column: 49, scope: !1022)
!4905 = !DILocation(line: 620, column: 5, scope: !1022)
!4906 = !DILocation(line: 620, column: 19, scope: !1022)
!4907 = !DILocation(line: 621, column: 19, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !1022, file: !352, line: 621, column: 9)
!4909 = !DILocation(line: 621, column: 9, scope: !4908)
!4910 = !DILocation(line: 621, column: 26, scope: !4908)
!4911 = !DILocation(line: 621, column: 9, scope: !1022)
!4912 = !DILocation(line: 622, column: 9, scope: !4908)
!4913 = !DILocation(line: 623, column: 12, scope: !1022)
!4914 = !DILocation(line: 623, column: 15, scope: !1022)
!4915 = !DILocation(line: 623, column: 5, scope: !1022)
!4916 = !DILocation(line: 624, column: 5, scope: !1022)
!4917 = !DILocation(line: 625, column: 1, scope: !1022)
!4918 = !DILocation(line: 422, column: 24, scope: !1028)
!4919 = !DILocation(line: 422, column: 44, scope: !1028)
!4920 = !DILocation(line: 424, column: 5, scope: !1028)
!4921 = !DILocation(line: 424, column: 16, scope: !1028)
!4922 = !DILocation(line: 425, column: 12, scope: !1028)
!4923 = !DILocation(line: 425, column: 24, scope: !1028)
!4924 = !DILocation(line: 425, column: 5, scope: !1028)
!4925 = !DILocation(line: 426, column: 31, scope: !1028)
!4926 = !DILocation(line: 426, column: 12, scope: !1028)
!4927 = !DILocation(line: 427, column: 1, scope: !1028)
!4928 = !DILocation(line: 426, column: 5, scope: !1028)
!4929 = !DILocation(line: 628, column: 18, scope: !1033)
!4930 = !DILocation(line: 628, column: 31, scope: !1033)
!4931 = !DILocation(line: 628, column: 51, scope: !1033)
!4932 = !DILocation(line: 630, column: 5, scope: !1033)
!4933 = !DILocation(line: 630, column: 16, scope: !1033)
!4934 = !DILocation(line: 631, column: 21, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !1033, file: !352, line: 631, column: 9)
!4936 = !DILocation(line: 631, column: 9, scope: !4935)
!4937 = !DILocation(line: 631, column: 28, scope: !4935)
!4938 = !DILocation(line: 631, column: 9, scope: !1033)
!4939 = !DILocation(line: 632, column: 9, scope: !4935)
!4940 = !DILocation(line: 633, column: 12, scope: !1033)
!4941 = !DILocation(line: 633, column: 15, scope: !1033)
!4942 = !DILocation(line: 633, column: 5, scope: !1033)
!4943 = !DILocation(line: 634, column: 5, scope: !1033)
!4944 = !DILocation(line: 635, column: 1, scope: !1033)
!4945 = !DILocation(line: 430, column: 23, scope: !1048)
!4946 = !DILocation(line: 430, column: 43, scope: !1048)
!4947 = !DILocation(line: 432, column: 5, scope: !1048)
!4948 = !DILocation(line: 432, column: 12, scope: !1048)
!4949 = !DILocation(line: 433, column: 12, scope: !1048)
!4950 = !DILocation(line: 433, column: 24, scope: !1048)
!4951 = !DILocation(line: 433, column: 5, scope: !1048)
!4952 = !DILocation(line: 434, column: 30, scope: !1048)
!4953 = !DILocation(line: 434, column: 12, scope: !1048)
!4954 = !DILocation(line: 435, column: 1, scope: !1048)
!4955 = !DILocation(line: 434, column: 5, scope: !1048)
!4956 = !DILocation(line: 638, column: 17, scope: !1053)
!4957 = !DILocation(line: 638, column: 30, scope: !1053)
!4958 = !DILocation(line: 638, column: 50, scope: !1053)
!4959 = !DILocation(line: 640, column: 5, scope: !1053)
!4960 = !DILocation(line: 640, column: 12, scope: !1053)
!4961 = !DILocation(line: 641, column: 20, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !1053, file: !352, line: 641, column: 9)
!4963 = !DILocation(line: 641, column: 9, scope: !4962)
!4964 = !DILocation(line: 641, column: 27, scope: !4962)
!4965 = !DILocation(line: 641, column: 9, scope: !1053)
!4966 = !DILocation(line: 642, column: 9, scope: !4962)
!4967 = !DILocation(line: 643, column: 12, scope: !1053)
!4968 = !DILocation(line: 643, column: 15, scope: !1053)
!4969 = !DILocation(line: 643, column: 5, scope: !1053)
!4970 = !DILocation(line: 644, column: 5, scope: !1053)
!4971 = !DILocation(line: 645, column: 1, scope: !1053)
!4972 = !DILocation(line: 444, column: 25, scope: !1069)
!4973 = !DILocation(line: 444, column: 45, scope: !1069)
!4974 = !DILocation(line: 446, column: 5, scope: !1069)
!4975 = !DILocation(line: 446, column: 15, scope: !1069)
!4976 = !DILocation(line: 447, column: 12, scope: !1069)
!4977 = !DILocation(line: 447, column: 24, scope: !1069)
!4978 = !DILocation(line: 447, column: 5, scope: !1069)
!4979 = !DILocation(line: 448, column: 9, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !1069, file: !352, line: 448, column: 9)
!4981 = !DILocation(line: 448, column: 11, scope: !4980)
!4982 = !DILocation(line: 448, column: 42, scope: !4980)
!4983 = !DILocation(line: 448, column: 45, scope: !4984)
!4984 = !DILexicalBlockFile(scope: !4980, file: !352, discriminator: 1)
!4985 = !DILocation(line: 448, column: 47, scope: !4980)
!4986 = !DILocation(line: 448, column: 9, scope: !1069)
!4987 = !DILocation(line: 449, column: 39, scope: !4980)
!4988 = !DILocation(line: 449, column: 16, scope: !4980)
!4989 = !DILocation(line: 449, column: 9, scope: !4980)
!4990 = !DILocation(line: 450, column: 32, scope: !1069)
!4991 = !DILocation(line: 450, column: 12, scope: !1069)
!4992 = !DILocation(line: 450, column: 5, scope: !1069)
!4993 = !DILocation(line: 451, column: 1, scope: !1069)
!4994 = !DILocation(line: 650, column: 19, scope: !1074)
!4995 = !DILocation(line: 650, column: 32, scope: !1074)
!4996 = !DILocation(line: 650, column: 52, scope: !1074)
!4997 = !DILocation(line: 652, column: 5, scope: !1074)
!4998 = !DILocation(line: 652, column: 15, scope: !1074)
!4999 = !DILocation(line: 653, column: 22, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !1074, file: !352, line: 653, column: 9)
!5001 = !DILocation(line: 653, column: 9, scope: !5000)
!5002 = !DILocation(line: 653, column: 29, scope: !5000)
!5003 = !DILocation(line: 653, column: 9, scope: !1074)
!5004 = !DILocation(line: 654, column: 9, scope: !5000)
!5005 = !DILocation(line: 655, column: 12, scope: !1074)
!5006 = !DILocation(line: 655, column: 15, scope: !1074)
!5007 = !DILocation(line: 655, column: 5, scope: !1074)
!5008 = !DILocation(line: 656, column: 5, scope: !1074)
!5009 = !DILocation(line: 657, column: 1, scope: !1074)
!5010 = !DILocation(line: 454, column: 26, scope: !1090)
!5011 = !DILocation(line: 454, column: 46, scope: !1090)
!5012 = !DILocation(line: 456, column: 5, scope: !1090)
!5013 = !DILocation(line: 456, column: 24, scope: !1090)
!5014 = !DILocation(line: 457, column: 12, scope: !1090)
!5015 = !DILocation(line: 457, column: 24, scope: !1090)
!5016 = !DILocation(line: 457, column: 5, scope: !1090)
!5017 = !DILocation(line: 458, column: 9, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !1090, file: !352, line: 458, column: 9)
!5019 = !DILocation(line: 458, column: 11, scope: !5018)
!5020 = !DILocation(line: 458, column: 9, scope: !1090)
!5021 = !DILocation(line: 459, column: 39, scope: !5018)
!5022 = !DILocation(line: 459, column: 16, scope: !5018)
!5023 = !DILocation(line: 459, column: 9, scope: !5018)
!5024 = !DILocation(line: 460, column: 40, scope: !1090)
!5025 = !DILocation(line: 460, column: 12, scope: !1090)
!5026 = !DILocation(line: 460, column: 5, scope: !1090)
!5027 = !DILocation(line: 461, column: 1, scope: !1090)
!5028 = !DILocation(line: 660, column: 20, scope: !1095)
!5029 = !DILocation(line: 660, column: 33, scope: !1095)
!5030 = !DILocation(line: 660, column: 53, scope: !1095)
!5031 = !DILocation(line: 662, column: 5, scope: !1095)
!5032 = !DILocation(line: 662, column: 24, scope: !1095)
!5033 = !DILocation(line: 663, column: 23, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !1095, file: !352, line: 663, column: 9)
!5035 = !DILocation(line: 663, column: 9, scope: !5034)
!5036 = !DILocation(line: 663, column: 30, scope: !5034)
!5037 = !DILocation(line: 663, column: 9, scope: !1095)
!5038 = !DILocation(line: 664, column: 9, scope: !5034)
!5039 = !DILocation(line: 665, column: 12, scope: !1095)
!5040 = !DILocation(line: 665, column: 15, scope: !1095)
!5041 = !DILocation(line: 665, column: 5, scope: !1095)
!5042 = !DILocation(line: 666, column: 5, scope: !1095)
!5043 = !DILocation(line: 667, column: 1, scope: !1095)
!5044 = !DILocation(line: 466, column: 21, scope: !1111)
!5045 = !DILocation(line: 466, column: 41, scope: !1111)
!5046 = !DILocation(line: 468, column: 5, scope: !1111)
!5047 = !DILocation(line: 468, column: 11, scope: !1111)
!5048 = !DILocation(line: 469, column: 24, scope: !1111)
!5049 = !DILocation(line: 469, column: 5, scope: !1111)
!5050 = !DILocation(line: 470, column: 28, scope: !1111)
!5051 = !{!5052, !5052, i64 0}
!5052 = !{!"_Bool", !1369, i64 0}
!5053 = !{i8 0, i8 2}
!5054 = !DILocation(line: 470, column: 30, scope: !1111)
!5055 = !DILocation(line: 470, column: 12, scope: !1111)
!5056 = !DILocation(line: 471, column: 1, scope: !1111)
!5057 = !DILocation(line: 470, column: 5, scope: !1111)
!5058 = !DILocation(line: 672, column: 15, scope: !1117)
!5059 = !DILocation(line: 672, column: 28, scope: !1117)
!5060 = !DILocation(line: 672, column: 48, scope: !1117)
!5061 = !DILocation(line: 674, column: 5, scope: !1117)
!5062 = !DILocation(line: 674, column: 9, scope: !1117)
!5063 = !DILocation(line: 675, column: 5, scope: !1117)
!5064 = !DILocation(line: 675, column: 11, scope: !1117)
!5065 = !DILocation(line: 676, column: 25, scope: !1117)
!5066 = !DILocation(line: 676, column: 9, scope: !1117)
!5067 = !DILocation(line: 676, column: 7, scope: !1117)
!5068 = !DILocation(line: 677, column: 9, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !1117, file: !352, line: 677, column: 9)
!5070 = !DILocation(line: 677, column: 11, scope: !5069)
!5071 = !DILocation(line: 677, column: 9, scope: !1117)
!5072 = !DILocation(line: 678, column: 9, scope: !5069)
!5073 = !DILocation(line: 679, column: 9, scope: !1117)
!5074 = !DILocation(line: 679, column: 7, scope: !1117)
!5075 = !DILocation(line: 680, column: 12, scope: !1117)
!5076 = !DILocation(line: 680, column: 5, scope: !1117)
!5077 = !DILocation(line: 681, column: 5, scope: !1117)
!5078 = !DILocation(line: 682, column: 1, scope: !1117)
!5079 = !DILocation(line: 475, column: 22, scope: !1124)
!5080 = !DILocation(line: 475, column: 42, scope: !1124)
!5081 = !DILocation(line: 477, column: 5, scope: !1124)
!5082 = !DILocation(line: 477, column: 11, scope: !1124)
!5083 = !DILocation(line: 478, column: 12, scope: !1124)
!5084 = !DILocation(line: 478, column: 24, scope: !1124)
!5085 = !DILocation(line: 478, column: 5, scope: !1124)
!5086 = !DILocation(line: 479, column: 39, scope: !1124)
!5087 = !{!5088, !5088, i64 0}
!5088 = !{!"float", !1369, i64 0}
!5089 = !DILocation(line: 479, column: 31, scope: !1124)
!5090 = !DILocation(line: 479, column: 12, scope: !1124)
!5091 = !DILocation(line: 480, column: 1, scope: !1124)
!5092 = !DILocation(line: 479, column: 5, scope: !1124)
!5093 = !DILocation(line: 685, column: 16, scope: !1129)
!5094 = !DILocation(line: 685, column: 29, scope: !1129)
!5095 = !DILocation(line: 685, column: 49, scope: !1129)
!5096 = !DILocation(line: 687, column: 5, scope: !1129)
!5097 = !DILocation(line: 687, column: 11, scope: !1129)
!5098 = !DILocation(line: 687, column: 39, scope: !1129)
!5099 = !DILocation(line: 687, column: 22, scope: !1129)
!5100 = !DILocation(line: 687, column: 15, scope: !1129)
!5101 = !DILocation(line: 688, column: 9, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !1129, file: !352, line: 688, column: 9)
!5103 = !DILocation(line: 688, column: 11, scope: !5102)
!5104 = !DILocation(line: 688, column: 17, scope: !5102)
!5105 = !DILocation(line: 688, column: 20, scope: !5106)
!5106 = !DILexicalBlockFile(scope: !5102, file: !352, discriminator: 1)
!5107 = !DILocation(line: 688, column: 9, scope: !1129)
!5108 = !DILocation(line: 689, column: 25, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5102, file: !352, line: 688, column: 38)
!5110 = !DILocation(line: 689, column: 9, scope: !5109)
!5111 = !DILocation(line: 691, column: 9, scope: !5109)
!5112 = !DILocation(line: 693, column: 12, scope: !1129)
!5113 = !DILocation(line: 693, column: 15, scope: !1129)
!5114 = !DILocation(line: 693, column: 5, scope: !1129)
!5115 = !DILocation(line: 694, column: 5, scope: !1129)
!5116 = !DILocation(line: 695, column: 1, scope: !1129)
!5117 = !DILocation(line: 483, column: 23, scope: !1135)
!5118 = !DILocation(line: 483, column: 43, scope: !1135)
!5119 = !DILocation(line: 485, column: 5, scope: !1135)
!5120 = !DILocation(line: 485, column: 12, scope: !1135)
!5121 = !DILocation(line: 486, column: 12, scope: !1135)
!5122 = !DILocation(line: 486, column: 24, scope: !1135)
!5123 = !DILocation(line: 486, column: 5, scope: !1135)
!5124 = !DILocation(line: 487, column: 31, scope: !1135)
!5125 = !DILocation(line: 487, column: 12, scope: !1135)
!5126 = !DILocation(line: 488, column: 1, scope: !1135)
!5127 = !DILocation(line: 487, column: 5, scope: !1135)
!5128 = !DILocation(line: 698, column: 17, scope: !1140)
!5129 = !DILocation(line: 698, column: 30, scope: !1140)
!5130 = !DILocation(line: 698, column: 50, scope: !1140)
!5131 = !DILocation(line: 700, column: 5, scope: !1140)
!5132 = !DILocation(line: 700, column: 12, scope: !1140)
!5133 = !DILocation(line: 700, column: 33, scope: !1140)
!5134 = !DILocation(line: 700, column: 16, scope: !1140)
!5135 = !DILocation(line: 701, column: 9, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !1140, file: !352, line: 701, column: 9)
!5137 = !DILocation(line: 701, column: 11, scope: !5136)
!5138 = !DILocation(line: 701, column: 17, scope: !5136)
!5139 = !DILocation(line: 701, column: 20, scope: !5140)
!5140 = !DILexicalBlockFile(scope: !5136, file: !352, discriminator: 1)
!5141 = !DILocation(line: 701, column: 9, scope: !1140)
!5142 = !DILocation(line: 702, column: 25, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5136, file: !352, line: 701, column: 38)
!5144 = !DILocation(line: 702, column: 9, scope: !5143)
!5145 = !DILocation(line: 704, column: 9, scope: !5143)
!5146 = !DILocation(line: 706, column: 12, scope: !1140)
!5147 = !DILocation(line: 706, column: 15, scope: !1140)
!5148 = !DILocation(line: 706, column: 5, scope: !1140)
!5149 = !DILocation(line: 707, column: 5, scope: !1140)
!5150 = !DILocation(line: 708, column: 1, scope: !1140)
!5151 = !DILocation(line: 491, column: 23, scope: !1146)
!5152 = !DILocation(line: 491, column: 43, scope: !1146)
!5153 = !DILocation(line: 493, column: 5, scope: !1146)
!5154 = !DILocation(line: 493, column: 11, scope: !1146)
!5155 = !DILocation(line: 494, column: 12, scope: !1146)
!5156 = !DILocation(line: 494, column: 24, scope: !1146)
!5157 = !DILocation(line: 494, column: 5, scope: !1146)
!5158 = !DILocation(line: 495, column: 31, scope: !1146)
!5159 = !DILocation(line: 495, column: 12, scope: !1146)
!5160 = !DILocation(line: 496, column: 1, scope: !1146)
!5161 = !DILocation(line: 495, column: 5, scope: !1146)
!5162 = !DILocation(line: 711, column: 17, scope: !1151)
!5163 = !DILocation(line: 711, column: 30, scope: !1151)
!5164 = !DILocation(line: 711, column: 50, scope: !1151)
!5165 = !DILocation(line: 713, column: 5, scope: !1151)
!5166 = !DILocation(line: 713, column: 11, scope: !1151)
!5167 = !DILocation(line: 715, column: 20, scope: !1151)
!5168 = !DILocation(line: 715, column: 9, scope: !1151)
!5169 = !DILocation(line: 715, column: 7, scope: !1151)
!5170 = !DILocation(line: 716, column: 9, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !1151, file: !352, line: 716, column: 9)
!5172 = !DILocation(line: 716, column: 11, scope: !5171)
!5173 = !DILocation(line: 716, column: 9, scope: !1151)
!5174 = !DILocation(line: 717, column: 9, scope: !5171)
!5175 = !DILocation(line: 719, column: 26, scope: !1151)
!5176 = !DILocation(line: 719, column: 9, scope: !1151)
!5177 = !DILocation(line: 719, column: 7, scope: !1151)
!5178 = !DILocation(line: 720, column: 5, scope: !1151)
!5179 = !DILocation(line: 720, column: 10, scope: !5180)
!5180 = !DILexicalBlockFile(scope: !1158, file: !352, discriminator: 1)
!5181 = !DILocation(line: 720, column: 20, scope: !1158)
!5182 = !DILocation(line: 720, column: 50, scope: !1158)
!5183 = !DILocation(line: 720, column: 62, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !1158, file: !352, line: 720, column: 59)
!5185 = !DILocation(line: 720, column: 79, scope: !5184)
!5186 = !DILocation(line: 720, column: 59, scope: !5184)
!5187 = !DILocation(line: 720, column: 89, scope: !5184)
!5188 = !DILocation(line: 720, column: 59, scope: !1158)
!5189 = !DILocation(line: 720, column: 59, scope: !5190)
!5190 = !DILexicalBlockFile(scope: !1158, file: !352, discriminator: 2)
!5191 = !DILocation(line: 720, column: 120, scope: !5192)
!5192 = !DILexicalBlockFile(scope: !5184, file: !352, discriminator: 3)
!5193 = !DILocation(line: 720, column: 138, scope: !5184)
!5194 = !DILocation(line: 720, column: 148, scope: !5184)
!5195 = !DILocation(line: 720, column: 173, scope: !5184)
!5196 = !DILocation(line: 720, column: 104, scope: !5184)
!5197 = !DILocation(line: 720, column: 192, scope: !5198)
!5198 = !DILexicalBlockFile(scope: !1151, file: !352, discriminator: 4)
!5199 = !DILocation(line: 720, column: 192, scope: !1158)
!5200 = !DILocation(line: 720, column: 192, scope: !5201)
!5201 = !DILexicalBlockFile(scope: !1158, file: !352, discriminator: 5)
!5202 = !DILocation(line: 721, column: 9, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !1151, file: !352, line: 721, column: 9)
!5204 = !DILocation(line: 721, column: 11, scope: !5203)
!5205 = !DILocation(line: 721, column: 25, scope: !5203)
!5206 = !DILocation(line: 721, column: 28, scope: !5207)
!5207 = !DILexicalBlockFile(scope: !5203, file: !352, discriminator: 1)
!5208 = !DILocation(line: 721, column: 9, scope: !1151)
!5209 = !DILocation(line: 722, column: 9, scope: !5203)
!5210 = !DILocation(line: 723, column: 12, scope: !1151)
!5211 = !DILocation(line: 723, column: 15, scope: !1151)
!5212 = !DILocation(line: 723, column: 5, scope: !1151)
!5213 = !DILocation(line: 724, column: 5, scope: !1151)
!5214 = !DILocation(line: 725, column: 1, scope: !1151)
!5215 = !DILocation(line: 222, column: 23, scope: !1039)
!5216 = !DILocation(line: 222, column: 38, scope: !1039)
!5217 = !DILocation(line: 224, column: 5, scope: !1039)
!5218 = !DILocation(line: 224, column: 16, scope: !1039)
!5219 = !DILocation(line: 226, column: 20, scope: !1039)
!5220 = !DILocation(line: 226, column: 9, scope: !1039)
!5221 = !DILocation(line: 226, column: 7, scope: !1039)
!5222 = !DILocation(line: 227, column: 9, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !1039, file: !352, line: 227, column: 9)
!5224 = !DILocation(line: 227, column: 11, scope: !5223)
!5225 = !DILocation(line: 227, column: 9, scope: !1039)
!5226 = !DILocation(line: 228, column: 9, scope: !5223)
!5227 = !DILocation(line: 230, column: 26, scope: !1039)
!5228 = !DILocation(line: 230, column: 9, scope: !1039)
!5229 = !DILocation(line: 230, column: 7, scope: !1039)
!5230 = !DILocation(line: 231, column: 5, scope: !1039)
!5231 = !DILocation(line: 231, column: 10, scope: !5232)
!5232 = !DILexicalBlockFile(scope: !1047, file: !352, discriminator: 1)
!5233 = !DILocation(line: 231, column: 20, scope: !1047)
!5234 = !DILocation(line: 231, column: 50, scope: !1047)
!5235 = !DILocation(line: 231, column: 62, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !1047, file: !352, line: 231, column: 59)
!5237 = !DILocation(line: 231, column: 79, scope: !5236)
!5238 = !DILocation(line: 231, column: 59, scope: !5236)
!5239 = !DILocation(line: 231, column: 89, scope: !5236)
!5240 = !DILocation(line: 231, column: 59, scope: !1047)
!5241 = !DILocation(line: 231, column: 59, scope: !5242)
!5242 = !DILexicalBlockFile(scope: !1047, file: !352, discriminator: 2)
!5243 = !DILocation(line: 231, column: 120, scope: !5244)
!5244 = !DILexicalBlockFile(scope: !5236, file: !352, discriminator: 3)
!5245 = !DILocation(line: 231, column: 138, scope: !5236)
!5246 = !DILocation(line: 231, column: 148, scope: !5236)
!5247 = !DILocation(line: 231, column: 173, scope: !5236)
!5248 = !DILocation(line: 231, column: 104, scope: !5236)
!5249 = !DILocation(line: 231, column: 192, scope: !5250)
!5250 = !DILexicalBlockFile(scope: !1039, file: !352, discriminator: 4)
!5251 = !DILocation(line: 231, column: 192, scope: !1047)
!5252 = !DILocation(line: 231, column: 192, scope: !5253)
!5253 = !DILexicalBlockFile(scope: !1047, file: !352, discriminator: 5)
!5254 = !DILocation(line: 232, column: 9, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !1039, file: !352, line: 232, column: 9)
!5256 = !DILocation(line: 232, column: 11, scope: !5255)
!5257 = !DILocation(line: 232, column: 29, scope: !5255)
!5258 = !DILocation(line: 232, column: 32, scope: !5259)
!5259 = !DILexicalBlockFile(scope: !5255, file: !352, discriminator: 1)
!5260 = !DILocation(line: 232, column: 9, scope: !1039)
!5261 = !DILocation(line: 233, column: 36, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5263, file: !352, line: 233, column: 13)
!5263 = distinct !DILexicalBlock(scope: !5255, file: !352, line: 232, column: 50)
!5264 = !DILocation(line: 233, column: 13, scope: !5262)
!5265 = !DILocation(line: 233, column: 13, scope: !5263)
!5266 = !DILocation(line: 234, column: 29, scope: !5262)
!5267 = !DILocation(line: 234, column: 13, scope: !5262)
!5268 = !DILocation(line: 236, column: 9, scope: !5263)
!5269 = !DILocation(line: 238, column: 10, scope: !1039)
!5270 = !DILocation(line: 238, column: 6, scope: !1039)
!5271 = !DILocation(line: 238, column: 8, scope: !1039)
!5272 = !DILocation(line: 239, column: 5, scope: !1039)
!5273 = !DILocation(line: 240, column: 1, scope: !1039)
!5274 = !DILocation(line: 245, column: 22, scope: !1059)
!5275 = !DILocation(line: 245, column: 33, scope: !1059)
!5276 = !DILocation(line: 247, column: 5, scope: !1059)
!5277 = !DILocation(line: 247, column: 12, scope: !1059)
!5278 = !DILocation(line: 249, column: 20, scope: !1059)
!5279 = !DILocation(line: 249, column: 9, scope: !1059)
!5280 = !DILocation(line: 249, column: 7, scope: !1059)
!5281 = !DILocation(line: 250, column: 9, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !1059, file: !352, line: 250, column: 9)
!5283 = !DILocation(line: 250, column: 11, scope: !5282)
!5284 = !DILocation(line: 250, column: 9, scope: !1059)
!5285 = !DILocation(line: 251, column: 9, scope: !5282)
!5286 = !DILocation(line: 253, column: 25, scope: !1059)
!5287 = !DILocation(line: 253, column: 9, scope: !1059)
!5288 = !DILocation(line: 253, column: 7, scope: !1059)
!5289 = !DILocation(line: 254, column: 5, scope: !1059)
!5290 = !DILocation(line: 254, column: 10, scope: !5291)
!5291 = !DILexicalBlockFile(scope: !1068, file: !352, discriminator: 1)
!5292 = !DILocation(line: 254, column: 20, scope: !1068)
!5293 = !DILocation(line: 254, column: 50, scope: !1068)
!5294 = !DILocation(line: 254, column: 62, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !1068, file: !352, line: 254, column: 59)
!5296 = !DILocation(line: 254, column: 79, scope: !5295)
!5297 = !DILocation(line: 254, column: 59, scope: !5295)
!5298 = !DILocation(line: 254, column: 89, scope: !5295)
!5299 = !DILocation(line: 254, column: 59, scope: !1068)
!5300 = !DILocation(line: 254, column: 59, scope: !5301)
!5301 = !DILexicalBlockFile(scope: !1068, file: !352, discriminator: 2)
!5302 = !DILocation(line: 254, column: 120, scope: !5303)
!5303 = !DILexicalBlockFile(scope: !5295, file: !352, discriminator: 3)
!5304 = !DILocation(line: 254, column: 138, scope: !5295)
!5305 = !DILocation(line: 254, column: 148, scope: !5295)
!5306 = !DILocation(line: 254, column: 173, scope: !5295)
!5307 = !DILocation(line: 254, column: 104, scope: !5295)
!5308 = !DILocation(line: 254, column: 192, scope: !5309)
!5309 = !DILexicalBlockFile(scope: !1059, file: !352, discriminator: 4)
!5310 = !DILocation(line: 254, column: 192, scope: !1068)
!5311 = !DILocation(line: 254, column: 192, scope: !5312)
!5312 = !DILexicalBlockFile(scope: !1068, file: !352, discriminator: 5)
!5313 = !DILocation(line: 255, column: 9, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !1059, file: !352, line: 255, column: 9)
!5315 = !DILocation(line: 255, column: 11, scope: !5314)
!5316 = !DILocation(line: 255, column: 25, scope: !5314)
!5317 = !DILocation(line: 255, column: 28, scope: !5318)
!5318 = !DILexicalBlockFile(scope: !5314, file: !352, discriminator: 1)
!5319 = !DILocation(line: 255, column: 9, scope: !1059)
!5320 = !DILocation(line: 256, column: 36, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5322, file: !352, line: 256, column: 13)
!5322 = distinct !DILexicalBlock(scope: !5314, file: !352, line: 255, column: 46)
!5323 = !DILocation(line: 256, column: 13, scope: !5321)
!5324 = !DILocation(line: 256, column: 13, scope: !5322)
!5325 = !DILocation(line: 257, column: 29, scope: !5321)
!5326 = !DILocation(line: 257, column: 13, scope: !5321)
!5327 = !DILocation(line: 259, column: 9, scope: !5322)
!5328 = !DILocation(line: 261, column: 10, scope: !1059)
!5329 = !DILocation(line: 261, column: 6, scope: !1059)
!5330 = !DILocation(line: 261, column: 8, scope: !1059)
!5331 = !DILocation(line: 262, column: 5, scope: !1059)
!5332 = !DILocation(line: 263, column: 1, scope: !1059)
!5333 = !DILocation(line: 174, column: 24, scope: !1080)
!5334 = !DILocation(line: 174, column: 38, scope: !1080)
!5335 = !DILocation(line: 176, column: 5, scope: !1080)
!5336 = !DILocation(line: 176, column: 15, scope: !1080)
!5337 = !DILocation(line: 178, column: 20, scope: !1080)
!5338 = !DILocation(line: 178, column: 9, scope: !1080)
!5339 = !DILocation(line: 178, column: 7, scope: !1080)
!5340 = !DILocation(line: 179, column: 9, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !1080, file: !352, line: 179, column: 9)
!5342 = !DILocation(line: 179, column: 11, scope: !5341)
!5343 = !DILocation(line: 179, column: 9, scope: !1080)
!5344 = !DILocation(line: 180, column: 9, scope: !5341)
!5345 = !DILocation(line: 182, column: 27, scope: !1080)
!5346 = !DILocation(line: 182, column: 9, scope: !1080)
!5347 = !DILocation(line: 182, column: 7, scope: !1080)
!5348 = !DILocation(line: 183, column: 5, scope: !1080)
!5349 = !DILocation(line: 183, column: 10, scope: !5350)
!5350 = !DILexicalBlockFile(scope: !1089, file: !352, discriminator: 1)
!5351 = !DILocation(line: 183, column: 20, scope: !1089)
!5352 = !DILocation(line: 183, column: 50, scope: !1089)
!5353 = !DILocation(line: 183, column: 62, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !1089, file: !352, line: 183, column: 59)
!5355 = !DILocation(line: 183, column: 79, scope: !5354)
!5356 = !DILocation(line: 183, column: 59, scope: !5354)
!5357 = !DILocation(line: 183, column: 89, scope: !5354)
!5358 = !DILocation(line: 183, column: 59, scope: !1089)
!5359 = !DILocation(line: 183, column: 59, scope: !5360)
!5360 = !DILexicalBlockFile(scope: !1089, file: !352, discriminator: 2)
!5361 = !DILocation(line: 183, column: 120, scope: !5362)
!5362 = !DILexicalBlockFile(scope: !5354, file: !352, discriminator: 3)
!5363 = !DILocation(line: 183, column: 138, scope: !5354)
!5364 = !DILocation(line: 183, column: 148, scope: !5354)
!5365 = !DILocation(line: 183, column: 173, scope: !5354)
!5366 = !DILocation(line: 183, column: 104, scope: !5354)
!5367 = !DILocation(line: 183, column: 192, scope: !5368)
!5368 = !DILexicalBlockFile(scope: !1080, file: !352, discriminator: 4)
!5369 = !DILocation(line: 183, column: 192, scope: !1089)
!5370 = !DILocation(line: 183, column: 192, scope: !5371)
!5371 = !DILexicalBlockFile(scope: !1089, file: !352, discriminator: 5)
!5372 = !DILocation(line: 184, column: 9, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !1080, file: !352, line: 184, column: 9)
!5374 = !DILocation(line: 184, column: 11, scope: !5373)
!5375 = !DILocation(line: 184, column: 28, scope: !5373)
!5376 = !DILocation(line: 184, column: 31, scope: !5377)
!5377 = !DILexicalBlockFile(scope: !5373, file: !352, discriminator: 1)
!5378 = !DILocation(line: 184, column: 9, scope: !1080)
!5379 = !DILocation(line: 185, column: 36, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5381, file: !352, line: 185, column: 13)
!5381 = distinct !DILexicalBlock(scope: !5373, file: !352, line: 184, column: 49)
!5382 = !DILocation(line: 185, column: 13, scope: !5380)
!5383 = !DILocation(line: 185, column: 13, scope: !5381)
!5384 = !DILocation(line: 186, column: 29, scope: !5380)
!5385 = !DILocation(line: 186, column: 13, scope: !5380)
!5386 = !DILocation(line: 188, column: 9, scope: !5381)
!5387 = !DILocation(line: 190, column: 10, scope: !1080)
!5388 = !DILocation(line: 190, column: 6, scope: !1080)
!5389 = !DILocation(line: 190, column: 8, scope: !1080)
!5390 = !DILocation(line: 191, column: 5, scope: !1080)
!5391 = !DILocation(line: 192, column: 1, scope: !1080)
!5392 = !DILocation(line: 197, column: 25, scope: !1101)
!5393 = !DILocation(line: 197, column: 48, scope: !1101)
!5394 = !DILocation(line: 199, column: 5, scope: !1101)
!5395 = !DILocation(line: 199, column: 24, scope: !1101)
!5396 = !DILocation(line: 201, column: 20, scope: !1101)
!5397 = !DILocation(line: 201, column: 9, scope: !1101)
!5398 = !DILocation(line: 201, column: 7, scope: !1101)
!5399 = !DILocation(line: 202, column: 9, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !1101, file: !352, line: 202, column: 9)
!5401 = !DILocation(line: 202, column: 11, scope: !5400)
!5402 = !DILocation(line: 202, column: 9, scope: !1101)
!5403 = !DILocation(line: 203, column: 9, scope: !5400)
!5404 = !DILocation(line: 205, column: 35, scope: !1101)
!5405 = !DILocation(line: 205, column: 9, scope: !1101)
!5406 = !DILocation(line: 205, column: 7, scope: !1101)
!5407 = !DILocation(line: 206, column: 5, scope: !1101)
!5408 = !DILocation(line: 206, column: 10, scope: !5409)
!5409 = !DILexicalBlockFile(scope: !1110, file: !352, discriminator: 1)
!5410 = !DILocation(line: 206, column: 20, scope: !1110)
!5411 = !DILocation(line: 206, column: 50, scope: !1110)
!5412 = !DILocation(line: 206, column: 62, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !1110, file: !352, line: 206, column: 59)
!5414 = !DILocation(line: 206, column: 79, scope: !5413)
!5415 = !DILocation(line: 206, column: 59, scope: !5413)
!5416 = !DILocation(line: 206, column: 89, scope: !5413)
!5417 = !DILocation(line: 206, column: 59, scope: !1110)
!5418 = !DILocation(line: 206, column: 59, scope: !5419)
!5419 = !DILexicalBlockFile(scope: !1110, file: !352, discriminator: 2)
!5420 = !DILocation(line: 206, column: 120, scope: !5421)
!5421 = !DILexicalBlockFile(scope: !5413, file: !352, discriminator: 3)
!5422 = !DILocation(line: 206, column: 138, scope: !5413)
!5423 = !DILocation(line: 206, column: 148, scope: !5413)
!5424 = !DILocation(line: 206, column: 173, scope: !5413)
!5425 = !DILocation(line: 206, column: 104, scope: !5413)
!5426 = !DILocation(line: 206, column: 192, scope: !5427)
!5427 = !DILexicalBlockFile(scope: !1101, file: !352, discriminator: 4)
!5428 = !DILocation(line: 206, column: 192, scope: !1110)
!5429 = !DILocation(line: 206, column: 192, scope: !5430)
!5430 = !DILexicalBlockFile(scope: !1110, file: !352, discriminator: 5)
!5431 = !DILocation(line: 207, column: 9, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !1101, file: !352, line: 207, column: 9)
!5433 = !DILocation(line: 207, column: 11, scope: !5432)
!5434 = !DILocation(line: 207, column: 37, scope: !5432)
!5435 = !DILocation(line: 207, column: 40, scope: !5436)
!5436 = !DILexicalBlockFile(scope: !5432, file: !352, discriminator: 1)
!5437 = !DILocation(line: 207, column: 9, scope: !1101)
!5438 = !DILocation(line: 208, column: 36, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !352, line: 208, column: 13)
!5440 = distinct !DILexicalBlock(scope: !5432, file: !352, line: 207, column: 58)
!5441 = !DILocation(line: 208, column: 13, scope: !5439)
!5442 = !DILocation(line: 208, column: 13, scope: !5440)
!5443 = !DILocation(line: 209, column: 29, scope: !5439)
!5444 = !DILocation(line: 209, column: 13, scope: !5439)
!5445 = !DILocation(line: 211, column: 9, scope: !5440)
!5446 = !DILocation(line: 213, column: 10, scope: !1101)
!5447 = !DILocation(line: 213, column: 6, scope: !1101)
!5448 = !DILocation(line: 213, column: 8, scope: !1101)
!5449 = !DILocation(line: 214, column: 5, scope: !1101)
!5450 = !DILocation(line: 215, column: 1, scope: !1101)
!5451 = !DILocation(line: 984, column: 20, scope: !1159)
!5452 = !DILocation(line: 984, column: 40, scope: !1159)
!5453 = !DILocation(line: 986, column: 5, scope: !1159)
!5454 = !DILocation(line: 986, column: 10, scope: !1159)
!5455 = !DILocation(line: 987, column: 5, scope: !1159)
!5456 = !DILocation(line: 987, column: 16, scope: !1159)
!5457 = !DILocation(line: 987, column: 20, scope: !1159)
!5458 = !DILocation(line: 987, column: 23, scope: !1159)
!5459 = !DILocation(line: 988, column: 5, scope: !1159)
!5460 = !DILocation(line: 988, column: 26, scope: !1159)
!5461 = !DILocation(line: 988, column: 57, scope: !1159)
!5462 = !DILocation(line: 989, column: 5, scope: !1159)
!5463 = !DILocation(line: 990, column: 14, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !1159, file: !352, line: 989, column: 8)
!5465 = !DILocation(line: 990, column: 15, scope: !5464)
!5466 = !DILocation(line: 990, column: 28, scope: !5464)
!5467 = !DILocation(line: 990, column: 22, scope: !5464)
!5468 = !DILocation(line: 990, column: 20, scope: !5464)
!5469 = !DILocation(line: 990, column: 11, scope: !5464)
!5470 = !DILocation(line: 991, column: 5, scope: !5464)
!5471 = !DILocation(line: 991, column: 14, scope: !5472)
!5472 = !DILexicalBlockFile(scope: !1159, file: !352, discriminator: 1)
!5473 = !DILocation(line: 991, column: 16, scope: !1159)
!5474 = !DILocation(line: 993, column: 13, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !1159, file: !352, line: 993, column: 9)
!5476 = !DILocation(line: 993, column: 16, scope: !5475)
!5477 = !DILocation(line: 993, column: 11, scope: !5475)
!5478 = !DILocation(line: 993, column: 9, scope: !1159)
!5479 = !DILocation(line: 994, column: 16, scope: !5475)
!5480 = !DILocation(line: 994, column: 33, scope: !5475)
!5481 = !DILocation(line: 994, column: 36, scope: !5475)
!5482 = !DILocation(line: 994, column: 31, scope: !5475)
!5483 = !DILocation(line: 994, column: 42, scope: !5475)
!5484 = !DILocation(line: 994, column: 24, scope: !5475)
!5485 = !DILocation(line: 994, column: 18, scope: !5475)
!5486 = !DILocation(line: 994, column: 14, scope: !5475)
!5487 = !DILocation(line: 994, column: 11, scope: !5475)
!5488 = !DILocation(line: 994, column: 9, scope: !5475)
!5489 = !DILocation(line: 995, column: 28, scope: !1159)
!5490 = !DILocation(line: 995, column: 12, scope: !1159)
!5491 = !DILocation(line: 996, column: 1, scope: !1159)
!5492 = !DILocation(line: 995, column: 5, scope: !1159)
!5493 = !DILocation(line: 1070, column: 14, scope: !1166)
!5494 = !DILocation(line: 1070, column: 27, scope: !1166)
!5495 = !DILocation(line: 1070, column: 47, scope: !1166)
!5496 = !DILocation(line: 1072, column: 5, scope: !1166)
!5497 = !DILocation(line: 1072, column: 10, scope: !1166)
!5498 = !DILocation(line: 1073, column: 5, scope: !1166)
!5499 = !DILocation(line: 1073, column: 16, scope: !1166)
!5500 = !DILocation(line: 1074, column: 18, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !1166, file: !352, line: 1074, column: 9)
!5502 = !DILocation(line: 1074, column: 9, scope: !5501)
!5503 = !DILocation(line: 1074, column: 25, scope: !5501)
!5504 = !DILocation(line: 1074, column: 9, scope: !1166)
!5505 = !DILocation(line: 1075, column: 9, scope: !5501)
!5506 = !DILocation(line: 1076, column: 9, scope: !1166)
!5507 = !DILocation(line: 1076, column: 12, scope: !1166)
!5508 = !DILocation(line: 1076, column: 7, scope: !1166)
!5509 = !DILocation(line: 1077, column: 9, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !1166, file: !352, line: 1077, column: 9)
!5511 = !DILocation(line: 1077, column: 11, scope: !5510)
!5512 = !DILocation(line: 1077, column: 9, scope: !1166)
!5513 = !DILocation(line: 1078, column: 14, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5515, file: !352, line: 1078, column: 13)
!5515 = distinct !DILexicalBlock(scope: !5510, file: !352, line: 1077, column: 17)
!5516 = !DILocation(line: 1078, column: 16, scope: !5514)
!5517 = !DILocation(line: 1078, column: 22, scope: !5514)
!5518 = !DILocation(line: 1078, column: 26, scope: !5519)
!5519 = !DILexicalBlockFile(scope: !5514, file: !352, discriminator: 1)
!5520 = !DILocation(line: 1078, column: 28, scope: !5514)
!5521 = !DILocation(line: 1078, column: 37, scope: !5514)
!5522 = !DILocation(line: 1078, column: 40, scope: !5523)
!5523 = !DILexicalBlockFile(scope: !5514, file: !352, discriminator: 2)
!5524 = !DILocation(line: 1078, column: 42, scope: !5514)
!5525 = !DILocation(line: 1078, column: 13, scope: !5515)
!5526 = !DILocation(line: 1079, column: 33, scope: !5514)
!5527 = !DILocation(line: 1079, column: 20, scope: !5514)
!5528 = !DILocation(line: 1079, column: 13, scope: !5514)
!5529 = !DILocation(line: 1081, column: 19, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5514, file: !352, line: 1081, column: 18)
!5531 = !DILocation(line: 1081, column: 21, scope: !5530)
!5532 = !DILocation(line: 1081, column: 27, scope: !5530)
!5533 = !DILocation(line: 1081, column: 31, scope: !5534)
!5534 = !DILexicalBlockFile(scope: !5530, file: !352, discriminator: 1)
!5535 = !DILocation(line: 1081, column: 33, scope: !5530)
!5536 = !DILocation(line: 1081, column: 48, scope: !5530)
!5537 = !DILocation(line: 1081, column: 51, scope: !5538)
!5538 = !DILexicalBlockFile(scope: !5530, file: !352, discriminator: 2)
!5539 = !DILocation(line: 1081, column: 53, scope: !5530)
!5540 = !DILocation(line: 1081, column: 18, scope: !5514)
!5541 = !DILocation(line: 1082, column: 33, scope: !5530)
!5542 = !DILocation(line: 1082, column: 20, scope: !5530)
!5543 = !DILocation(line: 1082, column: 13, scope: !5530)
!5544 = !DILocation(line: 1084, column: 5, scope: !5515)
!5545 = !DILocation(line: 1085, column: 5, scope: !1166)
!5546 = !DILocation(line: 1086, column: 22, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !1166, file: !352, line: 1085, column: 8)
!5548 = !DILocation(line: 1086, column: 16, scope: !5547)
!5549 = !DILocation(line: 1086, column: 11, scope: !5547)
!5550 = !DILocation(line: 1086, column: 14, scope: !5547)
!5551 = !DILocation(line: 1087, column: 11, scope: !5547)
!5552 = !DILocation(line: 1088, column: 5, scope: !5547)
!5553 = !DILocation(line: 1088, column: 14, scope: !5554)
!5554 = !DILexicalBlockFile(scope: !1166, file: !352, discriminator: 1)
!5555 = !DILocation(line: 1088, column: 18, scope: !1166)
!5556 = !DILocation(line: 1089, column: 5, scope: !1166)
!5557 = !DILocation(line: 1090, column: 1, scope: !1166)
!5558 = !DILocation(line: 999, column: 21, scope: !1173)
!5559 = !DILocation(line: 999, column: 41, scope: !1173)
!5560 = !DILocation(line: 1001, column: 5, scope: !1173)
!5561 = !DILocation(line: 1001, column: 19, scope: !1173)
!5562 = !DILocation(line: 1002, column: 5, scope: !1173)
!5563 = !DILocation(line: 1002, column: 16, scope: !1173)
!5564 = !DILocation(line: 1002, column: 20, scope: !1173)
!5565 = !DILocation(line: 1002, column: 23, scope: !1173)
!5566 = !DILocation(line: 1003, column: 5, scope: !1173)
!5567 = !DILocation(line: 1003, column: 26, scope: !1173)
!5568 = !DILocation(line: 1003, column: 57, scope: !1173)
!5569 = !DILocation(line: 1004, column: 5, scope: !1173)
!5570 = !DILocation(line: 1005, column: 14, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !1173, file: !352, line: 1004, column: 8)
!5572 = !DILocation(line: 1005, column: 15, scope: !5571)
!5573 = !DILocation(line: 1005, column: 28, scope: !5571)
!5574 = !DILocation(line: 1005, column: 22, scope: !5571)
!5575 = !DILocation(line: 1005, column: 20, scope: !5571)
!5576 = !DILocation(line: 1005, column: 11, scope: !5571)
!5577 = !DILocation(line: 1006, column: 5, scope: !5571)
!5578 = !DILocation(line: 1006, column: 14, scope: !5579)
!5579 = !DILexicalBlockFile(scope: !1173, file: !352, discriminator: 1)
!5580 = !DILocation(line: 1006, column: 16, scope: !1173)
!5581 = !DILocation(line: 1007, column: 9, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !1173, file: !352, line: 1007, column: 9)
!5583 = !DILocation(line: 1007, column: 11, scope: !5582)
!5584 = !DILocation(line: 1007, column: 9, scope: !1173)
!5585 = !DILocation(line: 1008, column: 38, scope: !5582)
!5586 = !DILocation(line: 1008, column: 16, scope: !5582)
!5587 = !DILocation(line: 1008, column: 9, scope: !5582)
!5588 = !DILocation(line: 1009, column: 42, scope: !1173)
!5589 = !DILocation(line: 1009, column: 12, scope: !1173)
!5590 = !DILocation(line: 1009, column: 5, scope: !1173)
!5591 = !DILocation(line: 1010, column: 1, scope: !1173)
!5592 = !DILocation(line: 1093, column: 15, scope: !1180)
!5593 = !DILocation(line: 1093, column: 28, scope: !1180)
!5594 = !DILocation(line: 1093, column: 48, scope: !1180)
!5595 = !DILocation(line: 1095, column: 5, scope: !1180)
!5596 = !DILocation(line: 1095, column: 19, scope: !1180)
!5597 = !DILocation(line: 1096, column: 5, scope: !1180)
!5598 = !DILocation(line: 1096, column: 16, scope: !1180)
!5599 = !DILocation(line: 1097, column: 19, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !1180, file: !352, line: 1097, column: 9)
!5601 = !DILocation(line: 1097, column: 9, scope: !5600)
!5602 = !DILocation(line: 1097, column: 26, scope: !5600)
!5603 = !DILocation(line: 1097, column: 9, scope: !1180)
!5604 = !DILocation(line: 1098, column: 9, scope: !5600)
!5605 = !DILocation(line: 1099, column: 9, scope: !1180)
!5606 = !DILocation(line: 1099, column: 12, scope: !1180)
!5607 = !DILocation(line: 1099, column: 7, scope: !1180)
!5608 = !DILocation(line: 1100, column: 9, scope: !1189)
!5609 = !DILocation(line: 1100, column: 11, scope: !1189)
!5610 = !DILocation(line: 1100, column: 9, scope: !1180)
!5611 = !DILocation(line: 1101, column: 9, scope: !1188)
!5612 = !DILocation(line: 1101, column: 23, scope: !1188)
!5613 = !DILocation(line: 1102, column: 36, scope: !1188)
!5614 = !DILocation(line: 1102, column: 38, scope: !1188)
!5615 = !DILocation(line: 1102, column: 16, scope: !1188)
!5616 = !DILocation(line: 1103, column: 13, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !1188, file: !352, line: 1103, column: 13)
!5618 = !DILocation(line: 1103, column: 18, scope: !5617)
!5619 = !DILocation(line: 1103, column: 15, scope: !5617)
!5620 = !DILocation(line: 1103, column: 13, scope: !1188)
!5621 = !DILocation(line: 1104, column: 33, scope: !5617)
!5622 = !DILocation(line: 1104, column: 20, scope: !5617)
!5623 = !DILocation(line: 1104, column: 13, scope: !5617)
!5624 = !DILocation(line: 1105, column: 5, scope: !1189)
!5625 = !DILocation(line: 1105, column: 5, scope: !5626)
!5626 = !DILexicalBlockFile(scope: !1189, file: !352, discriminator: 1)
!5627 = !DILocation(line: 1105, column: 5, scope: !1188)
!5628 = !DILocation(line: 1106, column: 5, scope: !1180)
!5629 = !DILocation(line: 1107, column: 22, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !1180, file: !352, line: 1106, column: 8)
!5631 = !DILocation(line: 1107, column: 16, scope: !5630)
!5632 = !DILocation(line: 1107, column: 11, scope: !5630)
!5633 = !DILocation(line: 1107, column: 14, scope: !5630)
!5634 = !DILocation(line: 1108, column: 11, scope: !5630)
!5635 = !DILocation(line: 1109, column: 5, scope: !5630)
!5636 = !DILocation(line: 1109, column: 14, scope: !5637)
!5637 = !DILexicalBlockFile(scope: !1180, file: !352, discriminator: 1)
!5638 = !DILocation(line: 1109, column: 18, scope: !1180)
!5639 = !DILocation(line: 1110, column: 5, scope: !1180)
!5640 = !DILocation(line: 1111, column: 1, scope: !1180)
!5641 = !DILocation(line: 1013, column: 25, scope: !1190)
!5642 = !DILocation(line: 1013, column: 45, scope: !1190)
!5643 = !DILocation(line: 1016, column: 5, scope: !1190)
!5644 = !DILocation(line: 1016, column: 15, scope: !1190)
!5645 = !DILocation(line: 1017, column: 5, scope: !1190)
!5646 = !DILocation(line: 1017, column: 16, scope: !1190)
!5647 = !DILocation(line: 1017, column: 20, scope: !1190)
!5648 = !DILocation(line: 1017, column: 23, scope: !1190)
!5649 = !DILocation(line: 1018, column: 5, scope: !1190)
!5650 = !DILocation(line: 1018, column: 26, scope: !1190)
!5651 = !DILocation(line: 1018, column: 57, scope: !1190)
!5652 = !DILocation(line: 1019, column: 5, scope: !1190)
!5653 = !DILocation(line: 1020, column: 14, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !1190, file: !352, line: 1019, column: 8)
!5655 = !DILocation(line: 1020, column: 15, scope: !5654)
!5656 = !DILocation(line: 1020, column: 28, scope: !5654)
!5657 = !DILocation(line: 1020, column: 22, scope: !5654)
!5658 = !DILocation(line: 1020, column: 20, scope: !5654)
!5659 = !DILocation(line: 1020, column: 11, scope: !5654)
!5660 = !DILocation(line: 1021, column: 5, scope: !5654)
!5661 = !DILocation(line: 1021, column: 14, scope: !5662)
!5662 = !DILexicalBlockFile(scope: !1190, file: !352, discriminator: 1)
!5663 = !DILocation(line: 1021, column: 16, scope: !1190)
!5664 = !DILocation(line: 1023, column: 13, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !1190, file: !352, line: 1023, column: 9)
!5666 = !DILocation(line: 1023, column: 16, scope: !5665)
!5667 = !DILocation(line: 1023, column: 11, scope: !5665)
!5668 = !DILocation(line: 1023, column: 9, scope: !1190)
!5669 = !DILocation(line: 1024, column: 16, scope: !5665)
!5670 = !DILocation(line: 1024, column: 43, scope: !5665)
!5671 = !DILocation(line: 1024, column: 46, scope: !5665)
!5672 = !DILocation(line: 1024, column: 41, scope: !5665)
!5673 = !DILocation(line: 1024, column: 52, scope: !5665)
!5674 = !DILocation(line: 1024, column: 34, scope: !5665)
!5675 = !DILocation(line: 1024, column: 18, scope: !5665)
!5676 = !DILocation(line: 1024, column: 14, scope: !5665)
!5677 = !DILocation(line: 1024, column: 11, scope: !5665)
!5678 = !DILocation(line: 1024, column: 9, scope: !5665)
!5679 = !DILocation(line: 1025, column: 9, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !1190, file: !352, line: 1025, column: 9)
!5681 = !DILocation(line: 1025, column: 11, scope: !5680)
!5682 = !DILocation(line: 1025, column: 42, scope: !5680)
!5683 = !DILocation(line: 1025, column: 45, scope: !5684)
!5684 = !DILexicalBlockFile(scope: !5680, file: !352, discriminator: 1)
!5685 = !DILocation(line: 1025, column: 47, scope: !5680)
!5686 = !DILocation(line: 1025, column: 9, scope: !1190)
!5687 = !DILocation(line: 1026, column: 39, scope: !5680)
!5688 = !DILocation(line: 1026, column: 16, scope: !5680)
!5689 = !DILocation(line: 1026, column: 9, scope: !5680)
!5690 = !DILocation(line: 1027, column: 32, scope: !1190)
!5691 = !DILocation(line: 1027, column: 12, scope: !1190)
!5692 = !DILocation(line: 1027, column: 5, scope: !1190)
!5693 = !DILocation(line: 1034, column: 1, scope: !1190)
!5694 = !DILocation(line: 1114, column: 19, scope: !1197)
!5695 = !DILocation(line: 1114, column: 32, scope: !1197)
!5696 = !DILocation(line: 1114, column: 52, scope: !1197)
!5697 = !DILocation(line: 1116, column: 5, scope: !1197)
!5698 = !DILocation(line: 1116, column: 9, scope: !1197)
!5699 = !DILocation(line: 1117, column: 20, scope: !1197)
!5700 = !DILocation(line: 1117, column: 9, scope: !1197)
!5701 = !DILocation(line: 1117, column: 7, scope: !1197)
!5702 = !DILocation(line: 1118, column: 9, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !1197, file: !352, line: 1118, column: 9)
!5704 = !DILocation(line: 1118, column: 11, scope: !5703)
!5705 = !DILocation(line: 1118, column: 9, scope: !1197)
!5706 = !DILocation(line: 1119, column: 9, scope: !5703)
!5707 = !DILocation(line: 1120, column: 46, scope: !1197)
!5708 = !DILocation(line: 1120, column: 31, scope: !1197)
!5709 = !DILocation(line: 1121, column: 48, scope: !1197)
!5710 = !DILocation(line: 1120, column: 11, scope: !1197)
!5711 = !DILocation(line: 1120, column: 9, scope: !1197)
!5712 = !DILocation(line: 1125, column: 5, scope: !1197)
!5713 = !DILocation(line: 1125, column: 10, scope: !5714)
!5714 = !DILexicalBlockFile(scope: !1204, file: !352, discriminator: 1)
!5715 = !DILocation(line: 1125, column: 20, scope: !1204)
!5716 = !DILocation(line: 1125, column: 50, scope: !1204)
!5717 = !DILocation(line: 1125, column: 62, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !1204, file: !352, line: 1125, column: 59)
!5719 = !DILocation(line: 1125, column: 79, scope: !5718)
!5720 = !DILocation(line: 1125, column: 59, scope: !5718)
!5721 = !DILocation(line: 1125, column: 89, scope: !5718)
!5722 = !DILocation(line: 1125, column: 59, scope: !1204)
!5723 = !DILocation(line: 1125, column: 59, scope: !5724)
!5724 = !DILexicalBlockFile(scope: !1204, file: !352, discriminator: 2)
!5725 = !DILocation(line: 1125, column: 120, scope: !5726)
!5726 = !DILexicalBlockFile(scope: !5718, file: !352, discriminator: 3)
!5727 = !DILocation(line: 1125, column: 138, scope: !5718)
!5728 = !DILocation(line: 1125, column: 148, scope: !5718)
!5729 = !DILocation(line: 1125, column: 173, scope: !5718)
!5730 = !DILocation(line: 1125, column: 104, scope: !5718)
!5731 = !DILocation(line: 1125, column: 192, scope: !5732)
!5732 = !DILexicalBlockFile(scope: !1197, file: !352, discriminator: 4)
!5733 = !DILocation(line: 1125, column: 192, scope: !1204)
!5734 = !DILocation(line: 1125, column: 192, scope: !5735)
!5735 = !DILexicalBlockFile(scope: !1204, file: !352, discriminator: 5)
!5736 = !DILocation(line: 1126, column: 12, scope: !1197)
!5737 = !DILocation(line: 1126, column: 5, scope: !1197)
!5738 = !DILocation(line: 1127, column: 1, scope: !1197)
!5739 = !DILocation(line: 1037, column: 26, scope: !1205)
!5740 = !DILocation(line: 1037, column: 46, scope: !1205)
!5741 = !DILocation(line: 1040, column: 5, scope: !1205)
!5742 = !DILocation(line: 1040, column: 24, scope: !1205)
!5743 = !DILocation(line: 1041, column: 5, scope: !1205)
!5744 = !DILocation(line: 1041, column: 16, scope: !1205)
!5745 = !DILocation(line: 1041, column: 20, scope: !1205)
!5746 = !DILocation(line: 1041, column: 23, scope: !1205)
!5747 = !DILocation(line: 1042, column: 5, scope: !1205)
!5748 = !DILocation(line: 1042, column: 26, scope: !1205)
!5749 = !DILocation(line: 1042, column: 57, scope: !1205)
!5750 = !DILocation(line: 1043, column: 5, scope: !1205)
!5751 = !DILocation(line: 1044, column: 14, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !1205, file: !352, line: 1043, column: 8)
!5753 = !DILocation(line: 1044, column: 15, scope: !5752)
!5754 = !DILocation(line: 1044, column: 28, scope: !5752)
!5755 = !DILocation(line: 1044, column: 22, scope: !5752)
!5756 = !DILocation(line: 1044, column: 20, scope: !5752)
!5757 = !DILocation(line: 1044, column: 11, scope: !5752)
!5758 = !DILocation(line: 1045, column: 5, scope: !5752)
!5759 = !DILocation(line: 1045, column: 14, scope: !5760)
!5760 = !DILexicalBlockFile(scope: !1205, file: !352, discriminator: 1)
!5761 = !DILocation(line: 1045, column: 16, scope: !1205)
!5762 = !DILocation(line: 1046, column: 9, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !1205, file: !352, line: 1046, column: 9)
!5764 = !DILocation(line: 1046, column: 11, scope: !5763)
!5765 = !DILocation(line: 1046, column: 9, scope: !1205)
!5766 = !DILocation(line: 1047, column: 39, scope: !5763)
!5767 = !DILocation(line: 1047, column: 16, scope: !5763)
!5768 = !DILocation(line: 1047, column: 9, scope: !5763)
!5769 = !DILocation(line: 1048, column: 40, scope: !1205)
!5770 = !DILocation(line: 1048, column: 12, scope: !1205)
!5771 = !DILocation(line: 1048, column: 5, scope: !1205)
!5772 = !DILocation(line: 1055, column: 1, scope: !1205)
!5773 = !DILocation(line: 1130, column: 20, scope: !1212)
!5774 = !DILocation(line: 1130, column: 33, scope: !1212)
!5775 = !DILocation(line: 1130, column: 53, scope: !1212)
!5776 = !DILocation(line: 1132, column: 5, scope: !1212)
!5777 = !DILocation(line: 1132, column: 9, scope: !1212)
!5778 = !DILocation(line: 1133, column: 20, scope: !1212)
!5779 = !DILocation(line: 1133, column: 9, scope: !1212)
!5780 = !DILocation(line: 1133, column: 7, scope: !1212)
!5781 = !DILocation(line: 1134, column: 9, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !1212, file: !352, line: 1134, column: 9)
!5783 = !DILocation(line: 1134, column: 11, scope: !5782)
!5784 = !DILocation(line: 1134, column: 9, scope: !1212)
!5785 = !DILocation(line: 1135, column: 9, scope: !5782)
!5786 = !DILocation(line: 1136, column: 46, scope: !1212)
!5787 = !DILocation(line: 1136, column: 31, scope: !1212)
!5788 = !DILocation(line: 1137, column: 48, scope: !1212)
!5789 = !DILocation(line: 1136, column: 11, scope: !1212)
!5790 = !DILocation(line: 1136, column: 9, scope: !1212)
!5791 = !DILocation(line: 1141, column: 5, scope: !1212)
!5792 = !DILocation(line: 1141, column: 10, scope: !5793)
!5793 = !DILexicalBlockFile(scope: !1219, file: !352, discriminator: 1)
!5794 = !DILocation(line: 1141, column: 20, scope: !1219)
!5795 = !DILocation(line: 1141, column: 50, scope: !1219)
!5796 = !DILocation(line: 1141, column: 62, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !1219, file: !352, line: 1141, column: 59)
!5798 = !DILocation(line: 1141, column: 79, scope: !5797)
!5799 = !DILocation(line: 1141, column: 59, scope: !5797)
!5800 = !DILocation(line: 1141, column: 89, scope: !5797)
!5801 = !DILocation(line: 1141, column: 59, scope: !1219)
!5802 = !DILocation(line: 1141, column: 59, scope: !5803)
!5803 = !DILexicalBlockFile(scope: !1219, file: !352, discriminator: 2)
!5804 = !DILocation(line: 1141, column: 120, scope: !5805)
!5805 = !DILexicalBlockFile(scope: !5797, file: !352, discriminator: 3)
!5806 = !DILocation(line: 1141, column: 138, scope: !5797)
!5807 = !DILocation(line: 1141, column: 148, scope: !5797)
!5808 = !DILocation(line: 1141, column: 173, scope: !5797)
!5809 = !DILocation(line: 1141, column: 104, scope: !5797)
!5810 = !DILocation(line: 1141, column: 192, scope: !5811)
!5811 = !DILexicalBlockFile(scope: !1212, file: !352, discriminator: 4)
!5812 = !DILocation(line: 1141, column: 192, scope: !1219)
!5813 = !DILocation(line: 1141, column: 192, scope: !5814)
!5814 = !DILexicalBlockFile(scope: !1219, file: !352, discriminator: 5)
!5815 = !DILocation(line: 1142, column: 12, scope: !1212)
!5816 = !DILocation(line: 1142, column: 5, scope: !1212)
!5817 = !DILocation(line: 1143, column: 1, scope: !1212)
!5818 = !DILocation(line: 1058, column: 22, scope: !1220)
!5819 = !DILocation(line: 1058, column: 42, scope: !1220)
!5820 = !DILocation(line: 1060, column: 25, scope: !1220)
!5821 = !DILocation(line: 1060, column: 12, scope: !1220)
!5822 = !DILocation(line: 1060, column: 5, scope: !1220)
!5823 = !DILocation(line: 1146, column: 16, scope: !1224)
!5824 = !DILocation(line: 1146, column: 29, scope: !1224)
!5825 = !DILocation(line: 1146, column: 49, scope: !1224)
!5826 = !DILocation(line: 1148, column: 5, scope: !1224)
!5827 = !DILocation(line: 1148, column: 12, scope: !1224)
!5828 = !DILocation(line: 1148, column: 33, scope: !1224)
!5829 = !DILocation(line: 1148, column: 16, scope: !1224)
!5830 = !DILocation(line: 1149, column: 9, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !1224, file: !352, line: 1149, column: 9)
!5832 = !DILocation(line: 1149, column: 11, scope: !5831)
!5833 = !DILocation(line: 1149, column: 17, scope: !5831)
!5834 = !DILocation(line: 1149, column: 20, scope: !5835)
!5835 = !DILexicalBlockFile(scope: !5831, file: !352, discriminator: 1)
!5836 = !DILocation(line: 1149, column: 9, scope: !1224)
!5837 = !DILocation(line: 1150, column: 25, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5831, file: !352, line: 1149, column: 38)
!5839 = !DILocation(line: 1150, column: 9, scope: !5838)
!5840 = !DILocation(line: 1152, column: 9, scope: !5838)
!5841 = !DILocation(line: 1154, column: 27, scope: !1224)
!5842 = !DILocation(line: 1154, column: 47, scope: !1224)
!5843 = !DILocation(line: 1154, column: 12, scope: !1224)
!5844 = !DILocation(line: 1154, column: 5, scope: !1224)
!5845 = !DILocation(line: 1155, column: 1, scope: !1224)
!5846 = !DILocation(line: 1064, column: 23, scope: !1230)
!5847 = !DILocation(line: 1064, column: 43, scope: !1230)
!5848 = !DILocation(line: 1066, column: 26, scope: !1230)
!5849 = !DILocation(line: 1066, column: 12, scope: !1230)
!5850 = !DILocation(line: 1066, column: 5, scope: !1230)
!5851 = !DILocation(line: 1158, column: 17, scope: !1234)
!5852 = !DILocation(line: 1158, column: 30, scope: !1234)
!5853 = !DILocation(line: 1158, column: 50, scope: !1234)
!5854 = !DILocation(line: 1160, column: 5, scope: !1234)
!5855 = !DILocation(line: 1160, column: 12, scope: !1234)
!5856 = !DILocation(line: 1160, column: 33, scope: !1234)
!5857 = !DILocation(line: 1160, column: 16, scope: !1234)
!5858 = !DILocation(line: 1161, column: 9, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !1234, file: !352, line: 1161, column: 9)
!5860 = !DILocation(line: 1161, column: 11, scope: !5859)
!5861 = !DILocation(line: 1161, column: 17, scope: !5859)
!5862 = !DILocation(line: 1161, column: 20, scope: !5863)
!5863 = !DILexicalBlockFile(scope: !5859, file: !352, discriminator: 1)
!5864 = !DILocation(line: 1161, column: 9, scope: !1234)
!5865 = !DILocation(line: 1162, column: 25, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5859, file: !352, line: 1161, column: 38)
!5867 = !DILocation(line: 1162, column: 9, scope: !5866)
!5868 = !DILocation(line: 1164, column: 9, scope: !5866)
!5869 = !DILocation(line: 1166, column: 27, scope: !1234)
!5870 = !DILocation(line: 1166, column: 47, scope: !1234)
!5871 = !DILocation(line: 1166, column: 12, scope: !1234)
!5872 = !DILocation(line: 1166, column: 5, scope: !1234)
!5873 = !DILocation(line: 1167, column: 1, scope: !1234)
