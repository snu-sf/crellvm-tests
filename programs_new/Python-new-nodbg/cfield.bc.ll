; ModuleID = './cfield.bc'
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.fielddesc = type { i8, %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, i64)*, %struct._ffi_type*, %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, i64)* }
%struct._ffi_type = type { i64, i16, i16, %struct._ffi_type** }
%struct.CFieldObject = type { %struct._object, i64, i64, i64, %struct._object*, %struct._object* (i8*, i64)*, %struct._object* (i8*, %struct._object*, i64)*, i32 }
%struct.StgDictObject = type { %struct.PyDictObject, i64, i64, i64, %struct._ffi_type, %struct._object*, %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, i64)*, %struct.tagPyCArgObject* (%struct.tagCDataObject*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i8*, i32, i64* }
%struct.PyDictObject = type { %struct._object, i64, %struct._dictkeysobject*, %struct._object** }
%struct._dictkeysobject = type opaque
%struct.tagPyCArgObject = type { %struct._object, %struct._ffi_type*, i8, %union.anon, %struct._object*, i64 }
%union.anon = type { x86_fp80 }
%struct.tagCDataObject = type { %struct._object, i8*, i32, %struct.tagCDataObject*, i64, i64, i64, %struct._object*, %union.value }
%union.value = type { x86_fp80 }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyByteArrayObject = type { %struct.PyVarObject, i64, i8*, i8*, i32 }

@PyCField_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i64 72, i64 0, void (%struct._object*)* @PyCField_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.CFieldObject*)* @PyCField_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.CFieldObject*, i32 (%struct._object*, i8*)*, i8*)* @PyCField_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.CFieldObject*)* @PyCField_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([3 x %struct.PyGetSetDef], [3 x %struct.PyGetSetDef]* @PyCField_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.CFieldObject*, %struct._object*, %struct._typeobject*)* @PyCField_get to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.CFieldObject*, %struct._object*, %struct._object*)* @PyCField_set to i32 (%struct._object*, %struct._object*, %struct._object*)*), i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyCField_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [17 x i8] c"has no _stginfo_\00", align 1
@PyCArrayType_Type = external global %struct._typeobject, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"_ctypes.CField\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Structure/Union member\00", align 1
@PyCField_getset = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @PyCField_get_offset, i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @PyCField_get_size, i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@_ctypes_get_fielddesc.initialized = internal global i32 0, align 4
@formattable = internal global [23 x %struct.fielddesc] [%struct.fielddesc { i8 115, %struct._object* (i8*, %struct._object*, i64)* @s_set, %struct._object* (i8*, i64)* @s_get, %struct._ffi_type* @ffi_type_pointer, %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, i64)* null }, %struct.fielddesc { i8 98, %struct._object* (i8*, %struct._object*, i64)* @b_set, %struct._object* (i8*, i64)* @b_get, %struct._ffi_type* @ffi_type_sint8, %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, i64)* null }, %struct.fielddesc { i8 66, %struct._object* (i8*, %struct._object*, i64)* @B_set, %struct._object* (i8*, i64)* @B_get, %struct._ffi_type* @ffi_type_uint8, %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, i64)* null }, %struct.fielddesc { i8 99, %struct._object* (i8*, %struct._object*, i64)* @c_set, %struct._object* (i8*, i64)* @c_get, %struct._ffi_type* @ffi_type_sint8, %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, i64)* null }, %struct.fielddesc { i8 100, %struct._object* (i8*, %struct._object*, i64)* @d_set, %struct._object* (i8*, i64)* @d_get, %struct._ffi_type* @ffi_type_double, %struct._object* (i8*, %struct._object*, i64)* @d_set_sw, %struct._object* (i8*, i64)* @d_get_sw }, %struct.fielddesc { i8 103, %struct._object* (i8*, %struct._object*, i64)* @g_set, %struct._object* (i8*, i64)* @g_get, %struct._ffi_type* @ffi_type_longdouble, %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, i64)* null }, %struct.fielddesc { i8 102, %struct._object* (i8*, %struct._object*, i64)* @f_set, %struct._object* (i8*, i64)* @f_get, %struct._ffi_type* @ffi_type_float, %struct._object* (i8*, %struct._object*, i64)* @f_set_sw, %struct._object* (i8*, i64)* @f_get_sw }, %struct.fielddesc { i8 104, %struct._object* (i8*, %struct._object*, i64)* @h_set, %struct._object* (i8*, i64)* @h_get, %struct._ffi_type* @ffi_type_sint16, %struct._object* (i8*, %struct._object*, i64)* @h_set_sw, %struct._object* (i8*, i64)* @h_get_sw }, %struct.fielddesc { i8 72, %struct._object* (i8*, %struct._object*, i64)* @H_set, %struct._object* (i8*, i64)* @H_get, %struct._ffi_type* @ffi_type_uint16, %struct._object* (i8*, %struct._object*, i64)* @H_set_sw, %struct._object* (i8*, i64)* @H_get_sw }, %struct.fielddesc { i8 105, %struct._object* (i8*, %struct._object*, i64)* @i_set, %struct._object* (i8*, i64)* @i_get, %struct._ffi_type* @ffi_type_sint32, %struct._object* (i8*, %struct._object*, i64)* @i_set_sw, %struct._object* (i8*, i64)* @i_get_sw }, %struct.fielddesc { i8 73, %struct._object* (i8*, %struct._object*, i64)* @I_set, %struct._object* (i8*, i64)* @I_get, %struct._ffi_type* @ffi_type_uint32, %struct._object* (i8*, %struct._object*, i64)* @I_set_sw, %struct._object* (i8*, i64)* @I_get_sw }, %struct.fielddesc { i8 108, %struct._object* (i8*, %struct._object*, i64)* @l_set, %struct._object* (i8*, i64)* @l_get, %struct._ffi_type* @ffi_type_sint64, %struct._object* (i8*, %struct._object*, i64)* @l_set_sw, %struct._object* (i8*, i64)* @l_get_sw }, %struct.fielddesc { i8 76, %struct._object* (i8*, %struct._object*, i64)* @L_set, %struct._object* (i8*, i64)* @L_get, %struct._ffi_type* @ffi_type_uint64, %struct._object* (i8*, %struct._object*, i64)* @L_set_sw, %struct._object* (i8*, i64)* @L_get_sw }, %struct.fielddesc { i8 113, %struct._object* (i8*, %struct._object*, i64)* @q_set, %struct._object* (i8*, i64)* @q_get, %struct._ffi_type* @ffi_type_sint64, %struct._object* (i8*, %struct._object*, i64)* @q_set_sw, %struct._object* (i8*, i64)* @q_get_sw }, %struct.fielddesc { i8 81, %struct._object* (i8*, %struct._object*, i64)* @Q_set, %struct._object* (i8*, i64)* @Q_get, %struct._ffi_type* @ffi_type_uint64, %struct._object* (i8*, %struct._object*, i64)* @Q_set_sw, %struct._object* (i8*, i64)* @Q_get_sw }, %struct.fielddesc { i8 80, %struct._object* (i8*, %struct._object*, i64)* @P_set, %struct._object* (i8*, i64)* @P_get, %struct._ffi_type* @ffi_type_pointer, %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, i64)* null }, %struct.fielddesc { i8 122, %struct._object* (i8*, %struct._object*, i64)* @z_set, %struct._object* (i8*, i64)* @z_get, %struct._ffi_type* @ffi_type_pointer, %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, i64)* null }, %struct.fielddesc { i8 117, %struct._object* (i8*, %struct._object*, i64)* @u_set, %struct._object* (i8*, i64)* @u_get, %struct._ffi_type* null, %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, i64)* null }, %struct.fielddesc { i8 85, %struct._object* (i8*, %struct._object*, i64)* @U_set, %struct._object* (i8*, i64)* @U_get, %struct._ffi_type* @ffi_type_pointer, %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, i64)* null }, %struct.fielddesc { i8 90, %struct._object* (i8*, %struct._object*, i64)* @Z_set, %struct._object* (i8*, i64)* @Z_get, %struct._ffi_type* @ffi_type_pointer, %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, i64)* null }, %struct.fielddesc { i8 63, %struct._object* (i8*, %struct._object*, i64)* @bool_set, %struct._object* (i8*, i64)* @bool_get, %struct._ffi_type* @ffi_type_uint8, %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, i64)* null }, %struct.fielddesc { i8 79, %struct._object* (i8*, %struct._object*, i64)* @O_set, %struct._object* (i8*, i64)* @O_get, %struct._ffi_type* @ffi_type_pointer, %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, i64)* null }, %struct.fielddesc zeroinitializer], align 16
@ffi_type_sint32 = global %struct._ffi_type { i64 4, i16 4, i16 10, %struct._ffi_type** null }, align 8
@ffi_type_void = global %struct._ffi_type { i64 1, i16 1, i16 0, %struct._ffi_type** null }, align 8
@ffi_type_uint8 = global %struct._ffi_type { i64 1, i16 1, i16 5, %struct._ffi_type** null }, align 8
@ffi_type_sint8 = global %struct._ffi_type { i64 1, i16 1, i16 6, %struct._ffi_type** null }, align 8
@ffi_type_uint16 = global %struct._ffi_type { i64 2, i16 2, i16 7, %struct._ffi_type** null }, align 8
@ffi_type_sint16 = global %struct._ffi_type { i64 2, i16 2, i16 8, %struct._ffi_type** null }, align 8
@ffi_type_uint32 = global %struct._ffi_type { i64 4, i16 4, i16 9, %struct._ffi_type** null }, align 8
@ffi_type_uint64 = global %struct._ffi_type { i64 8, i16 8, i16 11, %struct._ffi_type** null }, align 8
@ffi_type_sint64 = global %struct._ffi_type { i64 8, i16 8, i16 12, %struct._ffi_type** null }, align 8
@ffi_type_float = global %struct._ffi_type { i64 4, i16 4, i16 2, %struct._ffi_type** null }, align 8
@ffi_type_double = global %struct._ffi_type { i64 8, i16 8, i16 3, %struct._ffi_type** null }, align 8
@ffi_type_longdouble = global %struct._ffi_type { i64 16, i16 16, i16 4, %struct._ffi_type** null }, align 8
@ffi_type_pointer = global %struct._ffi_type { i64 8, i16 8, i16 14, %struct._ffi_type** null }, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"<Field type=%s, ofs=%zd:%zd, bits=%zd>\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"<Field type=%s, ofs=%zd, size=%zd>\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"offset in bytes of this field\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"size in bytes of this field\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"can't delete attribute\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"expected string, %s found\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.15 = private unnamed_addr constant [42 x i8] c"string too long (%zd, maximum length %zd)\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyFloat_Type = external global %struct._typeobject, align 8
@.str.16 = private unnamed_addr constant [30 x i8] c"int expected instead of float\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@_PyByteArray_empty_string = external global [0 x i8], align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"one character string expected\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"cannot be converted to pointer\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"bytes or integer address expected instead of %s instance\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"unicode string expected instead of %s instance\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"one character unicode string expected\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"unicode string or integer address expected instead of %s instance\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"_ctypes/cfield.c pymem\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"PyObject is NULL\00", align 1

; Function Attrs: uwtable
define %struct._object* @PyCField_FromDesc(%struct._object* %desc, i64 %index, i64* %pfield_size, i32 %bitsize, i32* %pbitofs, i64* %psize, i64* %poffset, i64* %palign, i32 %pack, i32 %big_endian) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %desc.addr = alloca %struct._object*, align 8
  %index.addr = alloca i64, align 8
  %pfield_size.addr = alloca i64*, align 8
  %bitsize.addr = alloca i32, align 4
  %pbitofs.addr = alloca i32*, align 8
  %psize.addr = alloca i64*, align 8
  %poffset.addr = alloca i64*, align 8
  %palign.addr = alloca i64*, align 8
  %pack.addr = alloca i32, align 4
  %big_endian.addr = alloca i32, align 4
  %self = alloca %struct.CFieldObject*, align 8
  %proto = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %align = alloca i64, align 8
  %setfunc = alloca %struct._object* (i8*, %struct._object*, i64)*, align 8
  %getfunc = alloca %struct._object* (i8*, i64)*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %fieldtype = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %adict = alloca %struct.StgDictObject*, align 8
  %idict = alloca %struct.StgDictObject*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %fd = alloca %struct.fielddesc*, align 8
  %fd89 = alloca %struct.fielddesc*, align 8
  %delta = alloca i64, align 8
  store %struct._object* %desc, %struct._object** %desc.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  store i64* %pfield_size, i64** %pfield_size.addr, align 8
  store i32 %bitsize, i32* %bitsize.addr, align 4
  store i32* %pbitofs, i32** %pbitofs.addr, align 8
  store i64* %psize, i64** %psize.addr, align 8
  store i64* %poffset, i64** %poffset.addr, align 8
  store i64* %palign, i64** %palign.addr, align 8
  store i32 %pack, i32* %pack.addr, align 4
  store i32 %big_endian, i32* %big_endian.addr, align 4
  store %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8
  store %struct._object* (i8*, i64)* null, %struct._object* (i8*, i64)** %getfunc, align 8
  %call = call %struct._object* @PyObject_CallObject(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCField_Type, i32 0, i32 0, i32 0), %struct._object* null)
  %0 = bitcast %struct._object* %call to %struct.CFieldObject*
  store %struct.CFieldObject* %0, %struct.CFieldObject** %self, align 8
  %1 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %cmp = icmp eq %struct.CFieldObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %desc.addr, align 8
  %call1 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %2)
  store %struct.StgDictObject* %call1, %struct.StgDictObject** %dict, align 8
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %tobool = icmp ne %struct.StgDictObject* %3, null
  br i1 %tobool, label %if.end.6, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %5 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %6 = bitcast %struct.CFieldObject* %5 to %struct._object*
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %13 = load i32, i32* %bitsize.addr, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.end.6
  %14 = load i64*, i64** %pfield_size.addr, align 8
  %15 = load i64, i64* %14, align 8
  %tobool8 = icmp ne i64 %15, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.else.16

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %16 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size10 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %16, i32 0, i32 1
  %17 = load i64, i64* %size10, align 8
  %mul = mul i64 %17, 8
  %18 = load i64*, i64** %pfield_size.addr, align 8
  %19 = load i64, i64* %18, align 8
  %cmp11 = icmp sle i64 %mul, %19
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.16

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %20 = load i32*, i32** %pbitofs.addr, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %bitsize.addr, align 4
  %add = add i32 %21, %22
  %conv = sext i32 %add to i64
  %23 = load i64*, i64** %pfield_size.addr, align 8
  %24 = load i64, i64* %23, align 8
  %cmp13 = icmp sle i64 %conv, %24
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.12
  store i32 2, i32* %fieldtype, align 4
  br label %if.end.41

if.else.16:                                       ; preds = %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true, %if.end.6
  %25 = load i32, i32* %bitsize.addr, align 4
  %tobool17 = icmp ne i32 %25, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.else.33

land.lhs.true.18:                                 ; preds = %if.else.16
  %26 = load i64*, i64** %pfield_size.addr, align 8
  %27 = load i64, i64* %26, align 8
  %tobool19 = icmp ne i64 %27, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.else.33

land.lhs.true.20:                                 ; preds = %land.lhs.true.18
  %28 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size21 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %28, i32 0, i32 1
  %29 = load i64, i64* %size21, align 8
  %mul22 = mul i64 %29, 8
  %30 = load i64*, i64** %pfield_size.addr, align 8
  %31 = load i64, i64* %30, align 8
  %cmp23 = icmp sge i64 %mul22, %31
  br i1 %cmp23, label %land.lhs.true.25, label %if.else.33

land.lhs.true.25:                                 ; preds = %land.lhs.true.20
  %32 = load i32*, i32** %pbitofs.addr, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %bitsize.addr, align 4
  %add26 = add i32 %33, %34
  %conv27 = sext i32 %add26 to i64
  %35 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size28 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %35, i32 0, i32 1
  %36 = load i64, i64* %size28, align 8
  %mul29 = mul i64 %36, 8
  %cmp30 = icmp sle i64 %conv27, %mul29
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.25
  store i32 3, i32* %fieldtype, align 4
  br label %if.end.40

if.else.33:                                       ; preds = %land.lhs.true.25, %land.lhs.true.20, %land.lhs.true.18, %if.else.16
  %37 = load i32, i32* %bitsize.addr, align 4
  %tobool34 = icmp ne i32 %37, 0
  br i1 %tobool34, label %if.then.35, label %if.else.38

if.then.35:                                       ; preds = %if.else.33
  store i32 1, i32* %fieldtype, align 4
  %38 = load i32*, i32** %pbitofs.addr, align 8
  store i32 0, i32* %38, align 4
  %39 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size36 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %39, i32 0, i32 1
  %40 = load i64, i64* %size36, align 8
  %mul37 = mul i64 %40, 8
  %41 = load i64*, i64** %pfield_size.addr, align 8
  store i64 %mul37, i64* %41, align 8
  br label %if.end.39

if.else.38:                                       ; preds = %if.else.33
  store i32 0, i32* %fieldtype, align 4
  %42 = load i32*, i32** %pbitofs.addr, align 8
  store i32 0, i32* %42, align 4
  %43 = load i64*, i64** %pfield_size.addr, align 8
  store i64 0, i64* %43, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.32
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.15
  %44 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size42 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %44, i32 0, i32 1
  %45 = load i64, i64* %size42, align 8
  store i64 %45, i64* %size, align 8
  %46 = load %struct._object*, %struct._object** %desc.addr, align 8
  store %struct._object* %46, %struct._object** %proto, align 8
  %47 = load %struct._object*, %struct._object** %proto, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %cmp44 = icmp eq %struct._typeobject* %48, @PyCArrayType_Type
  br i1 %cmp44, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.41
  %49 = load %struct._object*, %struct._object** %proto, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %call47 = call i32 @PyType_IsSubtype(%struct._typeobject* %50, %struct._typeobject* @PyCArrayType_Type)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.95

if.then.49:                                       ; preds = %lor.lhs.false, %if.end.41
  %51 = load %struct._object*, %struct._object** %proto, align 8
  %call50 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %51)
  store %struct.StgDictObject* %call50, %struct.StgDictObject** %adict, align 8
  %52 = load %struct.StgDictObject*, %struct.StgDictObject** %adict, align 8
  %tobool51 = icmp ne %struct.StgDictObject* %52, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.94

land.lhs.true.52:                                 ; preds = %if.then.49
  %53 = load %struct.StgDictObject*, %struct.StgDictObject** %adict, align 8
  %proto53 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %53, i32 0, i32 5
  %54 = load %struct._object*, %struct._object** %proto53, align 8
  %tobool54 = icmp ne %struct._object* %54, null
  br i1 %tobool54, label %if.then.55, label %if.end.94

if.then.55:                                       ; preds = %land.lhs.true.52
  %55 = load %struct.StgDictObject*, %struct.StgDictObject** %adict, align 8
  %proto56 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %55, i32 0, i32 5
  %56 = load %struct._object*, %struct._object** %proto56, align 8
  %call57 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %56)
  store %struct.StgDictObject* %call57, %struct.StgDictObject** %idict, align 8
  %57 = load %struct.StgDictObject*, %struct.StgDictObject** %idict, align 8
  %tobool58 = icmp ne %struct.StgDictObject* %57, null
  br i1 %tobool58, label %if.end.72, label %if.then.59

if.then.59:                                       ; preds = %if.then.55
  %58 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %59 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %60 = bitcast %struct.CFieldObject* %59 to %struct._object*
  store %struct._object* %60, %struct._object** %_py_decref_tmp61, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %62, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.60
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.60
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %65(%struct._object* %66)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.72:                                        ; preds = %if.then.55
  %67 = load %struct.StgDictObject*, %struct.StgDictObject** %idict, align 8
  %getfunc73 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %67, i32 0, i32 7
  %68 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc73, align 8
  %call74 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %getfunc75 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call74, i32 0, i32 2
  %69 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc75, align 8
  %cmp76 = icmp eq %struct._object* (i8*, i64)* %68, %69
  br i1 %cmp76, label %if.then.78, label %if.end.82

if.then.78:                                       ; preds = %if.end.72
  %call79 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct.fielddesc* %call79, %struct.fielddesc** %fd, align 8
  %70 = load %struct.fielddesc*, %struct.fielddesc** %fd, align 8
  %getfunc80 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %70, i32 0, i32 2
  %71 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc80, align 8
  store %struct._object* (i8*, i64)* %71, %struct._object* (i8*, i64)** %getfunc, align 8
  %72 = load %struct.fielddesc*, %struct.fielddesc** %fd, align 8
  %setfunc81 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %72, i32 0, i32 1
  %73 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc81, align 8
  store %struct._object* (i8*, %struct._object*, i64)* %73, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.78, %if.end.72
  %74 = load %struct.StgDictObject*, %struct.StgDictObject** %idict, align 8
  %getfunc83 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %74, i32 0, i32 7
  %75 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc83, align 8
  %call84 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %getfunc85 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call84, i32 0, i32 2
  %76 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc85, align 8
  %cmp86 = icmp eq %struct._object* (i8*, i64)* %75, %76
  br i1 %cmp86, label %if.then.88, label %if.end.93

if.then.88:                                       ; preds = %if.end.82
  %call90 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct.fielddesc* %call90, %struct.fielddesc** %fd89, align 8
  %77 = load %struct.fielddesc*, %struct.fielddesc** %fd89, align 8
  %getfunc91 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %77, i32 0, i32 2
  %78 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc91, align 8
  store %struct._object* (i8*, i64)* %78, %struct._object* (i8*, i64)** %getfunc, align 8
  %79 = load %struct.fielddesc*, %struct.fielddesc** %fd89, align 8
  %setfunc92 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %79, i32 0, i32 1
  %80 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc92, align 8
  store %struct._object* (i8*, %struct._object*, i64)* %80, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %if.end.82
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.52, %if.then.49
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %lor.lhs.false
  %81 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8
  %82 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %setfunc96 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %82, i32 0, i32 6
  store %struct._object* (i8*, %struct._object*, i64)* %81, %struct._object* (i8*, %struct._object*, i64)** %setfunc96, align 8
  %83 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc, align 8
  %84 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %getfunc97 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %84, i32 0, i32 5
  store %struct._object* (i8*, i64)* %83, %struct._object* (i8*, i64)** %getfunc97, align 8
  %85 = load i64, i64* %index.addr, align 8
  %86 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %index98 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %86, i32 0, i32 3
  store i64 %85, i64* %index98, align 8
  %87 = load %struct._object*, %struct._object** %proto, align 8
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0
  %88 = load i64, i64* %ob_refcnt99, align 8
  %inc = add i64 %88, 1
  store i64 %inc, i64* %ob_refcnt99, align 8
  %89 = load %struct._object*, %struct._object** %proto, align 8
  %90 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %proto100 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %90, i32 0, i32 4
  store %struct._object* %89, %struct._object** %proto100, align 8
  %91 = load i32, i32* %fieldtype, align 4
  switch i32 %91, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.115
    i32 3, label %sw.bb.143
    i32 2, label %sw.bb.172
  ]

sw.bb:                                            ; preds = %if.end.95
  %92 = load i32, i32* %big_endian.addr, align 4
  %tobool101 = icmp ne i32 %92, 0
  br i1 %tobool101, label %if.then.102, label %if.else.109

if.then.102:                                      ; preds = %sw.bb
  %93 = load i32, i32* %bitsize.addr, align 4
  %shl = shl i32 %93, 16
  %conv103 = sext i32 %shl to i64
  %94 = load i64*, i64** %pfield_size.addr, align 8
  %95 = load i64, i64* %94, align 8
  %add104 = add i64 %conv103, %95
  %96 = load i32*, i32** %pbitofs.addr, align 8
  %97 = load i32, i32* %96, align 4
  %conv105 = sext i32 %97 to i64
  %sub = sub i64 %add104, %conv105
  %98 = load i32, i32* %bitsize.addr, align 4
  %conv106 = sext i32 %98 to i64
  %sub107 = sub i64 %sub, %conv106
  %99 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %size108 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %99, i32 0, i32 2
  store i64 %sub107, i64* %size108, align 8
  br label %if.end.114

if.else.109:                                      ; preds = %sw.bb
  %100 = load i32, i32* %bitsize.addr, align 4
  %shl110 = shl i32 %100, 16
  %101 = load i32*, i32** %pbitofs.addr, align 8
  %102 = load i32, i32* %101, align 4
  %add111 = add i32 %shl110, %102
  %conv112 = sext i32 %add111 to i64
  %103 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %size113 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %103, i32 0, i32 2
  store i64 %conv112, i64* %size113, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.109, %if.then.102
  %104 = load i32, i32* %bitsize.addr, align 4
  %105 = load i32*, i32** %pbitofs.addr, align 8
  store i32 %104, i32* %105, align 4
  br label %sw.bb.115

sw.bb.115:                                        ; preds = %if.end.95, %if.end.114
  %106 = load i32, i32* %pack.addr, align 4
  %tobool116 = icmp ne i32 %106, 0
  br i1 %tobool116, label %if.then.117, label %if.else.124

if.then.117:                                      ; preds = %sw.bb.115
  %107 = load i32, i32* %pack.addr, align 4
  %conv118 = sext i32 %107 to i64
  %108 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %align119 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %108, i32 0, i32 2
  %109 = load i64, i64* %align119, align 8
  %cmp120 = icmp slt i64 %conv118, %109
  br i1 %cmp120, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.117
  %110 = load i32, i32* %pack.addr, align 4
  %conv122 = sext i32 %110 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then.117
  %111 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %align123 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %111, i32 0, i32 2
  %112 = load i64, i64* %align123, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv122, %cond.true ], [ %112, %cond.false ]
  store i64 %cond, i64* %align, align 8
  br label %if.end.126

if.else.124:                                      ; preds = %sw.bb.115
  %113 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %align125 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %113, i32 0, i32 2
  %114 = load i64, i64* %align125, align 8
  store i64 %114, i64* %align, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.124, %cond.end
  %115 = load i64, i64* %align, align 8
  %tobool127 = icmp ne i64 %115, 0
  br i1 %tobool127, label %land.lhs.true.128, label %if.end.135

land.lhs.true.128:                                ; preds = %if.end.126
  %116 = load i64*, i64** %poffset.addr, align 8
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %align, align 8
  %rem = srem i64 %117, %118
  %tobool129 = icmp ne i64 %rem, 0
  br i1 %tobool129, label %if.then.130, label %if.end.135

if.then.130:                                      ; preds = %land.lhs.true.128
  %119 = load i64, i64* %align, align 8
  %120 = load i64*, i64** %poffset.addr, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %align, align 8
  %rem131 = srem i64 %121, %122
  %sub132 = sub i64 %119, %rem131
  store i64 %sub132, i64* %delta, align 8
  %123 = load i64, i64* %delta, align 8
  %124 = load i64*, i64** %psize.addr, align 8
  %125 = load i64, i64* %124, align 8
  %add133 = add i64 %125, %123
  store i64 %add133, i64* %124, align 8
  %126 = load i64, i64* %delta, align 8
  %127 = load i64*, i64** %poffset.addr, align 8
  %128 = load i64, i64* %127, align 8
  %add134 = add i64 %128, %126
  store i64 %add134, i64* %127, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.130, %land.lhs.true.128, %if.end.126
  %129 = load i32, i32* %bitsize.addr, align 4
  %cmp136 = icmp eq i32 %129, 0
  br i1 %cmp136, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %if.end.135
  %130 = load i64, i64* %size, align 8
  %131 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %size139 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %131, i32 0, i32 2
  store i64 %130, i64* %size139, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %if.end.135
  %132 = load i64, i64* %size, align 8
  %133 = load i64*, i64** %psize.addr, align 8
  %134 = load i64, i64* %133, align 8
  %add141 = add i64 %134, %132
  store i64 %add141, i64* %133, align 8
  %135 = load i64*, i64** %poffset.addr, align 8
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %offset = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %137, i32 0, i32 1
  store i64 %136, i64* %offset, align 8
  %138 = load i64, i64* %size, align 8
  %139 = load i64*, i64** %poffset.addr, align 8
  %140 = load i64, i64* %139, align 8
  %add142 = add i64 %140, %138
  store i64 %add142, i64* %139, align 8
  %141 = load i64, i64* %align, align 8
  %142 = load i64*, i64** %palign.addr, align 8
  store i64 %141, i64* %142, align 8
  br label %sw.epilog

sw.bb.143:                                        ; preds = %if.end.95
  %143 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size144 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %143, i32 0, i32 1
  %144 = load i64, i64* %size144, align 8
  %145 = load i64*, i64** %pfield_size.addr, align 8
  %146 = load i64, i64* %145, align 8
  %div = sdiv i64 %146, 8
  %sub145 = sub i64 %144, %div
  %147 = load i64*, i64** %poffset.addr, align 8
  %148 = load i64, i64* %147, align 8
  %add146 = add i64 %148, %sub145
  store i64 %add146, i64* %147, align 8
  %149 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size147 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %149, i32 0, i32 1
  %150 = load i64, i64* %size147, align 8
  %151 = load i64*, i64** %pfield_size.addr, align 8
  %152 = load i64, i64* %151, align 8
  %div148 = sdiv i64 %152, 8
  %sub149 = sub i64 %150, %div148
  %153 = load i64*, i64** %psize.addr, align 8
  %154 = load i64, i64* %153, align 8
  %add150 = add i64 %154, %sub149
  store i64 %add150, i64* %153, align 8
  %155 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size151 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %155, i32 0, i32 1
  %156 = load i64, i64* %size151, align 8
  %mul152 = mul i64 %156, 8
  %157 = load i64*, i64** %pfield_size.addr, align 8
  store i64 %mul152, i64* %157, align 8
  %158 = load i32, i32* %big_endian.addr, align 4
  %tobool153 = icmp ne i32 %158, 0
  br i1 %tobool153, label %if.then.154, label %if.else.163

if.then.154:                                      ; preds = %sw.bb.143
  %159 = load i32, i32* %bitsize.addr, align 4
  %shl155 = shl i32 %159, 16
  %conv156 = sext i32 %shl155 to i64
  %160 = load i64*, i64** %pfield_size.addr, align 8
  %161 = load i64, i64* %160, align 8
  %add157 = add i64 %conv156, %161
  %162 = load i32*, i32** %pbitofs.addr, align 8
  %163 = load i32, i32* %162, align 4
  %conv158 = sext i32 %163 to i64
  %sub159 = sub i64 %add157, %conv158
  %164 = load i32, i32* %bitsize.addr, align 4
  %conv160 = sext i32 %164 to i64
  %sub161 = sub i64 %sub159, %conv160
  %165 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %size162 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %165, i32 0, i32 2
  store i64 %sub161, i64* %size162, align 8
  br label %if.end.168

if.else.163:                                      ; preds = %sw.bb.143
  %166 = load i32, i32* %bitsize.addr, align 4
  %shl164 = shl i32 %166, 16
  %167 = load i32*, i32** %pbitofs.addr, align 8
  %168 = load i32, i32* %167, align 4
  %add165 = add i32 %shl164, %168
  %conv166 = sext i32 %add165 to i64
  %169 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %size167 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %169, i32 0, i32 2
  store i64 %conv166, i64* %size167, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.163, %if.then.154
  %170 = load i64*, i64** %poffset.addr, align 8
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %size, align 8
  %sub169 = sub i64 %171, %172
  %173 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %offset170 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %173, i32 0, i32 1
  store i64 %sub169, i64* %offset170, align 8
  %174 = load i32, i32* %bitsize.addr, align 4
  %175 = load i32*, i32** %pbitofs.addr, align 8
  %176 = load i32, i32* %175, align 4
  %add171 = add i32 %176, %174
  store i32 %add171, i32* %175, align 4
  br label %sw.epilog

sw.bb.172:                                        ; preds = %if.end.95
  %177 = load i32, i32* %big_endian.addr, align 4
  %tobool173 = icmp ne i32 %177, 0
  br i1 %tobool173, label %if.then.174, label %if.else.183

if.then.174:                                      ; preds = %sw.bb.172
  %178 = load i32, i32* %bitsize.addr, align 4
  %shl175 = shl i32 %178, 16
  %conv176 = sext i32 %shl175 to i64
  %179 = load i64*, i64** %pfield_size.addr, align 8
  %180 = load i64, i64* %179, align 8
  %add177 = add i64 %conv176, %180
  %181 = load i32*, i32** %pbitofs.addr, align 8
  %182 = load i32, i32* %181, align 4
  %conv178 = sext i32 %182 to i64
  %sub179 = sub i64 %add177, %conv178
  %183 = load i32, i32* %bitsize.addr, align 4
  %conv180 = sext i32 %183 to i64
  %sub181 = sub i64 %sub179, %conv180
  %184 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %size182 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %184, i32 0, i32 2
  store i64 %sub181, i64* %size182, align 8
  br label %if.end.188

if.else.183:                                      ; preds = %sw.bb.172
  %185 = load i32, i32* %bitsize.addr, align 4
  %shl184 = shl i32 %185, 16
  %186 = load i32*, i32** %pbitofs.addr, align 8
  %187 = load i32, i32* %186, align 4
  %add185 = add i32 %shl184, %187
  %conv186 = sext i32 %add185 to i64
  %188 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %size187 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %188, i32 0, i32 2
  store i64 %conv186, i64* %size187, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.183, %if.then.174
  %189 = load i64*, i64** %poffset.addr, align 8
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %size, align 8
  %sub189 = sub i64 %190, %191
  %192 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %offset190 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %192, i32 0, i32 1
  store i64 %sub189, i64* %offset190, align 8
  %193 = load i32, i32* %bitsize.addr, align 4
  %194 = load i32*, i32** %pbitofs.addr, align 8
  %195 = load i32, i32* %194, align 4
  %add191 = add i32 %195, %193
  store i32 %add191, i32* %194, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.95, %if.end.188, %if.end.168, %if.end.140
  %196 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8
  %197 = bitcast %struct.CFieldObject* %196 to %struct._object*
  store %struct._object* %197, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %do.end.71, %do.end, %if.then
  %198 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %198
}

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #1

declare %struct.StgDictObject* @PyType_stgdict(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

; Function Attrs: uwtable
define %struct.fielddesc* @_ctypes_get_fielddesc(i8* %fmt) #0 {
entry:
  %retval = alloca %struct.fielddesc*, align 8
  %fmt.addr = alloca i8*, align 8
  %table = alloca %struct.fielddesc*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store %struct.fielddesc* getelementptr inbounds ([23 x %struct.fielddesc], [23 x %struct.fielddesc]* @formattable, i32 0, i32 0), %struct.fielddesc** %table, align 8
  %0 = load i32, i32* @_ctypes_get_fielddesc.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* @_ctypes_get_fielddesc.initialized, align 4
  %call = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %pffi_type = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call, i32 0, i32 3
  store %struct._ffi_type* @ffi_type_sint32, %struct._ffi_type** %pffi_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.fielddesc*, %struct.fielddesc** %table, align 8
  %code = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %1, i32 0, i32 0
  %2 = load i8, i8* %code, align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.fielddesc*, %struct.fielddesc** %table, align 8
  %code2 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %3, i32 0, i32 0
  %4 = load i8, i8* %code2, align 1
  %conv = sext i8 %4 to i32
  %5 = load i8*, i8** %fmt.addr, align 8
  %arrayidx = getelementptr i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, %conv3
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %7 = load %struct.fielddesc*, %struct.fielddesc** %table, align 8
  store %struct.fielddesc* %7, %struct.fielddesc** %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %8 = load %struct.fielddesc*, %struct.fielddesc** %table, align 8
  %incdec.ptr = getelementptr %struct.fielddesc, %struct.fielddesc* %8, i32 1
  store %struct.fielddesc* %incdec.ptr, %struct.fielddesc** %table, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.fielddesc* null, %struct.fielddesc** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5
  %9 = load %struct.fielddesc*, %struct.fielddesc** %retval
  ret %struct.fielddesc* %9
}

; Function Attrs: uwtable
define internal void @PyCField_dealloc(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.CFieldObject*
  %call = call i32 @PyCField_clear(%struct.CFieldObject* %1)
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 38
  %4 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %5 = load %struct._object*, %struct._object** %self.addr, align 8
  %6 = bitcast %struct._object* %5 to i8*
  call void %4(i8* %6)
  ret void
}

; Function Attrs: uwtable
define internal %struct._object* @PyCField_repr(%struct.CFieldObject* %self) #0 {
entry:
  %self.addr = alloca %struct.CFieldObject*, align 8
  %result = alloca %struct._object*, align 8
  %bits = alloca i64, align 8
  %size1 = alloca i64, align 8
  %name = alloca i8*, align 8
  store %struct.CFieldObject* %self, %struct.CFieldObject** %self.addr, align 8
  %0 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %size = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %0, i32 0, i32 2
  %1 = load i64, i64* %size, align 8
  %shr = ashr i64 %1, 16
  store i64 %shr, i64* %bits, align 8
  %2 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %size2 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %2, i32 0, i32 2
  %3 = load i64, i64* %size2, align 8
  %and = and i64 %3, 65535
  store i64 %and, i64* %size1, align 8
  %4 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %proto = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %4, i32 0, i32 4
  %5 = load %struct._object*, %struct._object** %proto, align 8
  %6 = bitcast %struct._object* %5 to %struct._typeobject*
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  store i8* %7, i8** %name, align 8
  %8 = load i64, i64* %bits, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %name, align 8
  %10 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %offset = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %10, i32 0, i32 1
  %11 = load i64, i64* %offset, align 8
  %12 = load i64, i64* %size1, align 8
  %13 = load i64, i64* %bits, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i8* %9, i64 %11, i64 %12, i64 %13)
  store %struct._object* %call, %struct._object** %result, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load i8*, i8** %name, align 8
  %15 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %offset3 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %15, i32 0, i32 1
  %16 = load i64, i64* %offset3, align 8
  %17 = load i64, i64* %size1, align 8
  %call4 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i8* %14, i64 %16, i64 %17)
  store %struct._object* %call4, %struct._object** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %18
}

; Function Attrs: uwtable
define internal i32 @PyCField_traverse(%struct.CFieldObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.CFieldObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.CFieldObject* %self, %struct.CFieldObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %proto = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %proto, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %proto1 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %3, i32 0, i32 4
  %4 = load %struct._object*, %struct._object** %proto1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: uwtable
define internal i32 @PyCField_clear(%struct.CFieldObject* %self) #0 {
entry:
  %self.addr = alloca %struct.CFieldObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.CFieldObject* %self, %struct.CFieldObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %proto = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %proto, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %proto1 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %3, i32 0, i32 4
  store %struct._object* null, %struct._object** %proto1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  ret i32 0
}

; Function Attrs: uwtable
define internal %struct._object* @PyCField_get(%struct.CFieldObject* %self, %struct._object* %inst, %struct._typeobject* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.CFieldObject*, align 8
  %inst.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %src = alloca %struct.tagCDataObject*, align 8
  store %struct.CFieldObject* %self, %struct.CFieldObject** %self.addr, align 8
  store %struct._object* %inst, %struct._object** %inst.addr, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  %0 = load %struct._object*, %struct._object** %inst.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %2 = bitcast %struct.CFieldObject* %1 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %5 = bitcast %struct.CFieldObject* %4 to %struct._object*
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %inst.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.tagCDataObject*
  store %struct.tagCDataObject* %7, %struct.tagCDataObject** %src, align 8
  %8 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %proto = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %8, i32 0, i32 4
  %9 = load %struct._object*, %struct._object** %proto, align 8
  %10 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %getfunc = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %10, i32 0, i32 5
  %11 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc, align 8
  %12 = load %struct._object*, %struct._object** %inst.addr, align 8
  %13 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %index = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %13, i32 0, i32 3
  %14 = load i64, i64* %index, align 8
  %15 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %size = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %15, i32 0, i32 2
  %16 = load i64, i64* %size, align 8
  %17 = load %struct.tagCDataObject*, %struct.tagCDataObject** %src, align 8
  %b_ptr = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %17, i32 0, i32 1
  %18 = load i8*, i8** %b_ptr, align 8
  %19 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %offset = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %19, i32 0, i32 1
  %20 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %18, i64 %20
  %call = call %struct._object* @PyCData_get(%struct._object* %9, %struct._object* (i8*, i64)* %11, %struct._object* %12, i64 %14, i64 %16, i8* %add.ptr)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: uwtable
define internal i32 @PyCField_set(%struct.CFieldObject* %self, %struct._object* %inst, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.CFieldObject*, align 8
  %inst.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %dst = alloca %struct.tagCDataObject*, align 8
  %ptr = alloca i8*, align 8
  store %struct.CFieldObject* %self, %struct.CFieldObject** %self.addr, align 8
  store %struct._object* %inst, %struct._object** %inst.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %inst.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.tagCDataObject*
  store %struct.tagCDataObject* %1, %struct.tagCDataObject** %dst, align 8
  %2 = load %struct.tagCDataObject*, %struct.tagCDataObject** %dst, align 8
  %b_ptr = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %2, i32 0, i32 1
  %3 = load i8*, i8** %b_ptr, align 8
  %4 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %offset = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %4, i32 0, i32 1
  %5 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 %5
  store i8* %add.ptr, i8** %ptr, align 8
  %6 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** %inst.addr, align 8
  %9 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %proto = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %9, i32 0, i32 4
  %10 = load %struct._object*, %struct._object** %proto, align 8
  %11 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %setfunc = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %11, i32 0, i32 6
  %12 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8
  %13 = load %struct._object*, %struct._object** %value.addr, align 8
  %14 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %index = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %14, i32 0, i32 3
  %15 = load i64, i64* %index, align 8
  %16 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8
  %size = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %16, i32 0, i32 2
  %17 = load i64, i64* %size, align 8
  %18 = load i8*, i8** %ptr, align 8
  %call = call i32 @PyCData_set(%struct._object* %8, %struct._object* %10, %struct._object* (i8*, %struct._object*, i64)* %12, %struct._object* %13, i64 %15, i64 %17, i8* %18)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: uwtable
define internal %struct._object* @PyCField_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %obj = alloca %struct.CFieldObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct.CFieldObject*
  store %struct.CFieldObject* %3, %struct.CFieldObject** %obj, align 8
  %4 = load %struct.CFieldObject*, %struct.CFieldObject** %obj, align 8
  %5 = bitcast %struct.CFieldObject* %4 to %struct._object*
  ret %struct._object* %5
}

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: uwtable
define internal %struct._object* @PyCField_get_offset(%struct._object* %self, i8* %data) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.CFieldObject*
  %offset = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %1, i32 0, i32 1
  %2 = load i64, i64* %offset, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %2)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @PyCField_get_size(%struct._object* %self, i8* %data) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.CFieldObject*
  %size = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %1, i32 0, i32 2
  %2 = load i64, i64* %size, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %2)
  ret %struct._object* %call
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @PyCData_get(%struct._object*, %struct._object* (i8*, i64)*, %struct._object*, i64, i64, i8*) #1

declare i32 @PyCData_set(%struct._object*, %struct._object*, %struct._object* (i8*, %struct._object*, i64)*, %struct._object*, i64, i64, i8*) #1

; Function Attrs: uwtable
define internal %struct._object* @s_set(i8* %ptr, %struct._object* %value, i64 %length) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %length.addr = alloca i64, align 8
  %data = alloca i8*, align 8
  %size = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %6 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i8* %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct._object*, %struct._object** %value.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %10, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8
  %11 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %12 = load i8*, i8** %data, align 8
  %call4 = call i64 @strlen(i8* %12) #5
  store i64 %call4, i64* %size, align 8
  %13 = load i64, i64* %size, align 8
  %14 = load i64, i64* %length.addr, align 8
  %cmp5 = icmp slt i64 %13, %14
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.end.3
  %15 = load i64, i64* %size, align 8
  %inc7 = add i64 %15, 1
  store i64 %inc7, i64* %size, align 8
  br label %if.end.19

if.else.8:                                        ; preds = %if.end.3
  %16 = load i64, i64* %size, align 8
  %17 = load i64, i64* %length.addr, align 8
  %cmp9 = icmp sgt i64 %16, %17
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.else.8
  %18 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %19 = load i64, i64* %size, align 8
  %20 = load i64, i64* %length.addr, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i64 %19, i64 %20)
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %21 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt12, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt12, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.17

if.else.15:                                       ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.6
  %28 = load i8*, i8** %ptr.addr, align 8
  %29 = load i8*, i8** %data, align 8
  %30 = load i64, i64* %size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 %30, i32 1, i1 false)
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %31 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp21, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %33, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %36(%struct._object* %37)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %38 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc31 = add i64 %38, 1
  store i64 %inc31, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.30, %do.end, %if.then.2, %if.else
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

; Function Attrs: uwtable
define internal %struct._object* @s_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  store i8* %0, i8** %p, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load i8*, i8** %ptr.addr, align 8
  %7 = load i64, i64* %i, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %6, i64 %7)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @b_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %1, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %4 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %4, 16
  %sub = sub i64 %shr1, 1
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 1, %sh_prom
  %sub2 = sub i32 %shl, 1
  %shl3 = shl i32 %sub2, 1
  %add = add i32 %shl3, 1
  %5 = load i64, i64* %size.addr, align 8
  %and = and i64 %5, 65535
  %sh_prom4 = trunc i64 %and to i32
  %shl5 = shl i32 %add, %sh_prom4
  %neg = xor i32 %shl5, -1
  %and6 = and i32 %conv, %neg
  %6 = load i64, i64* %val, align 8
  %conv7 = trunc i64 %6 to i8
  %conv8 = sext i8 %conv7 to i32
  %7 = load i64, i64* %size.addr, align 8
  %shr9 = ashr i64 %7, 16
  %sub10 = sub i64 %shr9, 1
  %sh_prom11 = trunc i64 %sub10 to i32
  %shl12 = shl i32 1, %sh_prom11
  %sub13 = sub i32 %shl12, 1
  %shl14 = shl i32 %sub13, 1
  %add15 = add i32 %shl14, 1
  %and16 = and i32 %conv8, %add15
  %8 = load i64, i64* %size.addr, align 8
  %and17 = and i64 %8, 65535
  %sh_prom18 = trunc i64 %and17 to i32
  %shl19 = shl i32 %and16, %sh_prom18
  %or = or i32 %and6, %shl19
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load i64, i64* %val, align 8
  %conv20 = trunc i64 %9 to i8
  %conv21 = sext i8 %conv20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv21, %cond.false ]
  %conv22 = trunc i32 %cond to i8
  %10 = load i8*, i8** %ptr.addr, align 8
  store i8 %conv22, i8* %10, align 1
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: uwtable
define internal %struct._object* @b_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %val, align 1
  %2 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %2, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %and = and i64 %3, 65535
  %sub = sub i64 8, %and
  %4 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %4, 16
  %sub2 = sub i64 %sub, %shr1
  %5 = load i8, i8* %val, align 1
  %conv = sext i8 %5 to i32
  %sh_prom = trunc i64 %sub2 to i32
  %shl = shl i32 %conv, %sh_prom
  %conv3 = trunc i32 %shl to i8
  store i8 %conv3, i8* %val, align 1
  %6 = load i64, i64* %size.addr, align 8
  %shr4 = ashr i64 %6, 16
  %sub5 = sub i64 8, %shr4
  %7 = load i8, i8* %val, align 1
  %conv6 = sext i8 %7 to i32
  %sh_prom7 = trunc i64 %sub5 to i32
  %shr8 = ashr i32 %conv6, %sh_prom7
  %conv9 = trunc i32 %shr8 to i8
  store i8 %conv9, i8* %val, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8, i8* %val, align 1
  %conv10 = sext i8 %8 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv10)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @B_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_ulong(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %1, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %4 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %4, 16
  %sub = sub i64 %shr1, 1
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 1, %sh_prom
  %sub2 = sub i32 %shl, 1
  %shl3 = shl i32 %sub2, 1
  %add = add i32 %shl3, 1
  %5 = load i64, i64* %size.addr, align 8
  %and = and i64 %5, 65535
  %sh_prom4 = trunc i64 %and to i32
  %shl5 = shl i32 %add, %sh_prom4
  %neg = xor i32 %shl5, -1
  %and6 = and i32 %conv, %neg
  %6 = load i64, i64* %val, align 8
  %conv7 = trunc i64 %6 to i8
  %conv8 = zext i8 %conv7 to i32
  %7 = load i64, i64* %size.addr, align 8
  %shr9 = ashr i64 %7, 16
  %sub10 = sub i64 %shr9, 1
  %sh_prom11 = trunc i64 %sub10 to i32
  %shl12 = shl i32 1, %sh_prom11
  %sub13 = sub i32 %shl12, 1
  %shl14 = shl i32 %sub13, 1
  %add15 = add i32 %shl14, 1
  %and16 = and i32 %conv8, %add15
  %8 = load i64, i64* %size.addr, align 8
  %and17 = and i64 %8, 65535
  %sh_prom18 = trunc i64 %and17 to i32
  %shl19 = shl i32 %and16, %sh_prom18
  %or = or i32 %and6, %shl19
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load i64, i64* %val, align 8
  %conv20 = trunc i64 %9 to i8
  %conv21 = zext i8 %conv20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv21, %cond.false ]
  %conv22 = trunc i32 %cond to i8
  %10 = load i8*, i8** %ptr.addr, align 8
  store i8 %conv22, i8* %10, align 1
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: uwtable
define internal %struct._object* @B_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %val, align 1
  %2 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %2, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %and = and i64 %3, 65535
  %sub = sub i64 8, %and
  %4 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %4, 16
  %sub2 = sub i64 %sub, %shr1
  %5 = load i8, i8* %val, align 1
  %conv = zext i8 %5 to i32
  %sh_prom = trunc i64 %sub2 to i32
  %shl = shl i32 %conv, %sh_prom
  %conv3 = trunc i32 %shl to i8
  store i8 %conv3, i8* %val, align 1
  %6 = load i64, i64* %size.addr, align 8
  %shr4 = ashr i64 %6, 16
  %sub5 = sub i64 8, %shr4
  %7 = load i8, i8* %val, align 1
  %conv6 = zext i8 %7 to i32
  %sh_prom7 = trunc i64 %sub5 to i32
  %shr8 = ashr i32 %conv6, %sh_prom7
  %conv9 = trunc i32 %shr8 to i8
  store i8 %conv9, i8* %val, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8, i8* %val, align 1
  %conv10 = zext i8 %8 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv10)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @c_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %longval = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %value.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp eq i64 %5, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %value.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %arrayidx = getelementptr i8, i8* %arraydecay, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %9 = load i8*, i8** %ptr.addr, align 8
  store i8 %8, i8* %9, align 1
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %cmp3 = icmp eq %struct._typeobject* %12, @PyByteArray_Type
  br i1 %cmp3, label %land.lhs.true.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %14, %struct._typeobject* @PyByteArray_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.5, label %if.end.13

land.lhs.true.5:                                  ; preds = %lor.lhs.false, %if.end
  %15 = load %struct._object*, %struct._object** %value.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size6, align 8
  %cmp7 = icmp eq i64 %17, 1
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %land.lhs.true.5
  %18 = load %struct._object*, %struct._object** %value.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size9, align 8
  %tobool10 = icmp ne i64 %20, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %21 = load %struct._object*, %struct._object** %value.addr, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %22, i32 0, i32 3
  %23 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %23, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  %arrayidx11 = getelementptr i8, i8* %cond, i64 0
  %24 = load i8, i8* %arrayidx11, align 1
  %25 = load i8*, i8** %ptr.addr, align 8
  store i8 %24, i8* %25, align 1
  %26 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc12 = add i64 %26, 1
  store i64 %inc12, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.5, %lor.lhs.false
  %27 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_flags15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 19
  %29 = load i64, i64* %tp_flags15, align 8
  %and16 = and i64 %29, 16777216
  %cmp17 = icmp ne i64 %and16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %if.end.13
  %30 = load %struct._object*, %struct._object** %value.addr, align 8
  %call19 = call i64 @PyLong_AsLong(%struct._object* %30)
  store i64 %call19, i64* %longval, align 8
  %31 = load i64, i64* %longval, align 8
  %cmp20 = icmp slt i64 %31, 0
  br i1 %cmp20, label %if.then.23, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.then.18
  %32 = load i64, i64* %longval, align 8
  %cmp22 = icmp sge i64 %32, 256
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false.21, %if.then.18
  br label %error

if.end.24:                                        ; preds = %lor.lhs.false.21
  %33 = load i64, i64* %longval, align 8
  %conv = trunc i64 %33 to i8
  %34 = load i8*, i8** %ptr.addr, align 8
  store i8 %conv, i8* %34, align 1
  %35 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc25 = add i64 %35, 1
  store i64 %inc25, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.13
  br label %error

error:                                            ; preds = %if.end.26, %if.then.23
  %36 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %error, %if.end.24, %cond.end, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: uwtable
define internal %struct._object* @c_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %0, i64 1)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @d_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %x = alloca double, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = bitcast double* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 1, i1 false)
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: uwtable
define internal %struct._object* @d_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca double, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast double* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load double, double* %val, align 8
  %call = call %struct._object* @PyFloat_FromDouble(double %2)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @d_set_sw(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %x = alloca double, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load double, double* %x, align 8
  %3 = load i8*, i8** %ptr.addr, align 8
  %call2 = call i32 @_PyFloat_Pack8(double %2, i8* %3, i32 0)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: uwtable
define internal %struct._object* @d_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %call = call double @_PyFloat_Unpack8(i8* %0, i32 0)
  %call1 = call %struct._object* @PyFloat_FromDouble(double %call)
  ret %struct._object* %call1
}

; Function Attrs: uwtable
define internal %struct._object* @g_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %x = alloca x86_fp80, align 16
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  %conv = fpext double %call to x86_fp80
  store x86_fp80 %conv, x86_fp80* %x, align 16
  %1 = load x86_fp80, x86_fp80* %x, align 16
  %cmp = fcmp oeq x86_fp80 %1, 0xKBFFF8000000000000000
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = bitcast x86_fp80* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 1, i1 false)
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: uwtable
define internal %struct._object* @g_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca x86_fp80, align 16
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast x86_fp80* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 16, i32 1, i1 false)
  %2 = load x86_fp80, x86_fp80* %val, align 16
  %conv = fptrunc x86_fp80 %2 to double
  %call = call %struct._object* @PyFloat_FromDouble(double %conv)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @f_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %x = alloca float, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = bitcast float* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 4, i32 1, i1 false)
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: uwtable
define internal %struct._object* @f_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca float, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast float* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 4, i32 1, i1 false)
  %2 = load float, float* %val, align 4
  %conv = fpext float %2 to double
  %call = call %struct._object* @PyFloat_FromDouble(double %conv)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @f_set_sw(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %x = alloca float, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load float, float* %x, align 4
  %conv3 = fpext float %2 to double
  %3 = load i8*, i8** %ptr.addr, align 8
  %call4 = call i32 @_PyFloat_Pack4(double %conv3, i8* %3, i32 0)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: uwtable
define internal %struct._object* @f_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %call = call double @_PyFloat_Unpack4(i8* %0, i32 0)
  %call1 = call %struct._object* @PyFloat_FromDouble(double %call)
  ret %struct._object* %call1
}

; Function Attrs: uwtable
define internal %struct._object* @h_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %x = alloca i16, align 2
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i16* %x to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 2, i32 1, i1 false)
  %3 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %3, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i16, i16* %x, align 2
  %conv = sext i16 %4 to i32
  %5 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %5, 16
  %sub = sub i64 %shr1, 1
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 1, %sh_prom
  %sub2 = sub i32 %shl, 1
  %shl3 = shl i32 %sub2, 1
  %add = add i32 %shl3, 1
  %6 = load i64, i64* %size.addr, align 8
  %and = and i64 %6, 65535
  %sh_prom4 = trunc i64 %and to i32
  %shl5 = shl i32 %add, %sh_prom4
  %neg = xor i32 %shl5, -1
  %and6 = and i32 %conv, %neg
  %7 = load i64, i64* %val, align 8
  %conv7 = trunc i64 %7 to i16
  %conv8 = sext i16 %conv7 to i32
  %8 = load i64, i64* %size.addr, align 8
  %shr9 = ashr i64 %8, 16
  %sub10 = sub i64 %shr9, 1
  %sh_prom11 = trunc i64 %sub10 to i32
  %shl12 = shl i32 1, %sh_prom11
  %sub13 = sub i32 %shl12, 1
  %shl14 = shl i32 %sub13, 1
  %add15 = add i32 %shl14, 1
  %and16 = and i32 %conv8, %add15
  %9 = load i64, i64* %size.addr, align 8
  %and17 = and i64 %9, 65535
  %sh_prom18 = trunc i64 %and17 to i32
  %shl19 = shl i32 %and16, %sh_prom18
  %or = or i32 %and6, %shl19
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %val, align 8
  %conv20 = trunc i64 %10 to i16
  %conv21 = sext i16 %conv20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv21, %cond.false ]
  %conv22 = trunc i32 %cond to i16
  store i16 %conv22, i16* %x, align 2
  %11 = load i8*, i8** %ptr.addr, align 8
  %12 = bitcast i16* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 2, i32 1, i1 false)
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: uwtable
define internal %struct._object* @h_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i16, align 2
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i16* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 2, i32 1, i1 false)
  %2 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %2, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %and = and i64 %3, 65535
  %sub = sub i64 16, %and
  %4 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %4, 16
  %sub2 = sub i64 %sub, %shr1
  %5 = load i16, i16* %val, align 2
  %conv = sext i16 %5 to i32
  %sh_prom = trunc i64 %sub2 to i32
  %shl = shl i32 %conv, %sh_prom
  %conv3 = trunc i32 %shl to i16
  store i16 %conv3, i16* %val, align 2
  %6 = load i64, i64* %size.addr, align 8
  %shr4 = ashr i64 %6, 16
  %sub5 = sub i64 16, %shr4
  %7 = load i16, i16* %val, align 2
  %conv6 = sext i16 %7 to i32
  %sh_prom7 = trunc i64 %sub5 to i32
  %shr8 = ashr i32 %conv6, %sh_prom7
  %conv9 = trunc i32 %shr8 to i16
  store i16 %conv9, i16* %val, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i16, i16* %val, align 2
  %conv10 = sext i16 %8 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv10)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @h_set_sw(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %field = alloca i16, align 2
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i16* %field to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 2, i32 1, i1 false)
  %3 = load i16, i16* %field, align 2
  %conv = sext i16 %3 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %4 = load i16, i16* %field, align 2
  %conv1 = sext i16 %4 to i32
  %shl = shl i32 %conv1, 8
  %and2 = and i32 %shl, 65280
  %or = or i32 %and, %and2
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %field, align 2
  %5 = load i64, i64* %size.addr, align 8
  %shr4 = ashr i64 %5, 16
  %tobool = icmp ne i64 %shr4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i16, i16* %field, align 2
  %conv5 = sext i16 %6 to i32
  %7 = load i64, i64* %size.addr, align 8
  %shr6 = ashr i64 %7, 16
  %sub = sub i64 %shr6, 1
  %sh_prom = trunc i64 %sub to i32
  %shl7 = shl i32 1, %sh_prom
  %sub8 = sub i32 %shl7, 1
  %shl9 = shl i32 %sub8, 1
  %add = add i32 %shl9, 1
  %8 = load i64, i64* %size.addr, align 8
  %and10 = and i64 %8, 65535
  %sh_prom11 = trunc i64 %and10 to i32
  %shl12 = shl i32 %add, %sh_prom11
  %neg = xor i32 %shl12, -1
  %and13 = and i32 %conv5, %neg
  %9 = load i64, i64* %val, align 8
  %conv14 = trunc i64 %9 to i16
  %conv15 = sext i16 %conv14 to i32
  %10 = load i64, i64* %size.addr, align 8
  %shr16 = ashr i64 %10, 16
  %sub17 = sub i64 %shr16, 1
  %sh_prom18 = trunc i64 %sub17 to i32
  %shl19 = shl i32 1, %sh_prom18
  %sub20 = sub i32 %shl19, 1
  %shl21 = shl i32 %sub20, 1
  %add22 = add i32 %shl21, 1
  %and23 = and i32 %conv15, %add22
  %11 = load i64, i64* %size.addr, align 8
  %and24 = and i64 %11, 65535
  %sh_prom25 = trunc i64 %and24 to i32
  %shl26 = shl i32 %and23, %sh_prom25
  %or27 = or i32 %and13, %shl26
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %val, align 8
  %conv28 = trunc i64 %12 to i16
  %conv29 = sext i16 %conv28 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or27, %cond.true ], [ %conv29, %cond.false ]
  %conv30 = trunc i32 %cond to i16
  store i16 %conv30, i16* %field, align 2
  %13 = load i16, i16* %field, align 2
  %conv31 = sext i16 %13 to i32
  %shr32 = ashr i32 %conv31, 8
  %and33 = and i32 %shr32, 255
  %14 = load i16, i16* %field, align 2
  %conv34 = sext i16 %14 to i32
  %shl35 = shl i32 %conv34, 8
  %and36 = and i32 %shl35, 65280
  %or37 = or i32 %and33, %and36
  %conv38 = trunc i32 %or37 to i16
  store i16 %conv38, i16* %field, align 2
  %15 = load i8*, i8** %ptr.addr, align 8
  %16 = bitcast i16* %field to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 2, i32 1, i1 false)
  %17 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: uwtable
define internal %struct._object* @h_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i16, align 2
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i16* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 2, i32 1, i1 false)
  %2 = load i16, i16* %val, align 2
  %conv = sext i16 %2 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %3 = load i16, i16* %val, align 2
  %conv1 = sext i16 %3 to i32
  %shl = shl i32 %conv1, 8
  %and2 = and i32 %shl, 65280
  %or = or i32 %and, %and2
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %val, align 2
  %4 = load i64, i64* %size.addr, align 8
  %shr4 = ashr i64 %4, 16
  %tobool = icmp ne i64 %shr4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %size.addr, align 8
  %and5 = and i64 %5, 65535
  %sub = sub i64 16, %and5
  %6 = load i64, i64* %size.addr, align 8
  %shr6 = ashr i64 %6, 16
  %sub7 = sub i64 %sub, %shr6
  %7 = load i16, i16* %val, align 2
  %conv8 = sext i16 %7 to i32
  %sh_prom = trunc i64 %sub7 to i32
  %shl9 = shl i32 %conv8, %sh_prom
  %conv10 = trunc i32 %shl9 to i16
  store i16 %conv10, i16* %val, align 2
  %8 = load i64, i64* %size.addr, align 8
  %shr11 = ashr i64 %8, 16
  %sub12 = sub i64 16, %shr11
  %9 = load i16, i16* %val, align 2
  %conv13 = sext i16 %9 to i32
  %sh_prom14 = trunc i64 %sub12 to i32
  %shr15 = ashr i32 %conv13, %sh_prom14
  %conv16 = trunc i32 %shr15 to i16
  store i16 %conv16, i16* %val, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i16, i16* %val, align 2
  %conv17 = sext i16 %10 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv17)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @H_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %x = alloca i16, align 2
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_ulong(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i16* %x to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 2, i32 1, i1 false)
  %3 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %3, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i16, i16* %x, align 2
  %conv = zext i16 %4 to i32
  %5 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %5, 16
  %sub = sub i64 %shr1, 1
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 1, %sh_prom
  %sub2 = sub i32 %shl, 1
  %shl3 = shl i32 %sub2, 1
  %add = add i32 %shl3, 1
  %6 = load i64, i64* %size.addr, align 8
  %and = and i64 %6, 65535
  %sh_prom4 = trunc i64 %and to i32
  %shl5 = shl i32 %add, %sh_prom4
  %neg = xor i32 %shl5, -1
  %and6 = and i32 %conv, %neg
  %7 = load i64, i64* %val, align 8
  %conv7 = trunc i64 %7 to i16
  %conv8 = zext i16 %conv7 to i32
  %8 = load i64, i64* %size.addr, align 8
  %shr9 = ashr i64 %8, 16
  %sub10 = sub i64 %shr9, 1
  %sh_prom11 = trunc i64 %sub10 to i32
  %shl12 = shl i32 1, %sh_prom11
  %sub13 = sub i32 %shl12, 1
  %shl14 = shl i32 %sub13, 1
  %add15 = add i32 %shl14, 1
  %and16 = and i32 %conv8, %add15
  %9 = load i64, i64* %size.addr, align 8
  %and17 = and i64 %9, 65535
  %sh_prom18 = trunc i64 %and17 to i32
  %shl19 = shl i32 %and16, %sh_prom18
  %or = or i32 %and6, %shl19
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %val, align 8
  %conv20 = trunc i64 %10 to i16
  %conv21 = zext i16 %conv20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv21, %cond.false ]
  %conv22 = trunc i32 %cond to i16
  store i16 %conv22, i16* %x, align 2
  %11 = load i8*, i8** %ptr.addr, align 8
  %12 = bitcast i16* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 2, i32 1, i1 false)
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: uwtable
define internal %struct._object* @H_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i16, align 2
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i16* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 2, i32 1, i1 false)
  %2 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %2, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %and = and i64 %3, 65535
  %sub = sub i64 16, %and
  %4 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %4, 16
  %sub2 = sub i64 %sub, %shr1
  %5 = load i16, i16* %val, align 2
  %conv = zext i16 %5 to i32
  %sh_prom = trunc i64 %sub2 to i32
  %shl = shl i32 %conv, %sh_prom
  %conv3 = trunc i32 %shl to i16
  store i16 %conv3, i16* %val, align 2
  %6 = load i64, i64* %size.addr, align 8
  %shr4 = ashr i64 %6, 16
  %sub5 = sub i64 16, %shr4
  %7 = load i16, i16* %val, align 2
  %conv6 = zext i16 %7 to i32
  %sh_prom7 = trunc i64 %sub5 to i32
  %shr8 = ashr i32 %conv6, %sh_prom7
  %conv9 = trunc i32 %shr8 to i16
  store i16 %conv9, i16* %val, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i16, i16* %val, align 2
  %conv10 = zext i16 %8 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv10)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @H_set_sw(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %field = alloca i16, align 2
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_ulong(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i16* %field to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 2, i32 1, i1 false)
  %3 = load i16, i16* %field, align 2
  %conv = zext i16 %3 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %4 = load i16, i16* %field, align 2
  %conv1 = zext i16 %4 to i32
  %shl = shl i32 %conv1, 8
  %and2 = and i32 %shl, 65280
  %or = or i32 %and, %and2
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %field, align 2
  %5 = load i64, i64* %size.addr, align 8
  %shr4 = ashr i64 %5, 16
  %tobool = icmp ne i64 %shr4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i16, i16* %field, align 2
  %conv5 = zext i16 %6 to i32
  %7 = load i64, i64* %size.addr, align 8
  %shr6 = ashr i64 %7, 16
  %sub = sub i64 %shr6, 1
  %sh_prom = trunc i64 %sub to i32
  %shl7 = shl i32 1, %sh_prom
  %sub8 = sub i32 %shl7, 1
  %shl9 = shl i32 %sub8, 1
  %add = add i32 %shl9, 1
  %8 = load i64, i64* %size.addr, align 8
  %and10 = and i64 %8, 65535
  %sh_prom11 = trunc i64 %and10 to i32
  %shl12 = shl i32 %add, %sh_prom11
  %neg = xor i32 %shl12, -1
  %and13 = and i32 %conv5, %neg
  %9 = load i64, i64* %val, align 8
  %conv14 = trunc i64 %9 to i16
  %conv15 = zext i16 %conv14 to i32
  %10 = load i64, i64* %size.addr, align 8
  %shr16 = ashr i64 %10, 16
  %sub17 = sub i64 %shr16, 1
  %sh_prom18 = trunc i64 %sub17 to i32
  %shl19 = shl i32 1, %sh_prom18
  %sub20 = sub i32 %shl19, 1
  %shl21 = shl i32 %sub20, 1
  %add22 = add i32 %shl21, 1
  %and23 = and i32 %conv15, %add22
  %11 = load i64, i64* %size.addr, align 8
  %and24 = and i64 %11, 65535
  %sh_prom25 = trunc i64 %and24 to i32
  %shl26 = shl i32 %and23, %sh_prom25
  %or27 = or i32 %and13, %shl26
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %val, align 8
  %conv28 = trunc i64 %12 to i16
  %conv29 = zext i16 %conv28 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or27, %cond.true ], [ %conv29, %cond.false ]
  %conv30 = trunc i32 %cond to i16
  store i16 %conv30, i16* %field, align 2
  %13 = load i16, i16* %field, align 2
  %conv31 = zext i16 %13 to i32
  %shr32 = ashr i32 %conv31, 8
  %and33 = and i32 %shr32, 255
  %14 = load i16, i16* %field, align 2
  %conv34 = zext i16 %14 to i32
  %shl35 = shl i32 %conv34, 8
  %and36 = and i32 %shl35, 65280
  %or37 = or i32 %and33, %and36
  %conv38 = trunc i32 %or37 to i16
  store i16 %conv38, i16* %field, align 2
  %15 = load i8*, i8** %ptr.addr, align 8
  %16 = bitcast i16* %field to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 2, i32 1, i1 false)
  %17 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: uwtable
define internal %struct._object* @H_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i16, align 2
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i16* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 2, i32 1, i1 false)
  %2 = load i16, i16* %val, align 2
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %3 = load i16, i16* %val, align 2
  %conv1 = zext i16 %3 to i32
  %shl = shl i32 %conv1, 8
  %and2 = and i32 %shl, 65280
  %or = or i32 %and, %and2
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %val, align 2
  %4 = load i64, i64* %size.addr, align 8
  %shr4 = ashr i64 %4, 16
  %tobool = icmp ne i64 %shr4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %size.addr, align 8
  %and5 = and i64 %5, 65535
  %sub = sub i64 16, %and5
  %6 = load i64, i64* %size.addr, align 8
  %shr6 = ashr i64 %6, 16
  %sub7 = sub i64 %sub, %shr6
  %7 = load i16, i16* %val, align 2
  %conv8 = zext i16 %7 to i32
  %sh_prom = trunc i64 %sub7 to i32
  %shl9 = shl i32 %conv8, %sh_prom
  %conv10 = trunc i32 %shl9 to i16
  store i16 %conv10, i16* %val, align 2
  %8 = load i64, i64* %size.addr, align 8
  %shr11 = ashr i64 %8, 16
  %sub12 = sub i64 16, %shr11
  %9 = load i16, i16* %val, align 2
  %conv13 = zext i16 %9 to i32
  %sh_prom14 = trunc i64 %sub12 to i32
  %shr15 = ashr i32 %conv13, %sh_prom14
  %conv16 = trunc i32 %shr15 to i16
  store i16 %conv16, i16* %val, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i16, i16* %val, align 2
  %conv17 = zext i16 %10 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv17)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @i_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %x = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %x to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false)
  %3 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %3, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32, i32* %x, align 4
  %5 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %5, 16
  %sub = sub i64 %shr1, 1
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 1, %sh_prom
  %sub2 = sub i32 %shl, 1
  %shl3 = shl i32 %sub2, 1
  %add = add i32 %shl3, 1
  %6 = load i64, i64* %size.addr, align 8
  %and = and i64 %6, 65535
  %sh_prom4 = trunc i64 %and to i32
  %shl5 = shl i32 %add, %sh_prom4
  %neg = xor i32 %shl5, -1
  %and6 = and i32 %4, %neg
  %7 = load i64, i64* %val, align 8
  %conv = trunc i64 %7 to i32
  %8 = load i64, i64* %size.addr, align 8
  %shr7 = ashr i64 %8, 16
  %sub8 = sub i64 %shr7, 1
  %sh_prom9 = trunc i64 %sub8 to i32
  %shl10 = shl i32 1, %sh_prom9
  %sub11 = sub i32 %shl10, 1
  %shl12 = shl i32 %sub11, 1
  %add13 = add i32 %shl12, 1
  %and14 = and i32 %conv, %add13
  %9 = load i64, i64* %size.addr, align 8
  %and15 = and i64 %9, 65535
  %sh_prom16 = trunc i64 %and15 to i32
  %shl17 = shl i32 %and14, %sh_prom16
  %or = or i32 %and6, %shl17
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %val, align 8
  %conv18 = trunc i64 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv18, %cond.false ]
  store i32 %cond, i32* %x, align 4
  %11 = load i8*, i8** %ptr.addr, align 8
  %12 = bitcast i32* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 4, i32 1, i1 false)
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: uwtable
define internal %struct._object* @i_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i32* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 4, i32 1, i1 false)
  %2 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %2, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %and = and i64 %3, 65535
  %sub = sub i64 32, %and
  %4 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %4, 16
  %sub2 = sub i64 %sub, %shr1
  %5 = load i32, i32* %val, align 4
  %sh_prom = trunc i64 %sub2 to i32
  %shl = shl i32 %5, %sh_prom
  store i32 %shl, i32* %val, align 4
  %6 = load i64, i64* %size.addr, align 8
  %shr3 = ashr i64 %6, 16
  %sub4 = sub i64 32, %shr3
  %7 = load i32, i32* %val, align 4
  %sh_prom5 = trunc i64 %sub4 to i32
  %shr6 = ashr i32 %7, %sh_prom5
  store i32 %shr6, i32* %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %val, align 4
  %conv = sext i32 %8 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @i_set_sw(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %field = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %field to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false)
  %3 = load i32, i32* %field, align 4
  %and = and i32 %3, 255
  %shl = shl i32 %and, 24
  %4 = load i32, i32* %field, align 4
  %and1 = and i32 %4, 65280
  %shl2 = shl i32 %and1, 8
  %or = or i32 %shl, %shl2
  %5 = load i32, i32* %field, align 4
  %and3 = and i32 %5, 16711680
  %shr = ashr i32 %and3, 8
  %or4 = or i32 %or, %shr
  %6 = load i32, i32* %field, align 4
  %shr5 = ashr i32 %6, 24
  %and6 = and i32 %shr5, 255
  %or7 = or i32 %or4, %and6
  store i32 %or7, i32* %field, align 4
  %7 = load i64, i64* %size.addr, align 8
  %shr8 = ashr i64 %7, 16
  %tobool = icmp ne i64 %shr8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load i32, i32* %field, align 4
  %9 = load i64, i64* %size.addr, align 8
  %shr9 = ashr i64 %9, 16
  %sub = sub i64 %shr9, 1
  %sh_prom = trunc i64 %sub to i32
  %shl10 = shl i32 1, %sh_prom
  %sub11 = sub i32 %shl10, 1
  %shl12 = shl i32 %sub11, 1
  %add = add i32 %shl12, 1
  %10 = load i64, i64* %size.addr, align 8
  %and13 = and i64 %10, 65535
  %sh_prom14 = trunc i64 %and13 to i32
  %shl15 = shl i32 %add, %sh_prom14
  %neg = xor i32 %shl15, -1
  %and16 = and i32 %8, %neg
  %11 = load i64, i64* %val, align 8
  %conv = trunc i64 %11 to i32
  %12 = load i64, i64* %size.addr, align 8
  %shr17 = ashr i64 %12, 16
  %sub18 = sub i64 %shr17, 1
  %sh_prom19 = trunc i64 %sub18 to i32
  %shl20 = shl i32 1, %sh_prom19
  %sub21 = sub i32 %shl20, 1
  %shl22 = shl i32 %sub21, 1
  %add23 = add i32 %shl22, 1
  %and24 = and i32 %conv, %add23
  %13 = load i64, i64* %size.addr, align 8
  %and25 = and i64 %13, 65535
  %sh_prom26 = trunc i64 %and25 to i32
  %shl27 = shl i32 %and24, %sh_prom26
  %or28 = or i32 %and16, %shl27
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %14 = load i64, i64* %val, align 8
  %conv29 = trunc i64 %14 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or28, %cond.true ], [ %conv29, %cond.false ]
  store i32 %cond, i32* %field, align 4
  %15 = load i32, i32* %field, align 4
  %and30 = and i32 %15, 255
  %shl31 = shl i32 %and30, 24
  %16 = load i32, i32* %field, align 4
  %and32 = and i32 %16, 65280
  %shl33 = shl i32 %and32, 8
  %or34 = or i32 %shl31, %shl33
  %17 = load i32, i32* %field, align 4
  %and35 = and i32 %17, 16711680
  %shr36 = ashr i32 %and35, 8
  %or37 = or i32 %or34, %shr36
  %18 = load i32, i32* %field, align 4
  %shr38 = ashr i32 %18, 24
  %and39 = and i32 %shr38, 255
  %or40 = or i32 %or37, %and39
  store i32 %or40, i32* %field, align 4
  %19 = load i8*, i8** %ptr.addr, align 8
  %20 = bitcast i32* %field to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 4, i32 1, i1 false)
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: uwtable
define internal %struct._object* @i_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i32* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 4, i32 1, i1 false)
  %2 = load i32, i32* %val, align 4
  %and = and i32 %2, 255
  %shl = shl i32 %and, 24
  %3 = load i32, i32* %val, align 4
  %and1 = and i32 %3, 65280
  %shl2 = shl i32 %and1, 8
  %or = or i32 %shl, %shl2
  %4 = load i32, i32* %val, align 4
  %and3 = and i32 %4, 16711680
  %shr = ashr i32 %and3, 8
  %or4 = or i32 %or, %shr
  %5 = load i32, i32* %val, align 4
  %shr5 = ashr i32 %5, 24
  %and6 = and i32 %shr5, 255
  %or7 = or i32 %or4, %and6
  store i32 %or7, i32* %val, align 4
  %6 = load i64, i64* %size.addr, align 8
  %shr8 = ashr i64 %6, 16
  %tobool = icmp ne i64 %shr8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %size.addr, align 8
  %and9 = and i64 %7, 65535
  %sub = sub i64 32, %and9
  %8 = load i64, i64* %size.addr, align 8
  %shr10 = ashr i64 %8, 16
  %sub11 = sub i64 %sub, %shr10
  %9 = load i32, i32* %val, align 4
  %sh_prom = trunc i64 %sub11 to i32
  %shl12 = shl i32 %9, %sh_prom
  store i32 %shl12, i32* %val, align 4
  %10 = load i64, i64* %size.addr, align 8
  %shr13 = ashr i64 %10, 16
  %sub14 = sub i64 32, %shr13
  %11 = load i32, i32* %val, align 4
  %sh_prom15 = trunc i64 %sub14 to i32
  %shr16 = ashr i32 %11, %sh_prom15
  store i32 %shr16, i32* %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %val, align 4
  %conv = sext i32 %12 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @I_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %x = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_ulong(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %x to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false)
  %3 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %3, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32, i32* %x, align 4
  %5 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %5, 16
  %sub = sub i64 %shr1, 1
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 1, %sh_prom
  %sub2 = sub i32 %shl, 1
  %shl3 = shl i32 %sub2, 1
  %add = add i32 %shl3, 1
  %6 = load i64, i64* %size.addr, align 8
  %and = and i64 %6, 65535
  %sh_prom4 = trunc i64 %and to i32
  %shl5 = shl i32 %add, %sh_prom4
  %neg = xor i32 %shl5, -1
  %and6 = and i32 %4, %neg
  %7 = load i64, i64* %val, align 8
  %conv = trunc i64 %7 to i32
  %8 = load i64, i64* %size.addr, align 8
  %shr7 = ashr i64 %8, 16
  %sub8 = sub i64 %shr7, 1
  %sh_prom9 = trunc i64 %sub8 to i32
  %shl10 = shl i32 1, %sh_prom9
  %sub11 = sub i32 %shl10, 1
  %shl12 = shl i32 %sub11, 1
  %add13 = add i32 %shl12, 1
  %and14 = and i32 %conv, %add13
  %9 = load i64, i64* %size.addr, align 8
  %and15 = and i64 %9, 65535
  %sh_prom16 = trunc i64 %and15 to i32
  %shl17 = shl i32 %and14, %sh_prom16
  %or = or i32 %and6, %shl17
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %val, align 8
  %conv18 = trunc i64 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv18, %cond.false ]
  store i32 %cond, i32* %x, align 4
  %11 = load i8*, i8** %ptr.addr, align 8
  %12 = bitcast i32* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 4, i32 1, i1 false)
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: uwtable
define internal %struct._object* @I_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i32* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 4, i32 1, i1 false)
  %2 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %2, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %and = and i64 %3, 65535
  %sub = sub i64 32, %and
  %4 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %4, 16
  %sub2 = sub i64 %sub, %shr1
  %5 = load i32, i32* %val, align 4
  %sh_prom = trunc i64 %sub2 to i32
  %shl = shl i32 %5, %sh_prom
  store i32 %shl, i32* %val, align 4
  %6 = load i64, i64* %size.addr, align 8
  %shr3 = ashr i64 %6, 16
  %sub4 = sub i64 32, %shr3
  %7 = load i32, i32* %val, align 4
  %sh_prom5 = trunc i64 %sub4 to i32
  %shr6 = lshr i32 %7, %sh_prom5
  store i32 %shr6, i32* %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %val, align 4
  %conv = zext i32 %8 to i64
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @I_set_sw(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %field = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_ulong(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %field to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false)
  %3 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %3, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32, i32* %field, align 4
  %5 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %5, 16
  %sub = sub i64 %shr1, 1
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 1, %sh_prom
  %sub2 = sub i32 %shl, 1
  %shl3 = shl i32 %sub2, 1
  %add = add i32 %shl3, 1
  %6 = load i64, i64* %size.addr, align 8
  %and = and i64 %6, 65535
  %sh_prom4 = trunc i64 %and to i32
  %shl5 = shl i32 %add, %sh_prom4
  %neg = xor i32 %shl5, -1
  %and6 = and i32 %4, %neg
  %7 = load i64, i64* %val, align 8
  %conv = trunc i64 %7 to i32
  %8 = load i64, i64* %size.addr, align 8
  %shr7 = ashr i64 %8, 16
  %sub8 = sub i64 %shr7, 1
  %sh_prom9 = trunc i64 %sub8 to i32
  %shl10 = shl i32 1, %sh_prom9
  %sub11 = sub i32 %shl10, 1
  %shl12 = shl i32 %sub11, 1
  %add13 = add i32 %shl12, 1
  %and14 = and i32 %conv, %add13
  %9 = load i64, i64* %size.addr, align 8
  %and15 = and i64 %9, 65535
  %sh_prom16 = trunc i64 %and15 to i32
  %shl17 = shl i32 %and14, %sh_prom16
  %or = or i32 %and6, %shl17
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %val, align 8
  %conv18 = trunc i64 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv18, %cond.false ]
  store i32 %cond, i32* %field, align 4
  %11 = load i32, i32* %field, align 4
  %and19 = and i32 %11, 255
  %shl20 = shl i32 %and19, 24
  %12 = load i32, i32* %field, align 4
  %and21 = and i32 %12, 65280
  %shl22 = shl i32 %and21, 8
  %or23 = or i32 %shl20, %shl22
  %13 = load i32, i32* %field, align 4
  %and24 = and i32 %13, 16711680
  %shr25 = lshr i32 %and24, 8
  %or26 = or i32 %or23, %shr25
  %14 = load i32, i32* %field, align 4
  %shr27 = lshr i32 %14, 24
  %and28 = and i32 %shr27, 255
  %or29 = or i32 %or26, %and28
  store i32 %or29, i32* %field, align 4
  %15 = load i8*, i8** %ptr.addr, align 8
  %16 = bitcast i32* %field to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 4, i32 1, i1 false)
  %17 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: uwtable
define internal %struct._object* @I_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i32* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 4, i32 1, i1 false)
  %2 = load i32, i32* %val, align 4
  %and = and i32 %2, 255
  %shl = shl i32 %and, 24
  %3 = load i32, i32* %val, align 4
  %and1 = and i32 %3, 65280
  %shl2 = shl i32 %and1, 8
  %or = or i32 %shl, %shl2
  %4 = load i32, i32* %val, align 4
  %and3 = and i32 %4, 16711680
  %shr = lshr i32 %and3, 8
  %or4 = or i32 %or, %shr
  %5 = load i32, i32* %val, align 4
  %shr5 = lshr i32 %5, 24
  %and6 = and i32 %shr5, 255
  %or7 = or i32 %or4, %and6
  store i32 %or7, i32* %val, align 4
  %6 = load i64, i64* %size.addr, align 8
  %shr8 = ashr i64 %6, 16
  %tobool = icmp ne i64 %shr8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %size.addr, align 8
  %and9 = and i64 %7, 65535
  %sub = sub i64 32, %and9
  %8 = load i64, i64* %size.addr, align 8
  %shr10 = ashr i64 %8, 16
  %sub11 = sub i64 %sub, %shr10
  %9 = load i32, i32* %val, align 4
  %sh_prom = trunc i64 %sub11 to i32
  %shl12 = shl i32 %9, %sh_prom
  store i32 %shl12, i32* %val, align 4
  %10 = load i64, i64* %size.addr, align 8
  %shr13 = ashr i64 %10, 16
  %sub14 = sub i64 32, %shr13
  %11 = load i32, i32* %val, align 4
  %sh_prom15 = trunc i64 %sub14 to i32
  %shr16 = lshr i32 %11, %sh_prom15
  store i32 %shr16, i32* %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %val, align 4
  %conv = zext i32 %12 to i64
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @l_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %x = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i64* %x to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  %3 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %3, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i64, i64* %x, align 8
  %5 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %5, 16
  %sub = sub i64 %shr1, 1
  %shl = shl i64 1, %sub
  %sub2 = sub i64 %shl, 1
  %shl3 = shl i64 %sub2, 1
  %add = add i64 %shl3, 1
  %6 = load i64, i64* %size.addr, align 8
  %and = and i64 %6, 65535
  %shl4 = shl i64 %add, %and
  %neg = xor i64 %shl4, -1
  %and5 = and i64 %4, %neg
  %7 = load i64, i64* %val, align 8
  %8 = load i64, i64* %size.addr, align 8
  %shr6 = ashr i64 %8, 16
  %sub7 = sub i64 %shr6, 1
  %shl8 = shl i64 1, %sub7
  %sub9 = sub i64 %shl8, 1
  %shl10 = shl i64 %sub9, 1
  %add11 = add i64 %shl10, 1
  %and12 = and i64 %7, %add11
  %9 = load i64, i64* %size.addr, align 8
  %and13 = and i64 %9, 65535
  %shl14 = shl i64 %and12, %and13
  %or = or i64 %and5, %shl14
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %val, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or, %cond.true ], [ %10, %cond.false ]
  store i64 %cond, i64* %x, align 8
  %11 = load i8*, i8** %ptr.addr, align 8
  %12 = bitcast i64* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 1, i1 false)
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: uwtable
define internal %struct._object* @l_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i64* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %2, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %and = and i64 %3, 65535
  %sub = sub i64 64, %and
  %4 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %4, 16
  %sub2 = sub i64 %sub, %shr1
  %5 = load i64, i64* %val, align 8
  %shl = shl i64 %5, %sub2
  store i64 %shl, i64* %val, align 8
  %6 = load i64, i64* %size.addr, align 8
  %shr3 = ashr i64 %6, 16
  %sub4 = sub i64 64, %shr3
  %7 = load i64, i64* %val, align 8
  %shr5 = ashr i64 %7, %sub4
  store i64 %shr5, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %val, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %8)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @l_set_sw(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %field = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_long(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i64* %field to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  %3 = load i64, i64* %field, align 8
  %and = and i64 %3, 255
  %shl = shl i64 %and, 56
  %4 = load i64, i64* %field, align 8
  %and1 = and i64 %4, 65280
  %shl2 = shl i64 %and1, 40
  %or = or i64 %shl, %shl2
  %5 = load i64, i64* %field, align 8
  %and3 = and i64 %5, 16711680
  %shl4 = shl i64 %and3, 24
  %or5 = or i64 %or, %shl4
  %6 = load i64, i64* %field, align 8
  %and6 = and i64 %6, 4278190080
  %shl7 = shl i64 %and6, 8
  %or8 = or i64 %or5, %shl7
  %7 = load i64, i64* %field, align 8
  %and9 = and i64 %7, 1095216660480
  %shr = ashr i64 %and9, 8
  %or10 = or i64 %or8, %shr
  %8 = load i64, i64* %field, align 8
  %and11 = and i64 %8, 280375465082880
  %shr12 = ashr i64 %and11, 24
  %or13 = or i64 %or10, %shr12
  %9 = load i64, i64* %field, align 8
  %and14 = and i64 %9, 71776119061217280
  %shr15 = ashr i64 %and14, 40
  %or16 = or i64 %or13, %shr15
  %10 = load i64, i64* %field, align 8
  %shr17 = ashr i64 %10, 56
  %and18 = and i64 %shr17, 255
  %or19 = or i64 %or16, %and18
  store i64 %or19, i64* %field, align 8
  %11 = load i64, i64* %size.addr, align 8
  %shr20 = ashr i64 %11, 16
  %tobool = icmp ne i64 %shr20, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load i64, i64* %field, align 8
  %13 = load i64, i64* %size.addr, align 8
  %shr21 = ashr i64 %13, 16
  %sub = sub i64 %shr21, 1
  %shl22 = shl i64 1, %sub
  %sub23 = sub i64 %shl22, 1
  %shl24 = shl i64 %sub23, 1
  %add = add i64 %shl24, 1
  %14 = load i64, i64* %size.addr, align 8
  %and25 = and i64 %14, 65535
  %shl26 = shl i64 %add, %and25
  %neg = xor i64 %shl26, -1
  %and27 = and i64 %12, %neg
  %15 = load i64, i64* %val, align 8
  %16 = load i64, i64* %size.addr, align 8
  %shr28 = ashr i64 %16, 16
  %sub29 = sub i64 %shr28, 1
  %shl30 = shl i64 1, %sub29
  %sub31 = sub i64 %shl30, 1
  %shl32 = shl i64 %sub31, 1
  %add33 = add i64 %shl32, 1
  %and34 = and i64 %15, %add33
  %17 = load i64, i64* %size.addr, align 8
  %and35 = and i64 %17, 65535
  %shl36 = shl i64 %and34, %and35
  %or37 = or i64 %and27, %shl36
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %18 = load i64, i64* %val, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or37, %cond.true ], [ %18, %cond.false ]
  store i64 %cond, i64* %field, align 8
  %19 = load i64, i64* %field, align 8
  %and38 = and i64 %19, 255
  %shl39 = shl i64 %and38, 56
  %20 = load i64, i64* %field, align 8
  %and40 = and i64 %20, 65280
  %shl41 = shl i64 %and40, 40
  %or42 = or i64 %shl39, %shl41
  %21 = load i64, i64* %field, align 8
  %and43 = and i64 %21, 16711680
  %shl44 = shl i64 %and43, 24
  %or45 = or i64 %or42, %shl44
  %22 = load i64, i64* %field, align 8
  %and46 = and i64 %22, 4278190080
  %shl47 = shl i64 %and46, 8
  %or48 = or i64 %or45, %shl47
  %23 = load i64, i64* %field, align 8
  %and49 = and i64 %23, 1095216660480
  %shr50 = ashr i64 %and49, 8
  %or51 = or i64 %or48, %shr50
  %24 = load i64, i64* %field, align 8
  %and52 = and i64 %24, 280375465082880
  %shr53 = ashr i64 %and52, 24
  %or54 = or i64 %or51, %shr53
  %25 = load i64, i64* %field, align 8
  %and55 = and i64 %25, 71776119061217280
  %shr56 = ashr i64 %and55, 40
  %or57 = or i64 %or54, %shr56
  %26 = load i64, i64* %field, align 8
  %shr58 = ashr i64 %26, 56
  %and59 = and i64 %shr58, 255
  %or60 = or i64 %or57, %and59
  store i64 %or60, i64* %field, align 8
  %27 = load i8*, i8** %ptr.addr, align 8
  %28 = bitcast i64* %field to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 1, i1 false)
  %29 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: uwtable
define internal %struct._object* @l_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i64* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %val, align 8
  %and = and i64 %2, 255
  %shl = shl i64 %and, 56
  %3 = load i64, i64* %val, align 8
  %and1 = and i64 %3, 65280
  %shl2 = shl i64 %and1, 40
  %or = or i64 %shl, %shl2
  %4 = load i64, i64* %val, align 8
  %and3 = and i64 %4, 16711680
  %shl4 = shl i64 %and3, 24
  %or5 = or i64 %or, %shl4
  %5 = load i64, i64* %val, align 8
  %and6 = and i64 %5, 4278190080
  %shl7 = shl i64 %and6, 8
  %or8 = or i64 %or5, %shl7
  %6 = load i64, i64* %val, align 8
  %and9 = and i64 %6, 1095216660480
  %shr = ashr i64 %and9, 8
  %or10 = or i64 %or8, %shr
  %7 = load i64, i64* %val, align 8
  %and11 = and i64 %7, 280375465082880
  %shr12 = ashr i64 %and11, 24
  %or13 = or i64 %or10, %shr12
  %8 = load i64, i64* %val, align 8
  %and14 = and i64 %8, 71776119061217280
  %shr15 = ashr i64 %and14, 40
  %or16 = or i64 %or13, %shr15
  %9 = load i64, i64* %val, align 8
  %shr17 = ashr i64 %9, 56
  %and18 = and i64 %shr17, 255
  %or19 = or i64 %or16, %and18
  store i64 %or19, i64* %val, align 8
  %10 = load i64, i64* %size.addr, align 8
  %shr20 = ashr i64 %10, 16
  %tobool = icmp ne i64 %shr20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i64, i64* %size.addr, align 8
  %and21 = and i64 %11, 65535
  %sub = sub i64 64, %and21
  %12 = load i64, i64* %size.addr, align 8
  %shr22 = ashr i64 %12, 16
  %sub23 = sub i64 %sub, %shr22
  %13 = load i64, i64* %val, align 8
  %shl24 = shl i64 %13, %sub23
  store i64 %shl24, i64* %val, align 8
  %14 = load i64, i64* %size.addr, align 8
  %shr25 = ashr i64 %14, 16
  %sub26 = sub i64 64, %shr25
  %15 = load i64, i64* %val, align 8
  %shr27 = ashr i64 %15, %sub26
  store i64 %shr27, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i64, i64* %val, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %16)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @L_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %x = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_ulong(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i64* %x to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  %3 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %3, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i64, i64* %x, align 8
  %5 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %5, 16
  %sub = sub i64 %shr1, 1
  %shl = shl i64 1, %sub
  %sub2 = sub i64 %shl, 1
  %shl3 = shl i64 %sub2, 1
  %add = add i64 %shl3, 1
  %6 = load i64, i64* %size.addr, align 8
  %and = and i64 %6, 65535
  %shl4 = shl i64 %add, %and
  %neg = xor i64 %shl4, -1
  %and5 = and i64 %4, %neg
  %7 = load i64, i64* %val, align 8
  %8 = load i64, i64* %size.addr, align 8
  %shr6 = ashr i64 %8, 16
  %sub7 = sub i64 %shr6, 1
  %shl8 = shl i64 1, %sub7
  %sub9 = sub i64 %shl8, 1
  %shl10 = shl i64 %sub9, 1
  %add11 = add i64 %shl10, 1
  %and12 = and i64 %7, %add11
  %9 = load i64, i64* %size.addr, align 8
  %and13 = and i64 %9, 65535
  %shl14 = shl i64 %and12, %and13
  %or = or i64 %and5, %shl14
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %val, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or, %cond.true ], [ %10, %cond.false ]
  store i64 %cond, i64* %x, align 8
  %11 = load i8*, i8** %ptr.addr, align 8
  %12 = bitcast i64* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 1, i1 false)
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: uwtable
define internal %struct._object* @L_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i64* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %2, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %and = and i64 %3, 65535
  %sub = sub i64 64, %and
  %4 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %4, 16
  %sub2 = sub i64 %sub, %shr1
  %5 = load i64, i64* %val, align 8
  %shl = shl i64 %5, %sub2
  store i64 %shl, i64* %val, align 8
  %6 = load i64, i64* %size.addr, align 8
  %shr3 = ashr i64 %6, 16
  %sub4 = sub i64 64, %shr3
  %7 = load i64, i64* %val, align 8
  %shr5 = lshr i64 %7, %sub4
  store i64 %shr5, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %val, align 8
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %8)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @L_set_sw(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %field = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_ulong(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i64* %field to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  %3 = load i64, i64* %field, align 8
  %and = and i64 %3, 255
  %shl = shl i64 %and, 56
  %4 = load i64, i64* %field, align 8
  %and1 = and i64 %4, 65280
  %shl2 = shl i64 %and1, 40
  %or = or i64 %shl, %shl2
  %5 = load i64, i64* %field, align 8
  %and3 = and i64 %5, 16711680
  %shl4 = shl i64 %and3, 24
  %or5 = or i64 %or, %shl4
  %6 = load i64, i64* %field, align 8
  %and6 = and i64 %6, 4278190080
  %shl7 = shl i64 %and6, 8
  %or8 = or i64 %or5, %shl7
  %7 = load i64, i64* %field, align 8
  %and9 = and i64 %7, 1095216660480
  %shr = lshr i64 %and9, 8
  %or10 = or i64 %or8, %shr
  %8 = load i64, i64* %field, align 8
  %and11 = and i64 %8, 280375465082880
  %shr12 = lshr i64 %and11, 24
  %or13 = or i64 %or10, %shr12
  %9 = load i64, i64* %field, align 8
  %and14 = and i64 %9, 71776119061217280
  %shr15 = lshr i64 %and14, 40
  %or16 = or i64 %or13, %shr15
  %10 = load i64, i64* %field, align 8
  %shr17 = lshr i64 %10, 56
  %and18 = and i64 %shr17, 255
  %or19 = or i64 %or16, %and18
  store i64 %or19, i64* %field, align 8
  %11 = load i64, i64* %size.addr, align 8
  %shr20 = ashr i64 %11, 16
  %tobool = icmp ne i64 %shr20, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load i64, i64* %field, align 8
  %13 = load i64, i64* %size.addr, align 8
  %shr21 = ashr i64 %13, 16
  %sub = sub i64 %shr21, 1
  %shl22 = shl i64 1, %sub
  %sub23 = sub i64 %shl22, 1
  %shl24 = shl i64 %sub23, 1
  %add = add i64 %shl24, 1
  %14 = load i64, i64* %size.addr, align 8
  %and25 = and i64 %14, 65535
  %shl26 = shl i64 %add, %and25
  %neg = xor i64 %shl26, -1
  %and27 = and i64 %12, %neg
  %15 = load i64, i64* %val, align 8
  %16 = load i64, i64* %size.addr, align 8
  %shr28 = ashr i64 %16, 16
  %sub29 = sub i64 %shr28, 1
  %shl30 = shl i64 1, %sub29
  %sub31 = sub i64 %shl30, 1
  %shl32 = shl i64 %sub31, 1
  %add33 = add i64 %shl32, 1
  %and34 = and i64 %15, %add33
  %17 = load i64, i64* %size.addr, align 8
  %and35 = and i64 %17, 65535
  %shl36 = shl i64 %and34, %and35
  %or37 = or i64 %and27, %shl36
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %18 = load i64, i64* %val, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or37, %cond.true ], [ %18, %cond.false ]
  store i64 %cond, i64* %field, align 8
  %19 = load i64, i64* %field, align 8
  %and38 = and i64 %19, 255
  %shl39 = shl i64 %and38, 56
  %20 = load i64, i64* %field, align 8
  %and40 = and i64 %20, 65280
  %shl41 = shl i64 %and40, 40
  %or42 = or i64 %shl39, %shl41
  %21 = load i64, i64* %field, align 8
  %and43 = and i64 %21, 16711680
  %shl44 = shl i64 %and43, 24
  %or45 = or i64 %or42, %shl44
  %22 = load i64, i64* %field, align 8
  %and46 = and i64 %22, 4278190080
  %shl47 = shl i64 %and46, 8
  %or48 = or i64 %or45, %shl47
  %23 = load i64, i64* %field, align 8
  %and49 = and i64 %23, 1095216660480
  %shr50 = lshr i64 %and49, 8
  %or51 = or i64 %or48, %shr50
  %24 = load i64, i64* %field, align 8
  %and52 = and i64 %24, 280375465082880
  %shr53 = lshr i64 %and52, 24
  %or54 = or i64 %or51, %shr53
  %25 = load i64, i64* %field, align 8
  %and55 = and i64 %25, 71776119061217280
  %shr56 = lshr i64 %and55, 40
  %or57 = or i64 %or54, %shr56
  %26 = load i64, i64* %field, align 8
  %shr58 = lshr i64 %26, 56
  %and59 = and i64 %shr58, 255
  %or60 = or i64 %or57, %and59
  store i64 %or60, i64* %field, align 8
  %27 = load i8*, i8** %ptr.addr, align 8
  %28 = bitcast i64* %field to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 1, i1 false)
  %29 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: uwtable
define internal %struct._object* @L_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i64* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %val, align 8
  %and = and i64 %2, 255
  %shl = shl i64 %and, 56
  %3 = load i64, i64* %val, align 8
  %and1 = and i64 %3, 65280
  %shl2 = shl i64 %and1, 40
  %or = or i64 %shl, %shl2
  %4 = load i64, i64* %val, align 8
  %and3 = and i64 %4, 16711680
  %shl4 = shl i64 %and3, 24
  %or5 = or i64 %or, %shl4
  %5 = load i64, i64* %val, align 8
  %and6 = and i64 %5, 4278190080
  %shl7 = shl i64 %and6, 8
  %or8 = or i64 %or5, %shl7
  %6 = load i64, i64* %val, align 8
  %and9 = and i64 %6, 1095216660480
  %shr = lshr i64 %and9, 8
  %or10 = or i64 %or8, %shr
  %7 = load i64, i64* %val, align 8
  %and11 = and i64 %7, 280375465082880
  %shr12 = lshr i64 %and11, 24
  %or13 = or i64 %or10, %shr12
  %8 = load i64, i64* %val, align 8
  %and14 = and i64 %8, 71776119061217280
  %shr15 = lshr i64 %and14, 40
  %or16 = or i64 %or13, %shr15
  %9 = load i64, i64* %val, align 8
  %shr17 = lshr i64 %9, 56
  %and18 = and i64 %shr17, 255
  %or19 = or i64 %or16, %and18
  store i64 %or19, i64* %val, align 8
  %10 = load i64, i64* %size.addr, align 8
  %shr20 = ashr i64 %10, 16
  %tobool = icmp ne i64 %shr20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i64, i64* %size.addr, align 8
  %and21 = and i64 %11, 65535
  %sub = sub i64 64, %and21
  %12 = load i64, i64* %size.addr, align 8
  %shr22 = ashr i64 %12, 16
  %sub23 = sub i64 %sub, %shr22
  %13 = load i64, i64* %val, align 8
  %shl24 = shl i64 %13, %sub23
  store i64 %shl24, i64* %val, align 8
  %14 = load i64, i64* %size.addr, align 8
  %shr25 = ashr i64 %14, 16
  %sub26 = sub i64 64, %shr25
  %15 = load i64, i64* %val, align 8
  %shr27 = lshr i64 %15, %sub26
  store i64 %shr27, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i64, i64* %val, align 8
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %16)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @q_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %x = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_longlong(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i64* %x to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  %3 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %3, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i64, i64* %x, align 8
  %5 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %5, 16
  %sub = sub i64 %shr1, 1
  %shl = shl i64 1, %sub
  %sub2 = sub i64 %shl, 1
  %shl3 = shl i64 %sub2, 1
  %add = add i64 %shl3, 1
  %6 = load i64, i64* %size.addr, align 8
  %and = and i64 %6, 65535
  %shl4 = shl i64 %add, %and
  %neg = xor i64 %shl4, -1
  %and5 = and i64 %4, %neg
  %7 = load i64, i64* %val, align 8
  %8 = load i64, i64* %size.addr, align 8
  %shr6 = ashr i64 %8, 16
  %sub7 = sub i64 %shr6, 1
  %shl8 = shl i64 1, %sub7
  %sub9 = sub i64 %shl8, 1
  %shl10 = shl i64 %sub9, 1
  %add11 = add i64 %shl10, 1
  %and12 = and i64 %7, %add11
  %9 = load i64, i64* %size.addr, align 8
  %and13 = and i64 %9, 65535
  %shl14 = shl i64 %and12, %and13
  %or = or i64 %and5, %shl14
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %val, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or, %cond.true ], [ %10, %cond.false ]
  store i64 %cond, i64* %x, align 8
  %11 = load i8*, i8** %ptr.addr, align 8
  %12 = bitcast i64* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 1, i1 false)
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: uwtable
define internal %struct._object* @q_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i64* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %2, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %and = and i64 %3, 65535
  %sub = sub i64 64, %and
  %4 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %4, 16
  %sub2 = sub i64 %sub, %shr1
  %5 = load i64, i64* %val, align 8
  %shl = shl i64 %5, %sub2
  store i64 %shl, i64* %val, align 8
  %6 = load i64, i64* %size.addr, align 8
  %shr3 = ashr i64 %6, 16
  %sub4 = sub i64 64, %shr3
  %7 = load i64, i64* %val, align 8
  %shr5 = ashr i64 %7, %sub4
  store i64 %shr5, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %val, align 8
  %call = call %struct._object* @PyLong_FromLongLong(i64 %8)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @q_set_sw(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %field = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_longlong(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i64* %field to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  %3 = load i64, i64* %field, align 8
  %and = and i64 %3, 255
  %shl = shl i64 %and, 56
  %4 = load i64, i64* %field, align 8
  %and1 = and i64 %4, 65280
  %shl2 = shl i64 %and1, 40
  %or = or i64 %shl, %shl2
  %5 = load i64, i64* %field, align 8
  %and3 = and i64 %5, 16711680
  %shl4 = shl i64 %and3, 24
  %or5 = or i64 %or, %shl4
  %6 = load i64, i64* %field, align 8
  %and6 = and i64 %6, 4278190080
  %shl7 = shl i64 %and6, 8
  %or8 = or i64 %or5, %shl7
  %7 = load i64, i64* %field, align 8
  %and9 = and i64 %7, 1095216660480
  %shr = ashr i64 %and9, 8
  %or10 = or i64 %or8, %shr
  %8 = load i64, i64* %field, align 8
  %and11 = and i64 %8, 280375465082880
  %shr12 = ashr i64 %and11, 24
  %or13 = or i64 %or10, %shr12
  %9 = load i64, i64* %field, align 8
  %and14 = and i64 %9, 71776119061217280
  %shr15 = ashr i64 %and14, 40
  %or16 = or i64 %or13, %shr15
  %10 = load i64, i64* %field, align 8
  %shr17 = ashr i64 %10, 56
  %and18 = and i64 %shr17, 255
  %or19 = or i64 %or16, %and18
  store i64 %or19, i64* %field, align 8
  %11 = load i64, i64* %size.addr, align 8
  %shr20 = ashr i64 %11, 16
  %tobool = icmp ne i64 %shr20, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load i64, i64* %field, align 8
  %13 = load i64, i64* %size.addr, align 8
  %shr21 = ashr i64 %13, 16
  %sub = sub i64 %shr21, 1
  %shl22 = shl i64 1, %sub
  %sub23 = sub i64 %shl22, 1
  %shl24 = shl i64 %sub23, 1
  %add = add i64 %shl24, 1
  %14 = load i64, i64* %size.addr, align 8
  %and25 = and i64 %14, 65535
  %shl26 = shl i64 %add, %and25
  %neg = xor i64 %shl26, -1
  %and27 = and i64 %12, %neg
  %15 = load i64, i64* %val, align 8
  %16 = load i64, i64* %size.addr, align 8
  %shr28 = ashr i64 %16, 16
  %sub29 = sub i64 %shr28, 1
  %shl30 = shl i64 1, %sub29
  %sub31 = sub i64 %shl30, 1
  %shl32 = shl i64 %sub31, 1
  %add33 = add i64 %shl32, 1
  %and34 = and i64 %15, %add33
  %17 = load i64, i64* %size.addr, align 8
  %and35 = and i64 %17, 65535
  %shl36 = shl i64 %and34, %and35
  %or37 = or i64 %and27, %shl36
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %18 = load i64, i64* %val, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or37, %cond.true ], [ %18, %cond.false ]
  store i64 %cond, i64* %field, align 8
  %19 = load i64, i64* %field, align 8
  %and38 = and i64 %19, 255
  %shl39 = shl i64 %and38, 56
  %20 = load i64, i64* %field, align 8
  %and40 = and i64 %20, 65280
  %shl41 = shl i64 %and40, 40
  %or42 = or i64 %shl39, %shl41
  %21 = load i64, i64* %field, align 8
  %and43 = and i64 %21, 16711680
  %shl44 = shl i64 %and43, 24
  %or45 = or i64 %or42, %shl44
  %22 = load i64, i64* %field, align 8
  %and46 = and i64 %22, 4278190080
  %shl47 = shl i64 %and46, 8
  %or48 = or i64 %or45, %shl47
  %23 = load i64, i64* %field, align 8
  %and49 = and i64 %23, 1095216660480
  %shr50 = ashr i64 %and49, 8
  %or51 = or i64 %or48, %shr50
  %24 = load i64, i64* %field, align 8
  %and52 = and i64 %24, 280375465082880
  %shr53 = ashr i64 %and52, 24
  %or54 = or i64 %or51, %shr53
  %25 = load i64, i64* %field, align 8
  %and55 = and i64 %25, 71776119061217280
  %shr56 = ashr i64 %and55, 40
  %or57 = or i64 %or54, %shr56
  %26 = load i64, i64* %field, align 8
  %shr58 = ashr i64 %26, 56
  %and59 = and i64 %shr58, 255
  %or60 = or i64 %or57, %and59
  store i64 %or60, i64* %field, align 8
  %27 = load i8*, i8** %ptr.addr, align 8
  %28 = bitcast i64* %field to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 1, i1 false)
  %29 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: uwtable
define internal %struct._object* @q_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i64* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %val, align 8
  %and = and i64 %2, 255
  %shl = shl i64 %and, 56
  %3 = load i64, i64* %val, align 8
  %and1 = and i64 %3, 65280
  %shl2 = shl i64 %and1, 40
  %or = or i64 %shl, %shl2
  %4 = load i64, i64* %val, align 8
  %and3 = and i64 %4, 16711680
  %shl4 = shl i64 %and3, 24
  %or5 = or i64 %or, %shl4
  %5 = load i64, i64* %val, align 8
  %and6 = and i64 %5, 4278190080
  %shl7 = shl i64 %and6, 8
  %or8 = or i64 %or5, %shl7
  %6 = load i64, i64* %val, align 8
  %and9 = and i64 %6, 1095216660480
  %shr = ashr i64 %and9, 8
  %or10 = or i64 %or8, %shr
  %7 = load i64, i64* %val, align 8
  %and11 = and i64 %7, 280375465082880
  %shr12 = ashr i64 %and11, 24
  %or13 = or i64 %or10, %shr12
  %8 = load i64, i64* %val, align 8
  %and14 = and i64 %8, 71776119061217280
  %shr15 = ashr i64 %and14, 40
  %or16 = or i64 %or13, %shr15
  %9 = load i64, i64* %val, align 8
  %shr17 = ashr i64 %9, 56
  %and18 = and i64 %shr17, 255
  %or19 = or i64 %or16, %and18
  store i64 %or19, i64* %val, align 8
  %10 = load i64, i64* %size.addr, align 8
  %shr20 = ashr i64 %10, 16
  %tobool = icmp ne i64 %shr20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i64, i64* %size.addr, align 8
  %and21 = and i64 %11, 65535
  %sub = sub i64 64, %and21
  %12 = load i64, i64* %size.addr, align 8
  %shr22 = ashr i64 %12, 16
  %sub23 = sub i64 %sub, %shr22
  %13 = load i64, i64* %val, align 8
  %shl24 = shl i64 %13, %sub23
  store i64 %shl24, i64* %val, align 8
  %14 = load i64, i64* %size.addr, align 8
  %shr25 = ashr i64 %14, 16
  %sub26 = sub i64 64, %shr25
  %15 = load i64, i64* %val, align 8
  %shr27 = ashr i64 %15, %sub26
  store i64 %shr27, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i64, i64* %val, align 8
  %call = call %struct._object* @PyLong_FromLongLong(i64 %16)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @Q_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %x = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_ulonglong(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i64* %x to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  %3 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %3, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i64, i64* %x, align 8
  %5 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %5, 16
  %sub = sub i64 %shr1, 1
  %shl = shl i64 1, %sub
  %sub2 = sub i64 %shl, 1
  %shl3 = shl i64 %sub2, 1
  %add = add i64 %shl3, 1
  %6 = load i64, i64* %size.addr, align 8
  %and = and i64 %6, 65535
  %shl4 = shl i64 %add, %and
  %neg = xor i64 %shl4, -1
  %and5 = and i64 %4, %neg
  %7 = load i64, i64* %val, align 8
  %8 = load i64, i64* %size.addr, align 8
  %shr6 = ashr i64 %8, 16
  %sub7 = sub i64 %shr6, 1
  %shl8 = shl i64 1, %sub7
  %sub9 = sub i64 %shl8, 1
  %shl10 = shl i64 %sub9, 1
  %add11 = add i64 %shl10, 1
  %and12 = and i64 %7, %add11
  %9 = load i64, i64* %size.addr, align 8
  %and13 = and i64 %9, 65535
  %shl14 = shl i64 %and12, %and13
  %or = or i64 %and5, %shl14
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %val, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or, %cond.true ], [ %10, %cond.false ]
  store i64 %cond, i64* %x, align 8
  %11 = load i8*, i8** %ptr.addr, align 8
  %12 = bitcast i64* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 1, i1 false)
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: uwtable
define internal %struct._object* @Q_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i64* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %size.addr, align 8
  %shr = ashr i64 %2, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %and = and i64 %3, 65535
  %sub = sub i64 64, %and
  %4 = load i64, i64* %size.addr, align 8
  %shr1 = ashr i64 %4, 16
  %sub2 = sub i64 %sub, %shr1
  %5 = load i64, i64* %val, align 8
  %shl = shl i64 %5, %sub2
  store i64 %shl, i64* %val, align 8
  %6 = load i64, i64* %size.addr, align 8
  %shr3 = ashr i64 %6, 16
  %sub4 = sub i64 64, %shr3
  %7 = load i64, i64* %val, align 8
  %shr5 = lshr i64 %7, %sub4
  store i64 %shr5, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %val, align 8
  %call = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %8)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @Q_set_sw(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %field = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @get_ulonglong(%struct._object* %0, i64* %val)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i64* %field to i8*
  %2 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  %3 = load i64, i64* %field, align 8
  %and = and i64 %3, 255
  %shl = shl i64 %and, 56
  %4 = load i64, i64* %field, align 8
  %and1 = and i64 %4, 65280
  %shl2 = shl i64 %and1, 40
  %or = or i64 %shl, %shl2
  %5 = load i64, i64* %field, align 8
  %and3 = and i64 %5, 16711680
  %shl4 = shl i64 %and3, 24
  %or5 = or i64 %or, %shl4
  %6 = load i64, i64* %field, align 8
  %and6 = and i64 %6, 4278190080
  %shl7 = shl i64 %and6, 8
  %or8 = or i64 %or5, %shl7
  %7 = load i64, i64* %field, align 8
  %and9 = and i64 %7, 1095216660480
  %shr = lshr i64 %and9, 8
  %or10 = or i64 %or8, %shr
  %8 = load i64, i64* %field, align 8
  %and11 = and i64 %8, 280375465082880
  %shr12 = lshr i64 %and11, 24
  %or13 = or i64 %or10, %shr12
  %9 = load i64, i64* %field, align 8
  %and14 = and i64 %9, 71776119061217280
  %shr15 = lshr i64 %and14, 40
  %or16 = or i64 %or13, %shr15
  %10 = load i64, i64* %field, align 8
  %shr17 = lshr i64 %10, 56
  %and18 = and i64 %shr17, 255
  %or19 = or i64 %or16, %and18
  store i64 %or19, i64* %field, align 8
  %11 = load i64, i64* %size.addr, align 8
  %shr20 = ashr i64 %11, 16
  %tobool = icmp ne i64 %shr20, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load i64, i64* %field, align 8
  %13 = load i64, i64* %size.addr, align 8
  %shr21 = ashr i64 %13, 16
  %sub = sub i64 %shr21, 1
  %shl22 = shl i64 1, %sub
  %sub23 = sub i64 %shl22, 1
  %shl24 = shl i64 %sub23, 1
  %add = add i64 %shl24, 1
  %14 = load i64, i64* %size.addr, align 8
  %and25 = and i64 %14, 65535
  %shl26 = shl i64 %add, %and25
  %neg = xor i64 %shl26, -1
  %and27 = and i64 %12, %neg
  %15 = load i64, i64* %val, align 8
  %16 = load i64, i64* %size.addr, align 8
  %shr28 = ashr i64 %16, 16
  %sub29 = sub i64 %shr28, 1
  %shl30 = shl i64 1, %sub29
  %sub31 = sub i64 %shl30, 1
  %shl32 = shl i64 %sub31, 1
  %add33 = add i64 %shl32, 1
  %and34 = and i64 %15, %add33
  %17 = load i64, i64* %size.addr, align 8
  %and35 = and i64 %17, 65535
  %shl36 = shl i64 %and34, %and35
  %or37 = or i64 %and27, %shl36
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %18 = load i64, i64* %val, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or37, %cond.true ], [ %18, %cond.false ]
  store i64 %cond, i64* %field, align 8
  %19 = load i64, i64* %field, align 8
  %and38 = and i64 %19, 255
  %shl39 = shl i64 %and38, 56
  %20 = load i64, i64* %field, align 8
  %and40 = and i64 %20, 65280
  %shl41 = shl i64 %and40, 40
  %or42 = or i64 %shl39, %shl41
  %21 = load i64, i64* %field, align 8
  %and43 = and i64 %21, 16711680
  %shl44 = shl i64 %and43, 24
  %or45 = or i64 %or42, %shl44
  %22 = load i64, i64* %field, align 8
  %and46 = and i64 %22, 4278190080
  %shl47 = shl i64 %and46, 8
  %or48 = or i64 %or45, %shl47
  %23 = load i64, i64* %field, align 8
  %and49 = and i64 %23, 1095216660480
  %shr50 = lshr i64 %and49, 8
  %or51 = or i64 %or48, %shr50
  %24 = load i64, i64* %field, align 8
  %and52 = and i64 %24, 280375465082880
  %shr53 = lshr i64 %and52, 24
  %or54 = or i64 %or51, %shr53
  %25 = load i64, i64* %field, align 8
  %and55 = and i64 %25, 71776119061217280
  %shr56 = lshr i64 %and55, 40
  %or57 = or i64 %or54, %shr56
  %26 = load i64, i64* %field, align 8
  %shr58 = lshr i64 %26, 56
  %and59 = and i64 %shr58, 255
  %or60 = or i64 %or57, %and59
  store i64 %or60, i64* %field, align 8
  %27 = load i8*, i8** %ptr.addr, align 8
  %28 = bitcast i64* %field to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 1, i1 false)
  %29 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: uwtable
define internal %struct._object* @Q_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = bitcast i64* %val to i8*
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 1, i1 false)
  %2 = load i64, i64* %val, align 8
  %and = and i64 %2, 255
  %shl = shl i64 %and, 56
  %3 = load i64, i64* %val, align 8
  %and1 = and i64 %3, 65280
  %shl2 = shl i64 %and1, 40
  %or = or i64 %shl, %shl2
  %4 = load i64, i64* %val, align 8
  %and3 = and i64 %4, 16711680
  %shl4 = shl i64 %and3, 24
  %or5 = or i64 %or, %shl4
  %5 = load i64, i64* %val, align 8
  %and6 = and i64 %5, 4278190080
  %shl7 = shl i64 %and6, 8
  %or8 = or i64 %or5, %shl7
  %6 = load i64, i64* %val, align 8
  %and9 = and i64 %6, 1095216660480
  %shr = lshr i64 %and9, 8
  %or10 = or i64 %or8, %shr
  %7 = load i64, i64* %val, align 8
  %and11 = and i64 %7, 280375465082880
  %shr12 = lshr i64 %and11, 24
  %or13 = or i64 %or10, %shr12
  %8 = load i64, i64* %val, align 8
  %and14 = and i64 %8, 71776119061217280
  %shr15 = lshr i64 %and14, 40
  %or16 = or i64 %or13, %shr15
  %9 = load i64, i64* %val, align 8
  %shr17 = lshr i64 %9, 56
  %and18 = and i64 %shr17, 255
  %or19 = or i64 %or16, %and18
  store i64 %or19, i64* %val, align 8
  %10 = load i64, i64* %size.addr, align 8
  %shr20 = ashr i64 %10, 16
  %tobool = icmp ne i64 %shr20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i64, i64* %size.addr, align 8
  %and21 = and i64 %11, 65535
  %sub = sub i64 64, %and21
  %12 = load i64, i64* %size.addr, align 8
  %shr22 = ashr i64 %12, 16
  %sub23 = sub i64 %sub, %shr22
  %13 = load i64, i64* %val, align 8
  %shl24 = shl i64 %13, %sub23
  store i64 %shl24, i64* %val, align 8
  %14 = load i64, i64* %size.addr, align 8
  %shr25 = ashr i64 %14, 16
  %sub26 = sub i64 64, %shr25
  %15 = load i64, i64* %val, align 8
  %shr27 = lshr i64 %15, %sub26
  store i64 %shr27, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i64, i64* %val, align 8
  %call = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %16)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @P_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %v = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = bitcast i8* %1 to i8**
  store i8* null, i8** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 16777216
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_flags3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags3, align 8
  %and4 = and i64 %9, 16777216
  %cmp5 = icmp ne i64 %and4, 0
  br i1 %cmp5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %11 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %11)
  %12 = inttoptr i64 %call to i8*
  store i8* %12, i8** %v, align 8
  %call8 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call8, null
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %13 = load i8*, i8** %v, align 8
  %14 = load i8*, i8** %ptr.addr, align 8
  %15 = bitcast i8* %14 to i8**
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc11 = add i64 %16, 1
  store i64 %inc11, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.6, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: uwtable
define internal %struct._object* @P_get(i8* %ptr, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = bitcast i8* %4 to i8**
  %6 = load i8*, i8** %5, align 8
  %call = call %struct._object* @PyLong_FromVoidPtr(i8* %6)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: uwtable
define internal %struct._object* @z_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = bitcast i8* %1 to i8**
  store i8* null, i8** %2, align 8
  %3 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19
  %8 = load i64, i64* %tp_flags, align 8
  %and = and i64 %8, 134217728
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i8* @PyBytes_AsString(%struct._object* %9)
  %10 = load i8*, i8** %ptr.addr, align 8
  %11 = bitcast i8* %10 to i8**
  store i8* %call, i8** %11, align 8
  %12 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt3, align 8
  %inc4 = add i64 %13, 1
  store i64 %inc4, i64* %ob_refcnt3, align 8
  %14 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19
  %17 = load i64, i64* %tp_flags6, align 8
  %and7 = and i64 %17, 16777216
  %cmp8 = icmp ne i64 %and7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.else
  %18 = load %struct._object*, %struct._object** %value.addr, align 8
  %call10 = call i64 @PyLong_AsUnsignedLongLongMask(%struct._object* %18)
  %19 = inttoptr i64 %call10 to i8*
  %20 = load i8*, i8** %ptr.addr, align 8
  %21 = bitcast i8* %20 to i8**
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc11 = add i64 %22, 1
  store i64 %inc11, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %24 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 1
  %26 = load i8*, i8** %tp_name, align 8
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.19, i32 0, i32 0), i8* %26)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.9, %if.then.2, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: uwtable
define internal %struct._object* @z_get(i8* %ptr, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %ptr.addr, align 8
  %4 = bitcast i8* %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i8*, i8** %ptr.addr, align 8
  %7 = bitcast i8* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  %call = call i64 @strlen(i8* %8) #5
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* %5, i64 %call)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: uwtable
define internal %struct._object* @u_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %chars = alloca [2 x i32], align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %4 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i32 0, i32 0), i8* %6)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  %9 = load %struct._object*, %struct._object** %value.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %chars, i32 0, i32 0
  %call2 = call i64 @PyUnicode_AsWideChar(%struct._object* %9, i32* %arraydecay, i64 2)
  store i64 %call2, i64* %len, align 8
  %10 = load i64, i64* %len, align 8
  %cmp3 = icmp ne i64 %10, 1
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %11 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt5, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt5, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body
  br label %if.end.10

if.else.8:                                        ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %18 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %chars, i32 0, i64 0
  %19 = load i32, i32* %arrayidx, align 4
  %20 = load i8*, i8** %ptr.addr, align 8
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 4
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.11
  %22 = load %struct._object*, %struct._object** %value.addr, align 8
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
  %29 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc23 = add i64 %29, 1
  store i64 %inc23, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.22, %do.end, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: uwtable
define internal %struct._object* @u_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %call = call %struct._object* @PyUnicode_FromWideChar(i32* %1, i64 1)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @U_set(i8* %ptr, %struct._object* %value, i64 %length) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %length.addr = alloca i64, align 8
  %wstr = alloca i32*, align 8
  %size = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i64, i64* %length.addr, align 8
  %div = udiv i64 %0, 4
  store i64 %div, i64* %length.addr, align 8
  %1 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i32 0, i32 0), i8* %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %value.addr, align 8
  %call2 = call i32* @PyUnicode_AsUnicodeAndSize(%struct._object* %10, i64* %size)
  store i32* %call2, i32** %wstr, align 8
  %11 = load i32*, i32** %wstr, align 8
  %cmp3 = icmp eq i32* %11, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %12 = load i64, i64* %size, align 8
  %13 = load i64, i64* %length.addr, align 8
  %cmp6 = icmp sgt i64 %12, %13
  br i1 %cmp6, label %if.then.7, label %if.else.15

if.then.7:                                        ; preds = %if.end.5
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %15 = load i64, i64* %size, align 8
  %16 = load i64, i64* %length.addr, align 8
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i64 %15, i64 %16)
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %17 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt9, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt9, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.14

if.else.12:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.15:                                       ; preds = %if.end.5
  %24 = load i64, i64* %size, align 8
  %25 = load i64, i64* %length.addr, align 8
  %sub = sub i64 %25, 1
  %cmp16 = icmp slt i64 %24, %sub
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.15
  %26 = load i64, i64* %size, align 8
  %add = add i64 %26, 1
  store i64 %add, i64* %size, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.else.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  %27 = load %struct._object*, %struct._object** %value.addr, align 8
  %28 = load i8*, i8** %ptr.addr, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i64, i64* %size, align 8
  %call20 = call i64 @PyUnicode_AsWideChar(%struct._object* %27, i32* %29, i64 %30)
  %cmp21 = icmp eq i64 %call20, -1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %31 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %do.end, %if.then.4, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

; Function Attrs: uwtable
define internal %struct._object* @U_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %p = alloca i32*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %div = udiv i64 %0, 4
  store i64 %div, i64* %size.addr, align 8
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = bitcast i8* %1 to i32*
  store i32* %2, i32** %p, align 8
  store i64 0, i64* %len, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %len, align 8
  %4 = load i64, i64* %size.addr, align 8
  %cmp = icmp slt i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %len, align 8
  %6 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr i32, i32* %6, i64 %5
  %7 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i64, i64* %len, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %len, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i8*, i8** %ptr.addr, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyUnicode_FromWideChar(i32* %10, i64 %11)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @Z_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %keep = alloca %struct._object*, align 8
  %buffer = alloca i32*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = bitcast i8* %1 to i32**
  store i32* null, i32** %2, align 8
  %3 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19
  %8 = load i64, i64* %tp_flags, align 8
  %and = and i64 %8, 16777216
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_flags3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags3, align 8
  %and4 = and i64 %11, 16777216
  %cmp5 = icmp ne i64 %and4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %12 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i64 @PyLong_AsUnsignedLongLongMask(%struct._object* %12)
  %13 = inttoptr i64 %call to i32*
  %14 = load i8*, i8** %ptr.addr, align 8
  %15 = bitcast i8* %14 to i32**
  store i32* %13, i32** %15, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc7 = add i64 %16, 1
  store i64 %inc7, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %17 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_flags10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 19
  %19 = load i64, i64* %tp_flags10, align 8
  %and11 = and i64 %19, 268435456
  %cmp12 = icmp ne i64 %and11, 0
  br i1 %cmp12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %if.end.8
  %20 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %21 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 1
  %23 = load i8*, i8** %tp_name, align 8
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.22, i32 0, i32 0), i8* %23)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.8
  %24 = load %struct._object*, %struct._object** %value.addr, align 8
  %call17 = call i32* @PyUnicode_AsWideCharString(%struct._object* %24, i64* null)
  store i32* %call17, i32** %buffer, align 8
  %25 = load i32*, i32** %buffer, align 8
  %tobool = icmp ne i32* %25, null
  br i1 %tobool, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.16
  %26 = load i32*, i32** %buffer, align 8
  %27 = bitcast i32* %26 to i8*
  %call20 = call %struct._object* @PyCapsule_New(i8* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), void (%struct._object*)* @pymem_destructor)
  store %struct._object* %call20, %struct._object** %keep, align 8
  %28 = load %struct._object*, %struct._object** %keep, align 8
  %tobool21 = icmp ne %struct._object* %28, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  %29 = load i32*, i32** %buffer, align 8
  %30 = bitcast i32* %29 to i8*
  call void @PyMem_Free(i8* %30)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %31 = load i32*, i32** %buffer, align 8
  %32 = load i8*, i8** %ptr.addr, align 8
  %33 = bitcast i8* %32 to i32**
  store i32* %31, i32** %33, align 8
  %34 = load %struct._object*, %struct._object** %keep, align 8
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.18, %if.then.13, %if.then.6, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: uwtable
define internal %struct._object* @Z_get(i8* %ptr, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %p = alloca i32*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = bitcast i8* %0 to i32**
  %2 = load i32*, i32** %1, align 8
  store i32* %2, i32** %p, align 8
  %3 = load i32*, i32** %p, align 8
  %tobool = icmp ne i32* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %p, align 8
  %5 = load i32*, i32** %p, align 8
  %call = call i64 @wcslen(i32* %5) #5
  %call1 = call %struct._object* @PyUnicode_FromWideChar(i32* %4, i64 %call)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: uwtable
define internal %struct._object* @bool_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @PyObject_IsTrue(%struct._object* %0)
  switch i32 %call, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8
  store i8 0, i8* %1, align 1
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i8*, i8** %ptr.addr, align 8
  store i8 1, i8* %3, align 1
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc2 = add i64 %4, 1
  store i64 %inc2, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: uwtable
define internal %struct._object* @bool_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = trunc i8 %1 to i1
  %conv = zext i1 %tobool to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @O_set(i8* %ptr, %struct._object* %value, i64 %size) #2 {
entry:
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = bitcast i8* %1 to %struct._object**
  store %struct._object* %0, %struct._object** %2, align 8
  %3 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %value.addr, align 8
  ret %struct._object* %5
}

; Function Attrs: uwtable
define internal %struct._object* @O_get(i8* %ptr, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ob = alloca %struct._object*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = bitcast i8* %0 to %struct._object**
  %2 = load %struct._object*, %struct._object** %1, align 8
  store %struct._object* %2, %struct._object** %ob, align 8
  %3 = load %struct._object*, %struct._object** %ob, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %5 = load %struct._object*, %struct._object** %ob, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %ob, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.end
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

; Function Attrs: uwtable
define internal i32 @get_long(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64* %p, i64** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %call2 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %5)
  store i64 %call2, i64* %x, align 8
  %6 = load i64, i64* %x, align 8
  %cmp3 = icmp eq i64 %6, -1
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %7 = load i64, i64* %x, align 8
  %8 = load i64*, i64** %p.addr, align 8
  store i64 %7, i64* %8, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i64 @PyLong_AsUnsignedLongMask(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: uwtable
define internal i32 @get_ulong(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64* %p, i64** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %call2 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %5)
  store i64 %call2, i64* %x, align 8
  %6 = load i64, i64* %x, align 8
  %cmp3 = icmp eq i64 %6, -1
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %7 = load i64, i64* %x, align 8
  %8 = load i64*, i64** %p.addr, align 8
  store i64 %7, i64* %8, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i64 @PyLong_AsLong(%struct._object*) #1

declare double @PyFloat_AsDouble(%struct._object*) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

declare i32 @_PyFloat_Pack8(double, i8*, i32) #1

declare double @_PyFloat_Unpack8(i8*, i32) #1

declare i32 @_PyFloat_Pack4(double, i8*, i32) #1

declare double @_PyFloat_Unpack4(i8*, i32) #1

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

; Function Attrs: uwtable
define internal i32 @get_longlong(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64* %p, i64** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %call2 = call i64 @PyLong_AsUnsignedLongLongMask(%struct._object* %5)
  store i64 %call2, i64* %x, align 8
  %6 = load i64, i64* %x, align 8
  %cmp3 = icmp eq i64 %6, -1
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %7 = load i64, i64* %x, align 8
  %8 = load i64*, i64** %p.addr, align 8
  store i64 %7, i64* %8, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i64 @PyLong_AsUnsignedLongLongMask(%struct._object*) #1

declare %struct._object* @PyLong_FromLongLong(i64) #1

; Function Attrs: uwtable
define internal i32 @get_ulonglong(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i64* %p, i64** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %call2 = call i64 @PyLong_AsUnsignedLongLongMask(%struct._object* %5)
  store i64 %call2, i64* %x, align 8
  %6 = load i64, i64* %x, align 8
  %cmp3 = icmp eq i64 %6, -1
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %7 = load i64, i64* %x, align 8
  %8 = load i64*, i64** %p.addr, align 8
  store i64 %7, i64* %8, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct._object* @PyLong_FromUnsignedLongLong(i64) #1

declare %struct._object* @PyLong_FromVoidPtr(i8*) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

declare i64 @PyUnicode_AsWideChar(%struct._object*, i32*, i64) #1

declare %struct._object* @PyUnicode_FromWideChar(i32*, i64) #1

declare i32* @PyUnicode_AsUnicodeAndSize(%struct._object*, i64*) #1

declare i32* @PyUnicode_AsWideCharString(%struct._object*, i64*) #1

declare %struct._object* @PyCapsule_New(i8*, i8*, void (%struct._object*)*) #1

; Function Attrs: uwtable
define internal void @pymem_destructor(%struct._object* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  store %struct._object* %ptr, %struct._object** %ptr.addr, align 8
  %0 = load %struct._object*, %struct._object** %ptr.addr, align 8
  %call = call i8* @PyCapsule_GetPointer(%struct._object* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0))
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  call void @PyMem_Free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @PyMem_Free(i8*) #1

declare i8* @PyCapsule_GetPointer(%struct._object*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #3

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare %struct._object* @PyBool_FromLong(i64) #1

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
