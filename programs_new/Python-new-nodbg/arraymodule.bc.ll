; ModuleID = './arraymodule.bc'
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
%struct.arraydescr = type { i8, i32, %struct._object* (%struct.arrayobject*, i64)*, i32 (%struct.arrayobject*, i64, %struct._object*)*, i8*, i32, i32 }
%struct.arrayobject = type { %struct.PyVarObject, i8*, i64, %struct.arraydescr*, %struct._object*, i32 }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.mformatdescr = type { i64, i32, i32 }
%struct.arrayiterobject = type { %struct._object, i64, %struct.arrayobject*, %struct._object* (%struct.arrayobject*, i64)* }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@Arraytype = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.arrayobject*)* @array_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.arrayobject*)* @array_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* @array_as_sequence, %struct.PyMappingMethods* @array_as_mapping, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* @array_as_buffer, i64 263168, i8* getelementptr inbounds ([2358 x i8], [2358 x i8]* @arraytype_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @array_richcompare, i64 48, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.arrayobject*)* @array_iter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([25 x %struct.PyMethodDef], [25 x %struct.PyMethodDef]* @array_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([3 x %struct.PyGetSetDef], [3 x %struct.PyGetSetDef]* @array_getsets, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @array_new, void (i8*)* @PyObject_Free, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyType_Type = external global %struct._typeobject, align 8
@PyArrayIter_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.arrayiterobject*)* @arrayiter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.arrayiterobject*, i32 (%struct._object*, i8*)*, i8*)* @arrayiter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.arrayiterobject*)* @arrayiter_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @arrayiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@arraymodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([263 x i8], [263 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @a_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [10 x i8] c"ArrayType\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@descriptors = internal global [14 x %struct.arraydescr] [%struct.arraydescr { i8 98, i32 1, %struct._object* (%struct.arrayobject*, i64)* @b_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @b_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i32 1, i32 1 }, %struct.arraydescr { i8 66, i32 1, %struct._object* (%struct.arrayobject*, i64)* @BB_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @BB_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0), i32 1, i32 0 }, %struct.arraydescr { i8 117, i32 4, %struct._object* (%struct.arrayobject*, i64)* @u_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @u_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i32 0, i32 0), i32 0, i32 0 }, %struct.arraydescr { i8 104, i32 2, %struct._object* (%struct.arrayobject*, i64)* @h_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @h_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0), i32 1, i32 1 }, %struct.arraydescr { i8 72, i32 2, %struct._object* (%struct.arrayobject*, i64)* @HH_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @HH_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0), i32 1, i32 0 }, %struct.arraydescr { i8 105, i32 4, %struct._object* (%struct.arrayobject*, i64)* @i_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @i_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105, i32 0, i32 0), i32 1, i32 1 }, %struct.arraydescr { i8 73, i32 4, %struct._object* (%struct.arrayobject*, i64)* @II_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @II_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i32 0, i32 0), i32 1, i32 0 }, %struct.arraydescr { i8 108, i32 8, %struct._object* (%struct.arrayobject*, i64)* @l_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @l_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), i32 1, i32 1 }, %struct.arraydescr { i8 76, i32 8, %struct._object* (%struct.arrayobject*, i64)* @LL_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @LL_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0), i32 1, i32 0 }, %struct.arraydescr { i8 113, i32 8, %struct._object* (%struct.arrayobject*, i64)* @q_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @q_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), i32 1, i32 1 }, %struct.arraydescr { i8 81, i32 8, %struct._object* (%struct.arrayobject*, i64)* @QQ_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @QQ_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i32 0, i32 0), i32 1, i32 0 }, %struct.arraydescr { i8 102, i32 4, %struct._object* (%struct.arrayobject*, i64)* @f_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @f_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i32 0, i32 0), i32 0, i32 0 }, %struct.arraydescr { i8 100, i32 8, %struct._object* (%struct.arrayobject*, i64)* @d_getitem, i32 (%struct.arrayobject*, i64, %struct._object*)* @d_setitem, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i32 0, i32 0), i32 0, i32 0 }, %struct.arraydescr zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [10 x i8] c"typecodes\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"array.array\00", align 1
@array_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct.arrayobject*)* @array_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_concat to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.arrayobject*, i64)* @array_repeat to %struct._object* (%struct._object*, i64)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.arrayobject*, i64)* @array_item to %struct._object* (%struct._object*, i64)*), i8* null, i32 (%struct._object*, i64, %struct._object*)* bitcast (i32 (%struct.arrayobject*, i64, %struct._object*)* @array_ass_item to i32 (%struct._object*, i64, %struct._object*)*), i8* null, i32 (%struct._object*, %struct._object*)* bitcast (i32 (%struct.arrayobject*, %struct._object*)* @array_contains to i32 (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_inplace_concat to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.arrayobject*, i64)* @array_inplace_repeat to %struct._object* (%struct._object*, i64)*) }, align 8
@array_as_mapping = internal global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct.arrayobject*)* @array_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_subscr to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.arrayobject*, %struct._object*, %struct._object*)* @array_ass_subscr to i32 (%struct._object*, %struct._object*, %struct._object*)*) }, align 8
@array_as_buffer = internal global %struct.PyBufferProcs { i32 (%struct._object*, %struct.bufferinfo*, i32)* bitcast (i32 (%struct.arrayobject*, %struct.bufferinfo*, i32)* @array_buffer_getbuf to i32 (%struct._object*, %struct.bufferinfo*, i32)*), void (%struct._object*, %struct.bufferinfo*)* bitcast (void (%struct.arrayobject*, %struct.bufferinfo*)* @array_buffer_relbuf to void (%struct._object*, %struct.bufferinfo*)*) }, align 8
@arraytype_doc = internal global [2358 x i8] c"array(typecode [, initializer]) -> array\0A\0AReturn a new array whose items are restricted by typecode, and\0Ainitialized from the optional initializer value, which must be a list,\0Astring or iterable over elements of the appropriate type.\0A\0AArrays represent basic values and behave very much like lists, except\0Athe type of objects stored in them is constrained. The type is specified\0Aat object creation time by using a type code, which is a single character.\0AThe following type codes are defined:\0A\0A    Type code   C Type             Minimum size in bytes \0A    'b'         signed integer     1 \0A    'B'         unsigned integer   1 \0A    'u'         Unicode character  2 (see note) \0A    'h'         signed integer     2 \0A    'H'         unsigned integer   2 \0A    'i'         signed integer     2 \0A    'I'         unsigned integer   2 \0A    'l'         signed integer     4 \0A    'L'         unsigned integer   4 \0A    'q'         signed integer     8 (see note) \0A    'Q'         unsigned integer   8 (see note) \0A    'f'         floating point     4 \0A    'd'         floating point     8 \0A\0ANOTE: The 'u' typecode corresponds to Python's unicode character. On \0Anarrow builds this is 2-bytes on wide builds this is 4-bytes.\0A\0ANOTE: The 'q' and 'Q' type codes are only available if the platform \0AC compiler used to build Python supports 'long long', or, on Windows, \0A'__int64'.\0A\0AMethods:\0A\0Aappend() -- append a new item to the end of the array\0Abuffer_info() -- return information giving the current memory info\0Abyteswap() -- byteswap all the items of the array\0Acount() -- return number of occurrences of an object\0Aextend() -- extend array by appending multiple elements from an iterable\0Afromfile() -- read items from a file object\0Afromlist() -- append items from the list\0Afrombytes() -- append items from the string\0Aindex() -- return index of first occurrence of an object\0Ainsert() -- insert a new item into the array at a provided position\0Apop() -- remove and return item (default last)\0Aremove() -- remove first occurrence of an object\0Areverse() -- reverse the order of the items in the array\0Atofile() -- write all items to a file object\0Atolist() -- return the array converted to an ordinary list\0Atobytes() -- return the array converted to a string\0A\0AAttributes:\0A\0Atypecode -- the typecode character used to create the array\0Aitemsize -- the length in bytes of one array item\0A\00", align 16
@array_methods = internal global [25 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_append to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @append_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_buffer_info to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([270 x i8], [270 x i8]* @buffer_info_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_byteswap to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @byteswap_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @copy_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_count to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @count_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @copy_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_extend to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @extend_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_fromfile to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @fromfile_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_fromlist to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @fromlist_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_fromstring to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([214 x i8], [214 x i8]* @fromstring_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_frombytes to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @frombytes_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_fromunicode to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([246 x i8], [246 x i8]* @fromunicode_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_index to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @index_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_insert to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @insert_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_pop to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @pop_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_reduce_ex to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_remove to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @remove_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_reverse to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @reverse_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_tofile to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @tofile_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_tolist to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @tolist_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_tostring to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @tostring_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_tobytes to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @tobytes_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_tounicode to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @tounicode_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayobject*, %struct._object*)* @array_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @sizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@array_getsets = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.arrayobject*, i8*)* @array_get_typecode to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.79, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.arrayobject*, i8*)* @array_get_itemsize to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [12 x i8] c"array('%c')\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"array('%c', %R)\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"tounicode() may only be called on unicode type arrays\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.7 = private unnamed_addr constant [46 x i8] c"can only append array (not \22%.200s\22) to array\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"/home/juneyoung.lee/tmp/Python-3.4.1/Modules/arraymodule.c\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"array index out of range\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"array assignment index out of range\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"can only assign array (not \22%.200s\22) to array slice\00", align 1
@PyExc_BufferError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [49 x i8] c"cannot resize an array that is exporting buffers\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"can only extend array with array (not \22%.200s\22)\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"can only extend with array of same kind\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@.str.15 = private unnamed_addr constant [31 x i8] c"array indices must be integers\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"array indices must be integer\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"attempt to assign array of size %zd to extended slice of size %zd\00", align 1
@emptybuf = internal global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), align 8
@.str.18 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@append_doc = internal global [55 x i8] c"append(x)\0A\0AAppend new value x to the end of the array.\00", align 16
@.str.21 = private unnamed_addr constant [12 x i8] c"buffer_info\00", align 1
@buffer_info_doc = internal global [270 x i8] c"buffer_info() -> (address, length)\0A\0AReturn a tuple (address, length) giving the current memory address and\0Athe length in items of the buffer used to hold array's contents\0AThe length should be multiplied by the itemsize attribute to calculate\0Athe buffer length in bytes.\00", align 16
@.str.22 = private unnamed_addr constant [9 x i8] c"byteswap\00", align 1
@byteswap_doc = internal global [133 x i8] c"byteswap()\0A\0AByteswap all items of the array.  If the items in the array are not 1, 2,\0A4, or 8 bytes in size, RuntimeError is raised.\00", align 16
@.str.23 = private unnamed_addr constant [9 x i8] c"__copy__\00", align 1
@copy_doc = internal global [42 x i8] c"copy(array)\0A\0A Return a copy of the array.\00", align 16
@.str.24 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@count_doc = internal global [58 x i8] c"count(x)\0A\0AReturn number of occurrences of x in the array.\00", align 16
@.str.25 = private unnamed_addr constant [13 x i8] c"__deepcopy__\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@extend_doc = internal global [66 x i8] c"extend(array or iterable)\0A\0A Append items to the end of the array.\00", align 16
@.str.27 = private unnamed_addr constant [9 x i8] c"fromfile\00", align 1
@fromfile_doc = internal global [95 x i8] c"fromfile(f, n)\0A\0ARead n objects from the file object f and append them to the end of the\0Aarray.\00", align 16
@.str.28 = private unnamed_addr constant [9 x i8] c"fromlist\00", align 1
@fromlist_doc = internal global [49 x i8] c"fromlist(list)\0A\0AAppend items to array from list.\00", align 16
@.str.29 = private unnamed_addr constant [11 x i8] c"fromstring\00", align 1
@fromstring_doc = internal global [214 x i8] c"fromstring(string)\0A\0AAppends items from the string, interpreting it as an array of machine\0Avalues, as if it had been read from a file using the fromfile() method).\0A\0AThis method is deprecated. Use frombytes instead.\00", align 16
@.str.30 = private unnamed_addr constant [10 x i8] c"frombytes\00", align 1
@frombytes_doc = internal global [166 x i8] c"frombytes(bytestring)\0A\0AAppends items from the string, interpreting it as an array of machine\0Avalues, as if it had been read from a file using the fromfile() method).\00", align 16
@.str.31 = private unnamed_addr constant [12 x i8] c"fromunicode\00", align 1
@fromunicode_doc = internal global [246 x i8] c"fromunicode(ustr)\0A\0AExtends this array with data from the unicode string ustr.\0AThe array must be a unicode type array; otherwise a ValueError\0Ais raised.  Use array.frombytes(ustr.encode(...)) to\0Aappend Unicode data to an array of some other type.\00", align 16
@.str.32 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@index_doc = internal global [62 x i8] c"index(x)\0A\0AReturn index of first occurrence of x in the array.\00", align 16
@.str.33 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@insert_doc = internal global [67 x i8] c"insert(i,x)\0A\0AInsert a new item x into the array before position i.\00", align 16
@.str.34 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@pop_doc = internal global [82 x i8] c"pop([i])\0A\0AReturn the i-th element and delete it from the array. i defaults to -1.\00", align 16
@.str.35 = private unnamed_addr constant [14 x i8] c"__reduce_ex__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.36 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@remove_doc = internal global [58 x i8] c"remove(x)\0A\0ARemove the first occurrence of x in the array.\00", align 16
@.str.37 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@reverse_doc = internal global [56 x i8] c"reverse()\0A\0AReverse the order of the items in the array.\00", align 16
@.str.38 = private unnamed_addr constant [7 x i8] c"tofile\00", align 1
@tofile_doc = internal global [69 x i8] c"tofile(f)\0A\0AWrite all items (as machine values) to the file object f.\00", align 16
@.str.39 = private unnamed_addr constant [7 x i8] c"tolist\00", align 1
@tolist_doc = internal global [73 x i8] c"tolist() -> list\0A\0AConvert array to an ordinary list with the same items.\00", align 16
@.str.40 = private unnamed_addr constant [9 x i8] c"tostring\00", align 1
@tostring_doc = internal global [155 x i8] c"tostring() -> bytes\0A\0AConvert the array to an array of machine values and return the bytes\0Arepresentation.\0A\0AThis method is deprecated. Use tobytes instead.\00", align 16
@.str.41 = private unnamed_addr constant [8 x i8] c"tobytes\00", align 1
@tobytes_doc = internal global [105 x i8] c"tobytes() -> bytes\0A\0AConvert the array to an array of machine values and return the bytes\0Arepresentation.\00", align 16
@.str.42 = private unnamed_addr constant [10 x i8] c"tounicode\00", align 1
@tounicode_doc = internal global [229 x i8] c"tounicode() -> unicode\0A\0AConvert the array to a unicode string.  The array must be\0Aa unicode type array; otherwise a ValueError is raised.  Use\0Aarray.tobytes().decode() to obtain a unicode string from\0Aan array of some other type.\00", align 16
@.str.43 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@sizeof_doc = internal global [60 x i8] c"__sizeof__() -> int\0A\0ASize of the array in memory, in bytes.\00", align 16
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.44 = private unnamed_addr constant [43 x i8] c"don't know how to byteswap this array type\00", align 1
@array_fromfile.PyId_read = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), %struct._object* null }, align 8
@.str.45 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"On:fromfile\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"negative count\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"read() didn't return bytes\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"(O)\00", align 1
@PyExc_EOFError = external global %struct._object*, align 8
@.str.51 = private unnamed_addr constant [34 x i8] c"read() didn't return enough bytes\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"arg must be list\00", align 1
@PyExc_DeprecationWarning = external global %struct._object*, align 8
@.str.53 = private unnamed_addr constant [53 x i8] c"fromstring() is deprecated. Use frombytes() instead.\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"s*:fromstring\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"string/buffer of bytes required.\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"string length not a multiple of item size\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"y*:frombytes\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"u#:fromunicode\00", align 1
@.str.59 = private unnamed_addr constant [56 x i8] c"fromunicode() may only be called on unicode type arrays\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"array.index(x): x not in list\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"nO:insert\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"|n:pop\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"pop from empty array\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"pop index out of range\00", align 1
@array_reduce_ex.array_reconstructor = internal global %struct._object* null, align 8
@array_reduce_ex.PyId__array_reconstructor = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0), %struct._object* null }, align 8
@.str.65 = private unnamed_addr constant [21 x i8] c"_array_reconstructor\00", align 1
@array_reduce_ex.PyId___dict__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), %struct._object* null }, align 8
@.str.66 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@.str.67 = private unnamed_addr constant [41 x i8] c"__reduce_ex__ argument should an integer\00", align 1
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.68 = private unnamed_addr constant [7 x i8] c"O(CO)O\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"O(OCiN)O\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"K\7F\01\02\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"\02\01\7FK\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"C?\FF\01\02\03\04\05\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"\05\04\03\02\01\FF?C\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"array.remove(x): x not in list\00", align 1
@array_tofile.PyId_write = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), %struct._object* null }, align 8
@.str.75 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c"tostring() is deprecated. Use tobytes() instead.\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"typecode\00", align 1
@.str.79 = private unnamed_addr constant [48 x i8] c"the typecode character used to create the array\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"itemsize\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"the size, in bytes, of one array item\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"array.array()\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"C|O:array\00", align 1
@.str.84 = private unnamed_addr constant [59 x i8] c"cannot use a str to initialize an array with typecode '%c'\00", align 1
@.str.85 = private unnamed_addr constant [69 x i8] c"cannot use a unicode array to initialize an array with typecode '%c'\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@.str.86 = private unnamed_addr constant [63 x i8] c"bad typecode (must be b, B, u, h, H, i, I, l, L, q, Q, f or d)\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"arrayiterator\00", align 1
@arrayiter_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayiterobject*)* @arrayiter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.arrayiterobject*, %struct._object*)* @arrayiter_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.88 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@setstate_doc = internal global [38 x i8] c"Set state information for unpickling.\00", align 16
@.str.90 = private unnamed_addr constant [6 x i8] c"N(O)n\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@module_doc = internal global [263 x i8] c"This module defines an object type which can efficiently represent\0Aan array of basic values: characters, integers, floating point\0Anumbers.  Arrays are sequence types and behave very much like lists,\0Aexcept that the type of objects stored in them is constrained.\0A\00", align 16
@a_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @array_reconstructor, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.92, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.92 = private unnamed_addr constant [37 x i8] c"Internal. Used for pickling support.\00", align 1
@.str.93 = private unnamed_addr constant [32 x i8] c"OCiO:array._array_reconstructor\00", align 1
@.str.94 = private unnamed_addr constant [46 x i8] c"first argument must a type object, not %.200s\00", align 1
@.str.95 = private unnamed_addr constant [34 x i8] c"%.200s is not a subtype of %.200s\00", align 1
@.str.96 = private unnamed_addr constant [42 x i8] c"second argument must be a valid type code\00", align 1
@.str.97 = private unnamed_addr constant [52 x i8] c"third argument must be a valid machine format code.\00", align 1
@.str.98 = private unnamed_addr constant [44 x i8] c"fourth argument should be bytes, not %.200s\00", align 1
@mformat_descriptors = internal constant [22 x %struct.mformatdescr] [%struct.mformatdescr { i64 1, i32 0, i32 0 }, %struct.mformatdescr { i64 1, i32 1, i32 0 }, %struct.mformatdescr { i64 2, i32 0, i32 0 }, %struct.mformatdescr { i64 2, i32 0, i32 1 }, %struct.mformatdescr { i64 2, i32 1, i32 0 }, %struct.mformatdescr { i64 2, i32 1, i32 1 }, %struct.mformatdescr { i64 4, i32 0, i32 0 }, %struct.mformatdescr { i64 4, i32 0, i32 1 }, %struct.mformatdescr { i64 4, i32 1, i32 0 }, %struct.mformatdescr { i64 4, i32 1, i32 1 }, %struct.mformatdescr { i64 8, i32 0, i32 0 }, %struct.mformatdescr { i64 8, i32 0, i32 1 }, %struct.mformatdescr { i64 8, i32 1, i32 0 }, %struct.mformatdescr { i64 8, i32 1, i32 1 }, %struct.mformatdescr { i64 4, i32 0, i32 0 }, %struct.mformatdescr { i64 4, i32 0, i32 1 }, %struct.mformatdescr { i64 8, i32 0, i32 0 }, %struct.mformatdescr { i64 8, i32 0, i32 1 }, %struct.mformatdescr { i64 4, i32 0, i32 0 }, %struct.mformatdescr { i64 4, i32 0, i32 1 }, %struct.mformatdescr { i64 8, i32 0, i32 0 }, %struct.mformatdescr { i64 8, i32 0, i32 1 }], align 16
@.str.99 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.105 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.113 = private unnamed_addr constant [29 x i8] c"h;array item must be integer\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.114 = private unnamed_addr constant [33 x i8] c"signed char is less than minimum\00", align 1
@.str.115 = private unnamed_addr constant [36 x i8] c"signed char is greater than maximum\00", align 1
@.str.116 = private unnamed_addr constant [29 x i8] c"b;array item must be integer\00", align 1
@.str.117 = private unnamed_addr constant [40 x i8] c"u#;array item must be unicode character\00", align 1
@.str.118 = private unnamed_addr constant [37 x i8] c"array item must be unicode character\00", align 1
@.str.119 = private unnamed_addr constant [29 x i8] c"i;array item must be integer\00", align 1
@.str.120 = private unnamed_addr constant [36 x i8] c"unsigned short is less than minimum\00", align 1
@.str.121 = private unnamed_addr constant [39 x i8] c"unsigned short is greater than maximum\00", align 1
@.str.122 = private unnamed_addr constant [29 x i8] c"l;array item must be integer\00", align 1
@.str.123 = private unnamed_addr constant [34 x i8] c"unsigned int is less than minimum\00", align 1
@.str.124 = private unnamed_addr constant [37 x i8] c"unsigned int is greater than maximum\00", align 1
@.str.125 = private unnamed_addr constant [35 x i8] c"unsigned long is less than minimum\00", align 1
@.str.126 = private unnamed_addr constant [38 x i8] c"unsigned long is greater than maximum\00", align 1
@.str.127 = private unnamed_addr constant [29 x i8] c"L;array item must be integer\00", align 1
@.str.128 = private unnamed_addr constant [40 x i8] c"unsigned long long is less than minimum\00", align 1
@.str.129 = private unnamed_addr constant [27 x i8] c"f;array item must be float\00", align 1
@.str.130 = private unnamed_addr constant [27 x i8] c"d;array item must be float\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_array() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %buffer = alloca [14 x i8], align 1
  %p = alloca i8*, align 8
  %typecodes = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %descr = alloca %struct.arraydescr*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i64 0, i64* %size, align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @Arraytype)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyArrayIter_Type, i32 0, i32 0, i32 0, i32 1), align 8
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @arraymodule, i32 1013)
  store %struct._object* %call1, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp2 = icmp eq %struct._object* %0, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Arraytype, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Arraytype, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call5 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Arraytype, i32 0, i32 0, i32 0))
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Arraytype, i32 0, i32 0, i32 0, i32 0), align 8
  %inc6 = add i64 %3, 1
  store i64 %inc6, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Arraytype, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call7 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Arraytype, i32 0, i32 0, i32 0))
  store %struct.arraydescr* getelementptr inbounds ([14 x %struct.arraydescr], [14 x %struct.arraydescr]* @descriptors, i32 0, i32 0), %struct.arraydescr** %descr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %5 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %typecode = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %5, i32 0, i32 0
  %6 = load i8, i8* %typecode, align 1
  %conv = sext i8 %6 to i32
  %cmp8 = icmp ne i32 %conv, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %size, align 8
  %inc10 = add i64 %7, 1
  store i64 %inc10, i64* %size, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %incdec.ptr = getelementptr %struct.arraydescr, %struct.arraydescr* %8, i32 1
  store %struct.arraydescr* %incdec.ptr, %struct.arraydescr** %descr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %buffer, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  store %struct.arraydescr* getelementptr inbounds ([14 x %struct.arraydescr], [14 x %struct.arraydescr]* @descriptors, i32 0, i32 0), %struct.arraydescr** %descr, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.19, %for.end
  %9 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %typecode12 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %9, i32 0, i32 0
  %10 = load i8, i8* %typecode12, align 1
  %conv13 = sext i8 %10 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %for.body.16, label %for.end.21

for.body.16:                                      ; preds = %for.cond.11
  %11 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %typecode17 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %11, i32 0, i32 0
  %12 = load i8, i8* %typecode17, align 1
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr18 = getelementptr i8, i8* %13, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8
  store i8 %12, i8* %13, align 1
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.16
  %14 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %incdec.ptr20 = getelementptr %struct.arraydescr, %struct.arraydescr* %14, i32 1
  store %struct.arraydescr* %incdec.ptr20, %struct.arraydescr** %descr, align 8
  br label %for.cond.11

for.end.21:                                       ; preds = %for.cond.11
  %arraydecay22 = getelementptr inbounds [14 x i8], [14 x i8]* %buffer, i32 0, i32 0
  %15 = load i8*, i8** %p, align 8
  %arraydecay23 = getelementptr inbounds [14 x i8], [14 x i8]* %buffer, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call24 = call %struct._object* @PyUnicode_DecodeASCII(i8* %arraydecay22, i64 %sub.ptr.sub, i8* null)
  store %struct._object* %call24, %struct._object** %typecodes, align 8
  %16 = load %struct._object*, %struct._object** %m, align 8
  %17 = load %struct._object*, %struct._object** %typecodes, align 8
  %call25 = call i32 @PyModule_AddObject(%struct._object* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct._object* %17)
  %call26 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call26, null
  br i1 %tobool, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %for.end.21
  br label %do.body

do.body:                                          ; preds = %if.then.27
  %18 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %do.body
  br label %if.end.31

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.31
  store %struct._object* null, %struct._object** %m, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %do.end, %for.end.21
  %25 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.3, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyUnicode_DecodeASCII(i8*, i64, i8*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal void @array_dealloc(%struct.arrayobject* %op) #0 {
entry:
  %op.addr = alloca %struct.arrayobject*, align 8
  store %struct.arrayobject* %op, %struct.arrayobject** %op.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %op.addr, align 8
  %weakreflist = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.arrayobject*, %struct.arrayobject** %op.addr, align 8
  %3 = bitcast %struct.arrayobject* %2 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.arrayobject*, %struct.arrayobject** %op.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %4, i32 0, i32 1
  %5 = load i8*, i8** %ob_item, align 8
  %cmp1 = icmp ne i8* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.arrayobject*, %struct.arrayobject** %op.addr, align 8
  %ob_item3 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %ob_item3, align 8
  call void @PyMem_Free(i8* %7)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %8 = load %struct.arrayobject*, %struct.arrayobject** %op.addr, align 8
  %9 = bitcast %struct.arrayobject* %8 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 38
  %11 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %12 = load %struct.arrayobject*, %struct.arrayobject** %op.addr, align 8
  %13 = bitcast %struct.arrayobject* %12 to %struct._object*
  %14 = bitcast %struct._object* %13 to i8*
  call void %11(i8* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_repr(%struct.arrayobject* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.arrayobject*, align 8
  %typecode = alloca i8, align 1
  %s = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.arrayobject* %a, %struct.arrayobject** %a.addr, align 8
  store %struct._object* null, %struct._object** %v, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %1 = bitcast %struct.arrayobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %len, align 8
  %3 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %3, i32 0, i32 3
  %4 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %typecode1 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %4, i32 0, i32 0
  %5 = load i8, i8* %typecode1, align 1
  store i8 %5, i8* %typecode, align 1
  %6 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8, i8* %typecode, align 1
  %conv = sext i8 %7 to i32
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 %conv)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8, i8* %typecode, align 1
  %conv2 = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv2, 117
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %call6 = call %struct._object* @array_tounicode(%struct.arrayobject* %9, %struct._object* null)
  store %struct._object* %call6, %struct._object** %v, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %10 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %call7 = call %struct._object* @array_tolist(%struct.arrayobject* %10, %struct._object* null)
  store %struct._object* %call7, %struct._object** %v, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.5
  %11 = load %struct._object*, %struct._object** %v, align 8
  %cmp9 = icmp eq %struct._object* %11, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %12 = load i8, i8* %typecode, align 1
  %conv13 = sext i8 %12 to i32
  %13 = load %struct._object*, %struct._object** %v, align 8
  %call14 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 %conv13, %struct._object* %13)
  store %struct._object* %call14, %struct._object** %s, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %14 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body
  br label %if.end.19

if.else.18:                                       ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %21 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.11, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_richcompare(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %va = alloca %struct.arrayobject*, align 8
  %wa = alloca %struct.arrayobject*, align 8
  %vi = alloca %struct._object*, align 8
  %wi = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %res = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %vs = alloca i64, align 8
  %ws = alloca i64, align 8
  %cmp97 = alloca i32, align 4
  %_py_decref_tmp136 = alloca %struct._object*, align 8
  %_py_decref_tmp148 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store %struct._object* null, %struct._object** %vi, align 8
  store %struct._object* null, %struct._object** %wi, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @Arraytype
  br i1 %cmp, label %lor.lhs.false.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @Arraytype)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %cmp4 = icmp eq %struct._typeobject* %5, @Arraytype
  br i1 %cmp4, label %if.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.2
  %6 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %call7 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @Arraytype)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5, %lor.lhs.false.2
  %9 = load %struct._object*, %struct._object** %v.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.arrayobject*
  store %struct.arrayobject* %10, %struct.arrayobject** %va, align 8
  %11 = load %struct._object*, %struct._object** %w.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.arrayobject*
  store %struct.arrayobject* %12, %struct.arrayobject** %wa, align 8
  %13 = load %struct.arrayobject*, %struct.arrayobject** %va, align 8
  %14 = bitcast %struct.arrayobject* %13 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size, align 8
  %16 = load %struct.arrayobject*, %struct.arrayobject** %wa, align 8
  %17 = bitcast %struct.arrayobject* %16 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size9, align 8
  %cmp10 = icmp ne i64 %15, %18
  br i1 %cmp10, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %19 = load i32, i32* %op.addr, align 4
  %cmp11 = icmp eq i32 %19, 2
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true
  %20 = load i32, i32* %op.addr, align 4
  %cmp13 = icmp eq i32 %20, 3
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %lor.lhs.false.12, %land.lhs.true
  %21 = load i32, i32* %op.addr, align 4
  %cmp15 = icmp eq i32 %21, 2
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.14
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.then.14
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %22 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %inc18 = add i64 %23, 1
  store i64 %inc18, i64* %ob_refcnt, align 8
  %24 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %24, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false.12, %if.end
  store i64 1, i64* %k, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %25 = load i64, i64* %i, align 8
  %26 = load %struct.arrayobject*, %struct.arrayobject** %va, align 8
  %27 = bitcast %struct.arrayobject* %26 to %struct.PyVarObject*
  %ob_size20 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %27, i32 0, i32 1
  %28 = load i64, i64* %ob_size20, align 8
  %cmp21 = icmp slt i64 %25, %28
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %29 = load i64, i64* %i, align 8
  %30 = load %struct.arrayobject*, %struct.arrayobject** %wa, align 8
  %31 = bitcast %struct.arrayobject* %30 to %struct.PyVarObject*
  %ob_size22 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %31, i32 0, i32 1
  %32 = load i64, i64* %ob_size22, align 8
  %cmp23 = icmp slt i64 %29, %32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %33 = phi i1 [ false, %for.cond ], [ %cmp23, %land.rhs ]
  br i1 %33, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %34 = load %struct._object*, %struct._object** %v.addr, align 8
  %35 = load i64, i64* %i, align 8
  %call24 = call %struct._object* @getarrayitem(%struct._object* %34, i64 %35)
  store %struct._object* %call24, %struct._object** %vi, align 8
  %36 = load %struct._object*, %struct._object** %w.addr, align 8
  %37 = load i64, i64* %i, align 8
  %call25 = call %struct._object* @getarrayitem(%struct._object* %36, i64 %37)
  store %struct._object* %call25, %struct._object** %wi, align 8
  %38 = load %struct._object*, %struct._object** %vi, align 8
  %cmp26 = icmp eq %struct._object* %38, null
  br i1 %cmp26, label %if.then.29, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %for.body
  %39 = load %struct._object*, %struct._object** %wi, align 8
  %cmp28 = icmp eq %struct._object* %39, null
  br i1 %cmp28, label %if.then.29, label %if.end.58

if.then.29:                                       ; preds = %lor.lhs.false.27, %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.29
  %40 = load %struct._object*, %struct._object** %vi, align 8
  store %struct._object* %40, %struct._object** %_py_xdecref_tmp, align 8
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp30 = icmp ne %struct._object* %41, null
  br i1 %cmp30, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %do.body
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt33, align 8
  %dec = add i64 %44, -1
  store i64 %dec, i64* %ob_refcnt33, align 8
  %cmp34 = icmp ne i64 %dec, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.32
  br label %if.end.38

if.else.36:                                       ; preds = %do.body.32
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %47(%struct._object* %48)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end

do.end:                                           ; preds = %if.end.38
  br label %if.end.39

if.end.39:                                        ; preds = %do.end, %do.body
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %49 = load %struct._object*, %struct._object** %wi, align 8
  store %struct._object* %49, %struct._object** %_py_xdecref_tmp42, align 8
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp42, align 8
  %cmp43 = icmp ne %struct._object* %50, null
  br i1 %cmp43, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %do.body.41
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp42, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp46, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %53, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %56(%struct._object* %57)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %do.body.41
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.58:                                        ; preds = %lor.lhs.false.27
  %58 = load %struct._object*, %struct._object** %vi, align 8
  %59 = load %struct._object*, %struct._object** %wi, align 8
  %call59 = call i32 @PyObject_RichCompareBool(%struct._object* %58, %struct._object* %59, i32 2)
  %conv = sext i32 %call59 to i64
  store i64 %conv, i64* %k, align 8
  %60 = load i64, i64* %k, align 8
  %cmp60 = icmp eq i64 %60, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.58
  br label %for.end

if.end.63:                                        ; preds = %if.end.58
  br label %do.body.64

do.body.64:                                       ; preds = %if.end.63
  %61 = load %struct._object*, %struct._object** %vi, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp65, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %63, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.64
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.64
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %66(%struct._object* %67)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %68 = load %struct._object*, %struct._object** %wi, align 8
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
  %75 = load i64, i64* %k, align 8
  %cmp88 = icmp slt i64 %75, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %do.end.87
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.91:                                        ; preds = %do.end.87
  br label %for.inc

for.inc:                                          ; preds = %if.end.91
  %76 = load i64, i64* %i, align 8
  %inc92 = add i64 %76, 1
  store i64 %inc92, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.62, %land.end
  %77 = load i64, i64* %k, align 8
  %tobool93 = icmp ne i64 %77, 0
  br i1 %tobool93, label %if.then.94, label %if.end.121

if.then.94:                                       ; preds = %for.end
  %78 = load %struct.arrayobject*, %struct.arrayobject** %va, align 8
  %79 = bitcast %struct.arrayobject* %78 to %struct.PyVarObject*
  %ob_size95 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %79, i32 0, i32 1
  %80 = load i64, i64* %ob_size95, align 8
  store i64 %80, i64* %vs, align 8
  %81 = load %struct.arrayobject*, %struct.arrayobject** %wa, align 8
  %82 = bitcast %struct.arrayobject* %81 to %struct.PyVarObject*
  %ob_size96 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %82, i32 0, i32 1
  %83 = load i64, i64* %ob_size96, align 8
  store i64 %83, i64* %ws, align 8
  %84 = load i32, i32* %op.addr, align 4
  switch i32 %84, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.100
    i32 2, label %sw.bb.103
    i32 3, label %sw.bb.106
    i32 4, label %sw.bb.109
    i32 5, label %sw.bb.112
  ]

sw.bb:                                            ; preds = %if.then.94
  %85 = load i64, i64* %vs, align 8
  %86 = load i64, i64* %ws, align 8
  %cmp98 = icmp slt i64 %85, %86
  %conv99 = zext i1 %cmp98 to i32
  store i32 %conv99, i32* %cmp97, align 4
  br label %sw.epilog

sw.bb.100:                                        ; preds = %if.then.94
  %87 = load i64, i64* %vs, align 8
  %88 = load i64, i64* %ws, align 8
  %cmp101 = icmp sle i64 %87, %88
  %conv102 = zext i1 %cmp101 to i32
  store i32 %conv102, i32* %cmp97, align 4
  br label %sw.epilog

sw.bb.103:                                        ; preds = %if.then.94
  %89 = load i64, i64* %vs, align 8
  %90 = load i64, i64* %ws, align 8
  %cmp104 = icmp eq i64 %89, %90
  %conv105 = zext i1 %cmp104 to i32
  store i32 %conv105, i32* %cmp97, align 4
  br label %sw.epilog

sw.bb.106:                                        ; preds = %if.then.94
  %91 = load i64, i64* %vs, align 8
  %92 = load i64, i64* %ws, align 8
  %cmp107 = icmp ne i64 %91, %92
  %conv108 = zext i1 %cmp107 to i32
  store i32 %conv108, i32* %cmp97, align 4
  br label %sw.epilog

sw.bb.109:                                        ; preds = %if.then.94
  %93 = load i64, i64* %vs, align 8
  %94 = load i64, i64* %ws, align 8
  %cmp110 = icmp sgt i64 %93, %94
  %conv111 = zext i1 %cmp110 to i32
  store i32 %conv111, i32* %cmp97, align 4
  br label %sw.epilog

sw.bb.112:                                        ; preds = %if.then.94
  %95 = load i64, i64* %vs, align 8
  %96 = load i64, i64* %ws, align 8
  %cmp113 = icmp sge i64 %95, %96
  %conv114 = zext i1 %cmp113 to i32
  store i32 %conv114, i32* %cmp97, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.94
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.112, %sw.bb.109, %sw.bb.106, %sw.bb.103, %sw.bb.100, %sw.bb
  %97 = load i32, i32* %cmp97, align 4
  %tobool115 = icmp ne i32 %97, 0
  br i1 %tobool115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %sw.epilog
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.118

if.else.117:                                      ; preds = %sw.epilog
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %if.then.116
  %98 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt119, align 8
  %inc120 = add i64 %99, 1
  store i64 %inc120, i64* %ob_refcnt119, align 8
  %100 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %100, %struct._object** %retval
  br label %return

if.end.121:                                       ; preds = %for.end
  %101 = load i32, i32* %op.addr, align 4
  %cmp122 = icmp eq i32 %101, 2
  br i1 %cmp122, label %if.then.124, label %if.else.126

if.then.124:                                      ; preds = %if.end.121
  %102 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc125 = add i64 %102, 1
  store i64 %inc125, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.134

if.else.126:                                      ; preds = %if.end.121
  %103 = load i32, i32* %op.addr, align 4
  %cmp127 = icmp eq i32 %103, 3
  br i1 %cmp127, label %if.then.129, label %if.else.131

if.then.129:                                      ; preds = %if.else.126
  %104 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc130 = add i64 %104, 1
  store i64 %inc130, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.133

if.else.131:                                      ; preds = %if.else.126
  %105 = load %struct._object*, %struct._object** %vi, align 8
  %106 = load %struct._object*, %struct._object** %wi, align 8
  %107 = load i32, i32* %op.addr, align 4
  %call132 = call %struct._object* @PyObject_RichCompare(%struct._object* %105, %struct._object* %106, i32 %107)
  store %struct._object* %call132, %struct._object** %res, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.131, %if.then.129
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.124
  br label %do.body.135

do.body.135:                                      ; preds = %if.end.134
  %108 = load %struct._object*, %struct._object** %vi, align 8
  store %struct._object* %108, %struct._object** %_py_decref_tmp136, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp136, align 8
  %ob_refcnt137 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0
  %110 = load i64, i64* %ob_refcnt137, align 8
  %dec138 = add i64 %110, -1
  store i64 %dec138, i64* %ob_refcnt137, align 8
  %cmp139 = icmp ne i64 %dec138, 0
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %do.body.135
  br label %if.end.145

if.else.142:                                      ; preds = %do.body.135
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp136, align 8
  %ob_type143 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type143, align 8
  %tp_dealloc144 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc144, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp136, align 8
  call void %113(%struct._object* %114)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  br label %do.body.147

do.body.147:                                      ; preds = %do.end.146
  %115 = load %struct._object*, %struct._object** %wi, align 8
  store %struct._object* %115, %struct._object** %_py_decref_tmp148, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp148, align 8
  %ob_refcnt149 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0
  %117 = load i64, i64* %ob_refcnt149, align 8
  %dec150 = add i64 %117, -1
  store i64 %dec150, i64* %ob_refcnt149, align 8
  %cmp151 = icmp ne i64 %dec150, 0
  br i1 %cmp151, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %do.body.147
  br label %if.end.157

if.else.154:                                      ; preds = %do.body.147
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp148, align 8
  %ob_type155 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type155, align 8
  %tp_dealloc156 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc156, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp148, align 8
  call void %120(%struct._object* %121)
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.154, %if.then.153
  br label %do.end.158

do.end.158:                                       ; preds = %if.end.157
  %122 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %122, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.158, %if.end.118, %sw.default, %if.then.90, %do.end.57, %if.end.17, %if.then
  %123 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %123
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_iter(%struct.arrayobject* %ao) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ao.addr = alloca %struct.arrayobject*, align 8
  %it = alloca %struct.arrayiterobject*, align 8
  store %struct.arrayobject* %ao, %struct.arrayobject** %ao.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %ao.addr, align 8
  %1 = bitcast %struct.arrayobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @Arraytype
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.arrayobject*, %struct.arrayobject** %ao.addr, align 8
  %4 = bitcast %struct.arrayobject* %3 to %struct._object*
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @Arraytype)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i32 0, i32 0), i32 2786)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %call2 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyArrayIter_Type)
  %6 = bitcast %struct._object* %call2 to %struct.arrayiterobject*
  store %struct.arrayiterobject* %6, %struct.arrayiterobject** %it, align 8
  %7 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it, align 8
  %cmp3 = icmp eq %struct.arrayiterobject* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.arrayobject*, %struct.arrayobject** %ao.addr, align 8
  %9 = bitcast %struct.arrayobject* %8 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %11 = load %struct.arrayobject*, %struct.arrayobject** %ao.addr, align 8
  %12 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it, align 8
  %ao6 = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %12, i32 0, i32 2
  store %struct.arrayobject* %11, %struct.arrayobject** %ao6, align 8
  %13 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it, align 8
  %index = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %13, i32 0, i32 1
  store i64 0, i64* %index, align 8
  %14 = load %struct.arrayobject*, %struct.arrayobject** %ao.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %14, i32 0, i32 3
  %15 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %getitem = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %15, i32 0, i32 2
  %16 = load %struct._object* (%struct.arrayobject*, i64)*, %struct._object* (%struct.arrayobject*, i64)** %getitem, align 8
  %17 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it, align 8
  %getitem7 = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %17, i32 0, i32 3
  store %struct._object* (%struct.arrayobject*, i64)* %16, %struct._object* (%struct.arrayobject*, i64)** %getitem7, align 8
  %18 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it, align 8
  %19 = bitcast %struct.arrayiterobject* %18 to i8*
  call void @PyObject_GC_Track(i8* %19)
  %20 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it, align 8
  %21 = bitcast %struct.arrayiterobject* %20 to %struct._object*
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %c = alloca i32, align 4
  %initial = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %descr = alloca %struct.arraydescr*, align 8
  %a = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp158 = alloca %struct._object*, align 8
  %_py_decref_tmp170 = alloca %struct._object*, align 8
  %_py_decref_tmp183 = alloca %struct._object*, align 8
  %t_initial = alloca %struct._object*, align 8
  %v212 = alloca %struct._object*, align 8
  %_py_decref_tmp218 = alloca %struct._object*, align 8
  %_py_decref_tmp232 = alloca %struct._object*, align 8
  %_py_decref_tmp247 = alloca %struct._object*, align 8
  %_py_decref_tmp260 = alloca %struct._object*, align 8
  %ustr = alloca i32*, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp287 = alloca %struct._object*, align 8
  %self = alloca %struct.arrayobject*, align 8
  %item = alloca i8*, align 8
  %_py_decref_tmp338 = alloca %struct._object*, align 8
  %self366 = alloca %struct.arrayobject*, align 8
  %other = alloca %struct.arrayobject*, align 8
  %_py_decref_tmp384 = alloca %struct._object*, align 8
  %_py_decref_tmp396 = alloca %struct._object*, align 8
  %_py_decref_tmp409 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %initial, align 8
  store %struct._object* null, %struct._object** %it, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @Arraytype
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32* %c, %struct._object** %initial)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %initial, align 8
  %tobool5 = icmp ne %struct._object* %3, null
  br i1 %tobool5, label %land.lhs.true.6, label %if.end.24

land.lhs.true.6:                                  ; preds = %if.end.4
  %4 = load i32, i32* %c, align 4
  %cmp7 = icmp ne i32 %4, 117
  br i1 %cmp7, label %if.then.8, label %if.end.24

if.then.8:                                        ; preds = %land.lhs.true.6
  %5 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 268435456
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.8
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load i32, i32* %c, align 4
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.84, i32 0, i32 0), i32 %9)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then.8
  %10 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %cmp13 = icmp eq %struct._typeobject* %11, @Arraytype
  br i1 %cmp13, label %land.lhs.true.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %12 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %call15 = call i32 @PyType_IsSubtype(%struct._typeobject* %13, %struct._typeobject* @Arraytype)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.22

land.lhs.true.17:                                 ; preds = %lor.lhs.false, %if.else
  %14 = load %struct._object*, %struct._object** %initial, align 8
  %15 = bitcast %struct._object* %14 to %struct.arrayobject*
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %15, i32 0, i32 3
  %16 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %typecode = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %16, i32 0, i32 0
  %17 = load i8, i8* %typecode, align 1
  %conv = sext i8 %17 to i32
  %cmp18 = icmp eq i32 %conv, 117
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true.17
  %18 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %19 = load i32, i32* %c, align 4
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.85, i32 0, i32 0), i32 %19)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.17, %lor.lhs.false
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.lhs.true.6, %if.end.4
  %20 = load %struct._object*, %struct._object** %initial, align 8
  %cmp25 = icmp eq %struct._object* %20, null
  br i1 %cmp25, label %if.end.82, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.24
  %21 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_flags29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 19
  %23 = load i64, i64* %tp_flags29, align 8
  %and30 = and i64 %23, 33554432
  %cmp31 = icmp ne i64 %and30, 0
  br i1 %cmp31, label %if.end.82, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.27
  %24 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %cmp35 = icmp eq %struct._typeobject* %25, @PyByteArray_Type
  br i1 %cmp35, label %if.end.82, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.33
  %26 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %call39 = call i32 @PyType_IsSubtype(%struct._typeobject* %27, %struct._typeobject* @PyByteArray_Type)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.82, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.37
  %28 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_flags43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 19
  %30 = load i64, i64* %tp_flags43, align 8
  %and44 = and i64 %30, 134217728
  %cmp45 = icmp ne i64 %and44, 0
  br i1 %cmp45, label %if.end.82, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.41
  %31 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_flags49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 19
  %33 = load i64, i64* %tp_flags49, align 8
  %and50 = and i64 %33, 67108864
  %cmp51 = icmp ne i64 %and50, 0
  br i1 %cmp51, label %if.end.82, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.47
  %34 = load i32, i32* %c, align 4
  %cmp54 = icmp eq i32 %34, 117
  br i1 %cmp54, label %land.lhs.true.56, label %lor.lhs.false.62

land.lhs.true.56:                                 ; preds = %lor.lhs.false.53
  %35 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_flags58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 19
  %37 = load i64, i64* %tp_flags58, align 8
  %and59 = and i64 %37, 268435456
  %cmp60 = icmp ne i64 %and59, 0
  br i1 %cmp60, label %if.end.82, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %land.lhs.true.56, %lor.lhs.false.53
  %38 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %cmp64 = icmp eq %struct._typeobject* %39, @Arraytype
  br i1 %cmp64, label %land.lhs.true.70, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.62
  %40 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %call68 = call i32 @PyType_IsSubtype(%struct._typeobject* %41, %struct._typeobject* @Arraytype)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.then.76

land.lhs.true.70:                                 ; preds = %lor.lhs.false.66, %lor.lhs.false.62
  %42 = load i32, i32* %c, align 4
  %43 = load %struct._object*, %struct._object** %initial, align 8
  %44 = bitcast %struct._object* %43 to %struct.arrayobject*
  %ob_descr71 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %44, i32 0, i32 3
  %45 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr71, align 8
  %typecode72 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %45, i32 0, i32 0
  %46 = load i8, i8* %typecode72, align 1
  %conv73 = sext i8 %46 to i32
  %cmp74 = icmp eq i32 %42, %conv73
  br i1 %cmp74, label %if.end.82, label %if.then.76

if.then.76:                                       ; preds = %land.lhs.true.70, %lor.lhs.false.66
  %47 = load %struct._object*, %struct._object** %initial, align 8
  %call77 = call %struct._object* @PyObject_GetIter(%struct._object* %47)
  store %struct._object* %call77, %struct._object** %it, align 8
  %48 = load %struct._object*, %struct._object** %it, align 8
  %cmp78 = icmp eq %struct._object* %48, null
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.76
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.81:                                        ; preds = %if.then.76
  store %struct._object* null, %struct._object** %initial, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true.70, %land.lhs.true.56, %lor.lhs.false.47, %lor.lhs.false.41, %lor.lhs.false.37, %lor.lhs.false.33, %lor.lhs.false.27, %if.end.24
  store %struct.arraydescr* getelementptr inbounds ([14 x %struct.arraydescr], [14 x %struct.arraydescr]* @descriptors, i32 0, i32 0), %struct.arraydescr** %descr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.422, %if.end.82
  %49 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %typecode83 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %49, i32 0, i32 0
  %50 = load i8, i8* %typecode83, align 1
  %conv84 = sext i8 %50 to i32
  %cmp85 = icmp ne i32 %conv84, 0
  br i1 %cmp85, label %for.body, label %for.end.423

for.body:                                         ; preds = %for.cond
  %51 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %typecode87 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %51, i32 0, i32 0
  %52 = load i8, i8* %typecode87, align 1
  %conv88 = sext i8 %52 to i32
  %53 = load i32, i32* %c, align 4
  %cmp89 = icmp eq i32 %conv88, %53
  br i1 %cmp89, label %if.then.91, label %if.end.421

if.then.91:                                       ; preds = %for.body
  %54 = load %struct._object*, %struct._object** %initial, align 8
  %cmp92 = icmp eq %struct._object* %54, null
  br i1 %cmp92, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %if.then.91
  store i64 0, i64* %len, align 8
  br label %if.end.121

if.else.95:                                       ; preds = %if.then.91
  %55 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8
  %tp_flags97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 19
  %57 = load i64, i64* %tp_flags97, align 8
  %and98 = and i64 %57, 33554432
  %cmp99 = icmp ne i64 %and98, 0
  br i1 %cmp99, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %if.else.95
  %58 = load %struct._object*, %struct._object** %initial, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %59, i32 0, i32 1
  %60 = load i64, i64* %ob_size, align 8
  store i64 %60, i64* %len, align 8
  br label %if.end.120

if.else.102:                                      ; preds = %if.else.95
  %61 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type103 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type103, align 8
  %tp_flags104 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 19
  %63 = load i64, i64* %tp_flags104, align 8
  %and105 = and i64 %63, 67108864
  %cmp106 = icmp ne i64 %and105, 0
  br i1 %cmp106, label %if.then.116, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %if.else.102
  %64 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %cmp110 = icmp eq %struct._typeobject* %65, @Arraytype
  br i1 %cmp110, label %if.then.116, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %lor.lhs.false.108
  %66 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type113 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type113, align 8
  %call114 = call i32 @PyType_IsSubtype(%struct._typeobject* %67, %struct._typeobject* @Arraytype)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %lor.lhs.false.112, %lor.lhs.false.108, %if.else.102
  %68 = load %struct._object*, %struct._object** %initial, align 8
  %69 = bitcast %struct._object* %68 to %struct.PyVarObject*
  %ob_size117 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %69, i32 0, i32 1
  %70 = load i64, i64* %ob_size117, align 8
  store i64 %70, i64* %len, align 8
  br label %if.end.119

if.else.118:                                      ; preds = %lor.lhs.false.112
  store i64 0, i64* %len, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.118, %if.then.116
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.101
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.94
  %71 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %72 = load i64, i64* %len, align 8
  %73 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %call122 = call %struct._object* @newarrayobject(%struct._typeobject* %71, i64 %72, %struct.arraydescr* %73)
  store %struct._object* %call122, %struct._object** %a, align 8
  %74 = load %struct._object*, %struct._object** %a, align 8
  %cmp123 = icmp eq %struct._object* %74, null
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.121
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.126:                                       ; preds = %if.end.121
  %75 = load i64, i64* %len, align 8
  %cmp127 = icmp sgt i64 %75, 0
  br i1 %cmp127, label %land.lhs.true.129, label %if.else.194

land.lhs.true.129:                                ; preds = %if.end.126
  %76 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8
  %cmp131 = icmp eq %struct._typeobject* %77, @Arraytype
  br i1 %cmp131, label %if.else.194, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %land.lhs.true.129
  %78 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type134 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type134, align 8
  %call135 = call i32 @PyType_IsSubtype(%struct._typeobject* %79, %struct._typeobject* @Arraytype)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.else.194, label %if.then.137

if.then.137:                                      ; preds = %lor.lhs.false.133
  store i64 0, i64* %i, align 8
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc, %if.then.137
  %80 = load i64, i64* %i, align 8
  %81 = load i64, i64* %len, align 8
  %cmp139 = icmp slt i64 %80, %81
  br i1 %cmp139, label %for.body.141, label %for.end

for.body.141:                                     ; preds = %for.cond.138
  %82 = load %struct._object*, %struct._object** %initial, align 8
  %83 = load i64, i64* %i, align 8
  %call142 = call %struct._object* @PySequence_GetItem(%struct._object* %82, i64 %83)
  store %struct._object* %call142, %struct._object** %v, align 8
  %84 = load %struct._object*, %struct._object** %v, align 8
  %cmp143 = icmp eq %struct._object* %84, null
  br i1 %cmp143, label %if.then.145, label %if.end.152

if.then.145:                                      ; preds = %for.body.141
  br label %do.body

do.body:                                          ; preds = %if.then.145
  %85 = load %struct._object*, %struct._object** %a, align 8
  store %struct._object* %85, %struct._object** %_py_decref_tmp, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0
  %87 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %87, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp146 = icmp ne i64 %dec, 0
  br i1 %cmp146, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %do.body
  br label %if.end.151

if.else.149:                                      ; preds = %do.body
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type150 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type150, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %90(%struct._object* %91)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.149, %if.then.148
  br label %do.end

do.end:                                           ; preds = %if.end.151
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.152:                                       ; preds = %for.body.141
  %92 = load %struct._object*, %struct._object** %a, align 8
  %93 = load i64, i64* %i, align 8
  %94 = load %struct._object*, %struct._object** %v, align 8
  %call153 = call i32 @setarrayitem(%struct._object* %92, i64 %93, %struct._object* %94)
  %cmp154 = icmp ne i32 %call153, 0
  br i1 %cmp154, label %if.then.156, label %if.end.181

if.then.156:                                      ; preds = %if.end.152
  br label %do.body.157

do.body.157:                                      ; preds = %if.then.156
  %95 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %95, %struct._object** %_py_decref_tmp158, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  %ob_refcnt159 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0
  %97 = load i64, i64* %ob_refcnt159, align 8
  %dec160 = add i64 %97, -1
  store i64 %dec160, i64* %ob_refcnt159, align 8
  %cmp161 = icmp ne i64 %dec160, 0
  br i1 %cmp161, label %if.then.163, label %if.else.164

if.then.163:                                      ; preds = %do.body.157
  br label %if.end.167

if.else.164:                                      ; preds = %do.body.157
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  %ob_type165 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type165, align 8
  %tp_dealloc166 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 4
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc166, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp158, align 8
  call void %100(%struct._object* %101)
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.164, %if.then.163
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  br label %do.body.169

do.body.169:                                      ; preds = %do.end.168
  %102 = load %struct._object*, %struct._object** %a, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp170, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8
  %ob_refcnt171 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt171, align 8
  %dec172 = add i64 %104, -1
  store i64 %dec172, i64* %ob_refcnt171, align 8
  %cmp173 = icmp ne i64 %dec172, 0
  br i1 %cmp173, label %if.then.175, label %if.else.176

if.then.175:                                      ; preds = %do.body.169
  br label %if.end.179

if.else.176:                                      ; preds = %do.body.169
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8
  %ob_type177 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type177, align 8
  %tp_dealloc178 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc178, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8
  call void %107(%struct._object* %108)
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.176, %if.then.175
  br label %do.end.180

do.end.180:                                       ; preds = %if.end.179
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.181:                                       ; preds = %if.end.152
  br label %do.body.182

do.body.182:                                      ; preds = %if.end.181
  %109 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp183, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8
  %ob_refcnt184 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt184, align 8
  %dec185 = add i64 %111, -1
  store i64 %dec185, i64* %ob_refcnt184, align 8
  %cmp186 = icmp ne i64 %dec185, 0
  br i1 %cmp186, label %if.then.188, label %if.else.189

if.then.188:                                      ; preds = %do.body.182
  br label %if.end.192

if.else.189:                                      ; preds = %do.body.182
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8
  %ob_type190 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type190, align 8
  %tp_dealloc191 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc191, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8
  call void %114(%struct._object* %115)
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.189, %if.then.188
  br label %do.end.193

do.end.193:                                       ; preds = %if.end.192
  br label %for.inc

for.inc:                                          ; preds = %do.end.193
  %116 = load i64, i64* %i, align 8
  %inc = add i64 %116, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.138

for.end:                                          ; preds = %for.cond.138
  br label %if.end.375

if.else.194:                                      ; preds = %lor.lhs.false.133, %land.lhs.true.129, %if.end.126
  %117 = load %struct._object*, %struct._object** %initial, align 8
  %cmp195 = icmp ne %struct._object* %117, null
  br i1 %cmp195, label %land.lhs.true.197, label %if.else.271

land.lhs.true.197:                                ; preds = %if.else.194
  %118 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type198 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type198, align 8
  %cmp199 = icmp eq %struct._typeobject* %119, @PyByteArray_Type
  br i1 %cmp199, label %if.then.211, label %lor.lhs.false.201

lor.lhs.false.201:                                ; preds = %land.lhs.true.197
  %120 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type202 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 1
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type202, align 8
  %call203 = call i32 @PyType_IsSubtype(%struct._typeobject* %121, %struct._typeobject* @PyByteArray_Type)
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.then.211, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %lor.lhs.false.201
  %122 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type206 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 1
  %123 = load %struct._typeobject*, %struct._typeobject** %ob_type206, align 8
  %tp_flags207 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %123, i32 0, i32 19
  %124 = load i64, i64* %tp_flags207, align 8
  %and208 = and i64 %124, 134217728
  %cmp209 = icmp ne i64 %and208, 0
  br i1 %cmp209, label %if.then.211, label %if.else.271

if.then.211:                                      ; preds = %lor.lhs.false.205, %lor.lhs.false.201, %land.lhs.true.197
  %125 = load %struct._object*, %struct._object** %initial, align 8
  %call213 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %125)
  store %struct._object* %call213, %struct._object** %t_initial, align 8
  %126 = load %struct._object*, %struct._object** %t_initial, align 8
  %cmp214 = icmp eq %struct._object* %126, null
  br i1 %cmp214, label %if.then.216, label %if.end.229

if.then.216:                                      ; preds = %if.then.211
  br label %do.body.217

do.body.217:                                      ; preds = %if.then.216
  %127 = load %struct._object*, %struct._object** %a, align 8
  store %struct._object* %127, %struct._object** %_py_decref_tmp218, align 8
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_refcnt219 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 0
  %129 = load i64, i64* %ob_refcnt219, align 8
  %dec220 = add i64 %129, -1
  store i64 %dec220, i64* %ob_refcnt219, align 8
  %cmp221 = icmp ne i64 %dec220, 0
  br i1 %cmp221, label %if.then.223, label %if.else.224

if.then.223:                                      ; preds = %do.body.217
  br label %if.end.227

if.else.224:                                      ; preds = %do.body.217
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_type225 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 1
  %131 = load %struct._typeobject*, %struct._typeobject** %ob_type225, align 8
  %tp_dealloc226 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %131, i32 0, i32 4
  %132 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc226, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  call void %132(%struct._object* %133)
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.224, %if.then.223
  br label %do.end.228

do.end.228:                                       ; preds = %if.end.227
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.229:                                       ; preds = %if.then.211
  %134 = load %struct._object*, %struct._object** %a, align 8
  %135 = bitcast %struct._object* %134 to %struct.arrayobject*
  %136 = load %struct._object*, %struct._object** %t_initial, align 8
  %call230 = call %struct._object* @array_frombytes(%struct.arrayobject* %135, %struct._object* %136)
  store %struct._object* %call230, %struct._object** %v212, align 8
  br label %do.body.231

do.body.231:                                      ; preds = %if.end.229
  %137 = load %struct._object*, %struct._object** %t_initial, align 8
  store %struct._object* %137, %struct._object** %_py_decref_tmp232, align 8
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  %ob_refcnt233 = getelementptr inbounds %struct._object, %struct._object* %138, i32 0, i32 0
  %139 = load i64, i64* %ob_refcnt233, align 8
  %dec234 = add i64 %139, -1
  store i64 %dec234, i64* %ob_refcnt233, align 8
  %cmp235 = icmp ne i64 %dec234, 0
  br i1 %cmp235, label %if.then.237, label %if.else.238

if.then.237:                                      ; preds = %do.body.231
  br label %if.end.241

if.else.238:                                      ; preds = %do.body.231
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  %ob_type239 = getelementptr inbounds %struct._object, %struct._object* %140, i32 0, i32 1
  %141 = load %struct._typeobject*, %struct._typeobject** %ob_type239, align 8
  %tp_dealloc240 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %141, i32 0, i32 4
  %142 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc240, align 8
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  call void %142(%struct._object* %143)
  br label %if.end.241

if.end.241:                                       ; preds = %if.else.238, %if.then.237
  br label %do.end.242

do.end.242:                                       ; preds = %if.end.241
  %144 = load %struct._object*, %struct._object** %v212, align 8
  %cmp243 = icmp eq %struct._object* %144, null
  br i1 %cmp243, label %if.then.245, label %if.end.258

if.then.245:                                      ; preds = %do.end.242
  br label %do.body.246

do.body.246:                                      ; preds = %if.then.245
  %145 = load %struct._object*, %struct._object** %a, align 8
  store %struct._object* %145, %struct._object** %_py_decref_tmp247, align 8
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp247, align 8
  %ob_refcnt248 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 0
  %147 = load i64, i64* %ob_refcnt248, align 8
  %dec249 = add i64 %147, -1
  store i64 %dec249, i64* %ob_refcnt248, align 8
  %cmp250 = icmp ne i64 %dec249, 0
  br i1 %cmp250, label %if.then.252, label %if.else.253

if.then.252:                                      ; preds = %do.body.246
  br label %if.end.256

if.else.253:                                      ; preds = %do.body.246
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp247, align 8
  %ob_type254 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 1
  %149 = load %struct._typeobject*, %struct._typeobject** %ob_type254, align 8
  %tp_dealloc255 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %149, i32 0, i32 4
  %150 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc255, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp247, align 8
  call void %150(%struct._object* %151)
  br label %if.end.256

if.end.256:                                       ; preds = %if.else.253, %if.then.252
  br label %do.end.257

do.end.257:                                       ; preds = %if.end.256
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.258:                                       ; preds = %do.end.242
  br label %do.body.259

do.body.259:                                      ; preds = %if.end.258
  %152 = load %struct._object*, %struct._object** %v212, align 8
  store %struct._object* %152, %struct._object** %_py_decref_tmp260, align 8
  %153 = load %struct._object*, %struct._object** %_py_decref_tmp260, align 8
  %ob_refcnt261 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 0
  %154 = load i64, i64* %ob_refcnt261, align 8
  %dec262 = add i64 %154, -1
  store i64 %dec262, i64* %ob_refcnt261, align 8
  %cmp263 = icmp ne i64 %dec262, 0
  br i1 %cmp263, label %if.then.265, label %if.else.266

if.then.265:                                      ; preds = %do.body.259
  br label %if.end.269

if.else.266:                                      ; preds = %do.body.259
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp260, align 8
  %ob_type267 = getelementptr inbounds %struct._object, %struct._object* %155, i32 0, i32 1
  %156 = load %struct._typeobject*, %struct._typeobject** %ob_type267, align 8
  %tp_dealloc268 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %156, i32 0, i32 4
  %157 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc268, align 8
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp260, align 8
  call void %157(%struct._object* %158)
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.266, %if.then.265
  br label %do.end.270

do.end.270:                                       ; preds = %if.end.269
  br label %if.end.374

if.else.271:                                      ; preds = %lor.lhs.false.205, %if.else.194
  %159 = load %struct._object*, %struct._object** %initial, align 8
  %cmp272 = icmp ne %struct._object* %159, null
  br i1 %cmp272, label %land.lhs.true.274, label %if.else.354

land.lhs.true.274:                                ; preds = %if.else.271
  %160 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type275 = getelementptr inbounds %struct._object, %struct._object* %160, i32 0, i32 1
  %161 = load %struct._typeobject*, %struct._typeobject** %ob_type275, align 8
  %tp_flags276 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %161, i32 0, i32 19
  %162 = load i64, i64* %tp_flags276, align 8
  %and277 = and i64 %162, 268435456
  %cmp278 = icmp ne i64 %and277, 0
  br i1 %cmp278, label %if.then.280, label %if.else.354

if.then.280:                                      ; preds = %land.lhs.true.274
  %163 = load %struct._object*, %struct._object** %initial, align 8
  %call281 = call i32* @PyUnicode_AsUnicode(%struct._object* %163)
  store i32* %call281, i32** %ustr, align 8
  %164 = load i32*, i32** %ustr, align 8
  %cmp282 = icmp eq i32* %164, null
  br i1 %cmp282, label %if.then.284, label %if.end.298

if.then.284:                                      ; preds = %if.then.280
  %call285 = call %struct._object* @PyErr_NoMemory()
  br label %do.body.286

do.body.286:                                      ; preds = %if.then.284
  %165 = load %struct._object*, %struct._object** %a, align 8
  store %struct._object* %165, %struct._object** %_py_decref_tmp287, align 8
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp287, align 8
  %ob_refcnt288 = getelementptr inbounds %struct._object, %struct._object* %166, i32 0, i32 0
  %167 = load i64, i64* %ob_refcnt288, align 8
  %dec289 = add i64 %167, -1
  store i64 %dec289, i64* %ob_refcnt288, align 8
  %cmp290 = icmp ne i64 %dec289, 0
  br i1 %cmp290, label %if.then.292, label %if.else.293

if.then.292:                                      ; preds = %do.body.286
  br label %if.end.296

if.else.293:                                      ; preds = %do.body.286
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp287, align 8
  %ob_type294 = getelementptr inbounds %struct._object, %struct._object* %168, i32 0, i32 1
  %169 = load %struct._typeobject*, %struct._typeobject** %ob_type294, align 8
  %tp_dealloc295 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %169, i32 0, i32 4
  %170 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc295, align 8
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp287, align 8
  call void %170(%struct._object* %171)
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.293, %if.then.292
  br label %do.end.297

do.end.297:                                       ; preds = %if.end.296
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.298:                                       ; preds = %if.then.280
  %172 = load %struct._object*, %struct._object** %initial, align 8
  %173 = bitcast %struct._object* %172 to %struct.PyASCIIObject*
  %wstr = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %173, i32 0, i32 4
  %174 = load i32*, i32** %wstr, align 8
  %tobool299 = icmp ne i32* %174, null
  br i1 %tobool299, label %cond.true, label %cond.false.308

cond.true:                                        ; preds = %if.end.298
  %175 = load %struct._object*, %struct._object** %initial, align 8
  %176 = bitcast %struct._object* %175 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %176, i32 0, i32 3
  %177 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %177, align 4
  %bf.lshr = lshr i32 %bf.load, 6
  %bf.clear = and i32 %bf.lshr, 1
  %tobool300 = icmp ne i32 %bf.clear, 0
  br i1 %tobool300, label %land.lhs.true.301, label %cond.false

land.lhs.true.301:                                ; preds = %cond.true
  %178 = load %struct._object*, %struct._object** %initial, align 8
  %179 = bitcast %struct._object* %178 to %struct.PyASCIIObject*
  %state302 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %179, i32 0, i32 3
  %180 = bitcast %struct.anon* %state302 to i32*
  %bf.load303 = load i32, i32* %180, align 4
  %bf.lshr304 = lshr i32 %bf.load303, 5
  %bf.clear305 = and i32 %bf.lshr304, 1
  %tobool306 = icmp ne i32 %bf.clear305, 0
  br i1 %tobool306, label %cond.true.307, label %cond.false

cond.true.307:                                    ; preds = %land.lhs.true.301
  %181 = load %struct._object*, %struct._object** %initial, align 8
  %182 = bitcast %struct._object* %181 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %182, i32 0, i32 1
  %183 = load i64, i64* %length, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.301, %cond.true
  %184 = load %struct._object*, %struct._object** %initial, align 8
  %185 = bitcast %struct._object* %184 to %struct.PyCompactUnicodeObject*
  %wstr_length = getelementptr inbounds %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %185, i32 0, i32 3
  %186 = load i64, i64* %wstr_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.307
  %cond = phi i64 [ %183, %cond.true.307 ], [ %186, %cond.false ]
  br label %cond.end.327

cond.false.308:                                   ; preds = %if.end.298
  %187 = load %struct._object*, %struct._object** %initial, align 8
  %call309 = call i32* @PyUnicode_AsUnicode(%struct._object* %187)
  %188 = load %struct._object*, %struct._object** %initial, align 8
  %189 = bitcast %struct._object* %188 to %struct.PyASCIIObject*
  %state310 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %189, i32 0, i32 3
  %190 = bitcast %struct.anon* %state310 to i32*
  %bf.load311 = load i32, i32* %190, align 4
  %bf.lshr312 = lshr i32 %bf.load311, 6
  %bf.clear313 = and i32 %bf.lshr312, 1
  %tobool314 = icmp ne i32 %bf.clear313, 0
  br i1 %tobool314, label %land.lhs.true.315, label %cond.false.323

land.lhs.true.315:                                ; preds = %cond.false.308
  %191 = load %struct._object*, %struct._object** %initial, align 8
  %192 = bitcast %struct._object* %191 to %struct.PyASCIIObject*
  %state316 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %192, i32 0, i32 3
  %193 = bitcast %struct.anon* %state316 to i32*
  %bf.load317 = load i32, i32* %193, align 4
  %bf.lshr318 = lshr i32 %bf.load317, 5
  %bf.clear319 = and i32 %bf.lshr318, 1
  %tobool320 = icmp ne i32 %bf.clear319, 0
  br i1 %tobool320, label %cond.true.321, label %cond.false.323

cond.true.321:                                    ; preds = %land.lhs.true.315
  %194 = load %struct._object*, %struct._object** %initial, align 8
  %195 = bitcast %struct._object* %194 to %struct.PyASCIIObject*
  %length322 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %195, i32 0, i32 1
  %196 = load i64, i64* %length322, align 8
  br label %cond.end.325

cond.false.323:                                   ; preds = %land.lhs.true.315, %cond.false.308
  %197 = load %struct._object*, %struct._object** %initial, align 8
  %198 = bitcast %struct._object* %197 to %struct.PyCompactUnicodeObject*
  %wstr_length324 = getelementptr inbounds %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %198, i32 0, i32 3
  %199 = load i64, i64* %wstr_length324, align 8
  br label %cond.end.325

cond.end.325:                                     ; preds = %cond.false.323, %cond.true.321
  %cond326 = phi i64 [ %196, %cond.true.321 ], [ %199, %cond.false.323 ]
  br label %cond.end.327

cond.end.327:                                     ; preds = %cond.end.325, %cond.end
  %cond328 = phi i64 [ %cond, %cond.end ], [ %cond326, %cond.end.325 ]
  %mul = mul i64 %cond328, 4
  store i64 %mul, i64* %n, align 8
  %200 = load i64, i64* %n, align 8
  %cmp329 = icmp sgt i64 %200, 0
  br i1 %cmp329, label %if.then.331, label %if.end.353

if.then.331:                                      ; preds = %cond.end.327
  %201 = load %struct._object*, %struct._object** %a, align 8
  %202 = bitcast %struct._object* %201 to %struct.arrayobject*
  store %struct.arrayobject* %202, %struct.arrayobject** %self, align 8
  %203 = load %struct.arrayobject*, %struct.arrayobject** %self, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %203, i32 0, i32 1
  %204 = load i8*, i8** %ob_item, align 8
  store i8* %204, i8** %item, align 8
  %205 = load i8*, i8** %item, align 8
  %206 = load i64, i64* %n, align 8
  %call332 = call i8* @PyMem_Realloc(i8* %205, i64 %206)
  store i8* %call332, i8** %item, align 8
  %207 = load i8*, i8** %item, align 8
  %cmp333 = icmp eq i8* %207, null
  br i1 %cmp333, label %if.then.335, label %if.end.349

if.then.335:                                      ; preds = %if.then.331
  %call336 = call %struct._object* @PyErr_NoMemory()
  br label %do.body.337

do.body.337:                                      ; preds = %if.then.335
  %208 = load %struct._object*, %struct._object** %a, align 8
  store %struct._object* %208, %struct._object** %_py_decref_tmp338, align 8
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp338, align 8
  %ob_refcnt339 = getelementptr inbounds %struct._object, %struct._object* %209, i32 0, i32 0
  %210 = load i64, i64* %ob_refcnt339, align 8
  %dec340 = add i64 %210, -1
  store i64 %dec340, i64* %ob_refcnt339, align 8
  %cmp341 = icmp ne i64 %dec340, 0
  br i1 %cmp341, label %if.then.343, label %if.else.344

if.then.343:                                      ; preds = %do.body.337
  br label %if.end.347

if.else.344:                                      ; preds = %do.body.337
  %211 = load %struct._object*, %struct._object** %_py_decref_tmp338, align 8
  %ob_type345 = getelementptr inbounds %struct._object, %struct._object* %211, i32 0, i32 1
  %212 = load %struct._typeobject*, %struct._typeobject** %ob_type345, align 8
  %tp_dealloc346 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %212, i32 0, i32 4
  %213 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc346, align 8
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp338, align 8
  call void %213(%struct._object* %214)
  br label %if.end.347

if.end.347:                                       ; preds = %if.else.344, %if.then.343
  br label %do.end.348

do.end.348:                                       ; preds = %if.end.347
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.349:                                       ; preds = %if.then.331
  %215 = load i8*, i8** %item, align 8
  %216 = load %struct.arrayobject*, %struct.arrayobject** %self, align 8
  %ob_item350 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %216, i32 0, i32 1
  store i8* %215, i8** %ob_item350, align 8
  %217 = load i64, i64* %n, align 8
  %div = udiv i64 %217, 4
  %218 = load %struct.arrayobject*, %struct.arrayobject** %self, align 8
  %219 = bitcast %struct.arrayobject* %218 to %struct.PyVarObject*
  %ob_size351 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %219, i32 0, i32 1
  store i64 %div, i64* %ob_size351, align 8
  %220 = load i8*, i8** %item, align 8
  %221 = load i32*, i32** %ustr, align 8
  %222 = bitcast i32* %221 to i8*
  %223 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %222, i64 %223, i32 1, i1 false)
  %224 = load %struct.arrayobject*, %struct.arrayobject** %self, align 8
  %225 = bitcast %struct.arrayobject* %224 to %struct.PyVarObject*
  %ob_size352 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %225, i32 0, i32 1
  %226 = load i64, i64* %ob_size352, align 8
  %227 = load %struct.arrayobject*, %struct.arrayobject** %self, align 8
  %allocated = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %227, i32 0, i32 2
  store i64 %226, i64* %allocated, align 8
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.349, %cond.end.327
  br label %if.end.373

if.else.354:                                      ; preds = %land.lhs.true.274, %if.else.271
  %228 = load %struct._object*, %struct._object** %initial, align 8
  %cmp355 = icmp ne %struct._object* %228, null
  br i1 %cmp355, label %land.lhs.true.357, label %if.end.372

land.lhs.true.357:                                ; preds = %if.else.354
  %229 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type358 = getelementptr inbounds %struct._object, %struct._object* %229, i32 0, i32 1
  %230 = load %struct._typeobject*, %struct._typeobject** %ob_type358, align 8
  %cmp359 = icmp eq %struct._typeobject* %230, @Arraytype
  br i1 %cmp359, label %if.then.365, label %lor.lhs.false.361

lor.lhs.false.361:                                ; preds = %land.lhs.true.357
  %231 = load %struct._object*, %struct._object** %initial, align 8
  %ob_type362 = getelementptr inbounds %struct._object, %struct._object* %231, i32 0, i32 1
  %232 = load %struct._typeobject*, %struct._typeobject** %ob_type362, align 8
  %call363 = call i32 @PyType_IsSubtype(%struct._typeobject* %232, %struct._typeobject* @Arraytype)
  %tobool364 = icmp ne i32 %call363, 0
  br i1 %tobool364, label %if.then.365, label %if.end.372

if.then.365:                                      ; preds = %lor.lhs.false.361, %land.lhs.true.357
  %233 = load %struct._object*, %struct._object** %a, align 8
  %234 = bitcast %struct._object* %233 to %struct.arrayobject*
  store %struct.arrayobject* %234, %struct.arrayobject** %self366, align 8
  %235 = load %struct._object*, %struct._object** %initial, align 8
  %236 = bitcast %struct._object* %235 to %struct.arrayobject*
  store %struct.arrayobject* %236, %struct.arrayobject** %other, align 8
  %237 = load %struct.arrayobject*, %struct.arrayobject** %self366, align 8
  %ob_item367 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %237, i32 0, i32 1
  %238 = load i8*, i8** %ob_item367, align 8
  %239 = load %struct.arrayobject*, %struct.arrayobject** %other, align 8
  %ob_item368 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %239, i32 0, i32 1
  %240 = load i8*, i8** %ob_item368, align 8
  %241 = load i64, i64* %len, align 8
  %242 = load %struct.arrayobject*, %struct.arrayobject** %other, align 8
  %ob_descr369 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %242, i32 0, i32 3
  %243 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr369, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %243, i32 0, i32 1
  %244 = load i32, i32* %itemsize, align 4
  %conv370 = sext i32 %244 to i64
  %mul371 = mul i64 %241, %conv370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %238, i8* %240, i64 %mul371, i32 1, i1 false)
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.365, %lor.lhs.false.361, %if.else.354
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %if.end.353
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %do.end.270
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %for.end
  %245 = load %struct._object*, %struct._object** %it, align 8
  %cmp376 = icmp ne %struct._object* %245, null
  br i1 %cmp376, label %if.then.378, label %if.end.420

if.then.378:                                      ; preds = %if.end.375
  %246 = load %struct._object*, %struct._object** %a, align 8
  %247 = bitcast %struct._object* %246 to %struct.arrayobject*
  %248 = load %struct._object*, %struct._object** %it, align 8
  %call379 = call i32 @array_iter_extend(%struct.arrayobject* %247, %struct._object* %248)
  %cmp380 = icmp eq i32 %call379, -1
  br i1 %cmp380, label %if.then.382, label %if.end.407

if.then.382:                                      ; preds = %if.then.378
  br label %do.body.383

do.body.383:                                      ; preds = %if.then.382
  %249 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %249, %struct._object** %_py_decref_tmp384, align 8
  %250 = load %struct._object*, %struct._object** %_py_decref_tmp384, align 8
  %ob_refcnt385 = getelementptr inbounds %struct._object, %struct._object* %250, i32 0, i32 0
  %251 = load i64, i64* %ob_refcnt385, align 8
  %dec386 = add i64 %251, -1
  store i64 %dec386, i64* %ob_refcnt385, align 8
  %cmp387 = icmp ne i64 %dec386, 0
  br i1 %cmp387, label %if.then.389, label %if.else.390

if.then.389:                                      ; preds = %do.body.383
  br label %if.end.393

if.else.390:                                      ; preds = %do.body.383
  %252 = load %struct._object*, %struct._object** %_py_decref_tmp384, align 8
  %ob_type391 = getelementptr inbounds %struct._object, %struct._object* %252, i32 0, i32 1
  %253 = load %struct._typeobject*, %struct._typeobject** %ob_type391, align 8
  %tp_dealloc392 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %253, i32 0, i32 4
  %254 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc392, align 8
  %255 = load %struct._object*, %struct._object** %_py_decref_tmp384, align 8
  call void %254(%struct._object* %255)
  br label %if.end.393

if.end.393:                                       ; preds = %if.else.390, %if.then.389
  br label %do.end.394

do.end.394:                                       ; preds = %if.end.393
  br label %do.body.395

do.body.395:                                      ; preds = %do.end.394
  %256 = load %struct._object*, %struct._object** %a, align 8
  store %struct._object* %256, %struct._object** %_py_decref_tmp396, align 8
  %257 = load %struct._object*, %struct._object** %_py_decref_tmp396, align 8
  %ob_refcnt397 = getelementptr inbounds %struct._object, %struct._object* %257, i32 0, i32 0
  %258 = load i64, i64* %ob_refcnt397, align 8
  %dec398 = add i64 %258, -1
  store i64 %dec398, i64* %ob_refcnt397, align 8
  %cmp399 = icmp ne i64 %dec398, 0
  br i1 %cmp399, label %if.then.401, label %if.else.402

if.then.401:                                      ; preds = %do.body.395
  br label %if.end.405

if.else.402:                                      ; preds = %do.body.395
  %259 = load %struct._object*, %struct._object** %_py_decref_tmp396, align 8
  %ob_type403 = getelementptr inbounds %struct._object, %struct._object* %259, i32 0, i32 1
  %260 = load %struct._typeobject*, %struct._typeobject** %ob_type403, align 8
  %tp_dealloc404 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %260, i32 0, i32 4
  %261 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc404, align 8
  %262 = load %struct._object*, %struct._object** %_py_decref_tmp396, align 8
  call void %261(%struct._object* %262)
  br label %if.end.405

if.end.405:                                       ; preds = %if.else.402, %if.then.401
  br label %do.end.406

do.end.406:                                       ; preds = %if.end.405
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.407:                                       ; preds = %if.then.378
  br label %do.body.408

do.body.408:                                      ; preds = %if.end.407
  %263 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %263, %struct._object** %_py_decref_tmp409, align 8
  %264 = load %struct._object*, %struct._object** %_py_decref_tmp409, align 8
  %ob_refcnt410 = getelementptr inbounds %struct._object, %struct._object* %264, i32 0, i32 0
  %265 = load i64, i64* %ob_refcnt410, align 8
  %dec411 = add i64 %265, -1
  store i64 %dec411, i64* %ob_refcnt410, align 8
  %cmp412 = icmp ne i64 %dec411, 0
  br i1 %cmp412, label %if.then.414, label %if.else.415

if.then.414:                                      ; preds = %do.body.408
  br label %if.end.418

if.else.415:                                      ; preds = %do.body.408
  %266 = load %struct._object*, %struct._object** %_py_decref_tmp409, align 8
  %ob_type416 = getelementptr inbounds %struct._object, %struct._object* %266, i32 0, i32 1
  %267 = load %struct._typeobject*, %struct._typeobject** %ob_type416, align 8
  %tp_dealloc417 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %267, i32 0, i32 4
  %268 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc417, align 8
  %269 = load %struct._object*, %struct._object** %_py_decref_tmp409, align 8
  call void %268(%struct._object* %269)
  br label %if.end.418

if.end.418:                                       ; preds = %if.else.415, %if.then.414
  br label %do.end.419

do.end.419:                                       ; preds = %if.end.418
  br label %if.end.420

if.end.420:                                       ; preds = %do.end.419, %if.end.375
  %270 = load %struct._object*, %struct._object** %a, align 8
  store %struct._object* %270, %struct._object** %retval
  br label %return

if.end.421:                                       ; preds = %for.body
  br label %for.inc.422

for.inc.422:                                      ; preds = %if.end.421
  %271 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %incdec.ptr = getelementptr %struct.arraydescr, %struct.arraydescr* %271, i32 1
  store %struct.arraydescr* %incdec.ptr, %struct.arraydescr** %descr, align 8
  br label %for.cond

for.end.423:                                      ; preds = %for.cond
  %272 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %272, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.86, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.423, %if.end.420, %do.end.406, %do.end.348, %do.end.297, %do.end.257, %do.end.228, %do.end.180, %do.end, %if.then.125, %if.then.80, %if.then.20, %if.then.10, %if.then.3, %if.then
  %273 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %273
}

declare void @PyObject_Free(i8*) #1

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare void @PyMem_Free(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_tounicode(%struct.arrayobject* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %typecode = alloca i8, align 1
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %0, i32 0, i32 3
  %1 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %typecode1 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %1, i32 0, i32 0
  %2 = load i8, i8* %typecode1, align 1
  store i8 %2, i8* %typecode, align 1
  %3 = load i8, i8* %typecode, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 117
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %ob_item, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %9 = bitcast %struct.arrayobject* %8 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @PyUnicode_FromUnicode(i32* %7, i64 %10)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_tolist(%struct.arrayobject* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %1 = bitcast %struct.arrayobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @PyList_New(i64 %2)
  store %struct._object* %call, %struct._object** %list, align 8
  %3 = load %struct._object*, %struct._object** %list, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %6 = bitcast %struct.arrayobject* %5 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size1, align 8
  %cmp2 = icmp slt i64 %4, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %9 = bitcast %struct.arrayobject* %8 to %struct._object*
  %10 = load i64, i64* %i, align 8
  %call3 = call %struct._object* @getarrayitem(%struct._object* %9, i64 %10)
  store %struct._object* %call3, %struct._object** %v, align 8
  %11 = load %struct._object*, %struct._object** %v, align 8
  %cmp4 = icmp eq %struct._object* %11, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  br label %error

if.end.6:                                         ; preds = %for.body
  %12 = load %struct._object*, %struct._object** %list, align 8
  %13 = load i64, i64* %i, align 8
  %14 = load %struct._object*, %struct._object** %v, align 8
  %call7 = call i32 @PyList_SetItem(%struct._object* %12, i64 %13, %struct._object* %14)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  br label %error

if.end.10:                                        ; preds = %if.end.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.9, %if.then.5
  br label %do.body

do.body:                                          ; preds = %error
  %17 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

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
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %for.end, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyUnicode_FromUnicode(i32*, i64) #1

declare %struct._object* @PyList_New(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @getarrayitem(%struct._object* %op, i64 %i) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  %ap = alloca %struct.arrayobject*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.arrayobject*
  store %struct.arrayobject* %1, %struct.arrayobject** %ap, align 8
  %2 = load %struct.arrayobject*, %struct.arrayobject** %ap, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %2, i32 0, i32 3
  %3 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %getitem = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %3, i32 0, i32 2
  %4 = load %struct._object* (%struct.arrayobject*, i64)*, %struct._object* (%struct.arrayobject*, i64)** %getitem, align 8
  %5 = load %struct.arrayobject*, %struct.arrayobject** %ap, align 8
  %6 = load i64, i64* %i.addr, align 8
  %call = call %struct._object* %4(%struct.arrayobject* %5, i64 %6)
  ret %struct._object* %call
}

declare i32 @PyList_SetItem(%struct._object*, i64, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @array_length(%struct.arrayobject* %a) #0 {
entry:
  %a.addr = alloca %struct.arrayobject*, align 8
  store %struct.arrayobject* %a, %struct.arrayobject** %a.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %1 = bitcast %struct.arrayobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_concat(%struct.arrayobject* %a, %struct._object* %bb) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.arrayobject*, align 8
  %bb.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %np = alloca %struct.arrayobject*, align 8
  store %struct.arrayobject* %a, %struct.arrayobject** %a.addr, align 8
  store %struct._object* %bb, %struct._object** %bb.addr, align 8
  %0 = load %struct._object*, %struct._object** %bb.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @Arraytype
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %bb.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @Arraytype)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct._object*, %struct._object** %bb.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0), i8* %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %8 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %8, i32 0, i32 3
  %9 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %10 = load %struct._object*, %struct._object** %bb.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.arrayobject*
  %ob_descr4 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %11, i32 0, i32 3
  %12 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr4, align 8
  %cmp5 = icmp ne %struct.arraydescr* %9, %12
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %call7 = call i32 @PyErr_BadArgument()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %13 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %14 = bitcast %struct.arrayobject* %13 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size, align 8
  %16 = load %struct._object*, %struct._object** %bb.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.arrayobject*
  %18 = bitcast %struct.arrayobject* %17 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size9, align 8
  %sub = sub i64 9223372036854775807, %19
  %cmp10 = icmp sgt i64 %15, %sub
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  %call12 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call12, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.8
  %20 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %21 = bitcast %struct.arrayobject* %20 to %struct.PyVarObject*
  %ob_size14 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size14, align 8
  %23 = load %struct._object*, %struct._object** %bb.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct.arrayobject*
  %25 = bitcast %struct.arrayobject* %24 to %struct.PyVarObject*
  %ob_size15 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ob_size15, align 8
  %add = add i64 %22, %26
  store i64 %add, i64* %size, align 8
  %27 = load i64, i64* %size, align 8
  %28 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr16 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %28, i32 0, i32 3
  %29 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr16, align 8
  %call17 = call %struct._object* @newarrayobject(%struct._typeobject* @Arraytype, i64 %27, %struct.arraydescr* %29)
  %30 = bitcast %struct._object* %call17 to %struct.arrayobject*
  store %struct.arrayobject* %30, %struct.arrayobject** %np, align 8
  %31 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %cmp18 = icmp eq %struct.arrayobject* %31, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.13
  %32 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %32, i32 0, i32 1
  %33 = load i8*, i8** %ob_item, align 8
  %34 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_item21 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %34, i32 0, i32 1
  %35 = load i8*, i8** %ob_item21, align 8
  %36 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %37 = bitcast %struct.arrayobject* %36 to %struct.PyVarObject*
  %ob_size22 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %37, i32 0, i32 1
  %38 = load i64, i64* %ob_size22, align 8
  %39 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr23 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %39, i32 0, i32 3
  %40 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr23, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %40, i32 0, i32 1
  %41 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %41 to i64
  %mul = mul i64 %38, %conv
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %35, i64 %mul, i32 1, i1 false)
  %42 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %ob_item24 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %42, i32 0, i32 1
  %43 = load i8*, i8** %ob_item24, align 8
  %44 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %45 = bitcast %struct.arrayobject* %44 to %struct.PyVarObject*
  %ob_size25 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %45, i32 0, i32 1
  %46 = load i64, i64* %ob_size25, align 8
  %47 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr26 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %47, i32 0, i32 3
  %48 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr26, align 8
  %itemsize27 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %48, i32 0, i32 1
  %49 = load i32, i32* %itemsize27, align 4
  %conv28 = sext i32 %49 to i64
  %mul29 = mul i64 %46, %conv28
  %add.ptr = getelementptr i8, i8* %43, i64 %mul29
  %50 = load %struct._object*, %struct._object** %bb.addr, align 8
  %51 = bitcast %struct._object* %50 to %struct.arrayobject*
  %ob_item30 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %51, i32 0, i32 1
  %52 = load i8*, i8** %ob_item30, align 8
  %53 = load %struct._object*, %struct._object** %bb.addr, align 8
  %54 = bitcast %struct._object* %53 to %struct.arrayobject*
  %55 = bitcast %struct.arrayobject* %54 to %struct.PyVarObject*
  %ob_size31 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %55, i32 0, i32 1
  %56 = load i64, i64* %ob_size31, align 8
  %57 = load %struct._object*, %struct._object** %bb.addr, align 8
  %58 = bitcast %struct._object* %57 to %struct.arrayobject*
  %ob_descr32 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %58, i32 0, i32 3
  %59 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr32, align 8
  %itemsize33 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %59, i32 0, i32 1
  %60 = load i32, i32* %itemsize33, align 4
  %conv34 = sext i32 %60 to i64
  %mul35 = mul i64 %56, %conv34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %52, i64 %mul35, i32 1, i1 false)
  %61 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %62 = bitcast %struct.arrayobject* %61 to %struct._object*
  store %struct._object* %62, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.11, %if.then.6, %if.then
  %63 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %63
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_repeat(%struct.arrayobject* %a, i64 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.arrayobject*, align 8
  %n.addr = alloca i64, align 8
  %size = alloca i64, align 8
  %np = alloca %struct.arrayobject*, align 8
  %oldbytes = alloca i64, align 8
  %newbytes = alloca i64, align 8
  %done = alloca i64, align 8
  %ncopy = alloca i64, align 8
  store %struct.arrayobject* %a, %struct.arrayobject** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %n.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %2 = bitcast %struct.arrayobject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp ne i64 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %4 = load i64, i64* %n.addr, align 8
  %5 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %6 = bitcast %struct.arrayobject* %5 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size2, align 8
  %div = sdiv i64 9223372036854775807, %7
  %cmp3 = icmp sgt i64 %4, %div
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %8 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %9 = bitcast %struct.arrayobject* %8 to %struct.PyVarObject*
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size6, align 8
  %11 = load i64, i64* %n.addr, align 8
  %mul = mul i64 %10, %11
  store i64 %mul, i64* %size, align 8
  %12 = load i64, i64* %size, align 8
  %13 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %13, i32 0, i32 3
  %14 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %call7 = call %struct._object* @newarrayobject(%struct._typeobject* @Arraytype, i64 %12, %struct.arraydescr* %14)
  %15 = bitcast %struct._object* %call7 to %struct.arrayobject*
  store %struct.arrayobject* %15, %struct.arrayobject** %np, align 8
  %16 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %cmp8 = icmp eq %struct.arrayobject* %16, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %17 = load i64, i64* %n.addr, align 8
  %cmp11 = icmp eq i64 %17, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %18 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %19 = bitcast %struct.arrayobject* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  %20 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %21 = bitcast %struct.arrayobject* %20 to %struct.PyVarObject*
  %ob_size14 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size14, align 8
  %23 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr15 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %23, i32 0, i32 3
  %24 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr15, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %24, i32 0, i32 1
  %25 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %25 to i64
  %mul16 = mul i64 %22, %conv
  store i64 %mul16, i64* %oldbytes, align 8
  %26 = load i64, i64* %oldbytes, align 8
  %27 = load i64, i64* %n.addr, align 8
  %mul17 = mul i64 %26, %27
  store i64 %mul17, i64* %newbytes, align 8
  %28 = load i64, i64* %oldbytes, align 8
  %cmp18 = icmp eq i64 %28, 1
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.13
  %29 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %29, i32 0, i32 1
  %30 = load i8*, i8** %ob_item, align 8
  %31 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_item21 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %31, i32 0, i32 1
  %32 = load i8*, i8** %ob_item21, align 8
  %arrayidx = getelementptr i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx, align 1
  %conv22 = sext i8 %33 to i32
  %34 = trunc i32 %conv22 to i8
  %35 = load i64, i64* %newbytes, align 8
  call void @llvm.memset.p0i8.i64(i8* %30, i8 %34, i64 %35, i32 1, i1 false)
  br label %if.end.32

if.else:                                          ; preds = %if.end.13
  %36 = load i64, i64* %oldbytes, align 8
  store i64 %36, i64* %done, align 8
  %37 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %ob_item23 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %37, i32 0, i32 1
  %38 = load i8*, i8** %ob_item23, align 8
  %39 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_item24 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %39, i32 0, i32 1
  %40 = load i8*, i8** %ob_item24, align 8
  %41 = load i64, i64* %oldbytes, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %40, i64 %41, i32 1, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.else
  %42 = load i64, i64* %done, align 8
  %43 = load i64, i64* %newbytes, align 8
  %cmp25 = icmp slt i64 %42, %43
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load i64, i64* %done, align 8
  %45 = load i64, i64* %newbytes, align 8
  %46 = load i64, i64* %done, align 8
  %sub = sub i64 %45, %46
  %cmp27 = icmp sle i64 %44, %sub
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %47 = load i64, i64* %done, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %48 = load i64, i64* %newbytes, align 8
  %49 = load i64, i64* %done, align 8
  %sub29 = sub i64 %48, %49
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %47, %cond.true ], [ %sub29, %cond.false ]
  store i64 %cond, i64* %ncopy, align 8
  %50 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %ob_item30 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %50, i32 0, i32 1
  %51 = load i8*, i8** %ob_item30, align 8
  %52 = load i64, i64* %done, align 8
  %add.ptr = getelementptr i8, i8* %51, i64 %52
  %53 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %ob_item31 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %53, i32 0, i32 1
  %54 = load i8*, i8** %ob_item31, align 8
  %55 = load i64, i64* %ncopy, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %54, i64 %55, i32 1, i1 false)
  %56 = load i64, i64* %ncopy, align 8
  %57 = load i64, i64* %done, align 8
  %add = add i64 %57, %56
  store i64 %add, i64* %done, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.32

if.end.32:                                        ; preds = %while.end, %if.then.20
  %58 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %59 = bitcast %struct.arrayobject* %58 to %struct._object*
  store %struct._object* %59, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.12, %if.then.9, %if.then.4
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_item(%struct.arrayobject* %a, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.arrayobject* %a, %struct.arrayobject** %a.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %2 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %3 = bitcast %struct.arrayobject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp sge i64 %1, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %7 = bitcast %struct.arrayobject* %6 to %struct._object*
  %8 = load i64, i64* %i.addr, align 8
  %call = call %struct._object* @getarrayitem(%struct._object* %7, i64 %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal i32 @array_ass_item(%struct.arrayobject* %a, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct.arrayobject* %a, %struct.arrayobject** %a.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %2 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %3 = bitcast %struct.arrayobject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp sge i64 %1, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp2 = icmp eq %struct._object* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %8 = load i64, i64* %i.addr, align 8
  %9 = load i64, i64* %i.addr, align 8
  %add = add i64 %9, 1
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @array_ass_slice(%struct.arrayobject* %7, i64 %8, i64 %add, %struct._object* %10)
  store i32 %call, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %11, i32 0, i32 3
  %12 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %setitem = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %12, i32 0, i32 3
  %13 = load i32 (%struct.arrayobject*, i64, %struct._object*)*, i32 (%struct.arrayobject*, i64, %struct._object*)** %setitem, align 8
  %14 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %15 = load i64, i64* %i.addr, align 8
  %16 = load %struct._object*, %struct._object** %v.addr, align 8
  %call5 = call i32 %13(%struct.arrayobject* %14, i64 %15, %struct._object* %16)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @array_contains(%struct.arrayobject* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.arrayobject*, align 8
  %v.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %cmp = alloca i32, align 4
  %selfi = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64 0, i64* %i, align 8
  store i32 0, i32* %cmp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cmp, align 4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %3 = bitcast %struct.arrayobject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp2 = icmp slt i64 %1, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %7 = bitcast %struct.arrayobject* %6 to %struct._object*
  %8 = load i64, i64* %i, align 8
  %call = call %struct._object* @getarrayitem(%struct._object* %7, i64 %8)
  store %struct._object* %call, %struct._object** %selfi, align 8
  %9 = load %struct._object*, %struct._object** %selfi, align 8
  %cmp3 = icmp eq %struct._object* %9, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %10 = load %struct._object*, %struct._object** %selfi, align 8
  %11 = load %struct._object*, %struct._object** %v.addr, align 8
  %call4 = call i32 @PyObject_RichCompareBool(%struct._object* %10, %struct._object* %11, i32 2)
  store i32 %call4, i32* %cmp, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %selfi, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %19 = load i64, i64* %i, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %20 = load i32, i32* %cmp, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_inplace_concat(%struct.arrayobject* %self, %struct._object* %bb) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %bb.addr = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %bb, %struct._object** %bb.addr, align 8
  %0 = load %struct._object*, %struct._object** %bb.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @Arraytype
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %bb.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @Arraytype)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct._object*, %struct._object** %bb.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0), i8* %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %8 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %9 = load %struct._object*, %struct._object** %bb.addr, align 8
  %call4 = call i32 @array_do_extend(%struct.arrayobject* %8, %struct._object* %9)
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %10 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %11 = bitcast %struct.arrayobject* %10 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %13 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %14 = bitcast %struct.arrayobject* %13 to %struct._object*
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_inplace_repeat(%struct.arrayobject* %self, i64 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %n.addr = alloca i64, align 8
  %items = alloca i8*, align 8
  %p = alloca i8*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %1 = bitcast %struct.arrayobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i64 0, i64* %n.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %4 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %4, i32 0, i32 3
  %5 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %5, i32 0, i32 1
  %6 = load i32, i32* %itemsize, align 4
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %8 = bitcast %struct.arrayobject* %7 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size4, align 8
  %10 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr5 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %10, i32 0, i32 3
  %11 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr5, align 8
  %itemsize6 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %11, i32 0, i32 1
  %12 = load i32, i32* %itemsize6, align 4
  %conv = sext i32 %12 to i64
  %div = sdiv i64 9223372036854775807, %conv
  %cmp7 = icmp sgt i64 %9, %div
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %if.end
  %13 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %14 = bitcast %struct.arrayobject* %13 to %struct.PyVarObject*
  %ob_size11 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size11, align 8
  %16 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr12 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %16, i32 0, i32 3
  %17 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr12, align 8
  %itemsize13 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %17, i32 0, i32 1
  %18 = load i32, i32* %itemsize13, align 4
  %conv14 = sext i32 %18 to i64
  %mul = mul i64 %15, %conv14
  store i64 %mul, i64* %size, align 8
  %19 = load i64, i64* %n.addr, align 8
  %cmp15 = icmp sgt i64 %19, 0
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.23

land.lhs.true.17:                                 ; preds = %if.end.10
  %20 = load i64, i64* %size, align 8
  %21 = load i64, i64* %n.addr, align 8
  %div18 = sdiv i64 9223372036854775807, %21
  %cmp19 = icmp sgt i64 %20, %div18
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true.17
  %call22 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call22, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true.17, %if.end.10
  %22 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %23 = load i64, i64* %n.addr, align 8
  %24 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %25 = bitcast %struct.arrayobject* %24 to %struct.PyVarObject*
  %ob_size24 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ob_size24, align 8
  %mul25 = mul i64 %23, %26
  %call26 = call i32 @array_resize(%struct.arrayobject* %22, i64 %mul25)
  %cmp27 = icmp eq i32 %call26, -1
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.23
  %27 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %27, i32 0, i32 1
  %28 = load i8*, i8** %ob_item, align 8
  store i8* %28, i8** %p, align 8
  store i8* %28, i8** %items, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %29 = load i64, i64* %i, align 8
  %30 = load i64, i64* %n.addr, align 8
  %cmp31 = icmp slt i64 %29, %30
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i64, i64* %size, align 8
  %32 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %32, i64 %31
  store i8* %add.ptr, i8** %p, align 8
  %33 = load i8*, i8** %p, align 8
  %34 = load i8*, i8** %items, align 8
  %35 = load i64, i64* %size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 %35, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i64, i64* %i, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %entry
  %37 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %38 = bitcast %struct.arrayobject* %37 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt, align 8
  %inc34 = add i64 %39, 1
  store i64 %inc34, i64* %ob_refcnt, align 8
  %40 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %41 = bitcast %struct.arrayobject* %40 to %struct._object*
  store %struct._object* %41, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.29, %if.then.21, %if.then.9
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @PyErr_BadArgument() #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @newarrayobject(%struct._typeobject* %type, i64 %size, %struct.arraydescr* %descr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %size.addr = alloca i64, align 8
  %descr.addr = alloca %struct.arraydescr*, align 8
  %op = alloca %struct.arrayobject*, align 8
  %nbytes = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct.arraydescr* %descr, %struct.arraydescr** %descr.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i32 0, i32 0), i32 482)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %2 = load %struct.arraydescr*, %struct.arraydescr** %descr.addr, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %2, i32 0, i32 1
  %3 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %3 to i64
  %div = sdiv i64 9223372036854775807, %conv
  %cmp1 = icmp sgt i64 %1, %div
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8
  %5 = load %struct.arraydescr*, %struct.arraydescr** %descr.addr, align 8
  %itemsize5 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %5, i32 0, i32 1
  %6 = load i32, i32* %itemsize5, align 4
  %conv6 = sext i32 %6 to i64
  %mul = mul i64 %4, %conv6
  store i64 %mul, i64* %nbytes, align 8
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 36
  %8 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %9 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call7 = call %struct._object* %8(%struct._typeobject* %9, i64 0)
  %10 = bitcast %struct._object* %call7 to %struct.arrayobject*
  store %struct.arrayobject* %10, %struct.arrayobject** %op, align 8
  %11 = load %struct.arrayobject*, %struct.arrayobject** %op, align 8
  %cmp8 = icmp eq %struct.arrayobject* %11, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  %12 = load %struct.arraydescr*, %struct.arraydescr** %descr.addr, align 8
  %13 = load %struct.arrayobject*, %struct.arrayobject** %op, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %13, i32 0, i32 3
  store %struct.arraydescr* %12, %struct.arraydescr** %ob_descr, align 8
  %14 = load i64, i64* %size.addr, align 8
  %15 = load %struct.arrayobject*, %struct.arrayobject** %op, align 8
  %allocated = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %15, i32 0, i32 2
  store i64 %14, i64* %allocated, align 8
  %16 = load %struct.arrayobject*, %struct.arrayobject** %op, align 8
  %weakreflist = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %16, i32 0, i32 4
  store %struct._object* null, %struct._object** %weakreflist, align 8
  %17 = load i64, i64* %size.addr, align 8
  %18 = load %struct.arrayobject*, %struct.arrayobject** %op, align 8
  %19 = bitcast %struct.arrayobject* %18 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  store i64 %17, i64* %ob_size, align 8
  %20 = load i64, i64* %size.addr, align 8
  %cmp12 = icmp sle i64 %20, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.11
  %21 = load %struct.arrayobject*, %struct.arrayobject** %op, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %21, i32 0, i32 1
  store i8* null, i8** %ob_item, align 8
  br label %if.end.31

if.else:                                          ; preds = %if.end.11
  %22 = load i64, i64* %nbytes, align 8
  %cmp15 = icmp ugt i64 %22, 9223372036854775807
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %23 = load i64, i64* %nbytes, align 8
  %mul17 = mul i64 %23, 1
  %call18 = call i8* @PyMem_Malloc(i64 %mul17)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call18, %cond.false ]
  %24 = load %struct.arrayobject*, %struct.arrayobject** %op, align 8
  %ob_item19 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %24, i32 0, i32 1
  store i8* %cond, i8** %ob_item19, align 8
  %25 = load %struct.arrayobject*, %struct.arrayobject** %op, align 8
  %ob_item20 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %25, i32 0, i32 1
  %26 = load i8*, i8** %ob_item20, align 8
  %cmp21 = icmp eq i8* %26, null
  br i1 %cmp21, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.then.23
  %27 = load %struct.arrayobject*, %struct.arrayobject** %op, align 8
  %28 = bitcast %struct.arrayobject* %27 to %struct._object*
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %30, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body
  br label %if.end.28

if.else.27:                                       ; preds = %do.body
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %33(%struct._object* %34)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end

do.end:                                           ; preds = %if.end.28
  %call29 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call29, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %cond.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.14
  %35 = load %struct.arrayobject*, %struct.arrayobject** %op, align 8
  %ob_exports = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %35, i32 0, i32 5
  store i32 0, i32* %ob_exports, align 4
  %36 = load %struct.arrayobject*, %struct.arrayobject** %op, align 8
  %37 = bitcast %struct.arrayobject* %36 to %struct._object*
  store %struct._object* %37, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.31, %do.end, %if.then.10, %if.then.3, %if.then
  %38 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %38
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @_PyErr_BadInternalCall(i8*, i32) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @array_ass_slice(%struct.arrayobject* %a, i64 %ilow, i64 %ihigh, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.arrayobject*, align 8
  %ilow.addr = alloca i64, align 8
  %ihigh.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %item = alloca i8*, align 8
  %n = alloca i64, align 8
  %d = alloca i64, align 8
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.arrayobject* %a, %struct.arrayobject** %a.addr, align 8
  store i64 %ilow, i64* %ilow.addr, align 8
  store i64 %ihigh, i64* %ihigh.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %n, align 8
  br label %if.end.25

if.else:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %2, @Arraytype
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* @Arraytype)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.else.21

if.then.3:                                        ; preds = %lor.lhs.false, %if.else
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.arrayobject*
  %7 = bitcast %struct.arrayobject* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  store i64 %8, i64* %n, align 8
  %9 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.arrayobject*
  %cmp4 = icmp eq %struct.arrayobject* %9, %11
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.then.3
  %12 = load %struct._object*, %struct._object** %v.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.arrayobject*
  %14 = load i64, i64* %n, align 8
  %call6 = call %struct._object* @array_slice(%struct.arrayobject* %13, i64 0, i64 %14)
  store %struct._object* %call6, %struct._object** %v.addr, align 8
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %tobool7 = icmp ne %struct._object* %15, null
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then.5
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.5
  %16 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %17 = load i64, i64* %ilow.addr, align 8
  %18 = load i64, i64* %ihigh.addr, align 8
  %19 = load %struct._object*, %struct._object** %v.addr, align 8
  %call9 = call i32 @array_ass_slice(%struct.arrayobject* %16, i64 %17, i64 %18, %struct._object* %19)
  store i32 %call9, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %20 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.14

if.else.12:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %27 = load i32, i32* %ret, align 4
  store i32 %27, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.3
  %28 = load %struct._object*, %struct._object** %v.addr, align 8
  %29 = bitcast %struct._object* %28 to %struct.arrayobject*
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %29, i32 0, i32 3
  %30 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %31 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr16 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %31, i32 0, i32 3
  %32 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr16, align 8
  %cmp17 = icmp ne %struct.arraydescr* %30, %32
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %call19 = call i32 @PyErr_BadArgument()
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  br label %if.end.24

if.else.21:                                       ; preds = %lor.lhs.false
  %33 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %34 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 1
  %36 = load i8*, i8** %tp_name, align 8
  %call23 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0), i8* %36)
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  %37 = load i64, i64* %ilow.addr, align 8
  %cmp26 = icmp slt i64 %37, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.end.25
  store i64 0, i64* %ilow.addr, align 8
  br label %if.end.34

if.else.28:                                       ; preds = %if.end.25
  %38 = load i64, i64* %ilow.addr, align 8
  %39 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %40 = bitcast %struct.arrayobject* %39 to %struct.PyVarObject*
  %ob_size29 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %40, i32 0, i32 1
  %41 = load i64, i64* %ob_size29, align 8
  %cmp30 = icmp sgt i64 %38, %41
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.else.28
  %42 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %43 = bitcast %struct.arrayobject* %42 to %struct.PyVarObject*
  %ob_size32 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %43, i32 0, i32 1
  %44 = load i64, i64* %ob_size32, align 8
  store i64 %44, i64* %ilow.addr, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.else.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.27
  %45 = load i64, i64* %ihigh.addr, align 8
  %cmp35 = icmp slt i64 %45, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  store i64 0, i64* %ihigh.addr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  %46 = load i64, i64* %ihigh.addr, align 8
  %47 = load i64, i64* %ilow.addr, align 8
  %cmp38 = icmp slt i64 %46, %47
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.end.37
  %48 = load i64, i64* %ilow.addr, align 8
  store i64 %48, i64* %ihigh.addr, align 8
  br label %if.end.46

if.else.40:                                       ; preds = %if.end.37
  %49 = load i64, i64* %ihigh.addr, align 8
  %50 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %51 = bitcast %struct.arrayobject* %50 to %struct.PyVarObject*
  %ob_size41 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %51, i32 0, i32 1
  %52 = load i64, i64* %ob_size41, align 8
  %cmp42 = icmp sgt i64 %49, %52
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.else.40
  %53 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %54 = bitcast %struct.arrayobject* %53 to %struct.PyVarObject*
  %ob_size44 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %54, i32 0, i32 1
  %55 = load i64, i64* %ob_size44, align 8
  store i64 %55, i64* %ihigh.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.else.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.39
  %56 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %56, i32 0, i32 1
  %57 = load i8*, i8** %ob_item, align 8
  store i8* %57, i8** %item, align 8
  %58 = load i64, i64* %n, align 8
  %59 = load i64, i64* %ihigh.addr, align 8
  %60 = load i64, i64* %ilow.addr, align 8
  %sub = sub i64 %59, %60
  %sub47 = sub i64 %58, %sub
  store i64 %sub47, i64* %d, align 8
  %61 = load i64, i64* %d, align 8
  %cmp48 = icmp ne i64 %61, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.46
  %62 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_exports = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %62, i32 0, i32 5
  %63 = load i32, i32* %ob_exports, align 4
  %cmp49 = icmp sgt i32 %63, 0
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true
  %64 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %land.lhs.true, %if.end.46
  %65 = load i64, i64* %d, align 8
  %cmp52 = icmp slt i64 %65, 0
  br i1 %cmp52, label %if.then.53, label %if.else.73

if.then.53:                                       ; preds = %if.end.51
  %66 = load i8*, i8** %item, align 8
  %67 = load i64, i64* %ihigh.addr, align 8
  %68 = load i64, i64* %d, align 8
  %add = add i64 %67, %68
  %69 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr54 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %69, i32 0, i32 3
  %70 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr54, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %70, i32 0, i32 1
  %71 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %71 to i64
  %mul = mul i64 %add, %conv
  %add.ptr = getelementptr i8, i8* %66, i64 %mul
  %72 = load i8*, i8** %item, align 8
  %73 = load i64, i64* %ihigh.addr, align 8
  %74 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr55 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %74, i32 0, i32 3
  %75 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr55, align 8
  %itemsize56 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %75, i32 0, i32 1
  %76 = load i32, i32* %itemsize56, align 4
  %conv57 = sext i32 %76 to i64
  %mul58 = mul i64 %73, %conv57
  %add.ptr59 = getelementptr i8, i8* %72, i64 %mul58
  %77 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %78 = bitcast %struct.arrayobject* %77 to %struct.PyVarObject*
  %ob_size60 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %78, i32 0, i32 1
  %79 = load i64, i64* %ob_size60, align 8
  %80 = load i64, i64* %ihigh.addr, align 8
  %sub61 = sub i64 %79, %80
  %81 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr62 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %81, i32 0, i32 3
  %82 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr62, align 8
  %itemsize63 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %82, i32 0, i32 1
  %83 = load i32, i32* %itemsize63, align 4
  %conv64 = sext i32 %83 to i64
  %mul65 = mul i64 %sub61, %conv64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr59, i64 %mul65, i32 1, i1 false)
  %84 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %85 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %86 = bitcast %struct.arrayobject* %85 to %struct.PyVarObject*
  %ob_size66 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %86, i32 0, i32 1
  %87 = load i64, i64* %ob_size66, align 8
  %88 = load i64, i64* %d, align 8
  %add67 = add i64 %87, %88
  %call68 = call i32 @array_resize(%struct.arrayobject* %84, i64 %add67)
  %cmp69 = icmp eq i32 %call68, -1
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.53
  store i32 -1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.53
  br label %if.end.101

if.else.73:                                       ; preds = %if.end.51
  %89 = load i64, i64* %d, align 8
  %cmp74 = icmp sgt i64 %89, 0
  br i1 %cmp74, label %if.then.76, label %if.end.100

if.then.76:                                       ; preds = %if.else.73
  %90 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %91 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %92 = bitcast %struct.arrayobject* %91 to %struct.PyVarObject*
  %ob_size77 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %92, i32 0, i32 1
  %93 = load i64, i64* %ob_size77, align 8
  %94 = load i64, i64* %d, align 8
  %add78 = add i64 %93, %94
  %call79 = call i32 @array_resize(%struct.arrayobject* %90, i64 %add78)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.then.76
  store i32 -1, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.then.76
  %95 = load i8*, i8** %item, align 8
  %96 = load i64, i64* %ihigh.addr, align 8
  %97 = load i64, i64* %d, align 8
  %add83 = add i64 %96, %97
  %98 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr84 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %98, i32 0, i32 3
  %99 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr84, align 8
  %itemsize85 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %99, i32 0, i32 1
  %100 = load i32, i32* %itemsize85, align 4
  %conv86 = sext i32 %100 to i64
  %mul87 = mul i64 %add83, %conv86
  %add.ptr88 = getelementptr i8, i8* %95, i64 %mul87
  %101 = load i8*, i8** %item, align 8
  %102 = load i64, i64* %ihigh.addr, align 8
  %103 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr89 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %103, i32 0, i32 3
  %104 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr89, align 8
  %itemsize90 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %104, i32 0, i32 1
  %105 = load i32, i32* %itemsize90, align 4
  %conv91 = sext i32 %105 to i64
  %mul92 = mul i64 %102, %conv91
  %add.ptr93 = getelementptr i8, i8* %101, i64 %mul92
  %106 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %107 = bitcast %struct.arrayobject* %106 to %struct.PyVarObject*
  %ob_size94 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %107, i32 0, i32 1
  %108 = load i64, i64* %ob_size94, align 8
  %109 = load i64, i64* %ihigh.addr, align 8
  %sub95 = sub i64 %108, %109
  %110 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr96 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %110, i32 0, i32 3
  %111 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr96, align 8
  %itemsize97 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %111, i32 0, i32 1
  %112 = load i32, i32* %itemsize97, align 4
  %conv98 = sext i32 %112 to i64
  %mul99 = mul i64 %sub95, %conv98
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr88, i8* %add.ptr93, i64 %mul99, i32 1, i1 false)
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.82, %if.else.73
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.72
  %113 = load i64, i64* %n, align 8
  %cmp102 = icmp sgt i64 %113, 0
  br i1 %cmp102, label %if.then.104, label %if.end.115

if.then.104:                                      ; preds = %if.end.101
  %114 = load i8*, i8** %item, align 8
  %115 = load i64, i64* %ilow.addr, align 8
  %116 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr105 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %116, i32 0, i32 3
  %117 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr105, align 8
  %itemsize106 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %117, i32 0, i32 1
  %118 = load i32, i32* %itemsize106, align 4
  %conv107 = sext i32 %118 to i64
  %mul108 = mul i64 %115, %conv107
  %add.ptr109 = getelementptr i8, i8* %114, i64 %mul108
  %119 = load %struct._object*, %struct._object** %v.addr, align 8
  %120 = bitcast %struct._object* %119 to %struct.arrayobject*
  %ob_item110 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %120, i32 0, i32 1
  %121 = load i8*, i8** %ob_item110, align 8
  %122 = load i64, i64* %n, align 8
  %123 = load %struct._object*, %struct._object** %v.addr, align 8
  %124 = bitcast %struct._object* %123 to %struct.arrayobject*
  %ob_descr111 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %124, i32 0, i32 3
  %125 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr111, align 8
  %itemsize112 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %125, i32 0, i32 1
  %126 = load i32, i32* %itemsize112, align 4
  %conv113 = sext i32 %126 to i64
  %mul114 = mul i64 %122, %conv113
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr109, i8* %121, i64 %mul114, i32 1, i1 false)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.104, %if.end.101
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.115, %if.then.81, %if.then.71, %if.then.50, %if.else.21, %if.then.18, %do.end, %if.then.8
  %127 = load i32, i32* %retval
  ret i32 %127
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_slice(%struct.arrayobject* %a, i64 %ilow, i64 %ihigh) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct.arrayobject*, align 8
  %ilow.addr = alloca i64, align 8
  %ihigh.addr = alloca i64, align 8
  %np = alloca %struct.arrayobject*, align 8
  store %struct.arrayobject* %a, %struct.arrayobject** %a.addr, align 8
  store i64 %ilow, i64* %ilow.addr, align 8
  store i64 %ihigh, i64* %ihigh.addr, align 8
  %0 = load i64, i64* %ilow.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %ilow.addr, align 8
  br label %if.end.4

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %ilow.addr, align 8
  %2 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %3 = bitcast %struct.arrayobject* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp sgt i64 %1, %4
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %5 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %6 = bitcast %struct.arrayobject* %5 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size3, align 8
  store i64 %7, i64* %ilow.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %8 = load i64, i64* %ihigh.addr, align 8
  %cmp5 = icmp slt i64 %8, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i64 0, i64* %ihigh.addr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %9 = load i64, i64* %ihigh.addr, align 8
  %10 = load i64, i64* %ilow.addr, align 8
  %cmp8 = icmp slt i64 %9, %10
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  %11 = load i64, i64* %ilow.addr, align 8
  store i64 %11, i64* %ihigh.addr, align 8
  br label %if.end.16

if.else.10:                                       ; preds = %if.end.7
  %12 = load i64, i64* %ihigh.addr, align 8
  %13 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %14 = bitcast %struct.arrayobject* %13 to %struct.PyVarObject*
  %ob_size11 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size11, align 8
  %cmp12 = icmp sgt i64 %12, %15
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.else.10
  %16 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %17 = bitcast %struct.arrayobject* %16 to %struct.PyVarObject*
  %ob_size14 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size14, align 8
  store i64 %18, i64* %ihigh.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.else.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  %19 = load i64, i64* %ihigh.addr, align 8
  %20 = load i64, i64* %ilow.addr, align 8
  %sub = sub i64 %19, %20
  %21 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %21, i32 0, i32 3
  %22 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %call = call %struct._object* @newarrayobject(%struct._typeobject* @Arraytype, i64 %sub, %struct.arraydescr* %22)
  %23 = bitcast %struct._object* %call to %struct.arrayobject*
  store %struct.arrayobject* %23, %struct.arrayobject** %np, align 8
  %24 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %cmp17 = icmp eq %struct.arrayobject* %24, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.16
  %25 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %25, i32 0, i32 1
  %26 = load i8*, i8** %ob_item, align 8
  %27 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_item20 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %27, i32 0, i32 1
  %28 = load i8*, i8** %ob_item20, align 8
  %29 = load i64, i64* %ilow.addr, align 8
  %30 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr21 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %30, i32 0, i32 3
  %31 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr21, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %31, i32 0, i32 1
  %32 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %32 to i64
  %mul = mul i64 %29, %conv
  %add.ptr = getelementptr i8, i8* %28, i64 %mul
  %33 = load i64, i64* %ihigh.addr, align 8
  %34 = load i64, i64* %ilow.addr, align 8
  %sub22 = sub i64 %33, %34
  %35 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr23 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %35, i32 0, i32 3
  %36 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr23, align 8
  %itemsize24 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %36, i32 0, i32 1
  %37 = load i32, i32* %itemsize24, align 4
  %conv25 = sext i32 %37 to i64
  %mul26 = mul i64 %sub22, %conv25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %add.ptr, i64 %mul26, i32 1, i1 false)
  %38 = load %struct.arrayobject*, %struct.arrayobject** %np, align 8
  %39 = bitcast %struct.arrayobject* %38 to %struct._object*
  store %struct._object* %39, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @array_resize(%struct.arrayobject* %self, i64 %newsize) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.arrayobject*, align 8
  %newsize.addr = alloca i64, align 8
  %items = alloca i8*, align 8
  %_new_size = alloca i64, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store i64 %newsize, i64* %newsize.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_exports = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %0, i32 0, i32 5
  %1 = load i32, i32* %ob_exports, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %newsize.addr, align 8
  %3 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %4 = bitcast %struct.arrayobject* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp ne i64 %2, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %allocated = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %7, i32 0, i32 2
  %8 = load i64, i64* %allocated, align 8
  %9 = load i64, i64* %newsize.addr, align 8
  %cmp2 = icmp sge i64 %8, %9
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.10

land.lhs.true.3:                                  ; preds = %if.end
  %10 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %11 = bitcast %struct.arrayobject* %10 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size4, align 8
  %13 = load i64, i64* %newsize.addr, align 8
  %add = add i64 %13, 16
  %cmp5 = icmp slt i64 %12, %add
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.10

land.lhs.true.6:                                  ; preds = %land.lhs.true.3
  %14 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %14, i32 0, i32 1
  %15 = load i8*, i8** %ob_item, align 8
  %cmp7 = icmp ne i8* %15, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %land.lhs.true.6
  %16 = load i64, i64* %newsize.addr, align 8
  %17 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %18 = bitcast %struct.arrayobject* %17 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  store i64 %16, i64* %ob_size9, align 8
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.6, %land.lhs.true.3, %if.end
  %19 = load i64, i64* %newsize.addr, align 8
  %cmp11 = icmp eq i64 %19, 0
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.10
  %20 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item13 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %20, i32 0, i32 1
  %21 = load i8*, i8** %ob_item13, align 8
  call void @PyMem_Free(i8* %21)
  %22 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item14 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %22, i32 0, i32 1
  store i8* null, i8** %ob_item14, align 8
  %23 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %24 = bitcast %struct.arrayobject* %23 to %struct.PyVarObject*
  %ob_size15 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %24, i32 0, i32 1
  store i64 0, i64* %ob_size15, align 8
  %25 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %allocated16 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %25, i32 0, i32 2
  store i64 0, i64* %allocated16, align 8
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.10
  %26 = load i64, i64* %newsize.addr, align 8
  %shr = ashr i64 %26, 4
  %27 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %28 = bitcast %struct.arrayobject* %27 to %struct.PyVarObject*
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %28, i32 0, i32 1
  %29 = load i64, i64* %ob_size18, align 8
  %cmp19 = icmp slt i64 %29, 8
  %cond = select i1 %cmp19, i32 3, i32 7
  %conv = sext i32 %cond to i64
  %add20 = add i64 %shr, %conv
  %30 = load i64, i64* %newsize.addr, align 8
  %add21 = add i64 %add20, %30
  store i64 %add21, i64* %_new_size, align 8
  %31 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item22 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %31, i32 0, i32 1
  %32 = load i8*, i8** %ob_item22, align 8
  store i8* %32, i8** %items, align 8
  %33 = load i64, i64* %_new_size, align 8
  %34 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %34, i32 0, i32 3
  %35 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %35, i32 0, i32 1
  %36 = load i32, i32* %itemsize, align 4
  %conv23 = sext i32 %36 to i64
  %div = udiv i64 -1, %conv23
  %cmp24 = icmp ule i64 %33, %div
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.17
  %37 = load i64, i64* %_new_size, align 8
  %38 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr27 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %38, i32 0, i32 3
  %39 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr27, align 8
  %itemsize28 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %39, i32 0, i32 1
  %40 = load i32, i32* %itemsize28, align 4
  %conv29 = sext i32 %40 to i64
  %mul = mul i64 %37, %conv29
  %cmp30 = icmp ugt i64 %mul, 9223372036854775807
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.26
  br label %cond.end

cond.false:                                       ; preds = %if.then.26
  %41 = load i8*, i8** %items, align 8
  %42 = load i64, i64* %_new_size, align 8
  %43 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr32 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %43, i32 0, i32 3
  %44 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr32, align 8
  %itemsize33 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %44, i32 0, i32 1
  %45 = load i32, i32* %itemsize33, align 4
  %conv34 = sext i32 %45 to i64
  %mul35 = mul i64 %42, %conv34
  %mul36 = mul i64 %mul35, 1
  %call = call i8* @PyMem_Realloc(i8* %41, i64 %mul36)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond37 = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  store i8* %cond37, i8** %items, align 8
  br label %if.end.38

if.else:                                          ; preds = %if.end.17
  store i8* null, i8** %items, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %cond.end
  %46 = load i8*, i8** %items, align 8
  %cmp39 = icmp eq i8* %46, null
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.38
  %call42 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.38
  %47 = load i8*, i8** %items, align 8
  %48 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item44 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %48, i32 0, i32 1
  store i8* %47, i8** %ob_item44, align 8
  %49 = load i64, i64* %newsize.addr, align 8
  %50 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %51 = bitcast %struct.arrayobject* %50 to %struct.PyVarObject*
  %ob_size45 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %51, i32 0, i32 1
  store i64 %49, i64* %ob_size45, align 8
  %52 = load i64, i64* %_new_size, align 8
  %53 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %allocated46 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %53, i32 0, i32 2
  store i64 %52, i64* %allocated46, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.41, %if.then.12, %if.then.8, %if.then
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i8* @PyMem_Realloc(i8*, i64) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @array_do_extend(%struct.arrayobject* %self, %struct._object* %bb) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.arrayobject*, align 8
  %bb.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %oldsize = alloca i64, align 8
  %bbsize = alloca i64, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %bb, %struct._object** %bb.addr, align 8
  %0 = load %struct._object*, %struct._object** %bb.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @Arraytype
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %bb.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @Arraytype)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %5 = load %struct._object*, %struct._object** %bb.addr, align 8
  %call2 = call i32 @array_iter_extend(%struct.arrayobject* %4, %struct._object* %5)
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %6 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %6, i32 0, i32 3
  %7 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %8 = load %struct._object*, %struct._object** %bb.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.arrayobject*
  %ob_descr3 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %9, i32 0, i32 3
  %10 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr3, align 8
  %cmp4 = icmp ne %struct.arraydescr* %7, %10
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %13 = bitcast %struct.arrayobject* %12 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size, align 8
  %15 = load %struct._object*, %struct._object** %bb.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.arrayobject*
  %17 = bitcast %struct.arrayobject* %16 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size7, align 8
  %sub = sub i64 9223372036854775807, %18
  %cmp8 = icmp sgt i64 %14, %sub
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %19 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %20 = bitcast %struct.arrayobject* %19 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size10, align 8
  %22 = load %struct._object*, %struct._object** %bb.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.arrayobject*
  %24 = bitcast %struct.arrayobject* %23 to %struct.PyVarObject*
  %ob_size11 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %24, i32 0, i32 1
  %25 = load i64, i64* %ob_size11, align 8
  %add = add i64 %21, %25
  %26 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr12 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %26, i32 0, i32 3
  %27 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr12, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %27, i32 0, i32 1
  %28 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %28 to i64
  %div = sdiv i64 9223372036854775807, %conv
  %cmp13 = icmp sgt i64 %add, %div
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %call16 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false.9
  %29 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %30 = bitcast %struct.arrayobject* %29 to %struct.PyVarObject*
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %30, i32 0, i32 1
  %31 = load i64, i64* %ob_size18, align 8
  store i64 %31, i64* %oldsize, align 8
  %32 = load %struct._object*, %struct._object** %bb.addr, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyVarObject*
  %ob_size19 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %33, i32 0, i32 1
  %34 = load i64, i64* %ob_size19, align 8
  store i64 %34, i64* %bbsize, align 8
  %35 = load i64, i64* %oldsize, align 8
  %36 = load %struct._object*, %struct._object** %bb.addr, align 8
  %37 = bitcast %struct._object* %36 to %struct.arrayobject*
  %38 = bitcast %struct.arrayobject* %37 to %struct.PyVarObject*
  %ob_size20 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %38, i32 0, i32 1
  %39 = load i64, i64* %ob_size20, align 8
  %add21 = add i64 %35, %39
  store i64 %add21, i64* %size, align 8
  %40 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %41 = load i64, i64* %size, align 8
  %call22 = call i32 @array_resize(%struct.arrayobject* %40, i64 %41)
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.17
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.17
  %42 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %42, i32 0, i32 1
  %43 = load i8*, i8** %ob_item, align 8
  %44 = load i64, i64* %oldsize, align 8
  %45 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr27 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %45, i32 0, i32 3
  %46 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr27, align 8
  %itemsize28 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %46, i32 0, i32 1
  %47 = load i32, i32* %itemsize28, align 4
  %conv29 = sext i32 %47 to i64
  %mul = mul i64 %44, %conv29
  %add.ptr = getelementptr i8, i8* %43, i64 %mul
  %48 = load %struct._object*, %struct._object** %bb.addr, align 8
  %49 = bitcast %struct._object* %48 to %struct.arrayobject*
  %ob_item30 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %49, i32 0, i32 1
  %50 = load i8*, i8** %ob_item30, align 8
  %51 = load i64, i64* %bbsize, align 8
  %52 = load %struct._object*, %struct._object** %bb.addr, align 8
  %53 = bitcast %struct._object* %52 to %struct.arrayobject*
  %ob_descr31 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %53, i32 0, i32 3
  %54 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr31, align 8
  %itemsize32 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %54, i32 0, i32 1
  %55 = load i32, i32* %itemsize32, align 4
  %conv33 = sext i32 %55 to i64
  %mul34 = mul i64 %51, %conv33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %50, i64 %mul34, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.25, %if.then.15, %if.then.5, %if.then
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @array_iter_extend(%struct.arrayobject* %self, %struct._object* %bb) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.arrayobject*, align 8
  %bb.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp10 = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %bb, %struct._object** %bb.addr, align 8
  %0 = load %struct._object*, %struct._object** %bb.addr, align 8
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %0)
  store %struct._object* %call, %struct._object** %it, align 8
  %1 = load %struct._object*, %struct._object** %it, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %do.end.31, %if.end
  %2 = load %struct._object*, %struct._object** %it, align 8
  %call1 = call %struct._object* @PyIter_Next(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %v, align 8
  %cmp2 = icmp ne %struct._object* %call1, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %4 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %5 = bitcast %struct.arrayobject* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  %7 = load %struct._object*, %struct._object** %v, align 8
  %call3 = call i32 @ins1(%struct.arrayobject* %3, i64 %6, %struct._object* %7)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.20

if.then.5:                                        ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %8 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %15 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp10, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt11, align 8
  %dec12 = add i64 %17, -1
  store i64 %dec12, i64* %ob_refcnt11, align 8
  %cmp13 = icmp ne i64 %dec12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.9
  br label %if.end.18

if.else.15:                                       ; preds = %do.body.9
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc17, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  call void %20(%struct._object* %21)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %while.body
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %22 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp22, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %24, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %27(%struct._object* %28)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.32

do.body.32:                                       ; preds = %while.end
  %29 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp33, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %31, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %34(%struct._object* %35)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %call43 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call43, null
  br i1 %tobool, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %do.end.42
  store i32 -1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %do.end.42
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.44, %do.end.19, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ins1(%struct.arrayobject* %self, i64 %where, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.arrayobject*, align 8
  %where.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %items = alloca i8*, align 8
  %n = alloca i64, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store i64 %where, i64* %where.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %1 = bitcast %struct.arrayobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %n, align 8
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i32 0, i32 0), i32 529)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %4, i32 0, i32 3
  %5 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %setitem = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %5, i32 0, i32 3
  %6 = load i32 (%struct.arrayobject*, i64, %struct._object*)*, i32 (%struct.arrayobject*, i64, %struct._object*)** %setitem, align 8
  %7 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 %6(%struct.arrayobject* %7, i64 -1, %struct._object* %8)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %9 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %10 = load i64, i64* %n, align 8
  %add = add i64 %10, 1
  %call4 = call i32 @array_resize(%struct.arrayobject* %9, i64 %add)
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %11 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %11, i32 0, i32 1
  %12 = load i8*, i8** %ob_item, align 8
  store i8* %12, i8** %items, align 8
  %13 = load i64, i64* %where.addr, align 8
  %cmp8 = icmp slt i64 %13, 0
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.7
  %14 = load i64, i64* %n, align 8
  %15 = load i64, i64* %where.addr, align 8
  %add10 = add i64 %15, %14
  store i64 %add10, i64* %where.addr, align 8
  %16 = load i64, i64* %where.addr, align 8
  %cmp11 = icmp slt i64 %16, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  store i64 0, i64* %where.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.7
  %17 = load i64, i64* %where.addr, align 8
  %18 = load i64, i64* %n, align 8
  %cmp15 = icmp sgt i64 %17, %18
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %19 = load i64, i64* %n, align 8
  store i64 %19, i64* %where.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %20 = load i64, i64* %where.addr, align 8
  %21 = load i64, i64* %n, align 8
  %cmp18 = icmp ne i64 %20, %21
  br i1 %cmp18, label %if.then.19, label %if.end.31

if.then.19:                                       ; preds = %if.end.17
  %22 = load i8*, i8** %items, align 8
  %23 = load i64, i64* %where.addr, align 8
  %add20 = add i64 %23, 1
  %24 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr21 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %24, i32 0, i32 3
  %25 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr21, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %25, i32 0, i32 1
  %26 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %26 to i64
  %mul = mul i64 %add20, %conv
  %add.ptr = getelementptr i8, i8* %22, i64 %mul
  %27 = load i8*, i8** %items, align 8
  %28 = load i64, i64* %where.addr, align 8
  %29 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr22 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %29, i32 0, i32 3
  %30 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr22, align 8
  %itemsize23 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %30, i32 0, i32 1
  %31 = load i32, i32* %itemsize23, align 4
  %conv24 = sext i32 %31 to i64
  %mul25 = mul i64 %28, %conv24
  %add.ptr26 = getelementptr i8, i8* %27, i64 %mul25
  %32 = load i64, i64* %n, align 8
  %33 = load i64, i64* %where.addr, align 8
  %sub = sub i64 %32, %33
  %34 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr27 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %34, i32 0, i32 3
  %35 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr27, align 8
  %itemsize28 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %35, i32 0, i32 1
  %36 = load i32, i32* %itemsize28, align 4
  %conv29 = sext i32 %36 to i64
  %mul30 = mul i64 %sub, %conv29
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr26, i64 %mul30, i32 1, i1 false)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.19, %if.end.17
  %37 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr32 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %37, i32 0, i32 3
  %38 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr32, align 8
  %setitem33 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %38, i32 0, i32 3
  %39 = load i32 (%struct.arrayobject*, i64, %struct._object*)*, i32 (%struct.arrayobject*, i64, %struct._object*)** %setitem33, align 8
  %40 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %41 = load i64, i64* %where.addr, align 8
  %42 = load %struct._object*, %struct._object** %v.addr, align 8
  %call34 = call i32 %39(%struct.arrayobject* %40, i64 %41, %struct._object* %42)
  store i32 %call34, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.6, %if.then.2, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_subscr(%struct.arrayobject* %self, %struct._object* %item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %item.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelength = alloca i64, align 8
  %cur = alloca i64, align 8
  %i15 = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %ar = alloca %struct.arrayobject*, align 8
  %itemsize = alloca i32, align 4
  %result29 = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
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
  %11 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %12 = bitcast %struct.arrayobject* %11 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size, align 8
  %14 = load i64, i64* %i, align 8
  %add = add i64 %14, %13
  store i64 %add, i64* %i, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %15 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %16 = load i64, i64* %i, align 8
  %call11 = call %struct._object* @array_item(%struct.arrayobject* %15, i64 %16)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %cmp13 = icmp eq %struct._typeobject* %18, @PySlice_Type
  br i1 %cmp13, label %if.then.14, label %if.else.56

if.then.14:                                       ; preds = %if.else
  %19 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %19, i32 0, i32 3
  %20 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %itemsize16 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %20, i32 0, i32 1
  %21 = load i32, i32* %itemsize16, align 4
  store i32 %21, i32* %itemsize, align 4
  %22 = load %struct._object*, %struct._object** %item.addr, align 8
  %23 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %24 = bitcast %struct.arrayobject* %23 to %struct.PyVarObject*
  %ob_size17 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %24, i32 0, i32 1
  %25 = load i64, i64* %ob_size17, align 8
  %call18 = call i32 @PySlice_GetIndicesEx(%struct._object* %22, i64 %25, i64* %start, i64* %stop, i64* %step, i64* %slicelength)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.14
  %26 = load i64, i64* %slicelength, align 8
  %cmp22 = icmp sle i64 %26, 0
  br i1 %cmp22, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %if.end.21
  %27 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr24 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %27, i32 0, i32 3
  %28 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr24, align 8
  %call25 = call %struct._object* @newarrayobject(%struct._typeobject* @Arraytype, i64 0, %struct.arraydescr* %28)
  store %struct._object* %call25, %struct._object** %retval
  br label %return

if.else.26:                                       ; preds = %if.end.21
  %29 = load i64, i64* %step, align 8
  %cmp27 = icmp eq i64 %29, 1
  br i1 %cmp27, label %if.then.28, label %if.else.38

if.then.28:                                       ; preds = %if.else.26
  %30 = load i64, i64* %slicelength, align 8
  %31 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr30 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %31, i32 0, i32 3
  %32 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr30, align 8
  %call31 = call %struct._object* @newarrayobject(%struct._typeobject* @Arraytype, i64 %30, %struct.arraydescr* %32)
  store %struct._object* %call31, %struct._object** %result29, align 8
  %33 = load %struct._object*, %struct._object** %result29, align 8
  %cmp32 = icmp eq %struct._object* %33, null
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.28
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %if.then.28
  %34 = load %struct._object*, %struct._object** %result29, align 8
  %35 = bitcast %struct._object* %34 to %struct.arrayobject*
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %35, i32 0, i32 1
  %36 = load i8*, i8** %ob_item, align 8
  %37 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item35 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %37, i32 0, i32 1
  %38 = load i8*, i8** %ob_item35, align 8
  %39 = load i64, i64* %start, align 8
  %40 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %40 to i64
  %mul = mul i64 %39, %conv
  %add.ptr = getelementptr i8, i8* %38, i64 %mul
  %41 = load i64, i64* %slicelength, align 8
  %42 = load i32, i32* %itemsize, align 4
  %conv36 = sext i32 %42 to i64
  %mul37 = mul i64 %41, %conv36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %add.ptr, i64 %mul37, i32 1, i1 false)
  %43 = load %struct._object*, %struct._object** %result29, align 8
  store %struct._object* %43, %struct._object** %retval
  br label %return

if.else.38:                                       ; preds = %if.else.26
  %44 = load i64, i64* %slicelength, align 8
  %45 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr39 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %45, i32 0, i32 3
  %46 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr39, align 8
  %call40 = call %struct._object* @newarrayobject(%struct._typeobject* @Arraytype, i64 %44, %struct.arraydescr* %46)
  store %struct._object* %call40, %struct._object** %result, align 8
  %47 = load %struct._object*, %struct._object** %result, align 8
  %tobool41 = icmp ne %struct._object* %47, null
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.else.38
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %if.else.38
  %48 = load %struct._object*, %struct._object** %result, align 8
  %49 = bitcast %struct._object* %48 to %struct.arrayobject*
  store %struct.arrayobject* %49, %struct.arrayobject** %ar, align 8
  %50 = load i64, i64* %start, align 8
  store i64 %50, i64* %cur, align 8
  store i64 0, i64* %i15, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.43
  %51 = load i64, i64* %i15, align 8
  %52 = load i64, i64* %slicelength, align 8
  %cmp44 = icmp slt i64 %51, %52
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load %struct.arrayobject*, %struct.arrayobject** %ar, align 8
  %ob_item46 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %53, i32 0, i32 1
  %54 = load i8*, i8** %ob_item46, align 8
  %55 = load i64, i64* %i15, align 8
  %56 = load i32, i32* %itemsize, align 4
  %conv47 = sext i32 %56 to i64
  %mul48 = mul i64 %55, %conv47
  %add.ptr49 = getelementptr i8, i8* %54, i64 %mul48
  %57 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item50 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %57, i32 0, i32 1
  %58 = load i8*, i8** %ob_item50, align 8
  %59 = load i64, i64* %cur, align 8
  %60 = load i32, i32* %itemsize, align 4
  %conv51 = sext i32 %60 to i64
  %mul52 = mul i64 %59, %conv51
  %add.ptr53 = getelementptr i8, i8* %58, i64 %mul52
  %61 = load i32, i32* %itemsize, align 4
  %conv54 = sext i32 %61 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr49, i8* %add.ptr53, i64 %conv54, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i64, i64* %step, align 8
  %63 = load i64, i64* %cur, align 8
  %add55 = add i64 %63, %62
  store i64 %add55, i64* %cur, align 8
  %64 = load i64, i64* %i15, align 8
  %inc = add i64 %64, 1
  store i64 %inc, i64* %i15, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %65, %struct._object** %retval
  br label %return

if.else.56:                                       ; preds = %if.else
  %66 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.56, %for.end, %if.then.42, %if.end.34, %if.then.33, %if.then.23, %if.then.20, %if.end.10, %if.then.7
  %67 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %67
}

; Function Attrs: nounwind uwtable
define internal i32 @array_ass_subscr(%struct.arrayobject* %self, %struct._object* %item, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.arrayobject*, align 8
  %item.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelength = alloca i64, align 8
  %needed = alloca i64, align 8
  %other = alloca %struct.arrayobject*, align 8
  %itemsize = alloca i32, align 4
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %cur = alloca i64, align 8
  %i149 = alloca i64, align 8
  %lim = alloca i64, align 8
  %cur213 = alloca i64, align 8
  %i214 = alloca i64, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp = icmp ne %struct.PyNumberMethods* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 33
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp3 = icmp ne %struct._object* (%struct._object*)* %6, null
  br i1 %cmp3, label %if.then, label %if.else.21

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
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.5, %if.then
  %10 = load i64, i64* %i, align 8
  %cmp8 = icmp slt i64 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %11 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %12 = bitcast %struct.arrayobject* %11 to %struct.PyVarObject*
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
  %17 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %18 = bitcast %struct.arrayobject* %17 to %struct.PyVarObject*
  %ob_size12 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size12, align 8
  %cmp13 = icmp sge i64 %16, %19
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.10
  %20 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false
  %21 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp16 = icmp eq %struct._object* %21, null
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.15
  %22 = load i64, i64* %i, align 8
  store i64 %22, i64* %start, align 8
  %23 = load i64, i64* %i, align 8
  %add18 = add i64 %23, 1
  store i64 %add18, i64* %stop, align 8
  store i64 1, i64* %step, align 8
  store i64 1, i64* %slicelength, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.end.15
  %24 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %24, i32 0, i32 3
  %25 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %setitem = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %25, i32 0, i32 3
  %26 = load i32 (%struct.arrayobject*, i64, %struct._object*)*, i32 (%struct.arrayobject*, i64, %struct._object*)** %setitem, align 8
  %27 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %28 = load i64, i64* %i, align 8
  %29 = load %struct._object*, %struct._object** %value.addr, align 8
  %call19 = call i32 %26(%struct.arrayobject* %27, i64 %28, %struct._object* %29)
  store i32 %call19, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.17
  br label %if.end.32

if.else.21:                                       ; preds = %land.lhs.true, %entry
  %30 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %cmp23 = icmp eq %struct._typeobject* %31, @PySlice_Type
  br i1 %cmp23, label %if.then.24, label %if.else.30

if.then.24:                                       ; preds = %if.else.21
  %32 = load %struct._object*, %struct._object** %item.addr, align 8
  %33 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %34 = bitcast %struct.arrayobject* %33 to %struct.PyVarObject*
  %ob_size25 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %34, i32 0, i32 1
  %35 = load i64, i64* %ob_size25, align 8
  %call26 = call i32 @PySlice_GetIndicesEx(%struct._object* %32, i64 %35, i64* %start, i64* %stop, i64* %step, i64* %slicelength)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.24
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.24
  br label %if.end.31

if.else.30:                                       ; preds = %if.else.21
  %36 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.29
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.20
  %37 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp33 = icmp eq %struct._object* %37, null
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.end.32
  store %struct.arrayobject* null, %struct.arrayobject** %other, align 8
  store i64 0, i64* %needed, align 8
  br label %if.end.67

if.else.35:                                       ; preds = %if.end.32
  %38 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %cmp37 = icmp eq %struct._typeobject* %39, @Arraytype
  br i1 %cmp37, label %if.then.42, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.else.35
  %40 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %call40 = call i32 @PyType_IsSubtype(%struct._typeobject* %41, %struct._typeobject* @Arraytype)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.63

if.then.42:                                       ; preds = %lor.lhs.false.38, %if.else.35
  %42 = load %struct._object*, %struct._object** %value.addr, align 8
  %43 = bitcast %struct._object* %42 to %struct.arrayobject*
  store %struct.arrayobject* %43, %struct.arrayobject** %other, align 8
  %44 = load %struct.arrayobject*, %struct.arrayobject** %other, align 8
  %45 = bitcast %struct.arrayobject* %44 to %struct.PyVarObject*
  %ob_size43 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %45, i32 0, i32 1
  %46 = load i64, i64* %ob_size43, align 8
  store i64 %46, i64* %needed, align 8
  %47 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %48 = load %struct.arrayobject*, %struct.arrayobject** %other, align 8
  %cmp44 = icmp eq %struct.arrayobject* %47, %48
  br i1 %cmp44, label %if.then.45, label %if.end.56

if.then.45:                                       ; preds = %if.then.42
  %49 = load %struct.arrayobject*, %struct.arrayobject** %other, align 8
  %50 = load i64, i64* %needed, align 8
  %call46 = call %struct._object* @array_slice(%struct.arrayobject* %49, i64 0, i64 %50)
  store %struct._object* %call46, %struct._object** %value.addr, align 8
  %51 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp47 = icmp eq %struct._object* %51, null
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.45
  store i32 -1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.then.45
  %52 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %53 = load %struct._object*, %struct._object** %item.addr, align 8
  %54 = load %struct._object*, %struct._object** %value.addr, align 8
  %call50 = call i32 @array_ass_subscr(%struct.arrayobject* %52, %struct._object* %53, %struct._object* %54)
  store i32 %call50, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.49
  %55 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %57, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp51 = icmp ne i64 %dec, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body
  br label %if.end.55

if.else.53:                                       ; preds = %do.body
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %60(%struct._object* %61)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end

do.end:                                           ; preds = %if.end.55
  %62 = load i32, i32* %ret, align 4
  store i32 %62, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.42
  %63 = load %struct.arrayobject*, %struct.arrayobject** %other, align 8
  %ob_descr57 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %63, i32 0, i32 3
  %64 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr57, align 8
  %65 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr58 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %65, i32 0, i32 3
  %66 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr58, align 8
  %cmp59 = icmp ne %struct.arraydescr* %64, %66
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.56
  %call61 = call i32 @PyErr_BadArgument()
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.56
  br label %if.end.66

if.else.63:                                       ; preds = %lor.lhs.false.38
  %67 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %68 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 1
  %70 = load i8*, i8** %tp_name, align 8
  %call65 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %67, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0), i8* %70)
  store i32 -1, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.62
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.34
  %71 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr68 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %71, i32 0, i32 3
  %72 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr68, align 8
  %itemsize69 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %72, i32 0, i32 1
  %73 = load i32, i32* %itemsize69, align 4
  store i32 %73, i32* %itemsize, align 4
  %74 = load i64, i64* %step, align 8
  %cmp70 = icmp sgt i64 %74, 0
  br i1 %cmp70, label %land.lhs.true.71, label %lor.lhs.false.73

land.lhs.true.71:                                 ; preds = %if.end.67
  %75 = load i64, i64* %stop, align 8
  %76 = load i64, i64* %start, align 8
  %cmp72 = icmp slt i64 %75, %76
  br i1 %cmp72, label %if.then.77, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %land.lhs.true.71, %if.end.67
  %77 = load i64, i64* %step, align 8
  %cmp74 = icmp slt i64 %77, 0
  br i1 %cmp74, label %land.lhs.true.75, label %if.end.78

land.lhs.true.75:                                 ; preds = %lor.lhs.false.73
  %78 = load i64, i64* %stop, align 8
  %79 = load i64, i64* %start, align 8
  %cmp76 = icmp sgt i64 %78, %79
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %land.lhs.true.75, %land.lhs.true.71
  %80 = load i64, i64* %start, align 8
  store i64 %80, i64* %stop, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %land.lhs.true.75, %lor.lhs.false.73
  %81 = load i64, i64* %needed, align 8
  %cmp79 = icmp eq i64 %81, 0
  br i1 %cmp79, label %land.lhs.true.82, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %if.end.78
  %82 = load i64, i64* %slicelength, align 8
  %83 = load i64, i64* %needed, align 8
  %cmp81 = icmp ne i64 %82, %83
  br i1 %cmp81, label %land.lhs.true.82, label %if.end.85

land.lhs.true.82:                                 ; preds = %lor.lhs.false.80, %if.end.78
  %84 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_exports = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %84, i32 0, i32 5
  %85 = load i32, i32* %ob_exports, align 4
  %cmp83 = icmp sgt i32 %85, 0
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %land.lhs.true.82
  %86 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %86, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %land.lhs.true.82, %lor.lhs.false.80
  %87 = load i64, i64* %step, align 8
  %cmp86 = icmp eq i64 %87, 1
  br i1 %cmp86, label %if.then.87, label %if.else.145

if.then.87:                                       ; preds = %if.end.85
  %88 = load i64, i64* %slicelength, align 8
  %89 = load i64, i64* %needed, align 8
  %cmp88 = icmp sgt i64 %88, %89
  br i1 %cmp88, label %if.then.89, label %if.else.106

if.then.89:                                       ; preds = %if.then.87
  %90 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %90, i32 0, i32 1
  %91 = load i8*, i8** %ob_item, align 8
  %92 = load i64, i64* %start, align 8
  %93 = load i64, i64* %needed, align 8
  %add90 = add i64 %92, %93
  %94 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %94 to i64
  %mul = mul i64 %add90, %conv
  %add.ptr = getelementptr i8, i8* %91, i64 %mul
  %95 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item91 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %95, i32 0, i32 1
  %96 = load i8*, i8** %ob_item91, align 8
  %97 = load i64, i64* %stop, align 8
  %98 = load i32, i32* %itemsize, align 4
  %conv92 = sext i32 %98 to i64
  %mul93 = mul i64 %97, %conv92
  %add.ptr94 = getelementptr i8, i8* %96, i64 %mul93
  %99 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %100 = bitcast %struct.arrayobject* %99 to %struct.PyVarObject*
  %ob_size95 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %100, i32 0, i32 1
  %101 = load i64, i64* %ob_size95, align 8
  %102 = load i64, i64* %stop, align 8
  %sub = sub i64 %101, %102
  %103 = load i32, i32* %itemsize, align 4
  %conv96 = sext i32 %103 to i64
  %mul97 = mul i64 %sub, %conv96
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr94, i64 %mul97, i32 1, i1 false)
  %104 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %105 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %106 = bitcast %struct.arrayobject* %105 to %struct.PyVarObject*
  %ob_size98 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %106, i32 0, i32 1
  %107 = load i64, i64* %ob_size98, align 8
  %108 = load i64, i64* %needed, align 8
  %add99 = add i64 %107, %108
  %109 = load i64, i64* %slicelength, align 8
  %sub100 = sub i64 %add99, %109
  %call101 = call i32 @array_resize(%struct.arrayobject* %104, i64 %sub100)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.then.89
  store i32 -1, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.then.89
  br label %if.end.133

if.else.106:                                      ; preds = %if.then.87
  %110 = load i64, i64* %slicelength, align 8
  %111 = load i64, i64* %needed, align 8
  %cmp107 = icmp slt i64 %110, %111
  br i1 %cmp107, label %if.then.109, label %if.end.132

if.then.109:                                      ; preds = %if.else.106
  %112 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %113 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %114 = bitcast %struct.arrayobject* %113 to %struct.PyVarObject*
  %ob_size110 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %114, i32 0, i32 1
  %115 = load i64, i64* %ob_size110, align 8
  %116 = load i64, i64* %needed, align 8
  %add111 = add i64 %115, %116
  %117 = load i64, i64* %slicelength, align 8
  %sub112 = sub i64 %add111, %117
  %call113 = call i32 @array_resize(%struct.arrayobject* %112, i64 %sub112)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.then.109
  store i32 -1, i32* %retval
  br label %return

if.end.117:                                       ; preds = %if.then.109
  %118 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item118 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %118, i32 0, i32 1
  %119 = load i8*, i8** %ob_item118, align 8
  %120 = load i64, i64* %start, align 8
  %121 = load i64, i64* %needed, align 8
  %add119 = add i64 %120, %121
  %122 = load i32, i32* %itemsize, align 4
  %conv120 = sext i32 %122 to i64
  %mul121 = mul i64 %add119, %conv120
  %add.ptr122 = getelementptr i8, i8* %119, i64 %mul121
  %123 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item123 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %123, i32 0, i32 1
  %124 = load i8*, i8** %ob_item123, align 8
  %125 = load i64, i64* %stop, align 8
  %126 = load i32, i32* %itemsize, align 4
  %conv124 = sext i32 %126 to i64
  %mul125 = mul i64 %125, %conv124
  %add.ptr126 = getelementptr i8, i8* %124, i64 %mul125
  %127 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %128 = bitcast %struct.arrayobject* %127 to %struct.PyVarObject*
  %ob_size127 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %128, i32 0, i32 1
  %129 = load i64, i64* %ob_size127, align 8
  %130 = load i64, i64* %start, align 8
  %sub128 = sub i64 %129, %130
  %131 = load i64, i64* %needed, align 8
  %sub129 = sub i64 %sub128, %131
  %132 = load i32, i32* %itemsize, align 4
  %conv130 = sext i32 %132 to i64
  %mul131 = mul i64 %sub129, %conv130
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr122, i8* %add.ptr126, i64 %mul131, i32 1, i1 false)
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.117, %if.else.106
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.105
  %133 = load i64, i64* %needed, align 8
  %cmp134 = icmp sgt i64 %133, 0
  br i1 %cmp134, label %if.then.136, label %if.end.144

if.then.136:                                      ; preds = %if.end.133
  %134 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item137 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %134, i32 0, i32 1
  %135 = load i8*, i8** %ob_item137, align 8
  %136 = load i64, i64* %start, align 8
  %137 = load i32, i32* %itemsize, align 4
  %conv138 = sext i32 %137 to i64
  %mul139 = mul i64 %136, %conv138
  %add.ptr140 = getelementptr i8, i8* %135, i64 %mul139
  %138 = load %struct.arrayobject*, %struct.arrayobject** %other, align 8
  %ob_item141 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %138, i32 0, i32 1
  %139 = load i8*, i8** %ob_item141, align 8
  %140 = load i64, i64* %needed, align 8
  %141 = load i32, i32* %itemsize, align 4
  %conv142 = sext i32 %141 to i64
  %mul143 = mul i64 %140, %conv142
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr140, i8* %139, i64 %mul143, i32 1, i1 false)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.136, %if.end.133
  store i32 0, i32* %retval
  br label %return

if.else.145:                                      ; preds = %if.end.85
  %142 = load i64, i64* %needed, align 8
  %cmp146 = icmp eq i64 %142, 0
  br i1 %cmp146, label %if.then.148, label %if.else.212

if.then.148:                                      ; preds = %if.else.145
  %143 = load i64, i64* %step, align 8
  %cmp150 = icmp slt i64 %143, 0
  br i1 %cmp150, label %if.then.152, label %if.end.159

if.then.152:                                      ; preds = %if.then.148
  %144 = load i64, i64* %start, align 8
  %add153 = add i64 %144, 1
  store i64 %add153, i64* %stop, align 8
  %145 = load i64, i64* %stop, align 8
  %146 = load i64, i64* %step, align 8
  %147 = load i64, i64* %slicelength, align 8
  %sub154 = sub i64 %147, 1
  %mul155 = mul i64 %146, %sub154
  %add156 = add i64 %145, %mul155
  %sub157 = sub i64 %add156, 1
  store i64 %sub157, i64* %start, align 8
  %148 = load i64, i64* %step, align 8
  %sub158 = sub i64 0, %148
  store i64 %sub158, i64* %step, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.152, %if.then.148
  %149 = load i64, i64* %start, align 8
  store i64 %149, i64* %cur, align 8
  store i64 0, i64* %i149, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.159
  %150 = load i64, i64* %i149, align 8
  %151 = load i64, i64* %slicelength, align 8
  %cmp160 = icmp slt i64 %150, %151
  br i1 %cmp160, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %152 = load i64, i64* %step, align 8
  %sub162 = sub i64 %152, 1
  store i64 %sub162, i64* %lim, align 8
  %153 = load i64, i64* %cur, align 8
  %154 = load i64, i64* %step, align 8
  %add163 = add i64 %153, %154
  %155 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %156 = bitcast %struct.arrayobject* %155 to %struct.PyVarObject*
  %ob_size164 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %156, i32 0, i32 1
  %157 = load i64, i64* %ob_size164, align 8
  %cmp165 = icmp uge i64 %add163, %157
  br i1 %cmp165, label %if.then.167, label %if.end.171

if.then.167:                                      ; preds = %for.body
  %158 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %159 = bitcast %struct.arrayobject* %158 to %struct.PyVarObject*
  %ob_size168 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %159, i32 0, i32 1
  %160 = load i64, i64* %ob_size168, align 8
  %161 = load i64, i64* %cur, align 8
  %sub169 = sub i64 %160, %161
  %sub170 = sub i64 %sub169, 1
  store i64 %sub170, i64* %lim, align 8
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.167, %for.body
  %162 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item172 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %162, i32 0, i32 1
  %163 = load i8*, i8** %ob_item172, align 8
  %164 = load i64, i64* %cur, align 8
  %165 = load i64, i64* %i149, align 8
  %sub173 = sub i64 %164, %165
  %166 = load i32, i32* %itemsize, align 4
  %conv174 = sext i32 %166 to i64
  %mul175 = mul i64 %sub173, %conv174
  %add.ptr176 = getelementptr i8, i8* %163, i64 %mul175
  %167 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item177 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %167, i32 0, i32 1
  %168 = load i8*, i8** %ob_item177, align 8
  %169 = load i64, i64* %cur, align 8
  %add178 = add i64 %169, 1
  %170 = load i32, i32* %itemsize, align 4
  %conv179 = sext i32 %170 to i64
  %mul180 = mul i64 %add178, %conv179
  %add.ptr181 = getelementptr i8, i8* %168, i64 %mul180
  %171 = load i64, i64* %lim, align 8
  %172 = load i32, i32* %itemsize, align 4
  %conv182 = sext i32 %172 to i64
  %mul183 = mul i64 %171, %conv182
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr176, i8* %add.ptr181, i64 %mul183, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.171
  %173 = load i64, i64* %step, align 8
  %174 = load i64, i64* %cur, align 8
  %add184 = add i64 %174, %173
  store i64 %add184, i64* %cur, align 8
  %175 = load i64, i64* %i149, align 8
  %inc = add i64 %175, 1
  store i64 %inc, i64* %i149, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %176 = load i64, i64* %start, align 8
  %177 = load i64, i64* %slicelength, align 8
  %178 = load i64, i64* %step, align 8
  %mul185 = mul i64 %177, %178
  %add186 = add i64 %176, %mul185
  store i64 %add186, i64* %cur, align 8
  %179 = load i64, i64* %cur, align 8
  %180 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %181 = bitcast %struct.arrayobject* %180 to %struct.PyVarObject*
  %ob_size187 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %181, i32 0, i32 1
  %182 = load i64, i64* %ob_size187, align 8
  %cmp188 = icmp ult i64 %179, %182
  br i1 %cmp188, label %if.then.190, label %if.end.204

if.then.190:                                      ; preds = %for.end
  %183 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item191 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %183, i32 0, i32 1
  %184 = load i8*, i8** %ob_item191, align 8
  %185 = load i64, i64* %cur, align 8
  %186 = load i64, i64* %slicelength, align 8
  %sub192 = sub i64 %185, %186
  %187 = load i32, i32* %itemsize, align 4
  %conv193 = sext i32 %187 to i64
  %mul194 = mul i64 %sub192, %conv193
  %add.ptr195 = getelementptr i8, i8* %184, i64 %mul194
  %188 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item196 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %188, i32 0, i32 1
  %189 = load i8*, i8** %ob_item196, align 8
  %190 = load i64, i64* %cur, align 8
  %191 = load i32, i32* %itemsize, align 4
  %conv197 = sext i32 %191 to i64
  %mul198 = mul i64 %190, %conv197
  %add.ptr199 = getelementptr i8, i8* %189, i64 %mul198
  %192 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %193 = bitcast %struct.arrayobject* %192 to %struct.PyVarObject*
  %ob_size200 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %193, i32 0, i32 1
  %194 = load i64, i64* %ob_size200, align 8
  %195 = load i64, i64* %cur, align 8
  %sub201 = sub i64 %194, %195
  %196 = load i32, i32* %itemsize, align 4
  %conv202 = sext i32 %196 to i64
  %mul203 = mul i64 %sub201, %conv202
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr195, i8* %add.ptr199, i64 %mul203, i32 1, i1 false)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.190, %for.end
  %197 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %198 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %199 = bitcast %struct.arrayobject* %198 to %struct.PyVarObject*
  %ob_size205 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %199, i32 0, i32 1
  %200 = load i64, i64* %ob_size205, align 8
  %201 = load i64, i64* %slicelength, align 8
  %sub206 = sub i64 %200, %201
  %call207 = call i32 @array_resize(%struct.arrayobject* %197, i64 %sub206)
  %cmp208 = icmp slt i32 %call207, 0
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.end.204
  store i32 -1, i32* %retval
  br label %return

if.end.211:                                       ; preds = %if.end.204
  store i32 0, i32* %retval
  br label %return

if.else.212:                                      ; preds = %if.else.145
  %202 = load i64, i64* %needed, align 8
  %203 = load i64, i64* %slicelength, align 8
  %cmp215 = icmp ne i64 %202, %203
  br i1 %cmp215, label %if.then.217, label %if.end.219

if.then.217:                                      ; preds = %if.else.212
  %204 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %205 = load i64, i64* %needed, align 8
  %206 = load i64, i64* %slicelength, align 8
  %call218 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %204, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i32 0, i32 0), i64 %205, i64 %206)
  store i32 -1, i32* %retval
  br label %return

if.end.219:                                       ; preds = %if.else.212
  %207 = load i64, i64* %start, align 8
  store i64 %207, i64* %cur213, align 8
  store i64 0, i64* %i214, align 8
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.233, %if.end.219
  %208 = load i64, i64* %i214, align 8
  %209 = load i64, i64* %slicelength, align 8
  %cmp221 = icmp slt i64 %208, %209
  br i1 %cmp221, label %for.body.223, label %for.end.236

for.body.223:                                     ; preds = %for.cond.220
  %210 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item224 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %210, i32 0, i32 1
  %211 = load i8*, i8** %ob_item224, align 8
  %212 = load i64, i64* %cur213, align 8
  %213 = load i32, i32* %itemsize, align 4
  %conv225 = sext i32 %213 to i64
  %mul226 = mul i64 %212, %conv225
  %add.ptr227 = getelementptr i8, i8* %211, i64 %mul226
  %214 = load %struct.arrayobject*, %struct.arrayobject** %other, align 8
  %ob_item228 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %214, i32 0, i32 1
  %215 = load i8*, i8** %ob_item228, align 8
  %216 = load i64, i64* %i214, align 8
  %217 = load i32, i32* %itemsize, align 4
  %conv229 = sext i32 %217 to i64
  %mul230 = mul i64 %216, %conv229
  %add.ptr231 = getelementptr i8, i8* %215, i64 %mul230
  %218 = load i32, i32* %itemsize, align 4
  %conv232 = sext i32 %218 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr227, i8* %add.ptr231, i64 %conv232, i32 1, i1 false)
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.body.223
  %219 = load i64, i64* %step, align 8
  %220 = load i64, i64* %cur213, align 8
  %add234 = add i64 %220, %219
  store i64 %add234, i64* %cur213, align 8
  %221 = load i64, i64* %i214, align 8
  %inc235 = add i64 %221, 1
  store i64 %inc235, i64* %i214, align 8
  br label %for.cond.220

for.end.236:                                      ; preds = %for.cond.220
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.236, %if.then.217, %if.end.211, %if.then.210, %if.end.144, %if.then.116, %if.then.104, %if.then.84, %if.else.63, %if.then.60, %do.end, %if.then.48, %if.else.30, %if.then.28, %if.else, %if.then.14, %if.then.7
  %222 = load i32, i32* %retval
  ret i32 %222
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare i32 @PySlice_GetIndicesEx(%struct._object*, i64, i64*, i64*, i64*, i64*) #1

; Function Attrs: nounwind uwtable
define internal i32 @array_buffer_getbuf(%struct.arrayobject* %self, %struct.bufferinfo* %view, i32 %flags) #0 {
entry:
  %self.addr = alloca %struct.arrayobject*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %cmp = icmp eq %struct.bufferinfo* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %finish

if.end:                                           ; preds = %entry
  %1 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 0
  store i8* %2, i8** %buf, align 8
  %4 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %5 = bitcast %struct.arrayobject* %4 to %struct._object*
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 1
  store %struct._object* %5, %struct._object** %obj, align 8
  %7 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %8 = bitcast %struct.arrayobject* %7 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 0
  %11 = load i8*, i8** %buf1, align 8
  %cmp2 = icmp eq i8* %11, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %12 = load i8*, i8** @emptybuf, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %buf4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 0
  store i8* %12, i8** %buf4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %14 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %15 = bitcast %struct.arrayobject* %14 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1
  %16 = load i64, i64* %ob_size, align 8
  %17 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %17, i32 0, i32 3
  %18 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %18, i32 0, i32 1
  %19 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %19 to i64
  %mul = mul i64 %16, %conv
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 2
  store i64 %mul, i64* %len, align 8
  %21 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %21, i32 0, i32 4
  store i32 0, i32* %readonly, align 4
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 5
  store i32 1, i32* %ndim, align 4
  %23 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr6 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %23, i32 0, i32 3
  %24 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr6, align 8
  %itemsize7 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %24, i32 0, i32 1
  %25 = load i32, i32* %itemsize7, align 4
  %conv8 = sext i32 %25 to i64
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %itemsize9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 3
  store i64 %conv8, i64* %itemsize9, align 8
  %27 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %27, i32 0, i32 9
  store i64* null, i64** %suboffsets, align 8
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %28, i32 0, i32 7
  store i64* null, i64** %shape, align 8
  %29 = load i32, i32* %flags.addr, align 4
  %and = and i32 %29, 8
  %cmp10 = icmp eq i32 %and, 8
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.5
  %30 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %31 = bitcast %struct.arrayobject* %30 to %struct.PyVarObject*
  %ob_size13 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %31, i32 0, i32 1
  %32 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape14 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %32, i32 0, i32 7
  store i64* %ob_size13, i64** %shape14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.5
  %33 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %33, i32 0, i32 8
  store i64* null, i64** %strides, align 8
  %34 = load i32, i32* %flags.addr, align 4
  %and16 = and i32 %34, 24
  %cmp17 = icmp eq i32 %and16, 24
  br i1 %cmp17, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.15
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %itemsize20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %35, i32 0, i32 3
  %36 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %36, i32 0, i32 8
  store i64* %itemsize20, i64** %strides21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.15
  %37 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %37, i32 0, i32 6
  store i8* null, i8** %format, align 8
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %internal = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 10
  store i8* null, i8** %internal, align 8
  %39 = load i32, i32* %flags.addr, align 4
  %and23 = and i32 %39, 4
  %cmp24 = icmp eq i32 %and23, 4
  br i1 %cmp24, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %if.end.22
  %40 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr27 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %40, i32 0, i32 3
  %41 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr27, align 8
  %formats = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %41, i32 0, i32 4
  %42 = load i8*, i8** %formats, align 8
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format28 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %43, i32 0, i32 6
  store i8* %42, i8** %format28, align 8
  %44 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr29 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %44, i32 0, i32 3
  %45 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr29, align 8
  %typecode = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %45, i32 0, i32 0
  %46 = load i8, i8* %typecode, align 1
  %conv30 = sext i8 %46 to i32
  %cmp31 = icmp eq i32 %conv30, 117
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.26
  %47 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format34 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %47, i32 0, i32 6
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8** %format34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.26
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.22
  br label %finish

finish:                                           ; preds = %if.end.36, %if.then
  %48 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_exports = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %48, i32 0, i32 5
  %49 = load i32, i32* %ob_exports, align 4
  %inc37 = add i32 %49, 1
  store i32 %inc37, i32* %ob_exports, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @array_buffer_relbuf(%struct.arrayobject* %self, %struct.bufferinfo* %view) #0 {
entry:
  %self.addr = alloca %struct.arrayobject*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_exports = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %0, i32 0, i32 5
  %1 = load i32, i32* %ob_exports, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %ob_exports, align 4
  ret void
}

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

declare void @PyObject_GC_Track(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_append(%struct.arrayobject* %self, %struct._object* %v) #0 {
entry:
  %self.addr = alloca %struct.arrayobject*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %2 = bitcast %struct.arrayobject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @ins(%struct.arrayobject* %0, i64 %3, %struct._object* %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_buffer_info(%struct.arrayobject* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %call = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call, %struct._object** %retval1, align 8
  %0 = load %struct._object*, %struct._object** %retval1, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %call2 = call %struct._object* @PyLong_FromVoidPtr(i8* %2)
  store %struct._object* %call2, %struct._object** %v, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** %retval1, align 8
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %v, align 8
  %12 = load %struct._object*, %struct._object** %retval1, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item8 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item8, i32 0, i64 0
  store %struct._object* %11, %struct._object** %arrayidx, align 8
  %14 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %15 = bitcast %struct.arrayobject* %14 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1
  %16 = load i64, i64* %ob_size, align 8
  %call9 = call %struct._object* @PyLong_FromLong(i64 %16)
  store %struct._object* %call9, %struct._object** %v, align 8
  %17 = load %struct._object*, %struct._object** %v, align 8
  %cmp10 = icmp eq %struct._object* %17, null
  br i1 %cmp10, label %if.then.11, label %if.end.23

if.then.11:                                       ; preds = %if.end.7
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %18 = load %struct._object*, %struct._object** %retval1, align 8
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.7
  %25 = load %struct._object*, %struct._object** %v, align 8
  %26 = load %struct._object*, %struct._object** %retval1, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*
  %ob_item24 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx25 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item24, i32 0, i64 1
  store %struct._object* %25, %struct._object** %arrayidx25, align 8
  %28 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %do.end.22, %do.end, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_byteswap(%struct.arrayobject* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  %i = alloca i64, align 8
  %p0 = alloca i8, align 1
  %p012 = alloca i8, align 1
  %p1 = alloca i8, align 1
  %p031 = alloca i8, align 1
  %p133 = alloca i8, align 1
  %p2 = alloca i8, align 1
  %p3 = alloca i8, align 1
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %0, i32 0, i32 3
  %1 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %1, i32 0, i32 1
  %2 = load i32, i32* %itemsize, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.5
    i32 8, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %ob_item, align 8
  store i8* %4, i8** %p, align 8
  %5 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %6 = bitcast %struct.arrayobject* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  store i64 %7, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %8 = load i64, i64* %i, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %i, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  store i8 %10, i8* %p0, align 1
  %11 = load i8*, i8** %p, align 8
  %arrayidx2 = getelementptr i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx2, align 1
  %13 = load i8*, i8** %p, align 8
  %arrayidx3 = getelementptr i8, i8* %13, i64 0
  store i8 %12, i8* %arrayidx3, align 1
  %14 = load i8, i8* %p0, align 1
  %15 = load i8*, i8** %p, align 8
  %arrayidx4 = getelementptr i8, i8* %15, i64 1
  store i8 %14, i8* %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %16, i64 2
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %17 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item6 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %17, i32 0, i32 1
  %18 = load i8*, i8** %ob_item6, align 8
  store i8* %18, i8** %p, align 8
  %19 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %20 = bitcast %struct.arrayobject* %19 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size7, align 8
  store i64 %21, i64* %i, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.21, %sw.bb.5
  %22 = load i64, i64* %i, align 8
  %dec9 = add i64 %22, -1
  store i64 %dec9, i64* %i, align 8
  %cmp10 = icmp sge i64 %dec9, 0
  br i1 %cmp10, label %for.body.11, label %for.end.23

for.body.11:                                      ; preds = %for.cond.8
  %23 = load i8*, i8** %p, align 8
  %arrayidx13 = getelementptr i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx13, align 1
  store i8 %24, i8* %p012, align 1
  %25 = load i8*, i8** %p, align 8
  %arrayidx14 = getelementptr i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx14, align 1
  store i8 %26, i8* %p1, align 1
  %27 = load i8*, i8** %p, align 8
  %arrayidx15 = getelementptr i8, i8* %27, i64 3
  %28 = load i8, i8* %arrayidx15, align 1
  %29 = load i8*, i8** %p, align 8
  %arrayidx16 = getelementptr i8, i8* %29, i64 0
  store i8 %28, i8* %arrayidx16, align 1
  %30 = load i8*, i8** %p, align 8
  %arrayidx17 = getelementptr i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx17, align 1
  %32 = load i8*, i8** %p, align 8
  %arrayidx18 = getelementptr i8, i8* %32, i64 1
  store i8 %31, i8* %arrayidx18, align 1
  %33 = load i8, i8* %p1, align 1
  %34 = load i8*, i8** %p, align 8
  %arrayidx19 = getelementptr i8, i8* %34, i64 2
  store i8 %33, i8* %arrayidx19, align 1
  %35 = load i8, i8* %p012, align 1
  %36 = load i8*, i8** %p, align 8
  %arrayidx20 = getelementptr i8, i8* %36, i64 3
  store i8 %35, i8* %arrayidx20, align 1
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.11
  %37 = load i8*, i8** %p, align 8
  %add.ptr22 = getelementptr i8, i8* %37, i64 4
  store i8* %add.ptr22, i8** %p, align 8
  br label %for.cond.8

for.end.23:                                       ; preds = %for.cond.8
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %38 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item25 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %38, i32 0, i32 1
  %39 = load i8*, i8** %ob_item25, align 8
  store i8* %39, i8** %p, align 8
  %40 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %41 = bitcast %struct.arrayobject* %40 to %struct.PyVarObject*
  %ob_size26 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %41, i32 0, i32 1
  %42 = load i64, i64* %ob_size26, align 8
  store i64 %42, i64* %i, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.49, %sw.bb.24
  %43 = load i64, i64* %i, align 8
  %dec28 = add i64 %43, -1
  store i64 %dec28, i64* %i, align 8
  %cmp29 = icmp sge i64 %dec28, 0
  br i1 %cmp29, label %for.body.30, label %for.end.51

for.body.30:                                      ; preds = %for.cond.27
  %44 = load i8*, i8** %p, align 8
  %arrayidx32 = getelementptr i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx32, align 1
  store i8 %45, i8* %p031, align 1
  %46 = load i8*, i8** %p, align 8
  %arrayidx34 = getelementptr i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx34, align 1
  store i8 %47, i8* %p133, align 1
  %48 = load i8*, i8** %p, align 8
  %arrayidx35 = getelementptr i8, i8* %48, i64 2
  %49 = load i8, i8* %arrayidx35, align 1
  store i8 %49, i8* %p2, align 1
  %50 = load i8*, i8** %p, align 8
  %arrayidx36 = getelementptr i8, i8* %50, i64 3
  %51 = load i8, i8* %arrayidx36, align 1
  store i8 %51, i8* %p3, align 1
  %52 = load i8*, i8** %p, align 8
  %arrayidx37 = getelementptr i8, i8* %52, i64 7
  %53 = load i8, i8* %arrayidx37, align 1
  %54 = load i8*, i8** %p, align 8
  %arrayidx38 = getelementptr i8, i8* %54, i64 0
  store i8 %53, i8* %arrayidx38, align 1
  %55 = load i8*, i8** %p, align 8
  %arrayidx39 = getelementptr i8, i8* %55, i64 6
  %56 = load i8, i8* %arrayidx39, align 1
  %57 = load i8*, i8** %p, align 8
  %arrayidx40 = getelementptr i8, i8* %57, i64 1
  store i8 %56, i8* %arrayidx40, align 1
  %58 = load i8*, i8** %p, align 8
  %arrayidx41 = getelementptr i8, i8* %58, i64 5
  %59 = load i8, i8* %arrayidx41, align 1
  %60 = load i8*, i8** %p, align 8
  %arrayidx42 = getelementptr i8, i8* %60, i64 2
  store i8 %59, i8* %arrayidx42, align 1
  %61 = load i8*, i8** %p, align 8
  %arrayidx43 = getelementptr i8, i8* %61, i64 4
  %62 = load i8, i8* %arrayidx43, align 1
  %63 = load i8*, i8** %p, align 8
  %arrayidx44 = getelementptr i8, i8* %63, i64 3
  store i8 %62, i8* %arrayidx44, align 1
  %64 = load i8, i8* %p3, align 1
  %65 = load i8*, i8** %p, align 8
  %arrayidx45 = getelementptr i8, i8* %65, i64 4
  store i8 %64, i8* %arrayidx45, align 1
  %66 = load i8, i8* %p2, align 1
  %67 = load i8*, i8** %p, align 8
  %arrayidx46 = getelementptr i8, i8* %67, i64 5
  store i8 %66, i8* %arrayidx46, align 1
  %68 = load i8, i8* %p133, align 1
  %69 = load i8*, i8** %p, align 8
  %arrayidx47 = getelementptr i8, i8* %69, i64 6
  store i8 %68, i8* %arrayidx47, align 1
  %70 = load i8, i8* %p031, align 1
  %71 = load i8*, i8** %p, align 8
  %arrayidx48 = getelementptr i8, i8* %71, i64 7
  store i8 %70, i8* %arrayidx48, align 1
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.30
  %72 = load i8*, i8** %p, align 8
  %add.ptr50 = getelementptr i8, i8* %72, i64 8
  store i8* %add.ptr50, i8** %p, align 8
  br label %for.cond.27

for.end.51:                                       ; preds = %for.cond.27
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %73 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %for.end.51, %for.end.23, %for.end, %sw.bb
  %74 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %74, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %75 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %75
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_copy(%struct.arrayobject* %a, %struct._object* %unused) #0 {
entry:
  %a.addr = alloca %struct.arrayobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.arrayobject* %a, %struct.arrayobject** %a.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %2 = bitcast %struct.arrayobject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @array_slice(%struct.arrayobject* %0, i64 0, i64 %3)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_count(%struct.arrayobject* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %v.addr = alloca %struct._object*, align 8
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %selfi = alloca %struct._object*, align 8
  %cmp1 = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64 0, i64* %count, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %2 = bitcast %struct.arrayobject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %5 = bitcast %struct.arrayobject* %4 to %struct._object*
  %6 = load i64, i64* %i, align 8
  %call = call %struct._object* @getarrayitem(%struct._object* %5, i64 %6)
  store %struct._object* %call, %struct._object** %selfi, align 8
  %7 = load %struct._object*, %struct._object** %selfi, align 8
  %cmp2 = icmp eq %struct._object* %7, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.body
  %8 = load %struct._object*, %struct._object** %selfi, align 8
  %9 = load %struct._object*, %struct._object** %v.addr, align 8
  %call3 = call i32 @PyObject_RichCompareBool(%struct._object* %8, %struct._object* %9, i32 2)
  store i32 %call3, i32* %cmp1, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %selfi, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %17 = load i32, i32* %cmp1, align 4
  %cmp7 = icmp sgt i32 %17, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.end
  %18 = load i64, i64* %count, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %count, align 8
  br label %if.end.13

if.else.9:                                        ; preds = %do.end
  %19 = load i32, i32* %cmp1, align 4
  %cmp10 = icmp slt i32 %19, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.else.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %20 = load i64, i64* %i, align 8
  %inc14 = add i64 %20, 1
  store i64 %inc14, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i64, i64* %count, align 8
  %call15 = call %struct._object* @PyLong_FromSsize_t(i64 %21)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.11, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_extend(%struct.arrayobject* %self, %struct._object* %bb) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %bb.addr = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %bb, %struct._object** %bb.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %bb.addr, align 8
  %call = call i32 @array_do_extend(%struct.arrayobject* %0, %struct._object* %1)
  %cmp = icmp eq i32 %call, -1
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
define internal %struct._object* @array_fromfile(%struct.arrayobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %f = alloca %struct._object*, align 8
  %b = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %itemsize = alloca i64, align 8
  %n = alloca i64, align 8
  %nbytes = alloca i64, align 8
  %not_enough_bytes = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %0, i32 0, i32 3
  %1 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %itemsize1 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %1, i32 0, i32 1
  %2 = load i32, i32* %itemsize1, align 4
  %conv = sext i32 %2 to i64
  store i64 %conv, i64* %itemsize, align 8
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), %struct._object** %f, i64* %n)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i64, i64* %n, align 8
  %7 = load i64, i64* %itemsize, align 8
  %div = sdiv i64 9223372036854775807, %7
  %cmp5 = icmp sgt i64 %6, %div
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %call8 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %8 = load i64, i64* %n, align 8
  %9 = load i64, i64* %itemsize, align 8
  %mul = mul i64 %8, %9
  store i64 %mul, i64* %nbytes, align 8
  %10 = load %struct._object*, %struct._object** %f, align 8
  %11 = load i64, i64* %nbytes, align 8
  %call10 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %10, %struct._Py_Identifier* @array_fromfile.PyId_read, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i64 %11)
  store %struct._object* %call10, %struct._object** %b, align 8
  %12 = load %struct._object*, %struct._object** %b, align 8
  %cmp11 = icmp eq %struct._object* %12, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %13 = load %struct._object*, %struct._object** %b, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 19
  %15 = load i64, i64* %tp_flags, align 8
  %and = and i64 %15, 134217728
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.end.23, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %17 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %if.end.22

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.14
  %24 = load %struct._object*, %struct._object** %b, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ob_size, align 8
  %27 = load i64, i64* %nbytes, align 8
  %cmp24 = icmp ne i64 %26, %27
  %conv25 = zext i1 %cmp24 to i32
  store i32 %conv25, i32* %not_enough_bytes, align 4
  %28 = load %struct._object*, %struct._object** %b, align 8
  %call26 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), %struct._object* %28)
  store %struct._object* %call26, %struct._object** %args.addr, align 8
  br label %do.body.27

do.body.27:                                       ; preds = %if.end.23
  %29 = load %struct._object*, %struct._object** %b, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp28, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %31, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.27
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.27
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %34(%struct._object* %35)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %36 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp39 = icmp eq %struct._object* %36, null
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.38
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.42:                                        ; preds = %do.end.38
  %37 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %38 = load %struct._object*, %struct._object** %args.addr, align 8
  %call43 = call %struct._object* @array_frombytes(%struct.arrayobject* %37, %struct._object* %38)
  store %struct._object* %call43, %struct._object** %res, align 8
  br label %do.body.44

do.body.44:                                       ; preds = %if.end.42
  %39 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp45, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %41, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.44
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.44
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %44(%struct._object* %45)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %46 = load %struct._object*, %struct._object** %res, align 8
  %cmp56 = icmp eq %struct._object* %46, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %do.end.55
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.59:                                        ; preds = %do.end.55
  %47 = load i32, i32* %not_enough_bytes, align 4
  %tobool60 = icmp ne i32 %47, 0
  br i1 %tobool60, label %if.then.61, label %if.end.74

if.then.61:                                       ; preds = %if.end.59
  %48 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetString(%struct._object* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.51, i32 0, i32 0))
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %49 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp63, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %51, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.62
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.62
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %54(%struct._object* %55)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.74:                                        ; preds = %if.end.59
  %56 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %56, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.74, %do.end.73, %if.then.58, %if.then.41, %do.end, %if.then.13, %if.then.7, %if.then.3, %if.then
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_fromlist(%struct.arrayobject* %self, %struct._object* %list) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %list.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %old_size = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %list, %struct._object** %list.addr, align 8
  %0 = load %struct._object*, %struct._object** %list.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %list.addr, align 8
  %call = call i64 @PyList_Size(%struct._object* %4)
  store i64 %call, i64* %n, align 8
  %5 = load i64, i64* %n, align 8
  %cmp1 = icmp sgt i64 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.16

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %7 = bitcast %struct.arrayobject* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  store i64 %8, i64* %old_size, align 8
  %9 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %10 = load i64, i64* %old_size, align 8
  %11 = load i64, i64* %n, align 8
  %add = add i64 %10, %11
  %call3 = call i32 @array_resize(%struct.arrayobject* %9, i64 %add)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %n, align 8
  %cmp7 = icmp slt i64 %12, %13
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._object*, %struct._object** %list.addr, align 8
  %15 = load i64, i64* %i, align 8
  %call8 = call %struct._object* @PyList_GetItem(%struct._object* %14, i64 %15)
  store %struct._object* %call8, %struct._object** %v, align 8
  %16 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %16, i32 0, i32 3
  %17 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %setitem = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %17, i32 0, i32 3
  %18 = load i32 (%struct.arrayobject*, i64, %struct._object*)*, i32 (%struct.arrayobject*, i64, %struct._object*)** %setitem, align 8
  %19 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %20 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %21 = bitcast %struct.arrayobject* %20 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size9, align 8
  %23 = load i64, i64* %n, align 8
  %sub = sub i64 %22, %23
  %24 = load i64, i64* %i, align 8
  %add10 = add i64 %sub, %24
  %25 = load %struct._object*, %struct._object** %v, align 8
  %call11 = call i32 %18(%struct.arrayobject* %19, i64 %add10, %struct._object* %25)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %for.body
  %26 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %27 = load i64, i64* %old_size, align 8
  %call14 = call i32 @array_resize(%struct.arrayobject* %26, i64 %27)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %28 = load i64, i64* %i, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %if.end
  %29 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc17 = add i64 %29, 1
  store i64 %inc17, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13, %if.then.5, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_fromstring(%struct.arrayobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buffer = alloca %struct.bufferinfo, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8
  %call = call i32 @PyErr_WarnEx(%struct._object* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.53, i32 0, i32 0), i64 2)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), %struct.bufferinfo* %buffer)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %2 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %call3 = call %struct._object* @frombytes(%struct.arrayobject* %2, %struct.bufferinfo* %buffer)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_frombytes(%struct.arrayobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %buffer = alloca %struct.bufferinfo, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), %struct.bufferinfo* %buffer)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %call1 = call %struct._object* @frombytes(%struct.arrayobject* %1, %struct.bufferinfo* %buffer)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_fromunicode(%struct.arrayobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ustr = alloca i32*, align 8
  %n = alloca i64, align 8
  %typecode = alloca i8, align 1
  %old_size = alloca i64, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), i32** %ustr, i64* %n)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 3
  %2 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %typecode1 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %2, i32 0, i32 0
  %3 = load i8, i8* %typecode1, align 1
  store i8 %3, i8* %typecode, align 1
  %4 = load i8, i8* %typecode, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 117
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i64, i64* %n, align 8
  %cmp5 = icmp sgt i64 %6, 0
  br i1 %cmp5, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end.4
  %7 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %8 = bitcast %struct.arrayobject* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  store i64 %9, i64* %old_size, align 8
  %10 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %11 = load i64, i64* %old_size, align 8
  %12 = load i64, i64* %n, align 8
  %add = add i64 %11, %12
  %call8 = call i32 @array_resize(%struct.arrayobject* %10, i64 %add)
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.7
  %13 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %13, i32 0, i32 1
  %14 = load i8*, i8** %ob_item, align 8
  %15 = load i64, i64* %old_size, align 8
  %mul = mul i64 %15, 4
  %add.ptr = getelementptr i8, i8* %14, i64 %mul
  %16 = load i32*, i32** %ustr, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load i64, i64* %n, align 8
  %mul13 = mul i64 %18, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %17, i64 %mul13, i32 1, i1 false)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.12, %if.end.4
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.11, %if.then.3, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_index(%struct.arrayobject* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %v.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %selfi = alloca %struct._object*, align 8
  %cmp1 = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %2 = bitcast %struct.arrayobject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %5 = bitcast %struct.arrayobject* %4 to %struct._object*
  %6 = load i64, i64* %i, align 8
  %call = call %struct._object* @getarrayitem(%struct._object* %5, i64 %6)
  store %struct._object* %call, %struct._object** %selfi, align 8
  %7 = load %struct._object*, %struct._object** %selfi, align 8
  %cmp2 = icmp eq %struct._object* %7, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.body
  %8 = load %struct._object*, %struct._object** %selfi, align 8
  %9 = load %struct._object*, %struct._object** %v.addr, align 8
  %call3 = call i32 @PyObject_RichCompareBool(%struct._object* %8, %struct._object* %9, i32 2)
  store i32 %call3, i32* %cmp1, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %selfi, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %17 = load i32, i32* %cmp1, align 4
  %cmp7 = icmp sgt i32 %17, 0
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %do.end
  %18 = load i64, i64* %i, align 8
  %call9 = call %struct._object* @PyLong_FromLong(i64 %18)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

if.else.10:                                       ; preds = %do.end
  %19 = load i32, i32* %cmp1, align 4
  %cmp11 = icmp slt i32 %19, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.else.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.12, %if.then.8, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_insert(%struct.arrayobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i64* %i, %struct._object** %v)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %2 = load i64, i64* %i, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %call1 = call %struct._object* @ins(%struct.arrayobject* %1, i64 %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_pop(%struct.arrayobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %i, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i64* %i)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %2 = bitcast %struct.arrayobject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load i64, i64* %i, align 8
  %cmp3 = icmp slt i64 %5, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end.2
  %6 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %7 = bitcast %struct.arrayobject* %6 to %struct.PyVarObject*
  %ob_size5 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size5, align 8
  %9 = load i64, i64* %i, align 8
  %add = add i64 %9, %8
  store i64 %add, i64* %i, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end.2
  %10 = load i64, i64* %i, align 8
  %cmp7 = icmp slt i64 %10, 0
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %13 = bitcast %struct.arrayobject* %12 to %struct.PyVarObject*
  %ob_size8 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size8, align 8
  %cmp9 = icmp sge i64 %11, %14
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.6
  %15 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %16 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %17 = bitcast %struct.arrayobject* %16 to %struct._object*
  %18 = load i64, i64* %i, align 8
  %call12 = call %struct._object* @getarrayitem(%struct._object* %17, i64 %18)
  store %struct._object* %call12, %struct._object** %v, align 8
  %19 = load %struct._object*, %struct._object** %v, align 8
  %cmp13 = icmp eq %struct._object* %19, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %20 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %i, align 8
  %add16 = add i64 %22, 1
  %call17 = call i32 @array_ass_slice(%struct.arrayobject* %20, i64 %21, i64 %add16, %struct._object* null)
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.15
  br label %do.body

do.body:                                          ; preds = %if.then.19
  %23 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body
  br label %if.end.22

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.15
  %30 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %30, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %do.end, %if.then.14, %if.then.10, %if.then.1, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_reduce_ex(%struct.arrayobject* %array, %struct._object* %value) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %array.addr = alloca %struct.arrayobject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %array_str = alloca %struct._object*, align 8
  %typecode = alloca i32, align 4
  %mformat_code = alloca i32, align 4
  %protocol = alloca i64, align 8
  %array_module = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  %_py_decref_tmp108 = alloca %struct._object*, align 8
  store %struct.arrayobject* %array, %struct.arrayobject** %array.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %array.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %0, i32 0, i32 3
  %1 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %typecode1 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %1, i32 0, i32 0
  %2 = load i8, i8* %typecode1, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %typecode, align 4
  %3 = load %struct._object*, %struct._object** @array_reduce_ex.array_reconstructor, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %array_module, align 8
  %4 = load %struct._object*, %struct._object** %array_module, align 8
  %cmp3 = icmp eq %struct._object* %4, null
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %array_module, align 8
  %call6 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %5, %struct._Py_Identifier* @array_reduce_ex.PyId__array_reconstructor)
  store %struct._object* %call6, %struct._object** @array_reduce_ex.array_reconstructor, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %array_module, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._object*, %struct._object** @array_reduce_ex.array_reconstructor, align 8
  %cmp11 = icmp eq %struct._object* %13, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %14 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19
  %16 = load i64, i64* %tp_flags, align 8
  %and = and i64 %16, 16777216
  %cmp17 = icmp ne i64 %and, 0
  br i1 %cmp17, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.15
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.67, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %18 = load %struct._object*, %struct._object** %value.addr, align 8
  %call21 = call i64 @PyLong_AsLong(%struct._object* %18)
  store i64 %call21, i64* %protocol, align 8
  %19 = load i64, i64* %protocol, align 8
  %cmp22 = icmp eq i64 %19, -1
  br i1 %cmp22, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.20
  %call24 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call24, null
  br i1 %tobool, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true, %if.end.20
  %20 = load %struct.arrayobject*, %struct.arrayobject** %array.addr, align 8
  %21 = bitcast %struct.arrayobject* %20 to %struct._object*
  %call27 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %21, %struct._Py_Identifier* @array_reduce_ex.PyId___dict__)
  store %struct._object* %call27, %struct._object** %dict, align 8
  %22 = load %struct._object*, %struct._object** %dict, align 8
  %cmp28 = icmp eq %struct._object* %22, null
  br i1 %cmp28, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %if.end.26
  %23 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call31 = call i32 @PyErr_ExceptionMatches(%struct._object* %23)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.30
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %if.then.30
  call void @PyErr_Clear()
  store %struct._object* @_Py_NoneStruct, %struct._object** %dict, align 8
  %24 = load %struct._object*, %struct._object** %dict, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt35, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %ob_refcnt35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.34, %if.end.26
  %26 = load i32, i32* %typecode, align 4
  %conv37 = trunc i32 %26 to i8
  %call38 = call i32 @typecode_to_mformat_code(i8 signext %conv37)
  store i32 %call38, i32* %mformat_code, align 4
  %27 = load i32, i32* %mformat_code, align 4
  %cmp39 = icmp eq i32 %27, -1
  br i1 %cmp39, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.36
  %28 = load i64, i64* %protocol, align 8
  %cmp41 = icmp slt i64 %28, 3
  br i1 %cmp41, label %if.then.43, label %if.end.87

if.then.43:                                       ; preds = %lor.lhs.false, %if.end.36
  %29 = load %struct.arrayobject*, %struct.arrayobject** %array.addr, align 8
  %call44 = call %struct._object* @array_tolist(%struct.arrayobject* %29, %struct._object* null)
  store %struct._object* %call44, %struct._object** %list, align 8
  %30 = load %struct._object*, %struct._object** %list, align 8
  %cmp45 = icmp eq %struct._object* %30, null
  br i1 %cmp45, label %if.then.47, label %if.end.60

if.then.47:                                       ; preds = %if.then.43
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %31 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp49, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %33, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.48
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.48
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %36(%struct._object* %37)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.60:                                        ; preds = %if.then.43
  %38 = load %struct.arrayobject*, %struct.arrayobject** %array.addr, align 8
  %39 = bitcast %struct.arrayobject* %38 to %struct._object*
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %41 = load i32, i32* %typecode, align 4
  %42 = load %struct._object*, %struct._object** %list, align 8
  %43 = load %struct._object*, %struct._object** %dict, align 8
  %call62 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), %struct._typeobject* %40, i32 %41, %struct._object* %42, %struct._object* %43)
  store %struct._object* %call62, %struct._object** %result, align 8
  br label %do.body.63

do.body.63:                                       ; preds = %if.end.60
  %44 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp64, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt65, align 8
  %dec66 = add i64 %46, -1
  store i64 %dec66, i64* %ob_refcnt65, align 8
  %cmp67 = icmp ne i64 %dec66, 0
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.63
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.63
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  call void %49(%struct._object* %50)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %do.body.75

do.body.75:                                       ; preds = %do.end.74
  %51 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp76, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt77, align 8
  %dec78 = add i64 %53, -1
  store i64 %dec78, i64* %ob_refcnt77, align 8
  %cmp79 = icmp ne i64 %dec78, 0
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.75
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.75
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  call void %56(%struct._object* %57)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  %58 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %58, %struct._object** %retval
  br label %return

if.end.87:                                        ; preds = %lor.lhs.false
  %59 = load %struct.arrayobject*, %struct.arrayobject** %array.addr, align 8
  %call88 = call %struct._object* @array_tobytes(%struct.arrayobject* %59, %struct._object* null)
  store %struct._object* %call88, %struct._object** %array_str, align 8
  %60 = load %struct._object*, %struct._object** %array_str, align 8
  %cmp89 = icmp eq %struct._object* %60, null
  br i1 %cmp89, label %if.then.91, label %if.end.104

if.then.91:                                       ; preds = %if.end.87
  br label %do.body.92

do.body.92:                                       ; preds = %if.then.91
  %61 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp93, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt94, align 8
  %dec95 = add i64 %63, -1
  store i64 %dec95, i64* %ob_refcnt94, align 8
  %cmp96 = icmp ne i64 %dec95, 0
  br i1 %cmp96, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.92
  br label %if.end.102

if.else.99:                                       ; preds = %do.body.92
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  call void %66(%struct._object* %67)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.104:                                       ; preds = %if.end.87
  %68 = load %struct._object*, %struct._object** @array_reduce_ex.array_reconstructor, align 8
  %69 = load %struct.arrayobject*, %struct.arrayobject** %array.addr, align 8
  %70 = bitcast %struct.arrayobject* %69 to %struct._object*
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %72 = load i32, i32* %typecode, align 4
  %73 = load i32, i32* %mformat_code, align 4
  %74 = load %struct._object*, %struct._object** %array_str, align 8
  %75 = load %struct._object*, %struct._object** %dict, align 8
  %call106 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), %struct._object* %68, %struct._typeobject* %71, i32 %72, i32 %73, %struct._object* %74, %struct._object* %75)
  store %struct._object* %call106, %struct._object** %result, align 8
  br label %do.body.107

do.body.107:                                      ; preds = %if.end.104
  %76 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp108, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt109, align 8
  %dec110 = add i64 %78, -1
  store i64 %dec110, i64* %ob_refcnt109, align 8
  %cmp111 = icmp ne i64 %dec110, 0
  br i1 %cmp111, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %do.body.107
  br label %if.end.117

if.else.114:                                      ; preds = %do.body.107
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  call void %81(%struct._object* %82)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.114, %if.then.113
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  %83 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %83, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.118, %do.end.103, %do.end.86, %do.end.59, %if.then.33, %if.then.25, %if.then.19, %if.then.13, %if.then.5
  %84 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %84
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_remove(%struct.arrayobject* %self, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %v.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %selfi = alloca %struct._object*, align 8
  %cmp2 = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %2 = bitcast %struct.arrayobject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %conv, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %5 = bitcast %struct.arrayobject* %4 to %struct._object*
  %6 = load i32, i32* %i, align 4
  %conv3 = sext i32 %6 to i64
  %call = call %struct._object* @getarrayitem(%struct._object* %5, i64 %conv3)
  store %struct._object* %call, %struct._object** %selfi, align 8
  %7 = load %struct._object*, %struct._object** %selfi, align 8
  %cmp4 = icmp eq %struct._object* %7, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.body
  %8 = load %struct._object*, %struct._object** %selfi, align 8
  %9 = load %struct._object*, %struct._object** %v.addr, align 8
  %call6 = call i32 @PyObject_RichCompareBool(%struct._object* %8, %struct._object* %9, i32 2)
  store i32 %call6, i32* %cmp2, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %selfi, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.9, label %if.else

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
  %17 = load i32, i32* %cmp2, align 4
  %cmp11 = icmp sgt i32 %17, 0
  br i1 %cmp11, label %if.then.13, label %if.else.21

if.then.13:                                       ; preds = %do.end
  %18 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %19 = load i32, i32* %i, align 4
  %conv14 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %add = add i32 %20, 1
  %conv15 = sext i32 %add to i64
  %call16 = call i32 @array_ass_slice(%struct.arrayobject* %18, i64 %conv14, i64 %conv15, %struct._object* null)
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.then.13
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else.21:                                       ; preds = %do.end
  %22 = load i32, i32* %cmp2, align 4
  %cmp22 = icmp slt i32 %22, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else.21
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.else.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %23 = load i32, i32* %i, align 4
  %inc27 = add i32 %23, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.24, %if.end.20, %if.then.19, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_reverse(%struct.arrayobject* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct.arrayobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %itemsize = alloca i64, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %tmp = alloca [256 x i8], align 16
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %0, i32 0, i32 3
  %1 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %itemsize1 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %1, i32 0, i32 1
  %2 = load i32, i32* %itemsize1, align 4
  %conv = sext i32 %2 to i64
  store i64 %conv, i64* %itemsize, align 8
  %3 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %4 = bitcast %struct.arrayobject* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %cmp = icmp sgt i64 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %ob_item, align 8
  store i8* %7, i8** %p, align 8
  %8 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item3 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %ob_item3, align 8
  %10 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %11 = bitcast %struct.arrayobject* %10 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size4, align 8
  %sub = sub i64 %12, 1
  %13 = load i64, i64* %itemsize, align 8
  %mul = mul i64 %sub, %13
  %add.ptr = getelementptr i8, i8* %9, i64 %mul
  store i8* %add.ptr, i8** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i8*, i8** %p, align 8
  %15 = load i8*, i8** %q, align 8
  %cmp5 = icmp ult i8* %14, %15
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast [256 x i8]* %tmp to i8*
  %17 = load i8*, i8** %p, align 8
  %18 = load i64, i64* %itemsize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 %18, i32 1, i1 false)
  %19 = load i8*, i8** %p, align 8
  %20 = load i8*, i8** %q, align 8
  %21 = load i64, i64* %itemsize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 %21, i32 1, i1 false)
  %22 = load i8*, i8** %q, align 8
  %23 = bitcast [256 x i8]* %tmp to i8*
  %24 = load i64, i64* %itemsize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 %24, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i64, i64* %itemsize, align 8
  %26 = load i8*, i8** %p, align 8
  %add.ptr7 = getelementptr i8, i8* %26, i64 %25
  store i8* %add.ptr7, i8** %p, align 8
  %27 = load i64, i64* %itemsize, align 8
  %28 = load i8*, i8** %q, align 8
  %idx.neg = sub i64 0, %27
  %add.ptr8 = getelementptr i8, i8* %28, i64 %idx.neg
  store i8* %add.ptr8, i8** %q, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %29 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_tofile(%struct.arrayobject* %self, %struct._object* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %f.addr = alloca %struct._object*, align 8
  %nbytes = alloca i64, align 8
  %BLOCKSIZE = alloca i32, align 4
  %nblocks = alloca i64, align 8
  %i = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %size = alloca i64, align 8
  %bytes = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %1 = bitcast %struct.arrayobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %3 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %3, i32 0, i32 3
  %4 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %4, i32 0, i32 1
  %5 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %2, %conv
  store i64 %mul, i64* %nbytes, align 8
  store i32 65536, i32* %BLOCKSIZE, align 4
  %6 = load i64, i64* %nbytes, align 8
  %7 = load i32, i32* %BLOCKSIZE, align 4
  %conv1 = sext i32 %7 to i64
  %add = add i64 %6, %conv1
  %sub = sub i64 %add, 1
  %8 = load i32, i32* %BLOCKSIZE, align 4
  %conv2 = sext i32 %8 to i64
  %div = sdiv i64 %sub, %conv2
  store i64 %div, i64* %nblocks, align 8
  %9 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %10 = bitcast %struct.arrayobject* %9 to %struct.PyVarObject*
  %ob_size3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size3, align 8
  %cmp = icmp eq i64 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %nblocks, align 8
  %cmp5 = icmp slt i64 %12, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %14, i32 0, i32 1
  %15 = load i8*, i8** %ob_item, align 8
  %16 = load i64, i64* %i, align 8
  %17 = load i32, i32* %BLOCKSIZE, align 4
  %conv7 = sext i32 %17 to i64
  %mul8 = mul i64 %16, %conv7
  %add.ptr = getelementptr i8, i8* %15, i64 %mul8
  store i8* %add.ptr, i8** %ptr, align 8
  %18 = load i32, i32* %BLOCKSIZE, align 4
  %conv9 = sext i32 %18 to i64
  store i64 %conv9, i64* %size, align 8
  %19 = load i64, i64* %i, align 8
  %20 = load i32, i32* %BLOCKSIZE, align 4
  %conv10 = sext i32 %20 to i64
  %mul11 = mul i64 %19, %conv10
  %21 = load i64, i64* %size, align 8
  %add12 = add i64 %mul11, %21
  %22 = load i64, i64* %nbytes, align 8
  %cmp13 = icmp sgt i64 %add12, %22
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %for.body
  %23 = load i64, i64* %nbytes, align 8
  %24 = load i64, i64* %i, align 8
  %25 = load i32, i32* %BLOCKSIZE, align 4
  %conv16 = sext i32 %25 to i64
  %mul17 = mul i64 %24, %conv16
  %sub18 = sub i64 %23, %mul17
  store i64 %sub18, i64* %size, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %for.body
  %26 = load i8*, i8** %ptr, align 8
  %27 = load i64, i64* %size, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %26, i64 %27)
  store %struct._object* %call, %struct._object** %bytes, align 8
  %28 = load %struct._object*, %struct._object** %bytes, align 8
  %cmp20 = icmp eq %struct._object* %28, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %29 = load %struct._object*, %struct._object** %f.addr, align 8
  %30 = load %struct._object*, %struct._object** %bytes, align 8
  %call24 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %29, %struct._Py_Identifier* @array_tofile.PyId_write, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0), %struct._object* %30)
  store %struct._object* %call24, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.23
  %31 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %33, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %do.body
  br label %if.end.28

if.else:                                          ; preds = %do.body
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %36(%struct._object* %37)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.28
  %38 = load %struct._object*, %struct._object** %res, align 8
  %cmp29 = icmp eq %struct._object* %38, null
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %do.end
  br label %do.body.33

do.body.33:                                       ; preds = %if.end.32
  %39 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp34, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %41, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.33
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.33
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %44(%struct._object* %45)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %for.inc

for.inc:                                          ; preds = %do.end.44
  %46 = load i64, i64* %i, align 8
  %inc = add i64 %46, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %done

done:                                             ; preds = %for.end, %if.then
  %47 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc45 = add i64 %47, 1
  store i64 %inc45, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %done, %if.then.31, %if.then.22
  %48 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %48
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_tostring(%struct.arrayobject* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8
  %call = call i32 @PyErr_WarnEx(%struct._object* %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.77, i32 0, i32 0), i64 2)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %2 = load %struct._object*, %struct._object** %unused.addr, align 8
  %call1 = call %struct._object* @array_tobytes(%struct.arrayobject* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_tobytes(%struct.arrayobject* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %1 = bitcast %struct.arrayobject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %3 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %3, i32 0, i32 3
  %4 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %4, i32 0, i32 1
  %5 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %5 to i64
  %div = sdiv i64 9223372036854775807, %conv
  %cmp = icmp sle i64 %2, %div
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %ob_item, align 8
  %8 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %9 = bitcast %struct.arrayobject* %8 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size2, align 8
  %11 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr3 = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %11, i32 0, i32 3
  %12 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr3, align 8
  %itemsize4 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %12, i32 0, i32 1
  %13 = load i32, i32* %itemsize4, align 4
  %conv5 = sext i32 %13 to i64
  %mul = mul i64 %10, %conv5
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %7, i64 %mul)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call6 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_sizeof(%struct.arrayobject* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct.arrayobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %res = alloca i64, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %allocated = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %0, i32 0, i32 2
  %1 = load i64, i64* %allocated, align 8
  %2 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %2, i32 0, i32 3
  %3 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %3, i32 0, i32 1
  %4 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %1, %conv
  %add = add i64 64, %mul
  store i64 %add, i64* %res, align 8
  %5 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %5)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ins(%struct.arrayobject* %self, i64 %where, %struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %where.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store i64 %where, i64* %where.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %1 = load i64, i64* %where.addr, align 8
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @ins1(%struct.arrayobject* %0, i64 %1, %struct._object* %2)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyLong_FromVoidPtr(i8*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

declare i64 @PyList_Size(%struct._object*) #1

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #1

declare i32 @PyErr_WarnEx(%struct._object*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @frombytes(%struct.arrayobject* %self, %struct.bufferinfo* %buffer) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.arrayobject*, align 8
  %buffer.addr = alloca %struct.bufferinfo*, align 8
  %itemsize = alloca i32, align 4
  %n = alloca i64, align 8
  %old_size = alloca i64, align 8
  store %struct.arrayobject* %self, %struct.arrayobject** %self.addr, align 8
  store %struct.bufferinfo* %buffer, %struct.bufferinfo** %buffer.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %0, i32 0, i32 3
  %1 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %itemsize1 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %1, i32 0, i32 1
  %2 = load i32, i32* %itemsize1, align 4
  store i32 %2, i32* %itemsize, align 4
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %buffer.addr, align 8
  %itemsize2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 3
  %4 = load i64, i64* %itemsize2, align 8
  %cmp = icmp ne i64 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %buffer.addr, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %5)
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 2
  %8 = load i64, i64* %len, align 8
  store i64 %8, i64* %n, align 8
  %9 = load i64, i64* %n, align 8
  %10 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %10 to i64
  %rem = srem i64 %9, %conv
  %cmp3 = icmp ne i64 %rem, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %buffer.addr, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %11)
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.56, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %13 = load i64, i64* %n, align 8
  %14 = load i32, i32* %itemsize, align 4
  %conv7 = sext i32 %14 to i64
  %div = sdiv i64 %13, %conv7
  store i64 %div, i64* %n, align 8
  %15 = load i64, i64* %n, align 8
  %cmp8 = icmp sgt i64 %15, 0
  br i1 %cmp8, label %if.then.10, label %if.end.28

if.then.10:                                       ; preds = %if.end.6
  %16 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %17 = bitcast %struct.arrayobject* %16 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size, align 8
  store i64 %18, i64* %old_size, align 8
  %19 = load i64, i64* %n, align 8
  %20 = load i64, i64* %old_size, align 8
  %sub = sub i64 9223372036854775807, %20
  %cmp11 = icmp sgt i64 %19, %sub
  br i1 %cmp11, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.10
  %21 = load i64, i64* %old_size, align 8
  %22 = load i64, i64* %n, align 8
  %add = add i64 %21, %22
  %23 = load i32, i32* %itemsize, align 4
  %conv13 = sext i32 %23 to i64
  %div14 = sdiv i64 9223372036854775807, %conv13
  %cmp15 = icmp sgt i64 %add, %div14
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.then.10
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %buffer.addr, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %24)
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  %25 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %26 = load i64, i64* %old_size, align 8
  %27 = load i64, i64* %n, align 8
  %add19 = add i64 %26, %27
  %call20 = call i32 @array_resize(%struct.arrayobject* %25, i64 %add19)
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %buffer.addr, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %28)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %29 = load %struct.arrayobject*, %struct.arrayobject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %29, i32 0, i32 1
  %30 = load i8*, i8** %ob_item, align 8
  %31 = load i64, i64* %old_size, align 8
  %32 = load i32, i32* %itemsize, align 4
  %conv25 = sext i32 %32 to i64
  %mul = mul i64 %31, %conv25
  %add.ptr = getelementptr i8, i8* %30, i64 %mul
  %33 = load %struct.bufferinfo*, %struct.bufferinfo** %buffer.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %33, i32 0, i32 0
  %34 = load i8*, i8** %buf, align 8
  %35 = load i64, i64* %n, align 8
  %36 = load i32, i32* %itemsize, align 4
  %conv26 = sext i32 %36 to i64
  %mul27 = mul i64 %35, %conv26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %34, i64 %mul27, i32 1, i1 false)
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.24, %if.end.6
  %37 = load %struct.bufferinfo*, %struct.bufferinfo** %buffer.addr, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %37)
  %38 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.23, %if.then.17, %if.then.5, %if.then
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare %struct._object* @PyImport_ImportModule(i8*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define internal i32 @typecode_to_mformat_code(i8 signext %typecode) #0 {
entry:
  %retval = alloca i32, align 4
  %typecode.addr = alloca i8, align 1
  %is_big_endian = alloca i32, align 4
  %intsize = alloca i64, align 8
  %is_signed = alloca i32, align 4
  %y = alloca float, align 4
  %x = alloca double, align 8
  store i8 %typecode, i8* %typecode.addr, align 1
  store i32 0, i32* %is_big_endian, align 4
  %0 = load i8, i8* %typecode.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 98, label %sw.bb
    i32 66, label %sw.bb.1
    i32 117, label %sw.bb.2
    i32 102, label %sw.bb.3
    i32 100, label %sw.bb.10
    i32 104, label %sw.bb.21
    i32 72, label %sw.bb.22
    i32 105, label %sw.bb.23
    i32 73, label %sw.bb.24
    i32 108, label %sw.bb.25
    i32 76, label %sw.bb.26
    i32 113, label %sw.bb.27
    i32 81, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 20, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store float 0x416FE02040000000, float* %y, align 4
  %1 = bitcast float* %y to i8*
  %call = call i32 @memcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i64 4) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  store i32 15, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.3
  %2 = bitcast float* %y to i8*
  %call5 = call i32 @memcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i64 4) #4
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 14, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store double 0x433FFF0102030405, double* %x, align 8
  %3 = bitcast double* %x to i8*
  %call11 = call i32 @memcmp(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i64 8) #4
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.bb.10
  store i32 17, i32* %retval
  br label %return

if.end.15:                                        ; preds = %sw.bb.10
  %4 = bitcast double* %x to i8*
  %call16 = call i32 @memcmp(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i64 8) #4
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  store i32 16, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  store i32 -1, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  store i64 2, i64* %intsize, align 8
  store i32 1, i32* %is_signed, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  store i64 2, i64* %intsize, align 8
  store i32 0, i32* %is_signed, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  store i64 4, i64* %intsize, align 8
  store i32 1, i32* %is_signed, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  store i64 4, i64* %intsize, align 8
  store i32 0, i32* %is_signed, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  store i64 8, i64* %intsize, align 8
  store i32 1, i32* %is_signed, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  store i64 8, i64* %intsize, align 8
  store i32 0, i32* %is_signed, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  store i64 8, i64* %intsize, align 8
  store i32 1, i32* %is_signed, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  store i64 8, i64* %intsize, align 8
  store i32 0, i32* %is_signed, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21
  %5 = load i64, i64* %intsize, align 8
  switch i64 %5, label %sw.default.36 [
    i64 2, label %sw.bb.29
    i64 4, label %sw.bb.30
    i64 8, label %sw.bb.33
  ]

sw.bb.29:                                         ; preds = %sw.epilog
  %6 = load i32, i32* %is_signed, align 4
  %mul = mul i32 2, %6
  %add = add i32 2, %mul
  store i32 %add, i32* %retval
  br label %return

sw.bb.30:                                         ; preds = %sw.epilog
  %7 = load i32, i32* %is_signed, align 4
  %mul31 = mul i32 2, %7
  %add32 = add i32 6, %mul31
  store i32 %add32, i32* %retval
  br label %return

sw.bb.33:                                         ; preds = %sw.epilog
  %8 = load i32, i32* %is_signed, align 4
  %mul34 = mul i32 2, %8
  %add35 = add i32 10, %mul34
  store i32 %add35, i32* %retval
  br label %return

sw.default.36:                                    ; preds = %sw.epilog
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default.36, %sw.bb.33, %sw.bb.30, %sw.bb.29, %sw.default, %if.end.20, %if.then.19, %if.then.14, %if.end.9, %if.then.8, %if.then, %sw.bb.2, %sw.bb.1, %sw.bb
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_get_typecode(%struct.arrayobject* %a, i8* %closure) #0 {
entry:
  %a.addr = alloca %struct.arrayobject*, align 8
  %closure.addr = alloca i8*, align 8
  %typecode = alloca i8, align 1
  store %struct.arrayobject* %a, %struct.arrayobject** %a.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %0, i32 0, i32 3
  %1 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %typecode1 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %1, i32 0, i32 0
  %2 = load i8, i8* %typecode1, align 1
  store i8 %2, i8* %typecode, align 1
  %3 = load i8, i8* %typecode, align 1
  %conv = sext i8 %3 to i32
  %call = call %struct._object* @PyUnicode_FromOrdinal(i32 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_get_itemsize(%struct.arrayobject* %a, i8* %closure) #0 {
entry:
  %a.addr = alloca %struct.arrayobject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.arrayobject* %a, %struct.arrayobject** %a.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.arrayobject*, %struct.arrayobject** %a.addr, align 8
  %ob_descr = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %0, i32 0, i32 3
  %1 = load %struct.arraydescr*, %struct.arraydescr** %ob_descr, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %1, i32 0, i32 1
  %2 = load i32, i32* %itemsize, align 4
  %conv = sext i32 %2 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

declare %struct._object* @PyUnicode_FromOrdinal(i32) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @setarrayitem(%struct._object* %a, i64 %i, %struct._object* %v) #0 {
entry:
  %a.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.arrayobject*
  %2 = load i64, i64* %i.addr, align 8
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 @array_ass_item(%struct.arrayobject* %1, i64 %2, %struct._object* %3)
  ret i32 %call
}

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare i32* @PyUnicode_AsUnicode(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @arrayiter_dealloc(%struct.arrayiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.arrayiterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.arrayiterobject* %it, %struct.arrayiterobject** %it.addr, align 8
  %0 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %1 = bitcast %struct.arrayiterobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %ao = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %2, i32 0, i32 2
  %3 = load %struct.arrayobject*, %struct.arrayobject** %ao, align 8
  %4 = bitcast %struct.arrayobject* %3 to %struct._object*
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %13 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %14 = bitcast %struct.arrayiterobject* %13 to i8*
  call void @PyObject_GC_Del(i8* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @arrayiter_traverse(%struct.arrayiterobject* %it, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.arrayiterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.arrayiterobject* %it, %struct.arrayiterobject** %it.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %ao = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %0, i32 0, i32 2
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ao, align 8
  %tobool = icmp ne %struct.arrayobject* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %ao1 = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %3, i32 0, i32 2
  %4 = load %struct.arrayobject*, %struct.arrayobject** %ao1, align 8
  %5 = bitcast %struct.arrayobject* %4 to %struct._object*
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
define internal %struct._object* @arrayiter_next(%struct.arrayiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.arrayiterobject*, align 8
  store %struct.arrayiterobject* %it, %struct.arrayiterobject** %it.addr, align 8
  %0 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %index = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %0, i32 0, i32 1
  %1 = load i64, i64* %index, align 8
  %2 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %ao = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %2, i32 0, i32 2
  %3 = load %struct.arrayobject*, %struct.arrayobject** %ao, align 8
  %4 = bitcast %struct.arrayobject* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %1, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %getitem = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %6, i32 0, i32 3
  %7 = load %struct._object* (%struct.arrayobject*, i64)*, %struct._object* (%struct.arrayobject*, i64)** %getitem, align 8
  %8 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %ao1 = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %8, i32 0, i32 2
  %9 = load %struct.arrayobject*, %struct.arrayobject** %ao1, align 8
  %10 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %index2 = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %10, i32 0, i32 1
  %11 = load i64, i64* %index2, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %index2, align 8
  %call = call %struct._object* %7(%struct.arrayobject* %9, i64 %11)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare void @PyObject_GC_UnTrack(i8*) #1

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @arrayiter_reduce(%struct.arrayiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.arrayiterobject*, align 8
  store %struct.arrayiterobject* %it, %struct.arrayiterobject** %it.addr, align 8
  %call = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0))
  %0 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %ao = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %0, i32 0, i32 2
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ao, align 8
  %2 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %index = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %2, i32 0, i32 1
  %3 = load i64, i64* %index, align 8
  %call1 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), %struct._object* %call, %struct.arrayobject* %1, i64 %3)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @arrayiter_setstate(%struct.arrayiterobject* %it, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.arrayiterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  store %struct.arrayiterobject* %it, %struct.arrayiterobject** %it.addr, align 8
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
  %2 = load i64, i64* %index, align 8
  %cmp2 = icmp slt i64 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i64 0, i64* %index, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %3 = load i64, i64* %index, align 8
  %4 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %ao = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %4, i32 0, i32 2
  %5 = load %struct.arrayobject*, %struct.arrayobject** %ao, align 8
  %6 = bitcast %struct.arrayobject* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %cmp4 = icmp sgt i64 %3, %7
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.else
  %8 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %ao6 = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %8, i32 0, i32 2
  %9 = load %struct.arrayobject*, %struct.arrayobject** %ao6, align 8
  %10 = bitcast %struct.arrayobject* %9 to %struct.PyVarObject*
  %ob_size7 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size7, align 8
  store i64 %11, i64* %index, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.3
  %12 = load i64, i64* %index, align 8
  %13 = load %struct.arrayiterobject*, %struct.arrayiterobject** %it.addr, align 8
  %index10 = getelementptr inbounds %struct.arrayiterobject, %struct.arrayiterobject* %13, i32 0, i32 1
  store i64 %12, i64* %index10, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare %struct._object* @_PyObject_GetBuiltin(i8*) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @array_reconstructor(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arraytype = alloca %struct._typeobject*, align 8
  %items = alloca %struct._object*, align 8
  %converted_items = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %typecode = alloca i32, align 4
  %mformat_code = alloca i32, align 4
  %descr = alloca %struct.arraydescr*, align 8
  %i = alloca i32, align 4
  %le = alloca i32, align 4
  %itemcount = alloca i64, align 8
  %memstr = alloca i8*, align 8
  %pyfloat = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %i88 = alloca i32, align 4
  %le89 = alloca i32, align 4
  %itemcount93 = alloca i64, align 8
  %memstr96 = alloca i8*, align 8
  %pyfloat109 = alloca %struct._object*, align 8
  %_py_decref_tmp119 = alloca %struct._object*, align 8
  %byteorder = alloca i32, align 4
  %byteorder150 = alloca i32, align 4
  %i163 = alloca i32, align 4
  %mf_descr = alloca %struct.mformatdescr, align 8
  %itemcount166 = alloca i64, align 8
  %memstr170 = alloca i8*, align 8
  %descr173 = alloca %struct.arraydescr*, align 8
  %pylong = alloca %struct._object*, align 8
  %_py_decref_tmp218 = alloca %struct._object*, align 8
  %_py_decref_tmp241 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.93, i32 0, i32 0), %struct._typeobject** %arraytype, i32* %typecode, i32* %mformat_code, %struct._object** %items)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._typeobject*, %struct._typeobject** %arraytype, align 8
  %2 = bitcast %struct._typeobject* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 2147483648
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.4, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %6 = load %struct._typeobject*, %struct._typeobject** %arraytype, align 8
  %7 = bitcast %struct._typeobject* %6 to %struct._object*
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %tp_name, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.94, i32 0, i32 0), i8* %9)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load %struct._typeobject*, %struct._typeobject** %arraytype, align 8
  %call5 = call i32 @PyType_IsSubtype(%struct._typeobject* %10, %struct._typeobject* @Arraytype)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %12 = load %struct._typeobject*, %struct._typeobject** %arraytype, align 8
  %tp_name8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %tp_name8, align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Arraytype, i32 0, i32 1), align 8
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.95, i32 0, i32 0), i8* %13, i8* %14)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.4
  store %struct.arraydescr* getelementptr inbounds ([14 x %struct.arraydescr], [14 x %struct.arraydescr]* @descriptors, i32 0, i32 0), %struct.arraydescr** %descr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %15 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %typecode11 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %15, i32 0, i32 0
  %16 = load i8, i8* %typecode11, align 1
  %conv = sext i8 %16 to i32
  %cmp12 = icmp ne i32 %conv, 0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %typecode14 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %17, i32 0, i32 0
  %18 = load i8, i8* %typecode14, align 1
  %conv15 = sext i8 %18 to i32
  %19 = load i32, i32* %typecode, align 4
  %cmp16 = icmp eq i32 %conv15, %19
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  br label %for.end

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %20 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %incdec.ptr = getelementptr %struct.arraydescr, %struct.arraydescr* %20, i32 1
  store %struct.arraydescr* %incdec.ptr, %struct.arraydescr** %descr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.18, %for.cond
  %21 = load %struct.arraydescr*, %struct.arraydescr** %descr, align 8
  %typecode20 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %21, i32 0, i32 0
  %22 = load i8, i8* %typecode20, align 1
  %conv21 = sext i8 %22 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.end
  %23 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.96, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %for.end
  %24 = load i32, i32* %mformat_code, align 4
  %cmp26 = icmp slt i32 %24, 0
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %25 = load i32, i32* %mformat_code, align 4
  %cmp28 = icmp sgt i32 %25, 21
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false, %if.end.25
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.97, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false
  %27 = load %struct._object*, %struct._object** %items, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_flags33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 19
  %29 = load i64, i64* %tp_flags33, align 8
  %and34 = and i64 %29, 134217728
  %cmp35 = icmp ne i64 %and34, 0
  br i1 %cmp35, label %if.end.41, label %if.then.37

if.then.37:                                       ; preds = %if.end.31
  %30 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %31 = load %struct._object*, %struct._object** %items, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_name39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 1
  %33 = load i8*, i8** %tp_name39, align 8
  %call40 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.98, i32 0, i32 0), i8* %33)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.31
  %34 = load i32, i32* %mformat_code, align 4
  %35 = load i32, i32* %typecode, align 4
  %conv42 = trunc i32 %35 to i8
  %call43 = call i32 @typecode_to_mformat_code(i8 signext %conv42)
  %cmp44 = icmp eq i32 %34, %call43
  br i1 %cmp44, label %if.then.49, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.end.41
  %36 = load i32, i32* %mformat_code, align 4
  %cmp47 = icmp eq i32 %36, -1
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %lor.lhs.false.46, %if.end.41
  %37 = load %struct._typeobject*, %struct._typeobject** %arraytype, align 8
  %38 = load i32, i32* %typecode, align 4
  %conv50 = trunc i32 %38 to i8
  %39 = load %struct._object*, %struct._object** %items, align 8
  %call51 = call %struct._object* @make_array(%struct._typeobject* %37, i8 signext %conv50, %struct._object* %39)
  store %struct._object* %call51, %struct._object** %retval
  br label %return

if.end.52:                                        ; preds = %lor.lhs.false.46
  %40 = load %struct._object*, %struct._object** %items, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %41, i32 0, i32 1
  %42 = load i64, i64* %ob_size, align 8
  %43 = load i32, i32* %mformat_code, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx = getelementptr [22 x %struct.mformatdescr], [22 x %struct.mformatdescr]* @mformat_descriptors, i32 0, i64 %idxprom
  %size = getelementptr inbounds %struct.mformatdescr, %struct.mformatdescr* %arrayidx, i32 0, i32 0
  %44 = load i64, i64* %size, align 8
  %rem = urem i64 %42, %44
  %cmp53 = icmp ne i64 %rem, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  %45 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.56, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.56:                                        ; preds = %if.end.52
  %46 = load i32, i32* %mformat_code, align 4
  switch i32 %46, label %sw.default [
    i32 14, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb.87
    i32 17, label %sw.bb.87
    i32 18, label %sw.bb.137
    i32 19, label %sw.bb.137
    i32 20, label %sw.bb.149
    i32 21, label %sw.bb.149
    i32 0, label %sw.bb.162
    i32 1, label %sw.bb.162
    i32 2, label %sw.bb.162
    i32 3, label %sw.bb.162
    i32 4, label %sw.bb.162
    i32 5, label %sw.bb.162
    i32 6, label %sw.bb.162
    i32 7, label %sw.bb.162
    i32 8, label %sw.bb.162
    i32 9, label %sw.bb.162
    i32 10, label %sw.bb.162
    i32 11, label %sw.bb.162
    i32 12, label %sw.bb.162
    i32 13, label %sw.bb.162
    i32 -1, label %sw.bb.236
  ]

sw.bb:                                            ; preds = %if.end.56, %if.end.56
  %47 = load i32, i32* %mformat_code, align 4
  %cmp57 = icmp eq i32 %47, 14
  %cond = select i1 %cmp57, i32 1, i32 0
  store i32 %cond, i32* %le, align 4
  %48 = load %struct._object*, %struct._object** %items, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyVarObject*
  %ob_size59 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %49, i32 0, i32 1
  %50 = load i64, i64* %ob_size59, align 8
  %div = sdiv i64 %50, 4
  store i64 %div, i64* %itemcount, align 8
  %51 = load %struct._object*, %struct._object** %items, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %52, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %memstr, align 8
  %53 = load i64, i64* %itemcount, align 8
  %call60 = call %struct._object* @PyList_New(i64 %53)
  store %struct._object* %call60, %struct._object** %converted_items, align 8
  %54 = load %struct._object*, %struct._object** %converted_items, align 8
  %cmp61 = icmp eq %struct._object* %54, null
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.64:                                        ; preds = %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.85, %if.end.64
  %55 = load i32, i32* %i, align 4
  %conv66 = sext i32 %55 to i64
  %56 = load i64, i64* %itemcount, align 8
  %cmp67 = icmp slt i64 %conv66, %56
  br i1 %cmp67, label %for.body.69, label %for.end.86

for.body.69:                                      ; preds = %for.cond.65
  %57 = load i32, i32* %i, align 4
  %mul = mul i32 %57, 4
  %idxprom70 = sext i32 %mul to i64
  %58 = load i8*, i8** %memstr, align 8
  %arrayidx71 = getelementptr i8, i8* %58, i64 %idxprom70
  %59 = load i32, i32* %le, align 4
  %call72 = call double @_PyFloat_Unpack4(i8* %arrayidx71, i32 %59)
  %call73 = call %struct._object* @PyFloat_FromDouble(double %call72)
  store %struct._object* %call73, %struct._object** %pyfloat, align 8
  %60 = load %struct._object*, %struct._object** %pyfloat, align 8
  %cmp74 = icmp eq %struct._object* %60, null
  br i1 %cmp74, label %if.then.76, label %if.end.82

if.then.76:                                       ; preds = %for.body.69
  br label %do.body

do.body:                                          ; preds = %if.then.76
  %61 = load %struct._object*, %struct._object** %converted_items, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %63, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp77 = icmp ne i64 %dec, 0
  br i1 %cmp77, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %do.body
  br label %if.end.81

if.else:                                          ; preds = %do.body
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %66(%struct._object* %67)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.79
  br label %do.end

do.end:                                           ; preds = %if.end.81
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.82:                                        ; preds = %for.body.69
  %68 = load %struct._object*, %struct._object** %pyfloat, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %69 to i64
  %70 = load %struct._object*, %struct._object** %converted_items, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %71, i32 0, i32 1
  %72 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx84 = getelementptr %struct._object*, %struct._object** %72, i64 %idxprom83
  store %struct._object* %68, %struct._object** %arrayidx84, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.82
  %73 = load i32, i32* %i, align 4
  %inc = add i32 %73, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.65

for.end.86:                                       ; preds = %for.cond.65
  br label %sw.epilog

sw.bb.87:                                         ; preds = %if.end.56, %if.end.56
  %74 = load i32, i32* %mformat_code, align 4
  %cmp90 = icmp eq i32 %74, 16
  %cond92 = select i1 %cmp90, i32 1, i32 0
  store i32 %cond92, i32* %le89, align 4
  %75 = load %struct._object*, %struct._object** %items, align 8
  %76 = bitcast %struct._object* %75 to %struct.PyVarObject*
  %ob_size94 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %76, i32 0, i32 1
  %77 = load i64, i64* %ob_size94, align 8
  %div95 = sdiv i64 %77, 8
  store i64 %div95, i64* %itemcount93, align 8
  %78 = load %struct._object*, %struct._object** %items, align 8
  %79 = bitcast %struct._object* %78 to %struct.PyBytesObject*
  %ob_sval97 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %79, i32 0, i32 2
  %arraydecay98 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval97, i32 0, i32 0
  store i8* %arraydecay98, i8** %memstr96, align 8
  %80 = load i64, i64* %itemcount93, align 8
  %call99 = call %struct._object* @PyList_New(i64 %80)
  store %struct._object* %call99, %struct._object** %converted_items, align 8
  %81 = load %struct._object*, %struct._object** %converted_items, align 8
  %cmp100 = icmp eq %struct._object* %81, null
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %sw.bb.87
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.103:                                       ; preds = %sw.bb.87
  store i32 0, i32* %i88, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.134, %if.end.103
  %82 = load i32, i32* %i88, align 4
  %conv105 = sext i32 %82 to i64
  %83 = load i64, i64* %itemcount93, align 8
  %cmp106 = icmp slt i64 %conv105, %83
  br i1 %cmp106, label %for.body.108, label %for.end.136

for.body.108:                                     ; preds = %for.cond.104
  %84 = load i32, i32* %i88, align 4
  %mul110 = mul i32 %84, 8
  %idxprom111 = sext i32 %mul110 to i64
  %85 = load i8*, i8** %memstr96, align 8
  %arrayidx112 = getelementptr i8, i8* %85, i64 %idxprom111
  %86 = load i32, i32* %le89, align 4
  %call113 = call double @_PyFloat_Unpack8(i8* %arrayidx112, i32 %86)
  %call114 = call %struct._object* @PyFloat_FromDouble(double %call113)
  store %struct._object* %call114, %struct._object** %pyfloat109, align 8
  %87 = load %struct._object*, %struct._object** %pyfloat109, align 8
  %cmp115 = icmp eq %struct._object* %87, null
  br i1 %cmp115, label %if.then.117, label %if.end.130

if.then.117:                                      ; preds = %for.body.108
  br label %do.body.118

do.body.118:                                      ; preds = %if.then.117
  %88 = load %struct._object*, %struct._object** %converted_items, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp119, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt120, align 8
  %dec121 = add i64 %90, -1
  store i64 %dec121, i64* %ob_refcnt120, align 8
  %cmp122 = icmp ne i64 %dec121, 0
  br i1 %cmp122, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %do.body.118
  br label %if.end.128

if.else.125:                                      ; preds = %do.body.118
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  call void %93(%struct._object* %94)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.130:                                       ; preds = %for.body.108
  %95 = load %struct._object*, %struct._object** %pyfloat109, align 8
  %96 = load i32, i32* %i88, align 4
  %idxprom131 = sext i32 %96 to i64
  %97 = load %struct._object*, %struct._object** %converted_items, align 8
  %98 = bitcast %struct._object* %97 to %struct.PyListObject*
  %ob_item132 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %98, i32 0, i32 1
  %99 = load %struct._object**, %struct._object*** %ob_item132, align 8
  %arrayidx133 = getelementptr %struct._object*, %struct._object** %99, i64 %idxprom131
  store %struct._object* %95, %struct._object** %arrayidx133, align 8
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.130
  %100 = load i32, i32* %i88, align 4
  %inc135 = add i32 %100, 1
  store i32 %inc135, i32* %i88, align 4
  br label %for.cond.104

for.end.136:                                      ; preds = %for.cond.104
  br label %sw.epilog

sw.bb.137:                                        ; preds = %if.end.56, %if.end.56
  %101 = load i32, i32* %mformat_code, align 4
  %cmp138 = icmp eq i32 %101, 18
  %cond140 = select i1 %cmp138, i32 -1, i32 1
  store i32 %cond140, i32* %byteorder, align 4
  %102 = load %struct._object*, %struct._object** %items, align 8
  %103 = bitcast %struct._object* %102 to %struct.PyBytesObject*
  %ob_sval141 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %103, i32 0, i32 2
  %arraydecay142 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval141, i32 0, i32 0
  %104 = load %struct._object*, %struct._object** %items, align 8
  %105 = bitcast %struct._object* %104 to %struct.PyVarObject*
  %ob_size143 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %105, i32 0, i32 1
  %106 = load i64, i64* %ob_size143, align 8
  %call144 = call %struct._object* @PyUnicode_DecodeUTF16(i8* %arraydecay142, i64 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i32* %byteorder)
  store %struct._object* %call144, %struct._object** %converted_items, align 8
  %107 = load %struct._object*, %struct._object** %converted_items, align 8
  %cmp145 = icmp eq %struct._object* %107, null
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %sw.bb.137
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.148:                                       ; preds = %sw.bb.137
  br label %sw.epilog

sw.bb.149:                                        ; preds = %if.end.56, %if.end.56
  %108 = load i32, i32* %mformat_code, align 4
  %cmp151 = icmp eq i32 %108, 20
  %cond153 = select i1 %cmp151, i32 -1, i32 1
  store i32 %cond153, i32* %byteorder150, align 4
  %109 = load %struct._object*, %struct._object** %items, align 8
  %110 = bitcast %struct._object* %109 to %struct.PyBytesObject*
  %ob_sval154 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %110, i32 0, i32 2
  %arraydecay155 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval154, i32 0, i32 0
  %111 = load %struct._object*, %struct._object** %items, align 8
  %112 = bitcast %struct._object* %111 to %struct.PyVarObject*
  %ob_size156 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %112, i32 0, i32 1
  %113 = load i64, i64* %ob_size156, align 8
  %call157 = call %struct._object* @PyUnicode_DecodeUTF32(i8* %arraydecay155, i64 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i32* %byteorder150)
  store %struct._object* %call157, %struct._object** %converted_items, align 8
  %114 = load %struct._object*, %struct._object** %converted_items, align 8
  %cmp158 = icmp eq %struct._object* %114, null
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %sw.bb.149
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.161:                                       ; preds = %sw.bb.149
  br label %sw.epilog

sw.bb.162:                                        ; preds = %if.end.56, %if.end.56, %if.end.56, %if.end.56, %if.end.56, %if.end.56, %if.end.56, %if.end.56, %if.end.56, %if.end.56, %if.end.56, %if.end.56, %if.end.56, %if.end.56
  %115 = load i32, i32* %mformat_code, align 4
  %idxprom164 = sext i32 %115 to i64
  %arrayidx165 = getelementptr [22 x %struct.mformatdescr], [22 x %struct.mformatdescr]* @mformat_descriptors, i32 0, i64 %idxprom164
  %116 = bitcast %struct.mformatdescr* %mf_descr to i8*
  %117 = bitcast %struct.mformatdescr* %arrayidx165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 16, i32 8, i1 false)
  %118 = load %struct._object*, %struct._object** %items, align 8
  %119 = bitcast %struct._object* %118 to %struct.PyVarObject*
  %ob_size167 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %119, i32 0, i32 1
  %120 = load i64, i64* %ob_size167, align 8
  %size168 = getelementptr inbounds %struct.mformatdescr, %struct.mformatdescr* %mf_descr, i32 0, i32 0
  %121 = load i64, i64* %size168, align 8
  %div169 = udiv i64 %120, %121
  store i64 %div169, i64* %itemcount166, align 8
  %122 = load %struct._object*, %struct._object** %items, align 8
  %123 = bitcast %struct._object* %122 to %struct.PyBytesObject*
  %ob_sval171 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %123, i32 0, i32 2
  %arraydecay172 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval171, i32 0, i32 0
  store i8* %arraydecay172, i8** %memstr170, align 8
  store %struct.arraydescr* getelementptr inbounds ([14 x %struct.arraydescr], [14 x %struct.arraydescr]* @descriptors, i32 0, i32 0), %struct.arraydescr** %descr173, align 8
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.193, %sw.bb.162
  %124 = load %struct.arraydescr*, %struct.arraydescr** %descr173, align 8
  %typecode175 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %124, i32 0, i32 0
  %125 = load i8, i8* %typecode175, align 1
  %conv176 = sext i8 %125 to i32
  %cmp177 = icmp ne i32 %conv176, 0
  br i1 %cmp177, label %for.body.179, label %for.end.195

for.body.179:                                     ; preds = %for.cond.174
  %126 = load %struct.arraydescr*, %struct.arraydescr** %descr173, align 8
  %is_integer_type = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %126, i32 0, i32 5
  %127 = load i32, i32* %is_integer_type, align 4
  %tobool180 = icmp ne i32 %127, 0
  br i1 %tobool180, label %land.lhs.true, label %if.end.192

land.lhs.true:                                    ; preds = %for.body.179
  %128 = load %struct.arraydescr*, %struct.arraydescr** %descr173, align 8
  %itemsize = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %128, i32 0, i32 1
  %129 = load i32, i32* %itemsize, align 4
  %conv181 = sext i32 %129 to i64
  %size182 = getelementptr inbounds %struct.mformatdescr, %struct.mformatdescr* %mf_descr, i32 0, i32 0
  %130 = load i64, i64* %size182, align 8
  %cmp183 = icmp eq i64 %conv181, %130
  br i1 %cmp183, label %land.lhs.true.185, label %if.end.192

land.lhs.true.185:                                ; preds = %land.lhs.true
  %131 = load %struct.arraydescr*, %struct.arraydescr** %descr173, align 8
  %is_signed = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %131, i32 0, i32 6
  %132 = load i32, i32* %is_signed, align 4
  %is_signed186 = getelementptr inbounds %struct.mformatdescr, %struct.mformatdescr* %mf_descr, i32 0, i32 1
  %133 = load i32, i32* %is_signed186, align 4
  %cmp187 = icmp eq i32 %132, %133
  br i1 %cmp187, label %if.then.189, label %if.end.192

if.then.189:                                      ; preds = %land.lhs.true.185
  %134 = load %struct.arraydescr*, %struct.arraydescr** %descr173, align 8
  %typecode190 = getelementptr inbounds %struct.arraydescr, %struct.arraydescr* %134, i32 0, i32 0
  %135 = load i8, i8* %typecode190, align 1
  %conv191 = sext i8 %135 to i32
  store i32 %conv191, i32* %typecode, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.189, %land.lhs.true.185, %land.lhs.true, %for.body.179
  br label %for.inc.193

for.inc.193:                                      ; preds = %if.end.192
  %136 = load %struct.arraydescr*, %struct.arraydescr** %descr173, align 8
  %incdec.ptr194 = getelementptr %struct.arraydescr, %struct.arraydescr* %136, i32 1
  store %struct.arraydescr* %incdec.ptr194, %struct.arraydescr** %descr173, align 8
  br label %for.cond.174

for.end.195:                                      ; preds = %for.cond.174
  %137 = load i64, i64* %itemcount166, align 8
  %call196 = call %struct._object* @PyList_New(i64 %137)
  store %struct._object* %call196, %struct._object** %converted_items, align 8
  %138 = load %struct._object*, %struct._object** %converted_items, align 8
  %cmp197 = icmp eq %struct._object* %138, null
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %for.end.195
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.200:                                       ; preds = %for.end.195
  store i32 0, i32* %i163, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.233, %if.end.200
  %139 = load i32, i32* %i163, align 4
  %conv202 = sext i32 %139 to i64
  %140 = load i64, i64* %itemcount166, align 8
  %cmp203 = icmp slt i64 %conv202, %140
  br i1 %cmp203, label %for.body.205, label %for.end.235

for.body.205:                                     ; preds = %for.cond.201
  %141 = load i32, i32* %i163, align 4
  %conv206 = sext i32 %141 to i64
  %size207 = getelementptr inbounds %struct.mformatdescr, %struct.mformatdescr* %mf_descr, i32 0, i32 0
  %142 = load i64, i64* %size207, align 8
  %mul208 = mul i64 %conv206, %142
  %143 = load i8*, i8** %memstr170, align 8
  %arrayidx209 = getelementptr i8, i8* %143, i64 %mul208
  %size210 = getelementptr inbounds %struct.mformatdescr, %struct.mformatdescr* %mf_descr, i32 0, i32 0
  %144 = load i64, i64* %size210, align 8
  %is_big_endian = getelementptr inbounds %struct.mformatdescr, %struct.mformatdescr* %mf_descr, i32 0, i32 2
  %145 = load i32, i32* %is_big_endian, align 4
  %tobool211 = icmp ne i32 %145, 0
  %lnot = xor i1 %tobool211, true
  %lnot.ext = zext i1 %lnot to i32
  %is_signed212 = getelementptr inbounds %struct.mformatdescr, %struct.mformatdescr* %mf_descr, i32 0, i32 1
  %146 = load i32, i32* %is_signed212, align 4
  %call213 = call %struct._object* @_PyLong_FromByteArray(i8* %arrayidx209, i64 %144, i32 %lnot.ext, i32 %146)
  store %struct._object* %call213, %struct._object** %pylong, align 8
  %147 = load %struct._object*, %struct._object** %pylong, align 8
  %cmp214 = icmp eq %struct._object* %147, null
  br i1 %cmp214, label %if.then.216, label %if.end.229

if.then.216:                                      ; preds = %for.body.205
  br label %do.body.217

do.body.217:                                      ; preds = %if.then.216
  %148 = load %struct._object*, %struct._object** %converted_items, align 8
  store %struct._object* %148, %struct._object** %_py_decref_tmp218, align 8
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_refcnt219 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 0
  %150 = load i64, i64* %ob_refcnt219, align 8
  %dec220 = add i64 %150, -1
  store i64 %dec220, i64* %ob_refcnt219, align 8
  %cmp221 = icmp ne i64 %dec220, 0
  br i1 %cmp221, label %if.then.223, label %if.else.224

if.then.223:                                      ; preds = %do.body.217
  br label %if.end.227

if.else.224:                                      ; preds = %do.body.217
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_type225 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 1
  %152 = load %struct._typeobject*, %struct._typeobject** %ob_type225, align 8
  %tp_dealloc226 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %152, i32 0, i32 4
  %153 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc226, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  call void %153(%struct._object* %154)
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.224, %if.then.223
  br label %do.end.228

do.end.228:                                       ; preds = %if.end.227
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.229:                                       ; preds = %for.body.205
  %155 = load %struct._object*, %struct._object** %pylong, align 8
  %156 = load i32, i32* %i163, align 4
  %idxprom230 = sext i32 %156 to i64
  %157 = load %struct._object*, %struct._object** %converted_items, align 8
  %158 = bitcast %struct._object* %157 to %struct.PyListObject*
  %ob_item231 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %158, i32 0, i32 1
  %159 = load %struct._object**, %struct._object*** %ob_item231, align 8
  %arrayidx232 = getelementptr %struct._object*, %struct._object** %159, i64 %idxprom230
  store %struct._object* %155, %struct._object** %arrayidx232, align 8
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.229
  %160 = load i32, i32* %i163, align 4
  %inc234 = add i32 %160, 1
  store i32 %inc234, i32* %i163, align 4
  br label %for.cond.201

for.end.235:                                      ; preds = %for.cond.201
  br label %sw.epilog

sw.bb.236:                                        ; preds = %if.end.56
  br label %sw.default

sw.default:                                       ; preds = %if.end.56, %sw.bb.236
  %call237 = call i32 @PyErr_BadArgument()
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %for.end.235, %if.end.161, %if.end.148, %for.end.136, %for.end.86
  %161 = load %struct._typeobject*, %struct._typeobject** %arraytype, align 8
  %162 = load i32, i32* %typecode, align 4
  %conv238 = trunc i32 %162 to i8
  %163 = load %struct._object*, %struct._object** %converted_items, align 8
  %call239 = call %struct._object* @make_array(%struct._typeobject* %161, i8 signext %conv238, %struct._object* %163)
  store %struct._object* %call239, %struct._object** %result, align 8
  br label %do.body.240

do.body.240:                                      ; preds = %sw.epilog
  %164 = load %struct._object*, %struct._object** %converted_items, align 8
  store %struct._object* %164, %struct._object** %_py_decref_tmp241, align 8
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp241, align 8
  %ob_refcnt242 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 0
  %166 = load i64, i64* %ob_refcnt242, align 8
  %dec243 = add i64 %166, -1
  store i64 %dec243, i64* %ob_refcnt242, align 8
  %cmp244 = icmp ne i64 %dec243, 0
  br i1 %cmp244, label %if.then.246, label %if.else.247

if.then.246:                                      ; preds = %do.body.240
  br label %if.end.250

if.else.247:                                      ; preds = %do.body.240
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp241, align 8
  %ob_type248 = getelementptr inbounds %struct._object, %struct._object* %167, i32 0, i32 1
  %168 = load %struct._typeobject*, %struct._typeobject** %ob_type248, align 8
  %tp_dealloc249 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %168, i32 0, i32 4
  %169 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc249, align 8
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp241, align 8
  call void %169(%struct._object* %170)
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.247, %if.then.246
  br label %do.end.251

do.end.251:                                       ; preds = %if.end.250
  %171 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %171, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.251, %sw.default, %do.end.228, %if.then.199, %if.then.160, %if.then.147, %do.end.129, %if.then.102, %do.end, %if.then.63, %if.then.55, %if.then.49, %if.then.37, %if.then.30, %if.then.24, %if.then.7, %if.then.1, %if.then
  %172 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %172
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @make_array(%struct._typeobject* %arraytype, i8 signext %typecode, %struct._object* %items) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %arraytype.addr = alloca %struct._typeobject*, align 8
  %typecode.addr = alloca i8, align 1
  %items.addr = alloca %struct._object*, align 8
  %new_args = alloca %struct._object*, align 8
  %array_obj = alloca %struct._object*, align 8
  %typecode_obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %arraytype, %struct._typeobject** %arraytype.addr, align 8
  store i8 %typecode, i8* %typecode.addr, align 1
  store %struct._object* %items, %struct._object** %items.addr, align 8
  %0 = load i8, i8* %typecode.addr, align 1
  %conv = sext i8 %0 to i32
  %call = call %struct._object* @PyUnicode_FromOrdinal(i32 %conv)
  store %struct._object* %call, %struct._object** %typecode_obj, align 8
  %1 = load %struct._object*, %struct._object** %typecode_obj, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call2, %struct._object** %new_args, align 8
  %2 = load %struct._object*, %struct._object** %new_args, align 8
  %cmp3 = icmp eq %struct._object* %2, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %items.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %typecode_obj, align 8
  %6 = load %struct._object*, %struct._object** %new_args, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %7, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %5, %struct._object** %arrayidx, align 8
  %8 = load %struct._object*, %struct._object** %items.addr, align 8
  %9 = load %struct._object*, %struct._object** %new_args, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyTupleObject*
  %ob_item7 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %10, i32 0, i32 1
  %arrayidx8 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item7, i32 0, i64 1
  store %struct._object* %8, %struct._object** %arrayidx8, align 8
  %11 = load %struct._typeobject*, %struct._typeobject** %arraytype.addr, align 8
  %12 = load %struct._object*, %struct._object** %new_args, align 8
  %call9 = call %struct._object* @array_new(%struct._typeobject* %11, %struct._object* %12, %struct._object* null)
  store %struct._object* %call9, %struct._object** %array_obj, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** %new_args, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt10, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt10, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %20 = load %struct._object*, %struct._object** %array_obj, align 8
  %cmp15 = icmp eq %struct._object* %20, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  %21 = load %struct._object*, %struct._object** %array_obj, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.17, %if.then.5, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare %struct._object* @PyFloat_FromDouble(double) #1

declare double @_PyFloat_Unpack4(i8*, i32) #1

declare double @_PyFloat_Unpack8(i8*, i32) #1

declare %struct._object* @PyUnicode_DecodeUTF16(i8*, i64, i8*, i32*) #1

declare %struct._object* @PyUnicode_DecodeUTF32(i8*, i64, i8*, i32*) #1

declare %struct._object* @_PyLong_FromByteArray(i8*, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @b_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %x = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %arrayidx = getelementptr i8, i8* %2, i64 %0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i64
  store i64 %conv, i64* %x, align 8
  %4 = load i64, i64* %x, align 8
  %cmp = icmp sge i64 %4, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %x, align 8
  %sub = sub i64 %5, 256
  store i64 %sub, i64* %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %6)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @b_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca i16, align 2
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.113, i32 0, i32 0), i16* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i16, i16* %x, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp slt i32 %conv, -128
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %2 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.114, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %3 = load i16, i16* %x, align 2
  %conv4 = sext i16 %3 to i32
  %cmp5 = icmp sgt i32 %conv4, 127
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else.3
  %4 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.115, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8
  %5 = load i64, i64* %i.addr, align 8
  %cmp10 = icmp sge i64 %5, 0
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %6 = load i16, i16* %x, align 2
  %conv13 = trunc i16 %6 to i8
  %7 = load i64, i64* %i.addr, align 8
  %8 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %ob_item, align 8
  %arrayidx = getelementptr i8, i8* %9, i64 %7
  store i8 %conv13, i8* %arrayidx, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.7, %if.then.2, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @BB_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %x = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %arrayidx = getelementptr i8, i8* %2, i64 %0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i64
  store i64 %conv, i64* %x, align 8
  %4 = load i64, i64* %x, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @BB_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca i8, align 1
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.116, i32 0, i32 0), i8* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load i8, i8* %x, align 1
  %3 = load i64, i64* %i.addr, align 8
  %4 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %4, i32 0, i32 1
  %5 = load i8*, i8** %ob_item, align 8
  %arrayidx = getelementptr i8, i8* %5, i64 %3
  store i8 %2, i8* %arrayidx, align 1
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @u_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %3 = bitcast i8* %2 to i32*
  %arrayidx = getelementptr i32, i32* %3, i64 %0
  %call = call %struct._object* @PyUnicode_FromUnicode(i32* %arrayidx, i64 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @u_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %p = alloca i32*, align 8
  %len = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.117, i32 0, i32 0), i32** %p, i64* %len)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %len, align 8
  %cmp = icmp ne i64 %1, 1
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.118, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i64, i64* %i.addr, align 8
  %cmp3 = icmp sge i64 %3, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end.2
  %4 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i64, i64* %i.addr, align 8
  %7 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %ob_item, align 8
  %9 = bitcast i8* %8 to i32*
  %arrayidx5 = getelementptr i32, i32* %9, i64 %6
  store i32 %5, i32* %arrayidx5, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end.2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.1, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @h_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %3 = bitcast i8* %2 to i16*
  %arrayidx = getelementptr i16, i16* %3, i64 %0
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @h_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca i16, align 2
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.113, i32 0, i32 0), i16* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load i16, i16* %x, align 2
  %3 = load i64, i64* %i.addr, align 8
  %4 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %4, i32 0, i32 1
  %5 = load i8*, i8** %ob_item, align 8
  %6 = bitcast i8* %5 to i16*
  %arrayidx = getelementptr i16, i16* %6, i64 %3
  store i16 %2, i16* %arrayidx, align 2
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @HH_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %3 = bitcast i8* %2 to i16*
  %arrayidx = getelementptr i16, i16* %3, i64 %0
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @HH_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.119, i32 0, i32 0), i32* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  %2 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.120, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else.2:                                        ; preds = %if.else
  %3 = load i32, i32* %x, align 4
  %cmp3 = icmp sgt i32 %3, 65535
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else.2
  %4 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.121, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5
  %5 = load i64, i64* %i.addr, align 8
  %cmp7 = icmp sge i64 %5, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %6 = load i32, i32* %x, align 4
  %conv = trunc i32 %6 to i16
  %7 = load i64, i64* %i.addr, align 8
  %8 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %ob_item, align 8
  %10 = bitcast i8* %9 to i16*
  %arrayidx = getelementptr i16, i16* %10, i64 %7
  store i16 %conv, i16* %arrayidx, align 2
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.4, %if.then.1, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @i_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %3 = bitcast i8* %2 to i32*
  %arrayidx = getelementptr i32, i32* %3, i64 %0
  %4 = load i32, i32* %arrayidx, align 4
  %conv = sext i32 %4 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @i_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.119, i32 0, i32 0), i32* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load i32, i32* %x, align 4
  %3 = load i64, i64* %i.addr, align 8
  %4 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %4, i32 0, i32 1
  %5 = load i8*, i8** %ob_item, align 8
  %6 = bitcast i8* %5 to i32*
  %arrayidx = getelementptr i32, i32* %6, i64 %3
  store i32 %2, i32* %arrayidx, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @II_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %3 = bitcast i8* %2 to i32*
  %arrayidx = getelementptr i32, i32* %3, i64 %0
  %4 = load i32, i32* %arrayidx, align 4
  %conv = zext i32 %4 to i64
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @II_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i64 @PyLong_AsUnsignedLong(%struct._object* %3)
  store i64 %call, i64* %x, align 8
  %4 = load i64, i64* %x, align 8
  %cmp1 = icmp eq i64 %4, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.122, i32 0, i32 0), i64* %y)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.else
  %6 = load i64, i64* %y, align 8
  %cmp8 = icmp slt i64 %6, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.123, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %8 = load i64, i64* %y, align 8
  store i64 %8, i64* %x, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %9 = load i64, i64* %x, align 8
  %cmp12 = icmp ugt i64 %9, 4294967295
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.124, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %11 = load i64, i64* %i.addr, align 8
  %cmp15 = icmp sge i64 %11, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %12 = load i64, i64* %x, align 8
  %conv = trunc i64 %12 to i32
  %13 = load i64, i64* %i.addr, align 8
  %14 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %14, i32 0, i32 1
  %15 = load i8*, i8** %ob_item, align 8
  %16 = bitcast i8* %15 to i32*
  %arrayidx = getelementptr i32, i32* %16, i64 %13
  store i32 %conv, i32* %arrayidx, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.then.9, %if.then.6, %if.then.3
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @l_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %3 = bitcast i8* %2 to i64*
  %arrayidx = getelementptr i64, i64* %3, i64 %0
  %4 = load i64, i64* %arrayidx, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @l_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.122, i32 0, i32 0), i64* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load i64, i64* %x, align 8
  %3 = load i64, i64* %i.addr, align 8
  %4 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %4, i32 0, i32 1
  %5 = load i8*, i8** %ob_item, align 8
  %6 = bitcast i8* %5 to i64*
  %arrayidx = getelementptr i64, i64* %6, i64 %3
  store i64 %2, i64* %arrayidx, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @LL_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %3 = bitcast i8* %2 to i64*
  %arrayidx = getelementptr i64, i64* %3, i64 %0
  %4 = load i64, i64* %arrayidx, align 8
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @LL_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i64 @PyLong_AsUnsignedLong(%struct._object* %3)
  store i64 %call, i64* %x, align 8
  %4 = load i64, i64* %x, align 8
  %cmp1 = icmp eq i64 %4, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.122, i32 0, i32 0), i64* %y)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.else
  %6 = load i64, i64* %y, align 8
  %cmp8 = icmp slt i64 %6, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.125, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %8 = load i64, i64* %y, align 8
  store i64 %8, i64* %x, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %9 = load i64, i64* %x, align 8
  %cmp12 = icmp ugt i64 %9, -1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.126, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %11 = load i64, i64* %i.addr, align 8
  %cmp15 = icmp sge i64 %11, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %12 = load i64, i64* %x, align 8
  %13 = load i64, i64* %i.addr, align 8
  %14 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %14, i32 0, i32 1
  %15 = load i8*, i8** %ob_item, align 8
  %16 = bitcast i8* %15 to i64*
  %arrayidx = getelementptr i64, i64* %16, i64 %13
  store i64 %12, i64* %arrayidx, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.then.9, %if.then.6, %if.then.3
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @q_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %3 = bitcast i8* %2 to i64*
  %arrayidx = getelementptr i64, i64* %3, i64 %0
  %4 = load i64, i64* %arrayidx, align 8
  %call = call %struct._object* @PyLong_FromLongLong(i64 %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @q_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.127, i32 0, i32 0), i64* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load i64, i64* %x, align 8
  %3 = load i64, i64* %i.addr, align 8
  %4 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %4, i32 0, i32 1
  %5 = load i8*, i8** %ob_item, align 8
  %6 = bitcast i8* %5 to i64*
  %arrayidx = getelementptr i64, i64* %6, i64 %3
  store i64 %2, i64* %arrayidx, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @QQ_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %3 = bitcast i8* %2 to i64*
  %arrayidx = getelementptr i64, i64* %3, i64 %0
  %4 = load i64, i64* %arrayidx, align 8
  %call = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @QQ_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i64 @PyLong_AsUnsignedLongLong(%struct._object* %3)
  store i64 %call, i64* %x, align 8
  %4 = load i64, i64* %x, align 8
  %cmp1 = icmp eq i64 %4, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.127, i32 0, i32 0), i64* %y)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.else
  %6 = load i64, i64* %y, align 8
  %cmp8 = icmp slt i64 %6, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.128, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %8 = load i64, i64* %y, align 8
  store i64 %8, i64* %x, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %9 = load i64, i64* %i.addr, align 8
  %cmp12 = icmp sge i64 %9, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %10 = load i64, i64* %x, align 8
  %11 = load i64, i64* %i.addr, align 8
  %12 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %ob_item, align 8
  %14 = bitcast i8* %13 to i64*
  %arrayidx = getelementptr i64, i64* %14, i64 %11
  store i64 %10, i64* %arrayidx, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.9, %if.then.6, %if.then.3
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @f_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %3 = bitcast i8* %2 to float*
  %arrayidx = getelementptr float, float* %3, i64 %0
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %call = call %struct._object* @PyFloat_FromDouble(double %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @f_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca float, align 4
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.129, i32 0, i32 0), float* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load float, float* %x, align 4
  %3 = load i64, i64* %i.addr, align 8
  %4 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %4, i32 0, i32 1
  %5 = load i8*, i8** %ob_item, align 8
  %6 = bitcast i8* %5 to float*
  %arrayidx = getelementptr float, float* %6, i64 %3
  store float %2, float* %arrayidx, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @d_getitem(%struct.arrayobject* %ap, i64 %i) #0 {
entry:
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %ob_item, align 8
  %3 = bitcast i8* %2 to double*
  %arrayidx = getelementptr double, double* %3, i64 %0
  %4 = load double, double* %arrayidx, align 8
  %call = call %struct._object* @PyFloat_FromDouble(double %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @d_setitem(%struct.arrayobject* %ap, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca %struct.arrayobject*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  store %struct.arrayobject* %ap, %struct.arrayobject** %ap.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_Parse_SizeT(%struct._object* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.130, i32 0, i32 0), double* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load double, double* %x, align 8
  %3 = load i64, i64* %i.addr, align 8
  %4 = load %struct.arrayobject*, %struct.arrayobject** %ap.addr, align 8
  %ob_item = getelementptr inbounds %struct.arrayobject, %struct.arrayobject* %4, i32 0, i32 1
  %5 = load i8*, i8** %ob_item, align 8
  %6 = bitcast i8* %5 to double*
  %arrayidx = getelementptr double, double* %6, i64 %3
  store double %2, double* %arrayidx, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @_PyArg_Parse_SizeT(%struct._object*, i8*, ...) #1

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #1

declare %struct._object* @PyLong_FromLongLong(i64) #1

declare %struct._object* @PyLong_FromUnsignedLongLong(i64) #1

declare i64 @PyLong_AsUnsignedLongLong(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
