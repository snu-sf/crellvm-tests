; ModuleID = 'irs-onlybc/cfield.bc'
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %adict = alloca %struct.StgDictObject*, align 8
  %idict = alloca %struct.StgDictObject*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %fd = alloca %struct.fielddesc*, align 8
  %fd90 = alloca %struct.fielddesc*, align 8
  %delta = alloca i64, align 8
  store %struct._object* %desc, %struct._object** %desc.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %desc.addr, metadata !435, metadata !1086), !dbg !1087
  store i64 %index, i64* %index.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %index.addr, metadata !436, metadata !1086), !dbg !1090
  store i64* %pfield_size, i64** %pfield_size.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i64** %pfield_size.addr, metadata !437, metadata !1086), !dbg !1091
  store i32 %bitsize, i32* %bitsize.addr, align 4, !tbaa !1092
  call void @llvm.dbg.declare(metadata i32* %bitsize.addr, metadata !438, metadata !1086), !dbg !1094
  store i32* %pbitofs, i32** %pbitofs.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i32** %pbitofs.addr, metadata !439, metadata !1086), !dbg !1095
  store i64* %psize, i64** %psize.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i64** %psize.addr, metadata !440, metadata !1086), !dbg !1096
  store i64* %poffset, i64** %poffset.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i64** %poffset.addr, metadata !441, metadata !1086), !dbg !1097
  store i64* %palign, i64** %palign.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i64** %palign.addr, metadata !442, metadata !1086), !dbg !1098
  store i32 %pack, i32* %pack.addr, align 4, !tbaa !1092
  call void @llvm.dbg.declare(metadata i32* %pack.addr, metadata !443, metadata !1086), !dbg !1099
  store i32 %big_endian, i32* %big_endian.addr, align 4, !tbaa !1092
  call void @llvm.dbg.declare(metadata i32* %big_endian.addr, metadata !444, metadata !1086), !dbg !1100
  %0 = bitcast %struct.CFieldObject** %self to i8*, !dbg !1101
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1101
  call void @llvm.dbg.declare(metadata %struct.CFieldObject** %self, metadata !445, metadata !1086), !dbg !1102
  %1 = bitcast %struct._object** %proto to i8*, !dbg !1103
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1103
  call void @llvm.dbg.declare(metadata %struct._object** %proto, metadata !446, metadata !1086), !dbg !1104
  %2 = bitcast i64* %size to i8*, !dbg !1105
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1105
  call void @llvm.dbg.declare(metadata i64* %size, metadata !447, metadata !1086), !dbg !1106
  %3 = bitcast i64* %align to i8*, !dbg !1105
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1105
  call void @llvm.dbg.declare(metadata i64* %align, metadata !448, metadata !1086), !dbg !1107
  %4 = bitcast %struct._object* (i8*, %struct._object*, i64)** %setfunc to i8*, !dbg !1108
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1108
  call void @llvm.dbg.declare(metadata %struct._object* (i8*, %struct._object*, i64)** %setfunc, metadata !449, metadata !1086), !dbg !1109
  store %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8, !dbg !1109, !tbaa !1082
  %5 = bitcast %struct._object* (i8*, i64)** %getfunc to i8*, !dbg !1110
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1110
  call void @llvm.dbg.declare(metadata %struct._object* (i8*, i64)** %getfunc, metadata !450, metadata !1086), !dbg !1111
  store %struct._object* (i8*, i64)* null, %struct._object* (i8*, i64)** %getfunc, align 8, !dbg !1111, !tbaa !1082
  %6 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !1112
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1112
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %dict, metadata !451, metadata !1086), !dbg !1113
  %7 = bitcast i32* %fieldtype to i8*, !dbg !1114
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !1114
  call void @llvm.dbg.declare(metadata i32* %fieldtype, metadata !521, metadata !1086), !dbg !1115
  %call = call %struct._object* @PyObject_CallObject(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCField_Type, i32 0, i32 0, i32 0), %struct._object* null), !dbg !1116
  %8 = bitcast %struct._object* %call to %struct.CFieldObject*, !dbg !1117
  store %struct.CFieldObject* %8, %struct.CFieldObject** %self, align 8, !dbg !1118, !tbaa !1082
  %9 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1119, !tbaa !1082
  %cmp = icmp eq %struct.CFieldObject* %9, null, !dbg !1121
  br i1 %cmp, label %if.then, label %if.end, !dbg !1122

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1123
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194, !dbg !1123

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %desc.addr, align 8, !dbg !1124, !tbaa !1082
  %call1 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %10), !dbg !1125
  store %struct.StgDictObject* %call1, %struct.StgDictObject** %dict, align 8, !dbg !1126, !tbaa !1082
  %11 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1127, !tbaa !1082
  %tobool = icmp ne %struct.StgDictObject* %11, null, !dbg !1127
  br i1 %tobool, label %if.end.6, label %if.then.2, !dbg !1128

if.then.2:                                        ; preds = %if.end
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1129, !tbaa !1082
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)), !dbg !1130
  br label %do.body, !dbg !1131

do.body:                                          ; preds = %if.then.2
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1132
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !1132
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !522, metadata !1086), !dbg !1134
  %14 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1135, !tbaa !1082
  %15 = bitcast %struct.CFieldObject* %14 to %struct._object*, !dbg !1136
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8, !dbg !1134, !tbaa !1082
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1137, !tbaa !1082
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !1139
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !1140, !tbaa !1141
  %dec = add i64 %17, -1, !dbg !1140
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1140, !tbaa !1141
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1143
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1144

if.then.4:                                        ; preds = %do.body
  br label %if.end.5, !dbg !1145

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1147, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1149
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1149, !tbaa !1150
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4, !dbg !1151
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1151, !tbaa !1152
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1155, !tbaa !1082
  call void %20(%struct._object* %21), !dbg !1156
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1157
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !1157
  br label %do.cond, !dbg !1159

do.cond:                                          ; preds = %if.end.5
  br label %do.end, !dbg !1160

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1162
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194, !dbg !1162

if.end.6:                                         ; preds = %if.end
  %23 = load i32, i32* %bitsize.addr, align 4, !dbg !1163, !tbaa !1092
  %tobool7 = icmp ne i32 %23, 0, !dbg !1163
  br i1 %tobool7, label %land.lhs.true, label %if.else.16, !dbg !1165

land.lhs.true:                                    ; preds = %if.end.6
  %24 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1166, !tbaa !1082
  %25 = load i64, i64* %24, align 8, !dbg !1168, !tbaa !1088
  %tobool8 = icmp ne i64 %25, 0, !dbg !1168
  br i1 %tobool8, label %land.lhs.true.9, label %if.else.16, !dbg !1169

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %26 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1170, !tbaa !1082
  %size10 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %26, i32 0, i32 1, !dbg !1171
  %27 = load i64, i64* %size10, align 8, !dbg !1171, !tbaa !1172
  %mul = mul i64 %27, 8, !dbg !1177
  %28 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1178, !tbaa !1082
  %29 = load i64, i64* %28, align 8, !dbg !1179, !tbaa !1088
  %cmp11 = icmp sle i64 %mul, %29, !dbg !1180
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.16, !dbg !1181

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %30 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1182, !tbaa !1082
  %31 = load i32, i32* %30, align 4, !dbg !1183, !tbaa !1092
  %32 = load i32, i32* %bitsize.addr, align 4, !dbg !1184, !tbaa !1092
  %add = add i32 %31, %32, !dbg !1185
  %conv = sext i32 %add to i64, !dbg !1186
  %33 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1187, !tbaa !1082
  %34 = load i64, i64* %33, align 8, !dbg !1188, !tbaa !1088
  %cmp13 = icmp sle i64 %conv, %34, !dbg !1189
  br i1 %cmp13, label %if.then.15, label %if.else.16, !dbg !1190

if.then.15:                                       ; preds = %land.lhs.true.12
  store i32 2, i32* %fieldtype, align 4, !dbg !1191, !tbaa !1092
  br label %if.end.41, !dbg !1193

if.else.16:                                       ; preds = %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true, %if.end.6
  %35 = load i32, i32* %bitsize.addr, align 4, !dbg !1194, !tbaa !1092
  %tobool17 = icmp ne i32 %35, 0, !dbg !1194
  br i1 %tobool17, label %land.lhs.true.18, label %if.else.33, !dbg !1196

land.lhs.true.18:                                 ; preds = %if.else.16
  %36 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1197, !tbaa !1082
  %37 = load i64, i64* %36, align 8, !dbg !1199, !tbaa !1088
  %tobool19 = icmp ne i64 %37, 0, !dbg !1199
  br i1 %tobool19, label %land.lhs.true.20, label %if.else.33, !dbg !1200

land.lhs.true.20:                                 ; preds = %land.lhs.true.18
  %38 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1201, !tbaa !1082
  %size21 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %38, i32 0, i32 1, !dbg !1202
  %39 = load i64, i64* %size21, align 8, !dbg !1202, !tbaa !1172
  %mul22 = mul i64 %39, 8, !dbg !1203
  %40 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1204, !tbaa !1082
  %41 = load i64, i64* %40, align 8, !dbg !1205, !tbaa !1088
  %cmp23 = icmp sge i64 %mul22, %41, !dbg !1206
  br i1 %cmp23, label %land.lhs.true.25, label %if.else.33, !dbg !1207

land.lhs.true.25:                                 ; preds = %land.lhs.true.20
  %42 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1208, !tbaa !1082
  %43 = load i32, i32* %42, align 4, !dbg !1209, !tbaa !1092
  %44 = load i32, i32* %bitsize.addr, align 4, !dbg !1210, !tbaa !1092
  %add26 = add i32 %43, %44, !dbg !1211
  %conv27 = sext i32 %add26 to i64, !dbg !1212
  %45 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1213, !tbaa !1082
  %size28 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %45, i32 0, i32 1, !dbg !1214
  %46 = load i64, i64* %size28, align 8, !dbg !1214, !tbaa !1172
  %mul29 = mul i64 %46, 8, !dbg !1215
  %cmp30 = icmp sle i64 %conv27, %mul29, !dbg !1216
  br i1 %cmp30, label %if.then.32, label %if.else.33, !dbg !1217

if.then.32:                                       ; preds = %land.lhs.true.25
  store i32 3, i32* %fieldtype, align 4, !dbg !1218, !tbaa !1092
  br label %if.end.40, !dbg !1220

if.else.33:                                       ; preds = %land.lhs.true.25, %land.lhs.true.20, %land.lhs.true.18, %if.else.16
  %47 = load i32, i32* %bitsize.addr, align 4, !dbg !1221, !tbaa !1092
  %tobool34 = icmp ne i32 %47, 0, !dbg !1221
  br i1 %tobool34, label %if.then.35, label %if.else.38, !dbg !1223

if.then.35:                                       ; preds = %if.else.33
  store i32 1, i32* %fieldtype, align 4, !dbg !1224, !tbaa !1092
  %48 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1226, !tbaa !1082
  store i32 0, i32* %48, align 4, !dbg !1227, !tbaa !1092
  %49 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1228, !tbaa !1082
  %size36 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %49, i32 0, i32 1, !dbg !1229
  %50 = load i64, i64* %size36, align 8, !dbg !1229, !tbaa !1172
  %mul37 = mul i64 %50, 8, !dbg !1230
  %51 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1231, !tbaa !1082
  store i64 %mul37, i64* %51, align 8, !dbg !1232, !tbaa !1088
  br label %if.end.39, !dbg !1233

if.else.38:                                       ; preds = %if.else.33
  store i32 0, i32* %fieldtype, align 4, !dbg !1234, !tbaa !1092
  %52 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1236, !tbaa !1082
  store i32 0, i32* %52, align 4, !dbg !1237, !tbaa !1092
  %53 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1238, !tbaa !1082
  store i64 0, i64* %53, align 8, !dbg !1239, !tbaa !1088
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.32
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.15
  %54 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1240, !tbaa !1082
  %size42 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %54, i32 0, i32 1, !dbg !1241
  %55 = load i64, i64* %size42, align 8, !dbg !1241, !tbaa !1172
  store i64 %55, i64* %size, align 8, !dbg !1242, !tbaa !1088
  %56 = load %struct._object*, %struct._object** %desc.addr, align 8, !dbg !1243, !tbaa !1082
  store %struct._object* %56, %struct._object** %proto, align 8, !dbg !1244, !tbaa !1082
  %57 = load %struct._object*, %struct._object** %proto, align 8, !dbg !1245, !tbaa !1082
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !1246
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !1246, !tbaa !1150
  %cmp44 = icmp eq %struct._typeobject* %58, @PyCArrayType_Type, !dbg !1247
  br i1 %cmp44, label %if.then.49, label %lor.lhs.false, !dbg !1248

lor.lhs.false:                                    ; preds = %if.end.41
  %59 = load %struct._object*, %struct._object** %proto, align 8, !dbg !1249, !tbaa !1082
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1, !dbg !1251
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !1251, !tbaa !1150
  %call47 = call i32 @PyType_IsSubtype(%struct._typeobject* %60, %struct._typeobject* @PyCArrayType_Type), !dbg !1252
  %tobool48 = icmp ne i32 %call47, 0, !dbg !1252
  br i1 %tobool48, label %if.then.49, label %if.end.97, !dbg !1253

if.then.49:                                       ; preds = %lor.lhs.false, %if.end.41
  %61 = bitcast %struct.StgDictObject** %adict to i8*, !dbg !1254
  call void @llvm.lifetime.start(i64 8, i8* %61) #2, !dbg !1254
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %adict, metadata !526, metadata !1086), !dbg !1255
  %62 = load %struct._object*, %struct._object** %proto, align 8, !dbg !1256, !tbaa !1082
  %call50 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %62), !dbg !1257
  store %struct.StgDictObject* %call50, %struct.StgDictObject** %adict, align 8, !dbg !1255, !tbaa !1082
  %63 = bitcast %struct.StgDictObject** %idict to i8*, !dbg !1258
  call void @llvm.lifetime.start(i64 8, i8* %63) #2, !dbg !1258
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %idict, metadata !529, metadata !1086), !dbg !1259
  %64 = load %struct.StgDictObject*, %struct.StgDictObject** %adict, align 8, !dbg !1260, !tbaa !1082
  %tobool51 = icmp ne %struct.StgDictObject* %64, null, !dbg !1260
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.95, !dbg !1261

land.lhs.true.52:                                 ; preds = %if.then.49
  %65 = load %struct.StgDictObject*, %struct.StgDictObject** %adict, align 8, !dbg !1262, !tbaa !1082
  %proto53 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %65, i32 0, i32 5, !dbg !1264
  %66 = load %struct._object*, %struct._object** %proto53, align 8, !dbg !1264, !tbaa !1265
  %tobool54 = icmp ne %struct._object* %66, null, !dbg !1266
  br i1 %tobool54, label %if.then.55, label %if.end.95, !dbg !1267

if.then.55:                                       ; preds = %land.lhs.true.52
  %67 = load %struct.StgDictObject*, %struct.StgDictObject** %adict, align 8, !dbg !1268, !tbaa !1082
  %proto56 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %67, i32 0, i32 5, !dbg !1269
  %68 = load %struct._object*, %struct._object** %proto56, align 8, !dbg !1269, !tbaa !1265
  %call57 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %68), !dbg !1270
  store %struct.StgDictObject* %call57, %struct.StgDictObject** %idict, align 8, !dbg !1271, !tbaa !1082
  %69 = load %struct.StgDictObject*, %struct.StgDictObject** %idict, align 8, !dbg !1272, !tbaa !1082
  %tobool58 = icmp ne %struct.StgDictObject* %69, null, !dbg !1272
  br i1 %tobool58, label %if.end.73, label %if.then.59, !dbg !1273

if.then.59:                                       ; preds = %if.then.55
  %70 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1274, !tbaa !1082
  call void @PyErr_SetString(%struct._object* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)), !dbg !1275
  br label %do.body.60, !dbg !1276

do.body.60:                                       ; preds = %if.then.59
  %71 = bitcast %struct._object** %_py_decref_tmp61 to i8*, !dbg !1277
  call void @llvm.lifetime.start(i64 8, i8* %71) #2, !dbg !1277
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp61, metadata !530, metadata !1086), !dbg !1279
  %72 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1280, !tbaa !1082
  %73 = bitcast %struct.CFieldObject* %72 to %struct._object*, !dbg !1281
  store %struct._object* %73, %struct._object** %_py_decref_tmp61, align 8, !dbg !1279, !tbaa !1082
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !1282, !tbaa !1082
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0, !dbg !1284
  %75 = load i64, i64* %ob_refcnt62, align 8, !dbg !1285, !tbaa !1141
  %dec63 = add i64 %75, -1, !dbg !1285
  store i64 %dec63, i64* %ob_refcnt62, align 8, !dbg !1285, !tbaa !1141
  %cmp64 = icmp ne i64 %dec63, 0, !dbg !1286
  br i1 %cmp64, label %if.then.66, label %if.else.67, !dbg !1287

if.then.66:                                       ; preds = %do.body.60
  br label %if.end.70, !dbg !1288

if.else.67:                                       ; preds = %do.body.60
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !1290, !tbaa !1082
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1, !dbg !1292
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8, !dbg !1292, !tbaa !1150
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4, !dbg !1293
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8, !dbg !1293, !tbaa !1152
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !1294, !tbaa !1082
  call void %78(%struct._object* %79), !dbg !1295
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  %80 = bitcast %struct._object** %_py_decref_tmp61 to i8*, !dbg !1296
  call void @llvm.lifetime.end(i64 8, i8* %80) #2, !dbg !1296
  br label %do.cond.71, !dbg !1298

do.cond.71:                                       ; preds = %if.end.70
  br label %do.end.72, !dbg !1299

do.end.72:                                        ; preds = %do.cond.71
  store %struct._object* null, %struct._object** %retval, !dbg !1301
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1301

if.end.73:                                        ; preds = %if.then.55
  %81 = load %struct.StgDictObject*, %struct.StgDictObject** %idict, align 8, !dbg !1302, !tbaa !1082
  %getfunc74 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %81, i32 0, i32 7, !dbg !1303
  %82 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc74, align 8, !dbg !1303, !tbaa !1304
  %call75 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !1305
  %getfunc76 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call75, i32 0, i32 2, !dbg !1306
  %83 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc76, align 8, !dbg !1306, !tbaa !1307
  %cmp77 = icmp eq %struct._object* (i8*, i64)* %82, %83, !dbg !1309
  br i1 %cmp77, label %if.then.79, label %if.end.83, !dbg !1310

if.then.79:                                       ; preds = %if.end.73
  %84 = bitcast %struct.fielddesc** %fd to i8*, !dbg !1311
  call void @llvm.lifetime.start(i64 8, i8* %84) #2, !dbg !1311
  call void @llvm.dbg.declare(metadata %struct.fielddesc** %fd, metadata !536, metadata !1086), !dbg !1312
  %call80 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !1313
  store %struct.fielddesc* %call80, %struct.fielddesc** %fd, align 8, !dbg !1312, !tbaa !1082
  %85 = load %struct.fielddesc*, %struct.fielddesc** %fd, align 8, !dbg !1314, !tbaa !1082
  %getfunc81 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %85, i32 0, i32 2, !dbg !1315
  %86 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc81, align 8, !dbg !1315, !tbaa !1307
  store %struct._object* (i8*, i64)* %86, %struct._object* (i8*, i64)** %getfunc, align 8, !dbg !1316, !tbaa !1082
  %87 = load %struct.fielddesc*, %struct.fielddesc** %fd, align 8, !dbg !1317, !tbaa !1082
  %setfunc82 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %87, i32 0, i32 1, !dbg !1318
  %88 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc82, align 8, !dbg !1318, !tbaa !1319
  store %struct._object* (i8*, %struct._object*, i64)* %88, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8, !dbg !1320, !tbaa !1082
  %89 = bitcast %struct.fielddesc** %fd to i8*, !dbg !1321
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !1321
  br label %if.end.83, !dbg !1322

if.end.83:                                        ; preds = %if.then.79, %if.end.73
  %90 = load %struct.StgDictObject*, %struct.StgDictObject** %idict, align 8, !dbg !1323, !tbaa !1082
  %getfunc84 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %90, i32 0, i32 7, !dbg !1324
  %91 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc84, align 8, !dbg !1324, !tbaa !1304
  %call85 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !1325
  %getfunc86 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call85, i32 0, i32 2, !dbg !1326
  %92 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc86, align 8, !dbg !1326, !tbaa !1307
  %cmp87 = icmp eq %struct._object* (i8*, i64)* %91, %92, !dbg !1327
  br i1 %cmp87, label %if.then.89, label %if.end.94, !dbg !1328

if.then.89:                                       ; preds = %if.end.83
  %93 = bitcast %struct.fielddesc** %fd90 to i8*, !dbg !1329
  call void @llvm.lifetime.start(i64 8, i8* %93) #2, !dbg !1329
  call void @llvm.dbg.declare(metadata %struct.fielddesc** %fd90, metadata !548, metadata !1086), !dbg !1330
  %call91 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !dbg !1331
  store %struct.fielddesc* %call91, %struct.fielddesc** %fd90, align 8, !dbg !1330, !tbaa !1082
  %94 = load %struct.fielddesc*, %struct.fielddesc** %fd90, align 8, !dbg !1332, !tbaa !1082
  %getfunc92 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %94, i32 0, i32 2, !dbg !1333
  %95 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc92, align 8, !dbg !1333, !tbaa !1307
  store %struct._object* (i8*, i64)* %95, %struct._object* (i8*, i64)** %getfunc, align 8, !dbg !1334, !tbaa !1082
  %96 = load %struct.fielddesc*, %struct.fielddesc** %fd90, align 8, !dbg !1335, !tbaa !1082
  %setfunc93 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %96, i32 0, i32 1, !dbg !1336
  %97 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc93, align 8, !dbg !1336, !tbaa !1319
  store %struct._object* (i8*, %struct._object*, i64)* %97, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8, !dbg !1337, !tbaa !1082
  %98 = bitcast %struct.fielddesc** %fd90 to i8*, !dbg !1338
  call void @llvm.lifetime.end(i64 8, i8* %98) #2, !dbg !1338
  br label %if.end.94, !dbg !1339

if.end.94:                                        ; preds = %if.then.89, %if.end.83
  br label %if.end.95, !dbg !1340

if.end.95:                                        ; preds = %if.end.94, %land.lhs.true.52, %if.then.49
  store i32 0, i32* %cleanup.dest.slot, !dbg !1341
  br label %cleanup, !dbg !1341

cleanup:                                          ; preds = %if.end.95, %do.end.72
  %99 = bitcast %struct.StgDictObject** %idict to i8*, !dbg !1342
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !1342
  %100 = bitcast %struct.StgDictObject** %adict to i8*, !dbg !1342
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !1342
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.194 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.97, !dbg !1343

if.end.97:                                        ; preds = %cleanup.cont, %lor.lhs.false
  %101 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8, !dbg !1344, !tbaa !1082
  %102 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1345, !tbaa !1082
  %setfunc98 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %102, i32 0, i32 6, !dbg !1346
  store %struct._object* (i8*, %struct._object*, i64)* %101, %struct._object* (i8*, %struct._object*, i64)** %setfunc98, align 8, !dbg !1347, !tbaa !1348
  %103 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc, align 8, !dbg !1350, !tbaa !1082
  %104 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1351, !tbaa !1082
  %getfunc99 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %104, i32 0, i32 5, !dbg !1352
  store %struct._object* (i8*, i64)* %103, %struct._object* (i8*, i64)** %getfunc99, align 8, !dbg !1353, !tbaa !1354
  %105 = load i64, i64* %index.addr, align 8, !dbg !1355, !tbaa !1088
  %106 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1356, !tbaa !1082
  %index100 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %106, i32 0, i32 3, !dbg !1357
  store i64 %105, i64* %index100, align 8, !dbg !1358, !tbaa !1359
  %107 = load %struct._object*, %struct._object** %proto, align 8, !dbg !1360, !tbaa !1082
  %ob_refcnt101 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 0, !dbg !1361
  %108 = load i64, i64* %ob_refcnt101, align 8, !dbg !1362, !tbaa !1141
  %inc = add i64 %108, 1, !dbg !1362
  store i64 %inc, i64* %ob_refcnt101, align 8, !dbg !1362, !tbaa !1141
  %109 = load %struct._object*, %struct._object** %proto, align 8, !dbg !1363, !tbaa !1082
  %110 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1364, !tbaa !1082
  %proto102 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %110, i32 0, i32 4, !dbg !1365
  store %struct._object* %109, %struct._object** %proto102, align 8, !dbg !1366, !tbaa !1367
  %111 = load i32, i32* %fieldtype, align 4, !dbg !1368, !tbaa !1092
  switch i32 %111, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.117
    i32 3, label %sw.bb.145
    i32 2, label %sw.bb.174
  ], !dbg !1369

sw.bb:                                            ; preds = %if.end.97
  %112 = load i32, i32* %big_endian.addr, align 4, !dbg !1370, !tbaa !1092
  %tobool103 = icmp ne i32 %112, 0, !dbg !1370
  br i1 %tobool103, label %if.then.104, label %if.else.111, !dbg !1372

if.then.104:                                      ; preds = %sw.bb
  %113 = load i32, i32* %bitsize.addr, align 4, !dbg !1373, !tbaa !1092
  %shl = shl i32 %113, 16, !dbg !1374
  %conv105 = sext i32 %shl to i64, !dbg !1375
  %114 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1376, !tbaa !1082
  %115 = load i64, i64* %114, align 8, !dbg !1377, !tbaa !1088
  %add106 = add i64 %conv105, %115, !dbg !1378
  %116 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1379, !tbaa !1082
  %117 = load i32, i32* %116, align 4, !dbg !1380, !tbaa !1092
  %conv107 = sext i32 %117 to i64, !dbg !1380
  %sub = sub i64 %add106, %conv107, !dbg !1381
  %118 = load i32, i32* %bitsize.addr, align 4, !dbg !1382, !tbaa !1092
  %conv108 = sext i32 %118 to i64, !dbg !1382
  %sub109 = sub i64 %sub, %conv108, !dbg !1383
  %119 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1384, !tbaa !1082
  %size110 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %119, i32 0, i32 2, !dbg !1385
  store i64 %sub109, i64* %size110, align 8, !dbg !1386, !tbaa !1387
  br label %if.end.116, !dbg !1384

if.else.111:                                      ; preds = %sw.bb
  %120 = load i32, i32* %bitsize.addr, align 4, !dbg !1388, !tbaa !1092
  %shl112 = shl i32 %120, 16, !dbg !1389
  %121 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1390, !tbaa !1082
  %122 = load i32, i32* %121, align 4, !dbg !1391, !tbaa !1092
  %add113 = add i32 %shl112, %122, !dbg !1392
  %conv114 = sext i32 %add113 to i64, !dbg !1393
  %123 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1394, !tbaa !1082
  %size115 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %123, i32 0, i32 2, !dbg !1395
  store i64 %conv114, i64* %size115, align 8, !dbg !1396, !tbaa !1387
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.111, %if.then.104
  %124 = load i32, i32* %bitsize.addr, align 4, !dbg !1397, !tbaa !1092
  %125 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1398, !tbaa !1082
  store i32 %124, i32* %125, align 4, !dbg !1399, !tbaa !1092
  br label %sw.bb.117, !dbg !1400

sw.bb.117:                                        ; preds = %if.end.97, %if.end.116
  %126 = load i32, i32* %pack.addr, align 4, !dbg !1401, !tbaa !1092
  %tobool118 = icmp ne i32 %126, 0, !dbg !1401
  br i1 %tobool118, label %if.then.119, label %if.else.126, !dbg !1403

if.then.119:                                      ; preds = %sw.bb.117
  %127 = load i32, i32* %pack.addr, align 4, !dbg !1404, !tbaa !1092
  %conv120 = sext i32 %127 to i64, !dbg !1405
  %128 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1406, !tbaa !1082
  %align121 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %128, i32 0, i32 2, !dbg !1407
  %129 = load i64, i64* %align121, align 8, !dbg !1407, !tbaa !1408
  %cmp122 = icmp slt i64 %conv120, %129, !dbg !1409
  br i1 %cmp122, label %cond.true, label %cond.false, !dbg !1405

cond.true:                                        ; preds = %if.then.119
  %130 = load i32, i32* %pack.addr, align 4, !dbg !1410, !tbaa !1092
  %conv124 = sext i32 %130 to i64, !dbg !1412
  br label %cond.end, !dbg !1405

cond.false:                                       ; preds = %if.then.119
  %131 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1413, !tbaa !1082
  %align125 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %131, i32 0, i32 2, !dbg !1415
  %132 = load i64, i64* %align125, align 8, !dbg !1415, !tbaa !1408
  br label %cond.end, !dbg !1405

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv124, %cond.true ], [ %132, %cond.false ], !dbg !1405
  store i64 %cond, i64* %align, align 8, !dbg !1416, !tbaa !1088
  br label %if.end.128, !dbg !1419

if.else.126:                                      ; preds = %sw.bb.117
  %133 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1420, !tbaa !1082
  %align127 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %133, i32 0, i32 2, !dbg !1421
  %134 = load i64, i64* %align127, align 8, !dbg !1421, !tbaa !1408
  store i64 %134, i64* %align, align 8, !dbg !1422, !tbaa !1088
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.126, %cond.end
  %135 = load i64, i64* %align, align 8, !dbg !1423, !tbaa !1088
  %tobool129 = icmp ne i64 %135, 0, !dbg !1423
  br i1 %tobool129, label %land.lhs.true.130, label %if.end.137, !dbg !1424

land.lhs.true.130:                                ; preds = %if.end.128
  %136 = load i64*, i64** %poffset.addr, align 8, !dbg !1425, !tbaa !1082
  %137 = load i64, i64* %136, align 8, !dbg !1427, !tbaa !1088
  %138 = load i64, i64* %align, align 8, !dbg !1428, !tbaa !1088
  %rem = srem i64 %137, %138, !dbg !1429
  %tobool131 = icmp ne i64 %rem, 0, !dbg !1429
  br i1 %tobool131, label %if.then.132, label %if.end.137, !dbg !1430

if.then.132:                                      ; preds = %land.lhs.true.130
  %139 = bitcast i64* %delta to i8*, !dbg !1431
  call void @llvm.lifetime.start(i64 8, i8* %139) #2, !dbg !1431
  call void @llvm.dbg.declare(metadata i64* %delta, metadata !551, metadata !1086), !dbg !1432
  %140 = load i64, i64* %align, align 8, !dbg !1433, !tbaa !1088
  %141 = load i64*, i64** %poffset.addr, align 8, !dbg !1434, !tbaa !1082
  %142 = load i64, i64* %141, align 8, !dbg !1435, !tbaa !1088
  %143 = load i64, i64* %align, align 8, !dbg !1436, !tbaa !1088
  %rem133 = srem i64 %142, %143, !dbg !1437
  %sub134 = sub i64 %140, %rem133, !dbg !1438
  store i64 %sub134, i64* %delta, align 8, !dbg !1432, !tbaa !1088
  %144 = load i64, i64* %delta, align 8, !dbg !1439, !tbaa !1088
  %145 = load i64*, i64** %psize.addr, align 8, !dbg !1440, !tbaa !1082
  %146 = load i64, i64* %145, align 8, !dbg !1441, !tbaa !1088
  %add135 = add i64 %146, %144, !dbg !1441
  store i64 %add135, i64* %145, align 8, !dbg !1441, !tbaa !1088
  %147 = load i64, i64* %delta, align 8, !dbg !1442, !tbaa !1088
  %148 = load i64*, i64** %poffset.addr, align 8, !dbg !1443, !tbaa !1082
  %149 = load i64, i64* %148, align 8, !dbg !1444, !tbaa !1088
  %add136 = add i64 %149, %147, !dbg !1444
  store i64 %add136, i64* %148, align 8, !dbg !1444, !tbaa !1088
  %150 = bitcast i64* %delta to i8*, !dbg !1445
  call void @llvm.lifetime.end(i64 8, i8* %150) #2, !dbg !1445
  br label %if.end.137, !dbg !1446

if.end.137:                                       ; preds = %if.then.132, %land.lhs.true.130, %if.end.128
  %151 = load i32, i32* %bitsize.addr, align 4, !dbg !1447, !tbaa !1092
  %cmp138 = icmp eq i32 %151, 0, !dbg !1449
  br i1 %cmp138, label %if.then.140, label %if.end.142, !dbg !1450

if.then.140:                                      ; preds = %if.end.137
  %152 = load i64, i64* %size, align 8, !dbg !1451, !tbaa !1088
  %153 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1452, !tbaa !1082
  %size141 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %153, i32 0, i32 2, !dbg !1453
  store i64 %152, i64* %size141, align 8, !dbg !1454, !tbaa !1387
  br label %if.end.142, !dbg !1452

if.end.142:                                       ; preds = %if.then.140, %if.end.137
  %154 = load i64, i64* %size, align 8, !dbg !1455, !tbaa !1088
  %155 = load i64*, i64** %psize.addr, align 8, !dbg !1456, !tbaa !1082
  %156 = load i64, i64* %155, align 8, !dbg !1457, !tbaa !1088
  %add143 = add i64 %156, %154, !dbg !1457
  store i64 %add143, i64* %155, align 8, !dbg !1457, !tbaa !1088
  %157 = load i64*, i64** %poffset.addr, align 8, !dbg !1458, !tbaa !1082
  %158 = load i64, i64* %157, align 8, !dbg !1459, !tbaa !1088
  %159 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1460, !tbaa !1082
  %offset = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %159, i32 0, i32 1, !dbg !1461
  store i64 %158, i64* %offset, align 8, !dbg !1462, !tbaa !1463
  %160 = load i64, i64* %size, align 8, !dbg !1464, !tbaa !1088
  %161 = load i64*, i64** %poffset.addr, align 8, !dbg !1465, !tbaa !1082
  %162 = load i64, i64* %161, align 8, !dbg !1466, !tbaa !1088
  %add144 = add i64 %162, %160, !dbg !1466
  store i64 %add144, i64* %161, align 8, !dbg !1466, !tbaa !1088
  %163 = load i64, i64* %align, align 8, !dbg !1467, !tbaa !1088
  %164 = load i64*, i64** %palign.addr, align 8, !dbg !1468, !tbaa !1082
  store i64 %163, i64* %164, align 8, !dbg !1469, !tbaa !1088
  br label %sw.epilog, !dbg !1470

sw.bb.145:                                        ; preds = %if.end.97
  %165 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1471, !tbaa !1082
  %size146 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %165, i32 0, i32 1, !dbg !1472
  %166 = load i64, i64* %size146, align 8, !dbg !1472, !tbaa !1172
  %167 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1473, !tbaa !1082
  %168 = load i64, i64* %167, align 8, !dbg !1474, !tbaa !1088
  %div = sdiv i64 %168, 8, !dbg !1475
  %sub147 = sub i64 %166, %div, !dbg !1476
  %169 = load i64*, i64** %poffset.addr, align 8, !dbg !1477, !tbaa !1082
  %170 = load i64, i64* %169, align 8, !dbg !1478, !tbaa !1088
  %add148 = add i64 %170, %sub147, !dbg !1478
  store i64 %add148, i64* %169, align 8, !dbg !1478, !tbaa !1088
  %171 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1479, !tbaa !1082
  %size149 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %171, i32 0, i32 1, !dbg !1480
  %172 = load i64, i64* %size149, align 8, !dbg !1480, !tbaa !1172
  %173 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1481, !tbaa !1082
  %174 = load i64, i64* %173, align 8, !dbg !1482, !tbaa !1088
  %div150 = sdiv i64 %174, 8, !dbg !1483
  %sub151 = sub i64 %172, %div150, !dbg !1484
  %175 = load i64*, i64** %psize.addr, align 8, !dbg !1485, !tbaa !1082
  %176 = load i64, i64* %175, align 8, !dbg !1486, !tbaa !1088
  %add152 = add i64 %176, %sub151, !dbg !1486
  store i64 %add152, i64* %175, align 8, !dbg !1486, !tbaa !1088
  %177 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1487, !tbaa !1082
  %size153 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %177, i32 0, i32 1, !dbg !1488
  %178 = load i64, i64* %size153, align 8, !dbg !1488, !tbaa !1172
  %mul154 = mul i64 %178, 8, !dbg !1489
  %179 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1490, !tbaa !1082
  store i64 %mul154, i64* %179, align 8, !dbg !1491, !tbaa !1088
  %180 = load i32, i32* %big_endian.addr, align 4, !dbg !1492, !tbaa !1092
  %tobool155 = icmp ne i32 %180, 0, !dbg !1492
  br i1 %tobool155, label %if.then.156, label %if.else.165, !dbg !1494

if.then.156:                                      ; preds = %sw.bb.145
  %181 = load i32, i32* %bitsize.addr, align 4, !dbg !1495, !tbaa !1092
  %shl157 = shl i32 %181, 16, !dbg !1496
  %conv158 = sext i32 %shl157 to i64, !dbg !1497
  %182 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1498, !tbaa !1082
  %183 = load i64, i64* %182, align 8, !dbg !1499, !tbaa !1088
  %add159 = add i64 %conv158, %183, !dbg !1500
  %184 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1501, !tbaa !1082
  %185 = load i32, i32* %184, align 4, !dbg !1502, !tbaa !1092
  %conv160 = sext i32 %185 to i64, !dbg !1502
  %sub161 = sub i64 %add159, %conv160, !dbg !1503
  %186 = load i32, i32* %bitsize.addr, align 4, !dbg !1504, !tbaa !1092
  %conv162 = sext i32 %186 to i64, !dbg !1504
  %sub163 = sub i64 %sub161, %conv162, !dbg !1505
  %187 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1506, !tbaa !1082
  %size164 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %187, i32 0, i32 2, !dbg !1507
  store i64 %sub163, i64* %size164, align 8, !dbg !1508, !tbaa !1387
  br label %if.end.170, !dbg !1506

if.else.165:                                      ; preds = %sw.bb.145
  %188 = load i32, i32* %bitsize.addr, align 4, !dbg !1509, !tbaa !1092
  %shl166 = shl i32 %188, 16, !dbg !1510
  %189 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1511, !tbaa !1082
  %190 = load i32, i32* %189, align 4, !dbg !1512, !tbaa !1092
  %add167 = add i32 %shl166, %190, !dbg !1513
  %conv168 = sext i32 %add167 to i64, !dbg !1514
  %191 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1515, !tbaa !1082
  %size169 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %191, i32 0, i32 2, !dbg !1516
  store i64 %conv168, i64* %size169, align 8, !dbg !1517, !tbaa !1387
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.165, %if.then.156
  %192 = load i64*, i64** %poffset.addr, align 8, !dbg !1518, !tbaa !1082
  %193 = load i64, i64* %192, align 8, !dbg !1519, !tbaa !1088
  %194 = load i64, i64* %size, align 8, !dbg !1520, !tbaa !1088
  %sub171 = sub i64 %193, %194, !dbg !1521
  %195 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1522, !tbaa !1082
  %offset172 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %195, i32 0, i32 1, !dbg !1523
  store i64 %sub171, i64* %offset172, align 8, !dbg !1524, !tbaa !1463
  %196 = load i32, i32* %bitsize.addr, align 4, !dbg !1525, !tbaa !1092
  %197 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1526, !tbaa !1082
  %198 = load i32, i32* %197, align 4, !dbg !1527, !tbaa !1092
  %add173 = add i32 %198, %196, !dbg !1527
  store i32 %add173, i32* %197, align 4, !dbg !1527, !tbaa !1092
  br label %sw.epilog, !dbg !1528

sw.bb.174:                                        ; preds = %if.end.97
  %199 = load i32, i32* %big_endian.addr, align 4, !dbg !1529, !tbaa !1092
  %tobool175 = icmp ne i32 %199, 0, !dbg !1529
  br i1 %tobool175, label %if.then.176, label %if.else.185, !dbg !1531

if.then.176:                                      ; preds = %sw.bb.174
  %200 = load i32, i32* %bitsize.addr, align 4, !dbg !1532, !tbaa !1092
  %shl177 = shl i32 %200, 16, !dbg !1533
  %conv178 = sext i32 %shl177 to i64, !dbg !1534
  %201 = load i64*, i64** %pfield_size.addr, align 8, !dbg !1535, !tbaa !1082
  %202 = load i64, i64* %201, align 8, !dbg !1536, !tbaa !1088
  %add179 = add i64 %conv178, %202, !dbg !1537
  %203 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1538, !tbaa !1082
  %204 = load i32, i32* %203, align 4, !dbg !1539, !tbaa !1092
  %conv180 = sext i32 %204 to i64, !dbg !1539
  %sub181 = sub i64 %add179, %conv180, !dbg !1540
  %205 = load i32, i32* %bitsize.addr, align 4, !dbg !1541, !tbaa !1092
  %conv182 = sext i32 %205 to i64, !dbg !1541
  %sub183 = sub i64 %sub181, %conv182, !dbg !1542
  %206 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1543, !tbaa !1082
  %size184 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %206, i32 0, i32 2, !dbg !1544
  store i64 %sub183, i64* %size184, align 8, !dbg !1545, !tbaa !1387
  br label %if.end.190, !dbg !1543

if.else.185:                                      ; preds = %sw.bb.174
  %207 = load i32, i32* %bitsize.addr, align 4, !dbg !1546, !tbaa !1092
  %shl186 = shl i32 %207, 16, !dbg !1547
  %208 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1548, !tbaa !1082
  %209 = load i32, i32* %208, align 4, !dbg !1549, !tbaa !1092
  %add187 = add i32 %shl186, %209, !dbg !1550
  %conv188 = sext i32 %add187 to i64, !dbg !1551
  %210 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1552, !tbaa !1082
  %size189 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %210, i32 0, i32 2, !dbg !1553
  store i64 %conv188, i64* %size189, align 8, !dbg !1554, !tbaa !1387
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.185, %if.then.176
  %211 = load i64*, i64** %poffset.addr, align 8, !dbg !1555, !tbaa !1082
  %212 = load i64, i64* %211, align 8, !dbg !1556, !tbaa !1088
  %213 = load i64, i64* %size, align 8, !dbg !1557, !tbaa !1088
  %sub191 = sub i64 %212, %213, !dbg !1558
  %214 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1559, !tbaa !1082
  %offset192 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %214, i32 0, i32 1, !dbg !1560
  store i64 %sub191, i64* %offset192, align 8, !dbg !1561, !tbaa !1463
  %215 = load i32, i32* %bitsize.addr, align 4, !dbg !1562, !tbaa !1092
  %216 = load i32*, i32** %pbitofs.addr, align 8, !dbg !1563, !tbaa !1082
  %217 = load i32, i32* %216, align 4, !dbg !1564, !tbaa !1092
  %add193 = add i32 %217, %215, !dbg !1564
  store i32 %add193, i32* %216, align 4, !dbg !1564, !tbaa !1092
  br label %sw.epilog, !dbg !1565

sw.epilog:                                        ; preds = %if.end.97, %if.end.190, %if.end.170, %if.end.142
  %218 = load %struct.CFieldObject*, %struct.CFieldObject** %self, align 8, !dbg !1566, !tbaa !1082
  %219 = bitcast %struct.CFieldObject* %218 to %struct._object*, !dbg !1567
  store %struct._object* %219, %struct._object** %retval, !dbg !1568
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194, !dbg !1568

cleanup.194:                                      ; preds = %sw.epilog, %cleanup, %do.end, %if.then
  %220 = bitcast i32* %fieldtype to i8*, !dbg !1569
  call void @llvm.lifetime.end(i64 4, i8* %220) #2, !dbg !1569
  %221 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !1569
  call void @llvm.lifetime.end(i64 8, i8* %221) #2, !dbg !1569
  %222 = bitcast %struct._object* (i8*, i64)** %getfunc to i8*, !dbg !1569
  call void @llvm.lifetime.end(i64 8, i8* %222) #2, !dbg !1569
  %223 = bitcast %struct._object* (i8*, %struct._object*, i64)** %setfunc to i8*, !dbg !1569
  call void @llvm.lifetime.end(i64 8, i8* %223) #2, !dbg !1569
  %224 = bitcast i64* %align to i8*, !dbg !1569
  call void @llvm.lifetime.end(i64 8, i8* %224) #2, !dbg !1569
  %225 = bitcast i64* %size to i8*, !dbg !1569
  call void @llvm.lifetime.end(i64 8, i8* %225) #2, !dbg !1569
  %226 = bitcast %struct._object** %proto to i8*, !dbg !1569
  call void @llvm.lifetime.end(i64 8, i8* %226) #2, !dbg !1569
  %227 = bitcast %struct.CFieldObject** %self to i8*, !dbg !1569
  call void @llvm.lifetime.end(i64 8, i8* %227) #2, !dbg !1569
  %228 = load %struct._object*, %struct._object** %retval, !dbg !1569
  ret %struct._object* %228, !dbg !1569
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #3

declare %struct.StgDictObject* @PyType_stgdict(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

; Function Attrs: uwtable
define %struct.fielddesc* @_ctypes_get_fielddesc(i8* %fmt) #0 {
entry:
  %retval = alloca %struct.fielddesc*, align 8
  %fmt.addr = alloca i8*, align 8
  %table = alloca %struct.fielddesc*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !559, metadata !1086), !dbg !1570
  %0 = bitcast %struct.fielddesc** %table to i8*, !dbg !1571
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1571
  call void @llvm.dbg.declare(metadata %struct.fielddesc** %table, metadata !560, metadata !1086), !dbg !1572
  store %struct.fielddesc* getelementptr inbounds ([23 x %struct.fielddesc], [23 x %struct.fielddesc]* @formattable, i32 0, i32 0), %struct.fielddesc** %table, align 8, !dbg !1572, !tbaa !1082
  %1 = load i32, i32* @_ctypes_get_fielddesc.initialized, align 4, !dbg !1573, !tbaa !1092
  %tobool = icmp ne i32 %1, 0, !dbg !1573
  br i1 %tobool, label %if.end, label %if.then, !dbg !1575

if.then:                                          ; preds = %entry
  store i32 1, i32* @_ctypes_get_fielddesc.initialized, align 4, !dbg !1576, !tbaa !1092
  %call = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !1578
  %pffi_type = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call, i32 0, i32 3, !dbg !1581
  store %struct._ffi_type* @ffi_type_sint32, %struct._ffi_type** %pffi_type, align 8, !dbg !1582, !tbaa !1583
  br label %if.end, !dbg !1584

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond, !dbg !1585

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.fielddesc*, %struct.fielddesc** %table, align 8, !dbg !1586, !tbaa !1082
  %code = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %2, i32 0, i32 0, !dbg !1591
  %3 = load i8, i8* %code, align 1, !dbg !1591, !tbaa !1592
  %tobool1 = icmp ne i8 %3, 0, !dbg !1593
  br i1 %tobool1, label %for.body, label %for.end, !dbg !1593

for.body:                                         ; preds = %for.cond
  %4 = load %struct.fielddesc*, %struct.fielddesc** %table, align 8, !dbg !1594, !tbaa !1082
  %code2 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %4, i32 0, i32 0, !dbg !1597
  %5 = load i8, i8* %code2, align 1, !dbg !1597, !tbaa !1592
  %conv = sext i8 %5 to i32, !dbg !1594
  %6 = load i8*, i8** %fmt.addr, align 8, !dbg !1598, !tbaa !1082
  %arrayidx = getelementptr i8, i8* %6, i64 0, !dbg !1598
  %7 = load i8, i8* %arrayidx, align 1, !dbg !1598, !tbaa !1599
  %conv3 = sext i8 %7 to i32, !dbg !1598
  %cmp = icmp eq i32 %conv, %conv3, !dbg !1600
  br i1 %cmp, label %if.then.5, label %if.end.6, !dbg !1601

if.then.5:                                        ; preds = %for.body
  %8 = load %struct.fielddesc*, %struct.fielddesc** %table, align 8, !dbg !1602, !tbaa !1082
  store %struct.fielddesc* %8, %struct.fielddesc** %retval, !dbg !1603
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1603

if.end.6:                                         ; preds = %for.body
  br label %for.inc, !dbg !1604

for.inc:                                          ; preds = %if.end.6
  %9 = load %struct.fielddesc*, %struct.fielddesc** %table, align 8, !dbg !1605, !tbaa !1082
  %incdec.ptr = getelementptr %struct.fielddesc, %struct.fielddesc* %9, i32 1, !dbg !1605
  store %struct.fielddesc* %incdec.ptr, %struct.fielddesc** %table, align 8, !dbg !1605, !tbaa !1082
  br label %for.cond, !dbg !1606

for.end:                                          ; preds = %for.cond
  store %struct.fielddesc* null, %struct.fielddesc** %retval, !dbg !1607
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1607

cleanup:                                          ; preds = %for.end, %if.then.5
  %10 = bitcast %struct.fielddesc** %table to i8*, !dbg !1608
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !1608
  %11 = load %struct.fielddesc*, %struct.fielddesc** %retval, !dbg !1608
  ret %struct.fielddesc* %11, !dbg !1608
}

; Function Attrs: uwtable
define internal void @PyCField_dealloc(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !563, metadata !1086), !dbg !1609
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1610, !tbaa !1082
  %1 = bitcast %struct._object* %0 to %struct.CFieldObject*, !dbg !1611
  %call = call i32 @PyCField_clear(%struct.CFieldObject* %1), !dbg !1612
  %2 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1613, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1614
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1614, !tbaa !1150
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 38, !dbg !1615
  %4 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1615, !tbaa !1616
  %5 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1617, !tbaa !1082
  %6 = bitcast %struct._object* %5 to i8*, !dbg !1618
  call void %4(i8* %6), !dbg !1613
  ret void, !dbg !1619
}

; Function Attrs: uwtable
define internal %struct._object* @PyCField_repr(%struct.CFieldObject* %self) #0 {
entry:
  %self.addr = alloca %struct.CFieldObject*, align 8
  %result = alloca %struct._object*, align 8
  %bits = alloca i64, align 8
  %size1 = alloca i64, align 8
  %name = alloca i8*, align 8
  store %struct.CFieldObject* %self, %struct.CFieldObject** %self.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct.CFieldObject** %self.addr, metadata !568, metadata !1086), !dbg !1620
  %0 = bitcast %struct._object** %result to i8*, !dbg !1621
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1621
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !569, metadata !1086), !dbg !1622
  %1 = bitcast i64* %bits to i8*, !dbg !1623
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1623
  call void @llvm.dbg.declare(metadata i64* %bits, metadata !570, metadata !1086), !dbg !1624
  %2 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1625, !tbaa !1082
  %size = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %2, i32 0, i32 2, !dbg !1626
  %3 = load i64, i64* %size, align 8, !dbg !1626, !tbaa !1387
  %shr = ashr i64 %3, 16, !dbg !1627
  store i64 %shr, i64* %bits, align 8, !dbg !1624, !tbaa !1088
  %4 = bitcast i64* %size1 to i8*, !dbg !1628
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1628
  call void @llvm.dbg.declare(metadata i64* %size1, metadata !571, metadata !1086), !dbg !1629
  %5 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1630, !tbaa !1082
  %size2 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %5, i32 0, i32 2, !dbg !1631
  %6 = load i64, i64* %size2, align 8, !dbg !1631, !tbaa !1387
  %and = and i64 %6, 65535, !dbg !1632
  store i64 %and, i64* %size1, align 8, !dbg !1629, !tbaa !1088
  %7 = bitcast i8** %name to i8*, !dbg !1633
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1633
  call void @llvm.dbg.declare(metadata i8** %name, metadata !572, metadata !1086), !dbg !1634
  %8 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1635, !tbaa !1082
  %proto = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %8, i32 0, i32 4, !dbg !1636
  %9 = load %struct._object*, %struct._object** %proto, align 8, !dbg !1636, !tbaa !1367
  %10 = bitcast %struct._object* %9 to %struct._typeobject*, !dbg !1637
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1, !dbg !1638
  %11 = load i8*, i8** %tp_name, align 8, !dbg !1638, !tbaa !1639
  store i8* %11, i8** %name, align 8, !dbg !1640, !tbaa !1082
  %12 = load i64, i64* %bits, align 8, !dbg !1641, !tbaa !1088
  %tobool = icmp ne i64 %12, 0, !dbg !1641
  br i1 %tobool, label %if.then, label %if.else, !dbg !1643

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** %name, align 8, !dbg !1644, !tbaa !1082
  %14 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1645, !tbaa !1082
  %offset = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %14, i32 0, i32 1, !dbg !1646
  %15 = load i64, i64* %offset, align 8, !dbg !1646, !tbaa !1463
  %16 = load i64, i64* %size1, align 8, !dbg !1647, !tbaa !1088
  %17 = load i64, i64* %bits, align 8, !dbg !1648, !tbaa !1088
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i8* %13, i64 %15, i64 %16, i64 %17), !dbg !1649
  store %struct._object* %call, %struct._object** %result, align 8, !dbg !1650, !tbaa !1082
  br label %if.end, !dbg !1651

if.else:                                          ; preds = %entry
  %18 = load i8*, i8** %name, align 8, !dbg !1652, !tbaa !1082
  %19 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1653, !tbaa !1082
  %offset3 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %19, i32 0, i32 1, !dbg !1654
  %20 = load i64, i64* %offset3, align 8, !dbg !1654, !tbaa !1463
  %21 = load i64, i64* %size1, align 8, !dbg !1655, !tbaa !1088
  %call4 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i8* %18, i64 %20, i64 %21), !dbg !1656
  store %struct._object* %call4, %struct._object** %result, align 8, !dbg !1657, !tbaa !1082
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct._object*, %struct._object** %result, align 8, !dbg !1658, !tbaa !1082
  %23 = bitcast i8** %name to i8*, !dbg !1659
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1659
  %24 = bitcast i64* %size1 to i8*, !dbg !1659
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !1659
  %25 = bitcast i64* %bits to i8*, !dbg !1659
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !1659
  %26 = bitcast %struct._object** %result to i8*, !dbg !1659
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !1659
  ret %struct._object* %22, !dbg !1660
}

; Function Attrs: uwtable
define internal i32 @PyCField_traverse(%struct.CFieldObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.CFieldObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.CFieldObject* %self, %struct.CFieldObject** %self.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct.CFieldObject** %self.addr, metadata !577, metadata !1086), !dbg !1661
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !578, metadata !1086), !dbg !1662
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !579, metadata !1086), !dbg !1663
  br label %do.body, !dbg !1664

do.body:                                          ; preds = %entry
  %0 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1665, !tbaa !1082
  %proto = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %0, i32 0, i32 4, !dbg !1667
  %1 = load %struct._object*, %struct._object** %proto, align 8, !dbg !1667, !tbaa !1367
  %tobool = icmp ne %struct._object* %1, null, !dbg !1668
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1669

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1670
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1670
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !580, metadata !1086), !dbg !1672
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1673, !tbaa !1082
  %4 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1674, !tbaa !1082
  %proto1 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %4, i32 0, i32 4, !dbg !1675
  %5 = load %struct._object*, %struct._object** %proto1, align 8, !dbg !1675, !tbaa !1367
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1676, !tbaa !1082
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !1673
  store i32 %call, i32* %vret, align 4, !dbg !1672, !tbaa !1092
  %7 = load i32, i32* %vret, align 4, !dbg !1677, !tbaa !1092
  %tobool2 = icmp ne i32 %7, 0, !dbg !1677
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1679

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !1680, !tbaa !1092
  store i32 %8, i32* %retval, !dbg !1682
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1682

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1683
  br label %cleanup, !dbg !1683

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !1685
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !1685
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !1688

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !1689

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !1692
  br label %return, !dbg !1692

return:                                           ; preds = %do.end, %cleanup
  %10 = load i32, i32* %retval, !dbg !1693
  ret i32 %10, !dbg !1693

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: uwtable
define internal i32 @PyCField_clear(%struct.CFieldObject* %self) #0 {
entry:
  %self.addr = alloca %struct.CFieldObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.CFieldObject* %self, %struct.CFieldObject** %self.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct.CFieldObject** %self.addr, metadata !588, metadata !1086), !dbg !1694
  br label %do.body, !dbg !1695

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1696
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1696
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !589, metadata !1086), !dbg !1698
  %1 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1699, !tbaa !1082
  %proto = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %1, i32 0, i32 4, !dbg !1700
  %2 = load %struct._object*, %struct._object** %proto, align 8, !dbg !1700, !tbaa !1367
  store %struct._object* %2, %struct._object** %_py_tmp, align 8, !dbg !1698, !tbaa !1082
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1701, !tbaa !1082
  %cmp = icmp ne %struct._object* %3, null, !dbg !1702
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1703

if.then:                                          ; preds = %do.body
  %4 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1704, !tbaa !1082
  %proto1 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %4, i32 0, i32 4, !dbg !1706
  store %struct._object* null, %struct._object** %proto1, align 8, !dbg !1707, !tbaa !1367
  br label %do.body.2, !dbg !1708

do.body.2:                                        ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1709
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1709
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !591, metadata !1086), !dbg !1711
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1712, !tbaa !1082
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1711, !tbaa !1082
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1713, !tbaa !1082
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1715
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1716, !tbaa !1141
  %dec = add i64 %8, -1, !dbg !1716
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1716, !tbaa !1141
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1717
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1718

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !1719

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1721, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1723
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1723, !tbaa !1150
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1724
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1724, !tbaa !1152
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1725, !tbaa !1082
  call void %11(%struct._object* %12), !dbg !1726
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1727
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !1727
  br label %do.cond, !dbg !1729

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1730

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !1732

if.end.5:                                         ; preds = %do.end, %do.body
  %14 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1734
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1734
  br label %do.end.7, !dbg !1737

do.end.7:                                         ; preds = %if.end.5
  ret i32 0, !dbg !1738
}

; Function Attrs: uwtable
define internal %struct._object* @PyCField_get(%struct.CFieldObject* %self, %struct._object* %inst, %struct._typeobject* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.CFieldObject*, align 8
  %inst.addr = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %src = alloca %struct.tagCDataObject*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.CFieldObject* %self, %struct.CFieldObject** %self.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct.CFieldObject** %self.addr, metadata !607, metadata !1086), !dbg !1739
  store %struct._object* %inst, %struct._object** %inst.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %inst.addr, metadata !608, metadata !1086), !dbg !1740
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !609, metadata !1086), !dbg !1741
  %0 = bitcast %struct.tagCDataObject** %src to i8*, !dbg !1742
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1742
  call void @llvm.dbg.declare(metadata %struct.tagCDataObject** %src, metadata !610, metadata !1086), !dbg !1743
  %1 = load %struct._object*, %struct._object** %inst.addr, align 8, !dbg !1744, !tbaa !1082
  %cmp = icmp eq %struct._object* %1, null, !dbg !1746
  br i1 %cmp, label %if.then, label %if.end, !dbg !1747

if.then:                                          ; preds = %entry
  %2 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1748, !tbaa !1082
  %3 = bitcast %struct.CFieldObject* %2 to %struct._object*, !dbg !1750
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !1751
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1752, !tbaa !1141
  %inc = add i64 %4, 1, !dbg !1752
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1752, !tbaa !1141
  %5 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1753, !tbaa !1082
  %6 = bitcast %struct.CFieldObject* %5 to %struct._object*, !dbg !1754
  store %struct._object* %6, %struct._object** %retval, !dbg !1755
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1755

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %inst.addr, align 8, !dbg !1756, !tbaa !1082
  %8 = bitcast %struct._object* %7 to %struct.tagCDataObject*, !dbg !1757
  store %struct.tagCDataObject* %8, %struct.tagCDataObject** %src, align 8, !dbg !1758, !tbaa !1082
  %9 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1759, !tbaa !1082
  %proto = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %9, i32 0, i32 4, !dbg !1760
  %10 = load %struct._object*, %struct._object** %proto, align 8, !dbg !1760, !tbaa !1367
  %11 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1761, !tbaa !1082
  %getfunc = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %11, i32 0, i32 5, !dbg !1762
  %12 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc, align 8, !dbg !1762, !tbaa !1354
  %13 = load %struct._object*, %struct._object** %inst.addr, align 8, !dbg !1763, !tbaa !1082
  %14 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1764, !tbaa !1082
  %index = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %14, i32 0, i32 3, !dbg !1765
  %15 = load i64, i64* %index, align 8, !dbg !1765, !tbaa !1359
  %16 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1766, !tbaa !1082
  %size = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %16, i32 0, i32 2, !dbg !1767
  %17 = load i64, i64* %size, align 8, !dbg !1767, !tbaa !1387
  %18 = load %struct.tagCDataObject*, %struct.tagCDataObject** %src, align 8, !dbg !1768, !tbaa !1082
  %b_ptr = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %18, i32 0, i32 1, !dbg !1769
  %19 = load i8*, i8** %b_ptr, align 8, !dbg !1769, !tbaa !1770
  %20 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1772, !tbaa !1082
  %offset = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %20, i32 0, i32 1, !dbg !1773
  %21 = load i64, i64* %offset, align 8, !dbg !1773, !tbaa !1463
  %add.ptr = getelementptr i8, i8* %19, i64 %21, !dbg !1774
  %call = call %struct._object* @PyCData_get(%struct._object* %10, %struct._object* (i8*, i64)* %12, %struct._object* %13, i64 %15, i64 %17, i8* %add.ptr), !dbg !1775
  store %struct._object* %call, %struct._object** %retval, !dbg !1776
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1776

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast %struct.tagCDataObject** %src to i8*, !dbg !1777
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !1777
  %23 = load %struct._object*, %struct._object** %retval, !dbg !1777
  ret %struct._object* %23, !dbg !1777
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
  %cleanup.dest.slot = alloca i32
  store %struct.CFieldObject* %self, %struct.CFieldObject** %self.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct.CFieldObject** %self.addr, metadata !615, metadata !1086), !dbg !1778
  store %struct._object* %inst, %struct._object** %inst.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %inst.addr, metadata !616, metadata !1086), !dbg !1779
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !617, metadata !1086), !dbg !1780
  %0 = bitcast %struct.tagCDataObject** %dst to i8*, !dbg !1781
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1781
  call void @llvm.dbg.declare(metadata %struct.tagCDataObject** %dst, metadata !618, metadata !1086), !dbg !1782
  %1 = bitcast i8** %ptr to i8*, !dbg !1783
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1783
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !619, metadata !1086), !dbg !1784
  %2 = load %struct._object*, %struct._object** %inst.addr, align 8, !dbg !1785, !tbaa !1082
  %3 = bitcast %struct._object* %2 to %struct.tagCDataObject*, !dbg !1786
  store %struct.tagCDataObject* %3, %struct.tagCDataObject** %dst, align 8, !dbg !1787, !tbaa !1082
  %4 = load %struct.tagCDataObject*, %struct.tagCDataObject** %dst, align 8, !dbg !1788, !tbaa !1082
  %b_ptr = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %4, i32 0, i32 1, !dbg !1789
  %5 = load i8*, i8** %b_ptr, align 8, !dbg !1789, !tbaa !1770
  %6 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1790, !tbaa !1082
  %offset = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %6, i32 0, i32 1, !dbg !1791
  %7 = load i64, i64* %offset, align 8, !dbg !1791, !tbaa !1463
  %add.ptr = getelementptr i8, i8* %5, i64 %7, !dbg !1792
  store i8* %add.ptr, i8** %ptr, align 8, !dbg !1793, !tbaa !1082
  %8 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1794, !tbaa !1082
  %cmp = icmp eq %struct._object* %8, null, !dbg !1796
  br i1 %cmp, label %if.then, label %if.end, !dbg !1797

if.then:                                          ; preds = %entry
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1798, !tbaa !1082
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)), !dbg !1800
  store i32 -1, i32* %retval, !dbg !1801
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1801

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %inst.addr, align 8, !dbg !1802, !tbaa !1082
  %11 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1803, !tbaa !1082
  %proto = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %11, i32 0, i32 4, !dbg !1804
  %12 = load %struct._object*, %struct._object** %proto, align 8, !dbg !1804, !tbaa !1367
  %13 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1805, !tbaa !1082
  %setfunc = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %13, i32 0, i32 6, !dbg !1806
  %14 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8, !dbg !1806, !tbaa !1348
  %15 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1807, !tbaa !1082
  %16 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1808, !tbaa !1082
  %index = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %16, i32 0, i32 3, !dbg !1809
  %17 = load i64, i64* %index, align 8, !dbg !1809, !tbaa !1359
  %18 = load %struct.CFieldObject*, %struct.CFieldObject** %self.addr, align 8, !dbg !1810, !tbaa !1082
  %size = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %18, i32 0, i32 2, !dbg !1811
  %19 = load i64, i64* %size, align 8, !dbg !1811, !tbaa !1387
  %20 = load i8*, i8** %ptr, align 8, !dbg !1812, !tbaa !1082
  %call = call i32 @PyCData_set(%struct._object* %10, %struct._object* %12, %struct._object* (i8*, %struct._object*, i64)* %14, %struct._object* %15, i64 %17, i64 %19, i8* %20), !dbg !1813
  store i32 %call, i32* %retval, !dbg !1814
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1814

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast i8** %ptr to i8*, !dbg !1815
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !1815
  %22 = bitcast %struct.tagCDataObject** %dst to i8*, !dbg !1815
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !1815
  %23 = load i32, i32* %retval, !dbg !1815
  ret i32 %23, !dbg !1815
}

; Function Attrs: uwtable
define internal %struct._object* @PyCField_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %obj = alloca %struct.CFieldObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !624, metadata !1086), !dbg !1816
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !625, metadata !1086), !dbg !1817
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !626, metadata !1086), !dbg !1818
  %0 = bitcast %struct.CFieldObject** %obj to i8*, !dbg !1819
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1819
  call void @llvm.dbg.declare(metadata %struct.CFieldObject** %obj, metadata !627, metadata !1086), !dbg !1820
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1821, !tbaa !1082
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 36, !dbg !1822
  %2 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1822, !tbaa !1823
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1824, !tbaa !1082
  %call = call %struct._object* %2(%struct._typeobject* %3, i64 0), !dbg !1821
  %4 = bitcast %struct._object* %call to %struct.CFieldObject*, !dbg !1825
  store %struct.CFieldObject* %4, %struct.CFieldObject** %obj, align 8, !dbg !1826, !tbaa !1082
  %5 = load %struct.CFieldObject*, %struct.CFieldObject** %obj, align 8, !dbg !1827, !tbaa !1082
  %6 = bitcast %struct.CFieldObject* %5 to %struct._object*, !dbg !1828
  %7 = bitcast %struct.CFieldObject** %obj to i8*, !dbg !1829
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !1829
  ret %struct._object* %6, !dbg !1830
}

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

; Function Attrs: uwtable
define internal %struct._object* @PyCField_get_offset(%struct._object* %self, i8* %data) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !597, metadata !1086), !dbg !1831
  store i8* %data, i8** %data.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !598, metadata !1086), !dbg !1832
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1833, !tbaa !1082
  %1 = bitcast %struct._object* %0 to %struct.CFieldObject*, !dbg !1834
  %offset = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %1, i32 0, i32 1, !dbg !1835
  %2 = load i64, i64* %offset, align 8, !dbg !1835, !tbaa !1463
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %2), !dbg !1836
  ret %struct._object* %call, !dbg !1837
}

; Function Attrs: uwtable
define internal %struct._object* @PyCField_get_size(%struct._object* %self, i8* %data) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !601, metadata !1086), !dbg !1838
  store i8* %data, i8** %data.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !602, metadata !1086), !dbg !1839
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1840, !tbaa !1082
  %1 = bitcast %struct._object* %0 to %struct.CFieldObject*, !dbg !1841
  %size = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %1, i32 0, i32 2, !dbg !1842
  %2 = load i64, i64* %size, align 8, !dbg !1842, !tbaa !1387
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %2), !dbg !1843
  ret %struct._object* %call, !dbg !1844
}

declare %struct._object* @PyLong_FromSsize_t(i64) #3

declare %struct._object* @PyCData_get(%struct._object*, %struct._object* (i8*, i64)*, %struct._object*, i64, i64, i8*) #3

declare i32 @PyCData_set(%struct._object*, %struct._object*, %struct._object* (i8*, %struct._object*, i64)*, %struct._object*, i64, i64, i8*) #3

; Function Attrs: uwtable
define internal %struct._object* @s_set(i8* %ptr, %struct._object* %value, i64 %length) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %length.addr = alloca i64, align 8
  %data = alloca i8*, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !630, metadata !1086), !dbg !1845
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !631, metadata !1086), !dbg !1846
  store i64 %length, i64* %length.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !632, metadata !1086), !dbg !1847
  %0 = bitcast i8** %data to i8*, !dbg !1848
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1848
  call void @llvm.dbg.declare(metadata i8** %data, metadata !633, metadata !1086), !dbg !1849
  %1 = bitcast i64* %size to i8*, !dbg !1850
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1850
  call void @llvm.dbg.declare(metadata i64* %size, metadata !634, metadata !1086), !dbg !1851
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1852, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1854
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1854, !tbaa !1150
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19, !dbg !1855
  %4 = load i64, i64* %tp_flags, align 8, !dbg !1855, !tbaa !1856
  %and = and i64 %4, 134217728, !dbg !1857
  %cmp = icmp ne i64 %and, 0, !dbg !1858
  br i1 %cmp, label %if.then, label %if.else, !dbg !1859

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1860, !tbaa !1082
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !1862
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1863, !tbaa !1141
  %inc = add i64 %6, 1, !dbg !1863
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1863, !tbaa !1141
  br label %if.end, !dbg !1864

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1865, !tbaa !1082
  %8 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1867, !tbaa !1082
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1868
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1868, !tbaa !1150
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1, !dbg !1869
  %10 = load i8*, i8** %tp_name, align 8, !dbg !1869, !tbaa !1639
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i8* %10), !dbg !1870
  store %struct._object* null, %struct._object** %retval, !dbg !1871
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1871

if.end:                                           ; preds = %if.then
  %11 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1872, !tbaa !1082
  %12 = bitcast %struct._object* %11 to %struct.PyBytesObject*, !dbg !1873
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %12, i32 0, i32 2, !dbg !1874
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1875
  store i8* %arraydecay, i8** %data, align 8, !dbg !1876, !tbaa !1082
  %13 = load i8*, i8** %data, align 8, !dbg !1877, !tbaa !1082
  %tobool = icmp ne i8* %13, null, !dbg !1877
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !1879

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1880
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1880

if.end.3:                                         ; preds = %if.end
  %14 = load i8*, i8** %data, align 8, !dbg !1881, !tbaa !1082
  %call4 = call i64 @strlen(i8* %14) #6, !dbg !1882
  store i64 %call4, i64* %size, align 8, !dbg !1883, !tbaa !1088
  %15 = load i64, i64* %size, align 8, !dbg !1884, !tbaa !1088
  %16 = load i64, i64* %length.addr, align 8, !dbg !1885, !tbaa !1088
  %cmp5 = icmp slt i64 %15, %16, !dbg !1886
  br i1 %cmp5, label %if.then.6, label %if.else.8, !dbg !1887

if.then.6:                                        ; preds = %if.end.3
  %17 = load i64, i64* %size, align 8, !dbg !1888, !tbaa !1088
  %inc7 = add i64 %17, 1, !dbg !1888
  store i64 %inc7, i64* %size, align 8, !dbg !1888, !tbaa !1088
  br label %if.end.19, !dbg !1890

if.else.8:                                        ; preds = %if.end.3
  %18 = load i64, i64* %size, align 8, !dbg !1891, !tbaa !1088
  %19 = load i64, i64* %length.addr, align 8, !dbg !1892, !tbaa !1088
  %cmp9 = icmp sgt i64 %18, %19, !dbg !1893
  br i1 %cmp9, label %if.then.10, label %if.end.18, !dbg !1894

if.then.10:                                       ; preds = %if.else.8
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1895, !tbaa !1082
  %21 = load i64, i64* %size, align 8, !dbg !1896, !tbaa !1088
  %22 = load i64, i64* %length.addr, align 8, !dbg !1897, !tbaa !1088
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i64 %21, i64 %22), !dbg !1898
  br label %do.body, !dbg !1899

do.body:                                          ; preds = %if.then.10
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1900
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !1900
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !635, metadata !1086), !dbg !1902
  %24 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1903, !tbaa !1082
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8, !dbg !1902, !tbaa !1082
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1904, !tbaa !1082
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !1906
  %26 = load i64, i64* %ob_refcnt12, align 8, !dbg !1907, !tbaa !1141
  %dec = add i64 %26, -1, !dbg !1907
  store i64 %dec, i64* %ob_refcnt12, align 8, !dbg !1907, !tbaa !1141
  %cmp13 = icmp ne i64 %dec, 0, !dbg !1908
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !1909

if.then.14:                                       ; preds = %do.body
  br label %if.end.17, !dbg !1910

if.else.15:                                       ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1912, !tbaa !1082
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1914
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !1914, !tbaa !1150
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !1915
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1915, !tbaa !1152
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1916, !tbaa !1082
  call void %29(%struct._object* %30), !dbg !1917
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1918
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !1918
  br label %do.cond, !dbg !1920

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !1921

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1923
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1923

if.end.18:                                        ; preds = %if.else.8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.6
  %32 = load i8*, i8** %ptr.addr, align 8, !dbg !1924, !tbaa !1082
  %33 = load i8*, i8** %data, align 8, !dbg !1925, !tbaa !1082
  %34 = load i64, i64* %size, align 8, !dbg !1926, !tbaa !1088
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 %34, i32 1, i1 false), !dbg !1927
  br label %do.body.20, !dbg !1928

do.body.20:                                       ; preds = %if.end.19
  %35 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !1929
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !1929
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp21, metadata !640, metadata !1086), !dbg !1931
  %36 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1932, !tbaa !1082
  store %struct._object* %36, %struct._object** %_py_decref_tmp21, align 8, !dbg !1931, !tbaa !1082
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !1933, !tbaa !1082
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !1935
  %38 = load i64, i64* %ob_refcnt22, align 8, !dbg !1936, !tbaa !1141
  %dec23 = add i64 %38, -1, !dbg !1936
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !1936, !tbaa !1141
  %cmp24 = icmp ne i64 %dec23, 0, !dbg !1937
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !1938

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29, !dbg !1939

if.else.26:                                       ; preds = %do.body.20
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !1941, !tbaa !1082
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !1943
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !1943, !tbaa !1150
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !1944
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !1944, !tbaa !1152
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !1945, !tbaa !1082
  call void %41(%struct._object* %42), !dbg !1946
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  %43 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !1947
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !1947
  br label %do.cond.30, !dbg !1949

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31, !dbg !1950

do.end.31:                                        ; preds = %do.cond.30
  %44 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1952, !tbaa !1141
  %inc32 = add i64 %44, 1, !dbg !1952
  store i64 %inc32, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1952, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1953
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1953

cleanup:                                          ; preds = %do.end.31, %do.end, %if.then.2, %if.else
  %45 = bitcast i64* %size to i8*, !dbg !1954
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !1954
  %46 = bitcast i8** %data to i8*, !dbg !1954
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !1954
  %47 = load %struct._object*, %struct._object** %retval, !dbg !1954
  ret %struct._object* %47, !dbg !1954
}

; Function Attrs: uwtable
define internal %struct._object* @s_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !644, metadata !1086), !dbg !1955
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !645, metadata !1086), !dbg !1956
  %0 = bitcast i64* %i to i8*, !dbg !1957
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1957
  call void @llvm.dbg.declare(metadata i64* %i, metadata !646, metadata !1086), !dbg !1958
  %1 = bitcast i8** %p to i8*, !dbg !1959
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1959
  call void @llvm.dbg.declare(metadata i8** %p, metadata !647, metadata !1086), !dbg !1960
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !1961, !tbaa !1082
  store i8* %2, i8** %p, align 8, !dbg !1962, !tbaa !1082
  store i64 0, i64* %i, align 8, !dbg !1963, !tbaa !1088
  br label %for.cond, !dbg !1965

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8, !dbg !1966, !tbaa !1088
  %4 = load i64, i64* %size.addr, align 8, !dbg !1970, !tbaa !1088
  %cmp = icmp slt i64 %3, %4, !dbg !1971
  br i1 %cmp, label %for.body, label %for.end, !dbg !1972

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p, align 8, !dbg !1973, !tbaa !1082
  %incdec.ptr = getelementptr i8, i8* %5, i32 1, !dbg !1973
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !1973, !tbaa !1082
  %6 = load i8, i8* %5, align 1, !dbg !1976, !tbaa !1599
  %conv = sext i8 %6 to i32, !dbg !1976
  %cmp1 = icmp eq i32 %conv, 0, !dbg !1977
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1978

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !1979

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1980

for.inc:                                          ; preds = %if.end
  %7 = load i64, i64* %i, align 8, !dbg !1981, !tbaa !1088
  %inc = add i64 %7, 1, !dbg !1981
  store i64 %inc, i64* %i, align 8, !dbg !1981, !tbaa !1088
  br label %for.cond, !dbg !1982

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i8*, i8** %ptr.addr, align 8, !dbg !1983, !tbaa !1082
  %9 = load i64, i64* %i, align 8, !dbg !1984, !tbaa !1088
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %8, i64 %9), !dbg !1985
  %10 = bitcast i8** %p to i8*, !dbg !1986
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !1986
  %11 = bitcast i64* %i to i8*, !dbg !1986
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !1986
  ret %struct._object* %call, !dbg !1987
}

; Function Attrs: uwtable
define internal %struct._object* @b_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !650, metadata !1086), !dbg !1988
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !651, metadata !1086), !dbg !1989
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !652, metadata !1086), !dbg !1990
  %0 = bitcast i64* %val to i8*, !dbg !1991
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1991
  call void @llvm.dbg.declare(metadata i64* %val, metadata !653, metadata !1086), !dbg !1992
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1993, !tbaa !1082
  %call = call i32 @get_long(%struct._object* %1, i64* %val), !dbg !1995
  %cmp = icmp slt i32 %call, 0, !dbg !1996
  br i1 %cmp, label %if.then, label %if.end, !dbg !1997

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1998
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1998

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1999, !tbaa !1088
  %shr = ashr i64 %2, 16, !dbg !2000
  %tobool = icmp ne i64 %shr, 0, !dbg !2000
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2001

cond.true:                                        ; preds = %if.end
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !2002, !tbaa !1082
  %4 = load i8, i8* %3, align 1, !dbg !2004, !tbaa !1599
  %conv = sext i8 %4 to i32, !dbg !2005
  %5 = load i64, i64* %size.addr, align 8, !dbg !2006, !tbaa !1088
  %shr1 = ashr i64 %5, 16, !dbg !2007
  %sub = sub i64 %shr1, 1, !dbg !2008
  %sh_prom = trunc i64 %sub to i32, !dbg !2009
  %shl = shl i32 1, %sh_prom, !dbg !2009
  %sub2 = sub i32 %shl, 1, !dbg !2010
  %shl3 = shl i32 %sub2, 1, !dbg !2011
  %add = add i32 %shl3, 1, !dbg !2012
  %6 = load i64, i64* %size.addr, align 8, !dbg !2013, !tbaa !1088
  %and = and i64 %6, 65535, !dbg !2014
  %sh_prom4 = trunc i64 %and to i32, !dbg !2015
  %shl5 = shl i32 %add, %sh_prom4, !dbg !2015
  %neg = xor i32 %shl5, -1, !dbg !2016
  %and6 = and i32 %conv, %neg, !dbg !2017
  %7 = load i64, i64* %val, align 8, !dbg !2018, !tbaa !1088
  %conv7 = trunc i64 %7 to i8, !dbg !2019
  %conv8 = sext i8 %conv7 to i32, !dbg !2019
  %8 = load i64, i64* %size.addr, align 8, !dbg !2020, !tbaa !1088
  %shr9 = ashr i64 %8, 16, !dbg !2021
  %sub10 = sub i64 %shr9, 1, !dbg !2022
  %sh_prom11 = trunc i64 %sub10 to i32, !dbg !2023
  %shl12 = shl i32 1, %sh_prom11, !dbg !2023
  %sub13 = sub i32 %shl12, 1, !dbg !2024
  %shl14 = shl i32 %sub13, 1, !dbg !2025
  %add15 = add i32 %shl14, 1, !dbg !2026
  %and16 = and i32 %conv8, %add15, !dbg !2027
  %9 = load i64, i64* %size.addr, align 8, !dbg !2028, !tbaa !1088
  %and17 = and i64 %9, 65535, !dbg !2029
  %sh_prom18 = trunc i64 %and17 to i32, !dbg !2030
  %shl19 = shl i32 %and16, %sh_prom18, !dbg !2030
  %or = or i32 %and6, %shl19, !dbg !2031
  br label %cond.end, !dbg !2001

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %val, align 8, !dbg !2032, !tbaa !1088
  %conv20 = trunc i64 %10 to i8, !dbg !2034
  %conv21 = sext i8 %conv20 to i32, !dbg !2034
  br label %cond.end, !dbg !2001

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv21, %cond.false ], !dbg !2001
  %conv22 = trunc i32 %cond to i8, !dbg !2035
  %11 = load i8*, i8** %ptr.addr, align 8, !dbg !2038, !tbaa !1082
  store i8 %conv22, i8* %11, align 1, !dbg !2039, !tbaa !1599
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2040, !tbaa !1141
  %inc = add i64 %12, 1, !dbg !2040
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2040, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2041
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2041

cleanup:                                          ; preds = %cond.end, %if.then
  %13 = bitcast i64* %val to i8*, !dbg !2042
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !2042
  %14 = load %struct._object*, %struct._object** %retval, !dbg !2042
  ret %struct._object* %14, !dbg !2042
}

; Function Attrs: uwtable
define internal %struct._object* @b_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !664, metadata !1086), !dbg !2043
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !665, metadata !1086), !dbg !2044
  call void @llvm.lifetime.start(i64 1, i8* %val) #2, !dbg !2045
  call void @llvm.dbg.declare(metadata i8* %val, metadata !666, metadata !1086), !dbg !2046
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2047, !tbaa !1082
  %1 = load i8, i8* %0, align 1, !dbg !2048, !tbaa !1599
  store i8 %1, i8* %val, align 1, !dbg !2046, !tbaa !1599
  %2 = load i64, i64* %size.addr, align 8, !dbg !2049, !tbaa !1088
  %shr = ashr i64 %2, 16, !dbg !2051
  %tobool = icmp ne i64 %shr, 0, !dbg !2051
  br i1 %tobool, label %if.then, label %if.end, !dbg !2052

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8, !dbg !2053, !tbaa !1088
  %and = and i64 %3, 65535, !dbg !2056
  %sub = sub i64 8, %and, !dbg !2057
  %4 = load i64, i64* %size.addr, align 8, !dbg !2058, !tbaa !1088
  %shr1 = ashr i64 %4, 16, !dbg !2059
  %sub2 = sub i64 %sub, %shr1, !dbg !2060
  %5 = load i8, i8* %val, align 1, !dbg !2061, !tbaa !1599
  %conv = sext i8 %5 to i32, !dbg !2061
  %sh_prom = trunc i64 %sub2 to i32, !dbg !2061
  %shl = shl i32 %conv, %sh_prom, !dbg !2061
  %conv3 = trunc i32 %shl to i8, !dbg !2061
  store i8 %conv3, i8* %val, align 1, !dbg !2061, !tbaa !1599
  %6 = load i64, i64* %size.addr, align 8, !dbg !2062, !tbaa !1088
  %shr4 = ashr i64 %6, 16, !dbg !2063
  %sub5 = sub i64 8, %shr4, !dbg !2064
  %7 = load i8, i8* %val, align 1, !dbg !2065, !tbaa !1599
  %conv6 = sext i8 %7 to i32, !dbg !2065
  %sh_prom7 = trunc i64 %sub5 to i32, !dbg !2065
  %shr8 = ashr i32 %conv6, %sh_prom7, !dbg !2065
  %conv9 = trunc i32 %shr8 to i8, !dbg !2065
  store i8 %conv9, i8* %val, align 1, !dbg !2065, !tbaa !1599
  br label %if.end, !dbg !2066

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8, i8* %val, align 1, !dbg !2067, !tbaa !1599
  %conv10 = sext i8 %8 to i64, !dbg !2067
  %call = call %struct._object* @PyLong_FromLong(i64 %conv10), !dbg !2068
  call void @llvm.lifetime.end(i64 1, i8* %val) #2, !dbg !2069
  ret %struct._object* %call, !dbg !2070
}

; Function Attrs: uwtable
define internal %struct._object* @B_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !669, metadata !1086), !dbg !2071
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !670, metadata !1086), !dbg !2072
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !671, metadata !1086), !dbg !2073
  %0 = bitcast i64* %val to i8*, !dbg !2074
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2074
  call void @llvm.dbg.declare(metadata i64* %val, metadata !672, metadata !1086), !dbg !2075
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2076, !tbaa !1082
  %call = call i32 @get_ulong(%struct._object* %1, i64* %val), !dbg !2078
  %cmp = icmp slt i32 %call, 0, !dbg !2079
  br i1 %cmp, label %if.then, label %if.end, !dbg !2080

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2081
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2081

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2082, !tbaa !1088
  %shr = ashr i64 %2, 16, !dbg !2083
  %tobool = icmp ne i64 %shr, 0, !dbg !2083
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2084

cond.true:                                        ; preds = %if.end
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !2085, !tbaa !1082
  %4 = load i8, i8* %3, align 1, !dbg !2087, !tbaa !1599
  %conv = zext i8 %4 to i32, !dbg !2088
  %5 = load i64, i64* %size.addr, align 8, !dbg !2089, !tbaa !1088
  %shr1 = ashr i64 %5, 16, !dbg !2090
  %sub = sub i64 %shr1, 1, !dbg !2091
  %sh_prom = trunc i64 %sub to i32, !dbg !2092
  %shl = shl i32 1, %sh_prom, !dbg !2092
  %sub2 = sub i32 %shl, 1, !dbg !2093
  %shl3 = shl i32 %sub2, 1, !dbg !2094
  %add = add i32 %shl3, 1, !dbg !2095
  %6 = load i64, i64* %size.addr, align 8, !dbg !2096, !tbaa !1088
  %and = and i64 %6, 65535, !dbg !2097
  %sh_prom4 = trunc i64 %and to i32, !dbg !2098
  %shl5 = shl i32 %add, %sh_prom4, !dbg !2098
  %neg = xor i32 %shl5, -1, !dbg !2099
  %and6 = and i32 %conv, %neg, !dbg !2100
  %7 = load i64, i64* %val, align 8, !dbg !2101, !tbaa !1088
  %conv7 = trunc i64 %7 to i8, !dbg !2102
  %conv8 = zext i8 %conv7 to i32, !dbg !2102
  %8 = load i64, i64* %size.addr, align 8, !dbg !2103, !tbaa !1088
  %shr9 = ashr i64 %8, 16, !dbg !2104
  %sub10 = sub i64 %shr9, 1, !dbg !2105
  %sh_prom11 = trunc i64 %sub10 to i32, !dbg !2106
  %shl12 = shl i32 1, %sh_prom11, !dbg !2106
  %sub13 = sub i32 %shl12, 1, !dbg !2107
  %shl14 = shl i32 %sub13, 1, !dbg !2108
  %add15 = add i32 %shl14, 1, !dbg !2109
  %and16 = and i32 %conv8, %add15, !dbg !2110
  %9 = load i64, i64* %size.addr, align 8, !dbg !2111, !tbaa !1088
  %and17 = and i64 %9, 65535, !dbg !2112
  %sh_prom18 = trunc i64 %and17 to i32, !dbg !2113
  %shl19 = shl i32 %and16, %sh_prom18, !dbg !2113
  %or = or i32 %and6, %shl19, !dbg !2114
  br label %cond.end, !dbg !2084

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %val, align 8, !dbg !2115, !tbaa !1088
  %conv20 = trunc i64 %10 to i8, !dbg !2117
  %conv21 = zext i8 %conv20 to i32, !dbg !2117
  br label %cond.end, !dbg !2084

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv21, %cond.false ], !dbg !2084
  %conv22 = trunc i32 %cond to i8, !dbg !2118
  %11 = load i8*, i8** %ptr.addr, align 8, !dbg !2121, !tbaa !1082
  store i8 %conv22, i8* %11, align 1, !dbg !2122, !tbaa !1599
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2123, !tbaa !1141
  %inc = add i64 %12, 1, !dbg !2123
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2123, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2124
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2124

cleanup:                                          ; preds = %cond.end, %if.then
  %13 = bitcast i64* %val to i8*, !dbg !2125
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !2125
  %14 = load %struct._object*, %struct._object** %retval, !dbg !2125
  ret %struct._object* %14, !dbg !2125
}

; Function Attrs: uwtable
define internal %struct._object* @B_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !683, metadata !1086), !dbg !2126
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !684, metadata !1086), !dbg !2127
  call void @llvm.lifetime.start(i64 1, i8* %val) #2, !dbg !2128
  call void @llvm.dbg.declare(metadata i8* %val, metadata !685, metadata !1086), !dbg !2129
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2130, !tbaa !1082
  %1 = load i8, i8* %0, align 1, !dbg !2131, !tbaa !1599
  store i8 %1, i8* %val, align 1, !dbg !2129, !tbaa !1599
  %2 = load i64, i64* %size.addr, align 8, !dbg !2132, !tbaa !1088
  %shr = ashr i64 %2, 16, !dbg !2134
  %tobool = icmp ne i64 %shr, 0, !dbg !2134
  br i1 %tobool, label %if.then, label %if.end, !dbg !2135

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8, !dbg !2136, !tbaa !1088
  %and = and i64 %3, 65535, !dbg !2139
  %sub = sub i64 8, %and, !dbg !2140
  %4 = load i64, i64* %size.addr, align 8, !dbg !2141, !tbaa !1088
  %shr1 = ashr i64 %4, 16, !dbg !2142
  %sub2 = sub i64 %sub, %shr1, !dbg !2143
  %5 = load i8, i8* %val, align 1, !dbg !2144, !tbaa !1599
  %conv = zext i8 %5 to i32, !dbg !2144
  %sh_prom = trunc i64 %sub2 to i32, !dbg !2144
  %shl = shl i32 %conv, %sh_prom, !dbg !2144
  %conv3 = trunc i32 %shl to i8, !dbg !2144
  store i8 %conv3, i8* %val, align 1, !dbg !2144, !tbaa !1599
  %6 = load i64, i64* %size.addr, align 8, !dbg !2145, !tbaa !1088
  %shr4 = ashr i64 %6, 16, !dbg !2146
  %sub5 = sub i64 8, %shr4, !dbg !2147
  %7 = load i8, i8* %val, align 1, !dbg !2148, !tbaa !1599
  %conv6 = zext i8 %7 to i32, !dbg !2148
  %sh_prom7 = trunc i64 %sub5 to i32, !dbg !2148
  %shr8 = ashr i32 %conv6, %sh_prom7, !dbg !2148
  %conv9 = trunc i32 %shr8 to i8, !dbg !2148
  store i8 %conv9, i8* %val, align 1, !dbg !2148, !tbaa !1599
  br label %if.end, !dbg !2149

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8, i8* %val, align 1, !dbg !2150, !tbaa !1599
  %conv10 = zext i8 %8 to i64, !dbg !2150
  %call = call %struct._object* @PyLong_FromLong(i64 %conv10), !dbg !2151
  call void @llvm.lifetime.end(i64 1, i8* %val) #2, !dbg !2152
  ret %struct._object* %call, !dbg !2153
}

; Function Attrs: uwtable
define internal %struct._object* @c_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %longval = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !688, metadata !1086), !dbg !2154
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !689, metadata !1086), !dbg !2155
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !690, metadata !1086), !dbg !2156
  %0 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2157, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !2159
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2159, !tbaa !1150
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19, !dbg !2160
  %2 = load i64, i64* %tp_flags, align 8, !dbg !2160, !tbaa !1856
  %and = and i64 %2, 134217728, !dbg !2161
  %cmp = icmp ne i64 %and, 0, !dbg !2162
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2163

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2164, !tbaa !1082
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*, !dbg !2166
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1, !dbg !2167
  %5 = load i64, i64* %ob_size, align 8, !dbg !2167, !tbaa !2168
  %cmp1 = icmp eq i64 %5, 1, !dbg !2169
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2170

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2171, !tbaa !1082
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*, !dbg !2173
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2, !dbg !2174
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2175
  %arrayidx = getelementptr i8, i8* %arraydecay, i64 0, !dbg !2176
  %8 = load i8, i8* %arrayidx, align 1, !dbg !2176, !tbaa !1599
  %9 = load i8*, i8** %ptr.addr, align 8, !dbg !2177, !tbaa !1082
  store i8 %8, i8* %9, align 1, !dbg !2178, !tbaa !1599
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2179, !tbaa !1141
  %inc = add i64 %10, 1, !dbg !2179
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2179, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2180
  br label %return, !dbg !2180

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2181, !tbaa !1082
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2183
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !2183, !tbaa !1150
  %cmp3 = icmp eq %struct._typeobject* %12, @PyByteArray_Type, !dbg !2184
  br i1 %cmp3, label %land.lhs.true.5, label %lor.lhs.false, !dbg !2185

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2186, !tbaa !1082
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2188
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !2188, !tbaa !1150
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %14, %struct._typeobject* @PyByteArray_Type), !dbg !2189
  %tobool = icmp ne i32 %call, 0, !dbg !2189
  br i1 %tobool, label %land.lhs.true.5, label %if.end.13, !dbg !2190

land.lhs.true.5:                                  ; preds = %lor.lhs.false, %if.end
  %15 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2191, !tbaa !1082
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*, !dbg !2194
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1, !dbg !2195
  %17 = load i64, i64* %ob_size6, align 8, !dbg !2195, !tbaa !2168
  %cmp7 = icmp eq i64 %17, 1, !dbg !2196
  br i1 %cmp7, label %if.then.8, label %if.end.13, !dbg !2197

if.then.8:                                        ; preds = %land.lhs.true.5
  %18 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2198, !tbaa !1082
  %19 = bitcast %struct._object* %18 to %struct.PyVarObject*, !dbg !2200
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1, !dbg !2201
  %20 = load i64, i64* %ob_size9, align 8, !dbg !2201, !tbaa !2168
  %tobool10 = icmp ne i64 %20, 0, !dbg !2202
  br i1 %tobool10, label %cond.true, label %cond.false, !dbg !2202

cond.true:                                        ; preds = %if.then.8
  %21 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2203, !tbaa !1082
  %22 = bitcast %struct._object* %21 to %struct.PyByteArrayObject*, !dbg !2205
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %22, i32 0, i32 3, !dbg !2206
  %23 = load i8*, i8** %ob_start, align 8, !dbg !2206, !tbaa !2207
  br label %cond.end, !dbg !2202

cond.false:                                       ; preds = %if.then.8
  br label %cond.end, !dbg !2209

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %23, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ], !dbg !2202
  %arrayidx11 = getelementptr i8, i8* %cond, i64 0, !dbg !2211
  %24 = load i8, i8* %arrayidx11, align 1, !dbg !2211, !tbaa !1599
  %25 = load i8*, i8** %ptr.addr, align 8, !dbg !2214, !tbaa !1082
  store i8 %24, i8* %25, align 1, !dbg !2215, !tbaa !1599
  %26 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2216, !tbaa !1141
  %inc12 = add i64 %26, 1, !dbg !2216
  store i64 %inc12, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2216, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2217
  br label %return, !dbg !2217

if.end.13:                                        ; preds = %land.lhs.true.5, %lor.lhs.false
  %27 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2218, !tbaa !1082
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !2219
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !2219, !tbaa !1150
  %tp_flags15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 19, !dbg !2220
  %29 = load i64, i64* %tp_flags15, align 8, !dbg !2220, !tbaa !1856
  %and16 = and i64 %29, 16777216, !dbg !2221
  %cmp17 = icmp ne i64 %and16, 0, !dbg !2222
  br i1 %cmp17, label %if.then.18, label %if.end.26, !dbg !2223

if.then.18:                                       ; preds = %if.end.13
  %30 = bitcast i64* %longval to i8*, !dbg !2224
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !2224
  call void @llvm.dbg.declare(metadata i64* %longval, metadata !691, metadata !1086), !dbg !2225
  %31 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2226, !tbaa !1082
  %call19 = call i64 @PyLong_AsLong(%struct._object* %31), !dbg !2227
  store i64 %call19, i64* %longval, align 8, !dbg !2225, !tbaa !1088
  %32 = load i64, i64* %longval, align 8, !dbg !2228, !tbaa !1088
  %cmp20 = icmp slt i64 %32, 0, !dbg !2230
  br i1 %cmp20, label %if.then.23, label %lor.lhs.false.21, !dbg !2231

lor.lhs.false.21:                                 ; preds = %if.then.18
  %33 = load i64, i64* %longval, align 8, !dbg !2232, !tbaa !1088
  %cmp22 = icmp sge i64 %33, 256, !dbg !2234
  br i1 %cmp22, label %if.then.23, label %if.end.24, !dbg !2235

if.then.23:                                       ; preds = %lor.lhs.false.21, %if.then.18
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2236

if.end.24:                                        ; preds = %lor.lhs.false.21
  %34 = load i64, i64* %longval, align 8, !dbg !2237, !tbaa !1088
  %conv = trunc i64 %34 to i8, !dbg !2238
  %35 = load i8*, i8** %ptr.addr, align 8, !dbg !2239, !tbaa !1082
  store i8 %conv, i8* %35, align 1, !dbg !2240, !tbaa !1599
  %36 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2241, !tbaa !1141
  %inc25 = add i64 %36, 1, !dbg !2241
  store i64 %inc25, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2241, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2242
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2242

cleanup:                                          ; preds = %if.then.23, %if.end.24
  %37 = bitcast i64* %longval to i8*, !dbg !2243
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !2243
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 1, label %return
    i32 2, label %error
  ]

if.end.26:                                        ; preds = %if.end.13
  br label %error, !dbg !2244

error:                                            ; preds = %if.end.26, %cleanup
  %38 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2246, !tbaa !1082
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0)), !dbg !2247
  store %struct._object* null, %struct._object** %retval, !dbg !2248
  br label %return, !dbg !2248

return:                                           ; preds = %error, %cleanup, %cond.end, %if.then
  %39 = load %struct._object*, %struct._object** %retval, !dbg !2249
  ret %struct._object* %39, !dbg !2249

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: uwtable
define internal %struct._object* @c_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !696, metadata !1086), !dbg !2250
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !697, metadata !1086), !dbg !2251
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2252, !tbaa !1082
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %0, i64 1), !dbg !2253
  ret %struct._object* %call, !dbg !2254
}

; Function Attrs: uwtable
define internal %struct._object* @d_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !700, metadata !1086), !dbg !2255
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !701, metadata !1086), !dbg !2256
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !702, metadata !1086), !dbg !2257
  %0 = bitcast double* %x to i8*, !dbg !2258
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2258
  call void @llvm.dbg.declare(metadata double* %x, metadata !703, metadata !1086), !dbg !2259
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2260, !tbaa !1082
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !2261
  store double %call, double* %x, align 8, !dbg !2262, !tbaa !2263
  %2 = load double, double* %x, align 8, !dbg !2265, !tbaa !2263
  %cmp = fcmp oeq double %2, -1.000000e+00, !dbg !2267
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2268

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !2269
  %tobool = icmp ne %struct._object* %call1, null, !dbg !2269
  br i1 %tobool, label %if.then, label %if.end, !dbg !2271

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2272
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2272

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !2273, !tbaa !1082
  %4 = bitcast double* %x to i8*, !dbg !2274
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 1, i1 false), !dbg !2274
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2275, !tbaa !1141
  %inc = add i64 %5, 1, !dbg !2275
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2275, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2276
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2276

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast double* %x to i8*, !dbg !2277
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !2277
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2277
  ret %struct._object* %7, !dbg !2277
}

; Function Attrs: uwtable
define internal %struct._object* @d_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca double, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !706, metadata !1086), !dbg !2278
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !707, metadata !1086), !dbg !2279
  %0 = bitcast double* %val to i8*, !dbg !2280
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2280
  call void @llvm.dbg.declare(metadata double* %val, metadata !708, metadata !1086), !dbg !2281
  %1 = bitcast double* %val to i8*, !dbg !2282
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !2283, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !2282
  %3 = load double, double* %val, align 8, !dbg !2284, !tbaa !2263
  %call = call %struct._object* @PyFloat_FromDouble(double %3), !dbg !2285
  %4 = bitcast double* %val to i8*, !dbg !2286
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !2286
  ret %struct._object* %call, !dbg !2287
}

; Function Attrs: uwtable
define internal %struct._object* @d_set_sw(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !711, metadata !1086), !dbg !2288
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !712, metadata !1086), !dbg !2289
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !713, metadata !1086), !dbg !2290
  %0 = bitcast double* %x to i8*, !dbg !2291
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2291
  call void @llvm.dbg.declare(metadata double* %x, metadata !714, metadata !1086), !dbg !2292
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2293, !tbaa !1082
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !2294
  store double %call, double* %x, align 8, !dbg !2295, !tbaa !2263
  %2 = load double, double* %x, align 8, !dbg !2296, !tbaa !2263
  %cmp = fcmp oeq double %2, -1.000000e+00, !dbg !2298
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2299

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !2300
  %tobool = icmp ne %struct._object* %call1, null, !dbg !2300
  br i1 %tobool, label %if.then, label %if.end, !dbg !2302

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2303
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2303

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load double, double* %x, align 8, !dbg !2304, !tbaa !2263
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !2306, !tbaa !1082
  %call2 = call i32 @_PyFloat_Pack8(double %3, i8* %4, i32 0), !dbg !2307
  %tobool3 = icmp ne i32 %call2, 0, !dbg !2307
  br i1 %tobool3, label %if.then.4, label %if.end.5, !dbg !2308

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2309
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2309

if.end.5:                                         ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2310, !tbaa !1141
  %inc = add i64 %5, 1, !dbg !2310
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2310, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2311
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2311

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %6 = bitcast double* %x to i8*, !dbg !2312
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !2312
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2312
  ret %struct._object* %7, !dbg !2312
}

; Function Attrs: uwtable
define internal %struct._object* @d_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !717, metadata !1086), !dbg !2313
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !718, metadata !1086), !dbg !2314
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2315, !tbaa !1082
  %call = call double @_PyFloat_Unpack8(i8* %0, i32 0), !dbg !2316
  %call1 = call %struct._object* @PyFloat_FromDouble(double %call), !dbg !2317
  ret %struct._object* %call1, !dbg !2318
}

; Function Attrs: uwtable
define internal %struct._object* @g_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %x = alloca x86_fp80, align 16
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !721, metadata !1086), !dbg !2319
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !722, metadata !1086), !dbg !2320
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !723, metadata !1086), !dbg !2321
  %0 = bitcast x86_fp80* %x to i8*, !dbg !2322
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !2322
  call void @llvm.dbg.declare(metadata x86_fp80* %x, metadata !724, metadata !1086), !dbg !2323
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2324, !tbaa !1082
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !2325
  %conv = fpext double %call to x86_fp80, !dbg !2325
  store x86_fp80 %conv, x86_fp80* %x, align 16, !dbg !2326, !tbaa !2327
  %2 = load x86_fp80, x86_fp80* %x, align 16, !dbg !2329, !tbaa !2327
  %cmp = fcmp oeq x86_fp80 %2, 0xKBFFF8000000000000000, !dbg !2331
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2332

land.lhs.true:                                    ; preds = %entry
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !2333
  %tobool = icmp ne %struct._object* %call2, null, !dbg !2333
  br i1 %tobool, label %if.then, label %if.end, !dbg !2335

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2336
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2336

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !2337, !tbaa !1082
  %4 = bitcast x86_fp80* %x to i8*, !dbg !2338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 1, i1 false), !dbg !2338
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2339, !tbaa !1141
  %inc = add i64 %5, 1, !dbg !2339
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2339, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2340
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2340

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast x86_fp80* %x to i8*, !dbg !2341
  call void @llvm.lifetime.end(i64 16, i8* %6) #2, !dbg !2341
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2341
  ret %struct._object* %7, !dbg !2341
}

; Function Attrs: uwtable
define internal %struct._object* @g_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca x86_fp80, align 16
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !727, metadata !1086), !dbg !2342
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !728, metadata !1086), !dbg !2343
  %0 = bitcast x86_fp80* %val to i8*, !dbg !2344
  call void @llvm.lifetime.start(i64 16, i8* %0) #2, !dbg !2344
  call void @llvm.dbg.declare(metadata x86_fp80* %val, metadata !729, metadata !1086), !dbg !2345
  %1 = bitcast x86_fp80* %val to i8*, !dbg !2346
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !2347, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 1, i1 false), !dbg !2346
  %3 = load x86_fp80, x86_fp80* %val, align 16, !dbg !2348, !tbaa !2327
  %conv = fptrunc x86_fp80 %3 to double, !dbg !2348
  %call = call %struct._object* @PyFloat_FromDouble(double %conv), !dbg !2349
  %4 = bitcast x86_fp80* %val to i8*, !dbg !2350
  call void @llvm.lifetime.end(i64 16, i8* %4) #2, !dbg !2350
  ret %struct._object* %call, !dbg !2351
}

; Function Attrs: uwtable
define internal %struct._object* @f_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %x = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !732, metadata !1086), !dbg !2352
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !733, metadata !1086), !dbg !2353
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !734, metadata !1086), !dbg !2354
  %0 = bitcast float* %x to i8*, !dbg !2355
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2355
  call void @llvm.dbg.declare(metadata float* %x, metadata !735, metadata !1086), !dbg !2356
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2357, !tbaa !1082
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !2358
  %conv = fptrunc double %call to float, !dbg !2359
  store float %conv, float* %x, align 4, !dbg !2360, !tbaa !2361
  %2 = load float, float* %x, align 4, !dbg !2363, !tbaa !2361
  %cmp = fcmp oeq float %2, -1.000000e+00, !dbg !2365
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2366

land.lhs.true:                                    ; preds = %entry
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !2367
  %tobool = icmp ne %struct._object* %call2, null, !dbg !2367
  br i1 %tobool, label %if.then, label %if.end, !dbg !2369

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2370
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2370

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !2371, !tbaa !1082
  %4 = bitcast float* %x to i8*, !dbg !2372
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 4, i32 1, i1 false), !dbg !2372
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2373, !tbaa !1141
  %inc = add i64 %5, 1, !dbg !2373
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2373, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2374
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2374

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast float* %x to i8*, !dbg !2375
  call void @llvm.lifetime.end(i64 4, i8* %6) #2, !dbg !2375
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2375
  ret %struct._object* %7, !dbg !2375
}

; Function Attrs: uwtable
define internal %struct._object* @f_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca float, align 4
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !738, metadata !1086), !dbg !2376
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !739, metadata !1086), !dbg !2377
  %0 = bitcast float* %val to i8*, !dbg !2378
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2378
  call void @llvm.dbg.declare(metadata float* %val, metadata !740, metadata !1086), !dbg !2379
  %1 = bitcast float* %val to i8*, !dbg !2380
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !2381, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false), !dbg !2380
  %3 = load float, float* %val, align 4, !dbg !2382, !tbaa !2361
  %conv = fpext float %3 to double, !dbg !2382
  %call = call %struct._object* @PyFloat_FromDouble(double %conv), !dbg !2383
  %4 = bitcast float* %val to i8*, !dbg !2384
  call void @llvm.lifetime.end(i64 4, i8* %4) #2, !dbg !2384
  ret %struct._object* %call, !dbg !2385
}

; Function Attrs: uwtable
define internal %struct._object* @f_set_sw(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %x = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !743, metadata !1086), !dbg !2386
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !744, metadata !1086), !dbg !2387
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !745, metadata !1086), !dbg !2388
  %0 = bitcast float* %x to i8*, !dbg !2389
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2389
  call void @llvm.dbg.declare(metadata float* %x, metadata !746, metadata !1086), !dbg !2390
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2391, !tbaa !1082
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !2392
  %conv = fptrunc double %call to float, !dbg !2393
  store float %conv, float* %x, align 4, !dbg !2394, !tbaa !2361
  %2 = load float, float* %x, align 4, !dbg !2395, !tbaa !2361
  %cmp = fcmp oeq float %2, -1.000000e+00, !dbg !2397
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2398

land.lhs.true:                                    ; preds = %entry
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !2399
  %tobool = icmp ne %struct._object* %call2, null, !dbg !2399
  br i1 %tobool, label %if.then, label %if.end, !dbg !2401

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2402
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2402

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load float, float* %x, align 4, !dbg !2403, !tbaa !2361
  %conv3 = fpext float %3 to double, !dbg !2403
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !2405, !tbaa !1082
  %call4 = call i32 @_PyFloat_Pack4(double %conv3, i8* %4, i32 0), !dbg !2406
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2406
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !2407

if.then.6:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2408
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2408

if.end.7:                                         ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2409, !tbaa !1141
  %inc = add i64 %5, 1, !dbg !2409
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2409, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2410
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2410

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %6 = bitcast float* %x to i8*, !dbg !2411
  call void @llvm.lifetime.end(i64 4, i8* %6) #2, !dbg !2411
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2411
  ret %struct._object* %7, !dbg !2411
}

; Function Attrs: uwtable
define internal %struct._object* @f_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !749, metadata !1086), !dbg !2412
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !750, metadata !1086), !dbg !2413
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2414, !tbaa !1082
  %call = call double @_PyFloat_Unpack4(i8* %0, i32 0), !dbg !2415
  %call1 = call %struct._object* @PyFloat_FromDouble(double %call), !dbg !2416
  ret %struct._object* %call1, !dbg !2417
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !753, metadata !1086), !dbg !2418
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !754, metadata !1086), !dbg !2419
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !755, metadata !1086), !dbg !2420
  %0 = bitcast i64* %val to i8*, !dbg !2421
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2421
  call void @llvm.dbg.declare(metadata i64* %val, metadata !756, metadata !1086), !dbg !2422
  %1 = bitcast i16* %x to i8*, !dbg !2423
  call void @llvm.lifetime.start(i64 2, i8* %1) #2, !dbg !2423
  call void @llvm.dbg.declare(metadata i16* %x, metadata !757, metadata !1086), !dbg !2424
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2425, !tbaa !1082
  %call = call i32 @get_long(%struct._object* %2, i64* %val), !dbg !2427
  %cmp = icmp slt i32 %call, 0, !dbg !2428
  br i1 %cmp, label %if.then, label %if.end, !dbg !2429

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2430
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2430

if.end:                                           ; preds = %entry
  %3 = bitcast i16* %x to i8*, !dbg !2431
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !2432, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 2, i32 1, i1 false), !dbg !2431
  %5 = load i64, i64* %size.addr, align 8, !dbg !2433, !tbaa !1088
  %shr = ashr i64 %5, 16, !dbg !2434
  %tobool = icmp ne i64 %shr, 0, !dbg !2434
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2435

cond.true:                                        ; preds = %if.end
  %6 = load i16, i16* %x, align 2, !dbg !2436, !tbaa !2438
  %conv = sext i16 %6 to i32, !dbg !2439
  %7 = load i64, i64* %size.addr, align 8, !dbg !2440, !tbaa !1088
  %shr1 = ashr i64 %7, 16, !dbg !2441
  %sub = sub i64 %shr1, 1, !dbg !2442
  %sh_prom = trunc i64 %sub to i32, !dbg !2443
  %shl = shl i32 1, %sh_prom, !dbg !2443
  %sub2 = sub i32 %shl, 1, !dbg !2444
  %shl3 = shl i32 %sub2, 1, !dbg !2445
  %add = add i32 %shl3, 1, !dbg !2446
  %8 = load i64, i64* %size.addr, align 8, !dbg !2447, !tbaa !1088
  %and = and i64 %8, 65535, !dbg !2448
  %sh_prom4 = trunc i64 %and to i32, !dbg !2449
  %shl5 = shl i32 %add, %sh_prom4, !dbg !2449
  %neg = xor i32 %shl5, -1, !dbg !2450
  %and6 = and i32 %conv, %neg, !dbg !2451
  %9 = load i64, i64* %val, align 8, !dbg !2452, !tbaa !1088
  %conv7 = trunc i64 %9 to i16, !dbg !2453
  %conv8 = sext i16 %conv7 to i32, !dbg !2453
  %10 = load i64, i64* %size.addr, align 8, !dbg !2454, !tbaa !1088
  %shr9 = ashr i64 %10, 16, !dbg !2455
  %sub10 = sub i64 %shr9, 1, !dbg !2456
  %sh_prom11 = trunc i64 %sub10 to i32, !dbg !2457
  %shl12 = shl i32 1, %sh_prom11, !dbg !2457
  %sub13 = sub i32 %shl12, 1, !dbg !2458
  %shl14 = shl i32 %sub13, 1, !dbg !2459
  %add15 = add i32 %shl14, 1, !dbg !2460
  %and16 = and i32 %conv8, %add15, !dbg !2461
  %11 = load i64, i64* %size.addr, align 8, !dbg !2462, !tbaa !1088
  %and17 = and i64 %11, 65535, !dbg !2463
  %sh_prom18 = trunc i64 %and17 to i32, !dbg !2464
  %shl19 = shl i32 %and16, %sh_prom18, !dbg !2464
  %or = or i32 %and6, %shl19, !dbg !2465
  br label %cond.end, !dbg !2435

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %val, align 8, !dbg !2466, !tbaa !1088
  %conv20 = trunc i64 %12 to i16, !dbg !2468
  %conv21 = sext i16 %conv20 to i32, !dbg !2468
  br label %cond.end, !dbg !2435

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv21, %cond.false ], !dbg !2435
  %conv22 = trunc i32 %cond to i16, !dbg !2469
  store i16 %conv22, i16* %x, align 2, !dbg !2472, !tbaa !2438
  %13 = load i8*, i8** %ptr.addr, align 8, !dbg !2473, !tbaa !1082
  %14 = bitcast i16* %x to i8*, !dbg !2474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 2, i32 1, i1 false), !dbg !2474
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2475, !tbaa !1141
  %inc = add i64 %15, 1, !dbg !2475
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2475, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2476
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2476

cleanup:                                          ; preds = %cond.end, %if.then
  %16 = bitcast i16* %x to i8*, !dbg !2477
  call void @llvm.lifetime.end(i64 2, i8* %16) #2, !dbg !2477
  %17 = bitcast i64* %val to i8*, !dbg !2477
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2477
  %18 = load %struct._object*, %struct._object** %retval, !dbg !2477
  ret %struct._object* %18, !dbg !2477
}

; Function Attrs: uwtable
define internal %struct._object* @h_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i16, align 2
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !760, metadata !1086), !dbg !2478
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !761, metadata !1086), !dbg !2479
  %0 = bitcast i16* %val to i8*, !dbg !2480
  call void @llvm.lifetime.start(i64 2, i8* %0) #2, !dbg !2480
  call void @llvm.dbg.declare(metadata i16* %val, metadata !762, metadata !1086), !dbg !2481
  %1 = bitcast i16* %val to i8*, !dbg !2482
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !2483, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 2, i32 1, i1 false), !dbg !2482
  %3 = load i64, i64* %size.addr, align 8, !dbg !2484, !tbaa !1088
  %shr = ashr i64 %3, 16, !dbg !2486
  %tobool = icmp ne i64 %shr, 0, !dbg !2486
  br i1 %tobool, label %if.then, label %if.end, !dbg !2487

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8, !dbg !2488, !tbaa !1088
  %and = and i64 %4, 65535, !dbg !2491
  %sub = sub i64 16, %and, !dbg !2492
  %5 = load i64, i64* %size.addr, align 8, !dbg !2493, !tbaa !1088
  %shr1 = ashr i64 %5, 16, !dbg !2494
  %sub2 = sub i64 %sub, %shr1, !dbg !2495
  %6 = load i16, i16* %val, align 2, !dbg !2496, !tbaa !2438
  %conv = sext i16 %6 to i32, !dbg !2496
  %sh_prom = trunc i64 %sub2 to i32, !dbg !2496
  %shl = shl i32 %conv, %sh_prom, !dbg !2496
  %conv3 = trunc i32 %shl to i16, !dbg !2496
  store i16 %conv3, i16* %val, align 2, !dbg !2496, !tbaa !2438
  %7 = load i64, i64* %size.addr, align 8, !dbg !2497, !tbaa !1088
  %shr4 = ashr i64 %7, 16, !dbg !2498
  %sub5 = sub i64 16, %shr4, !dbg !2499
  %8 = load i16, i16* %val, align 2, !dbg !2500, !tbaa !2438
  %conv6 = sext i16 %8 to i32, !dbg !2500
  %sh_prom7 = trunc i64 %sub5 to i32, !dbg !2500
  %shr8 = ashr i32 %conv6, %sh_prom7, !dbg !2500
  %conv9 = trunc i32 %shr8 to i16, !dbg !2500
  store i16 %conv9, i16* %val, align 2, !dbg !2500, !tbaa !2438
  br label %if.end, !dbg !2501

if.end:                                           ; preds = %if.then, %entry
  %9 = load i16, i16* %val, align 2, !dbg !2502, !tbaa !2438
  %conv10 = sext i16 %9 to i64, !dbg !2503
  %call = call %struct._object* @PyLong_FromLong(i64 %conv10), !dbg !2504
  %10 = bitcast i16* %val to i8*, !dbg !2505
  call void @llvm.lifetime.end(i64 2, i8* %10) #2, !dbg !2505
  ret %struct._object* %call, !dbg !2506
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !765, metadata !1086), !dbg !2507
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !766, metadata !1086), !dbg !2508
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !767, metadata !1086), !dbg !2509
  %0 = bitcast i64* %val to i8*, !dbg !2510
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2510
  call void @llvm.dbg.declare(metadata i64* %val, metadata !768, metadata !1086), !dbg !2511
  %1 = bitcast i16* %field to i8*, !dbg !2512
  call void @llvm.lifetime.start(i64 2, i8* %1) #2, !dbg !2512
  call void @llvm.dbg.declare(metadata i16* %field, metadata !769, metadata !1086), !dbg !2513
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2514, !tbaa !1082
  %call = call i32 @get_long(%struct._object* %2, i64* %val), !dbg !2516
  %cmp = icmp slt i32 %call, 0, !dbg !2517
  br i1 %cmp, label %if.then, label %if.end, !dbg !2518

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2519
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2519

if.end:                                           ; preds = %entry
  %3 = bitcast i16* %field to i8*, !dbg !2520
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !2521, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 2, i32 1, i1 false), !dbg !2520
  %5 = load i16, i16* %field, align 2, !dbg !2522, !tbaa !2438
  %conv = sext i16 %5 to i32, !dbg !2522
  %shr = ashr i32 %conv, 8, !dbg !2523
  %and = and i32 %shr, 255, !dbg !2524
  %6 = load i16, i16* %field, align 2, !dbg !2525, !tbaa !2438
  %conv1 = sext i16 %6 to i32, !dbg !2525
  %shl = shl i32 %conv1, 8, !dbg !2526
  %and2 = and i32 %shl, 65280, !dbg !2527
  %or = or i32 %and, %and2, !dbg !2528
  %conv3 = trunc i32 %or to i16, !dbg !2529
  store i16 %conv3, i16* %field, align 2, !dbg !2530, !tbaa !2438
  %7 = load i64, i64* %size.addr, align 8, !dbg !2531, !tbaa !1088
  %shr4 = ashr i64 %7, 16, !dbg !2532
  %tobool = icmp ne i64 %shr4, 0, !dbg !2532
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2533

cond.true:                                        ; preds = %if.end
  %8 = load i16, i16* %field, align 2, !dbg !2534, !tbaa !2438
  %conv5 = sext i16 %8 to i32, !dbg !2536
  %9 = load i64, i64* %size.addr, align 8, !dbg !2537, !tbaa !1088
  %shr6 = ashr i64 %9, 16, !dbg !2538
  %sub = sub i64 %shr6, 1, !dbg !2539
  %sh_prom = trunc i64 %sub to i32, !dbg !2540
  %shl7 = shl i32 1, %sh_prom, !dbg !2540
  %sub8 = sub i32 %shl7, 1, !dbg !2541
  %shl9 = shl i32 %sub8, 1, !dbg !2542
  %add = add i32 %shl9, 1, !dbg !2543
  %10 = load i64, i64* %size.addr, align 8, !dbg !2544, !tbaa !1088
  %and10 = and i64 %10, 65535, !dbg !2545
  %sh_prom11 = trunc i64 %and10 to i32, !dbg !2546
  %shl12 = shl i32 %add, %sh_prom11, !dbg !2546
  %neg = xor i32 %shl12, -1, !dbg !2547
  %and13 = and i32 %conv5, %neg, !dbg !2548
  %11 = load i64, i64* %val, align 8, !dbg !2549, !tbaa !1088
  %conv14 = trunc i64 %11 to i16, !dbg !2550
  %conv15 = sext i16 %conv14 to i32, !dbg !2550
  %12 = load i64, i64* %size.addr, align 8, !dbg !2551, !tbaa !1088
  %shr16 = ashr i64 %12, 16, !dbg !2552
  %sub17 = sub i64 %shr16, 1, !dbg !2553
  %sh_prom18 = trunc i64 %sub17 to i32, !dbg !2554
  %shl19 = shl i32 1, %sh_prom18, !dbg !2554
  %sub20 = sub i32 %shl19, 1, !dbg !2555
  %shl21 = shl i32 %sub20, 1, !dbg !2556
  %add22 = add i32 %shl21, 1, !dbg !2557
  %and23 = and i32 %conv15, %add22, !dbg !2558
  %13 = load i64, i64* %size.addr, align 8, !dbg !2559, !tbaa !1088
  %and24 = and i64 %13, 65535, !dbg !2560
  %sh_prom25 = trunc i64 %and24 to i32, !dbg !2561
  %shl26 = shl i32 %and23, %sh_prom25, !dbg !2561
  %or27 = or i32 %and13, %shl26, !dbg !2562
  br label %cond.end, !dbg !2533

cond.false:                                       ; preds = %if.end
  %14 = load i64, i64* %val, align 8, !dbg !2563, !tbaa !1088
  %conv28 = trunc i64 %14 to i16, !dbg !2565
  %conv29 = sext i16 %conv28 to i32, !dbg !2565
  br label %cond.end, !dbg !2533

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or27, %cond.true ], [ %conv29, %cond.false ], !dbg !2533
  %conv30 = trunc i32 %cond to i16, !dbg !2566
  store i16 %conv30, i16* %field, align 2, !dbg !2569, !tbaa !2438
  %15 = load i16, i16* %field, align 2, !dbg !2570, !tbaa !2438
  %conv31 = sext i16 %15 to i32, !dbg !2570
  %shr32 = ashr i32 %conv31, 8, !dbg !2571
  %and33 = and i32 %shr32, 255, !dbg !2572
  %16 = load i16, i16* %field, align 2, !dbg !2573, !tbaa !2438
  %conv34 = sext i16 %16 to i32, !dbg !2573
  %shl35 = shl i32 %conv34, 8, !dbg !2574
  %and36 = and i32 %shl35, 65280, !dbg !2575
  %or37 = or i32 %and33, %and36, !dbg !2576
  %conv38 = trunc i32 %or37 to i16, !dbg !2577
  store i16 %conv38, i16* %field, align 2, !dbg !2578, !tbaa !2438
  %17 = load i8*, i8** %ptr.addr, align 8, !dbg !2579, !tbaa !1082
  %18 = bitcast i16* %field to i8*, !dbg !2580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 2, i32 1, i1 false), !dbg !2580
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2581, !tbaa !1141
  %inc = add i64 %19, 1, !dbg !2581
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2581, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2582
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2582

cleanup:                                          ; preds = %cond.end, %if.then
  %20 = bitcast i16* %field to i8*, !dbg !2583
  call void @llvm.lifetime.end(i64 2, i8* %20) #2, !dbg !2583
  %21 = bitcast i64* %val to i8*, !dbg !2583
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !2583
  %22 = load %struct._object*, %struct._object** %retval, !dbg !2583
  ret %struct._object* %22, !dbg !2583
}

; Function Attrs: uwtable
define internal %struct._object* @h_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i16, align 2
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !772, metadata !1086), !dbg !2584
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !773, metadata !1086), !dbg !2585
  %0 = bitcast i16* %val to i8*, !dbg !2586
  call void @llvm.lifetime.start(i64 2, i8* %0) #2, !dbg !2586
  call void @llvm.dbg.declare(metadata i16* %val, metadata !774, metadata !1086), !dbg !2587
  %1 = bitcast i16* %val to i8*, !dbg !2588
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !2589, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 2, i32 1, i1 false), !dbg !2588
  %3 = load i16, i16* %val, align 2, !dbg !2590, !tbaa !2438
  %conv = sext i16 %3 to i32, !dbg !2590
  %shr = ashr i32 %conv, 8, !dbg !2591
  %and = and i32 %shr, 255, !dbg !2592
  %4 = load i16, i16* %val, align 2, !dbg !2593, !tbaa !2438
  %conv1 = sext i16 %4 to i32, !dbg !2593
  %shl = shl i32 %conv1, 8, !dbg !2594
  %and2 = and i32 %shl, 65280, !dbg !2595
  %or = or i32 %and, %and2, !dbg !2596
  %conv3 = trunc i32 %or to i16, !dbg !2597
  store i16 %conv3, i16* %val, align 2, !dbg !2598, !tbaa !2438
  %5 = load i64, i64* %size.addr, align 8, !dbg !2599, !tbaa !1088
  %shr4 = ashr i64 %5, 16, !dbg !2601
  %tobool = icmp ne i64 %shr4, 0, !dbg !2601
  br i1 %tobool, label %if.then, label %if.end, !dbg !2602

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %size.addr, align 8, !dbg !2603, !tbaa !1088
  %and5 = and i64 %6, 65535, !dbg !2606
  %sub = sub i64 16, %and5, !dbg !2607
  %7 = load i64, i64* %size.addr, align 8, !dbg !2608, !tbaa !1088
  %shr6 = ashr i64 %7, 16, !dbg !2609
  %sub7 = sub i64 %sub, %shr6, !dbg !2610
  %8 = load i16, i16* %val, align 2, !dbg !2611, !tbaa !2438
  %conv8 = sext i16 %8 to i32, !dbg !2611
  %sh_prom = trunc i64 %sub7 to i32, !dbg !2611
  %shl9 = shl i32 %conv8, %sh_prom, !dbg !2611
  %conv10 = trunc i32 %shl9 to i16, !dbg !2611
  store i16 %conv10, i16* %val, align 2, !dbg !2611, !tbaa !2438
  %9 = load i64, i64* %size.addr, align 8, !dbg !2612, !tbaa !1088
  %shr11 = ashr i64 %9, 16, !dbg !2613
  %sub12 = sub i64 16, %shr11, !dbg !2614
  %10 = load i16, i16* %val, align 2, !dbg !2615, !tbaa !2438
  %conv13 = sext i16 %10 to i32, !dbg !2615
  %sh_prom14 = trunc i64 %sub12 to i32, !dbg !2615
  %shr15 = ashr i32 %conv13, %sh_prom14, !dbg !2615
  %conv16 = trunc i32 %shr15 to i16, !dbg !2615
  store i16 %conv16, i16* %val, align 2, !dbg !2615, !tbaa !2438
  br label %if.end, !dbg !2616

if.end:                                           ; preds = %if.then, %entry
  %11 = load i16, i16* %val, align 2, !dbg !2617, !tbaa !2438
  %conv17 = sext i16 %11 to i64, !dbg !2617
  %call = call %struct._object* @PyLong_FromLong(i64 %conv17), !dbg !2618
  %12 = bitcast i16* %val to i8*, !dbg !2619
  call void @llvm.lifetime.end(i64 2, i8* %12) #2, !dbg !2619
  ret %struct._object* %call, !dbg !2620
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !777, metadata !1086), !dbg !2621
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !778, metadata !1086), !dbg !2622
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !779, metadata !1086), !dbg !2623
  %0 = bitcast i64* %val to i8*, !dbg !2624
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2624
  call void @llvm.dbg.declare(metadata i64* %val, metadata !780, metadata !1086), !dbg !2625
  %1 = bitcast i16* %x to i8*, !dbg !2626
  call void @llvm.lifetime.start(i64 2, i8* %1) #2, !dbg !2626
  call void @llvm.dbg.declare(metadata i16* %x, metadata !781, metadata !1086), !dbg !2627
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2628, !tbaa !1082
  %call = call i32 @get_ulong(%struct._object* %2, i64* %val), !dbg !2630
  %cmp = icmp slt i32 %call, 0, !dbg !2631
  br i1 %cmp, label %if.then, label %if.end, !dbg !2632

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2633
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2633

if.end:                                           ; preds = %entry
  %3 = bitcast i16* %x to i8*, !dbg !2634
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !2635, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 2, i32 1, i1 false), !dbg !2634
  %5 = load i64, i64* %size.addr, align 8, !dbg !2636, !tbaa !1088
  %shr = ashr i64 %5, 16, !dbg !2637
  %tobool = icmp ne i64 %shr, 0, !dbg !2637
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2638

cond.true:                                        ; preds = %if.end
  %6 = load i16, i16* %x, align 2, !dbg !2639, !tbaa !2438
  %conv = zext i16 %6 to i32, !dbg !2641
  %7 = load i64, i64* %size.addr, align 8, !dbg !2642, !tbaa !1088
  %shr1 = ashr i64 %7, 16, !dbg !2643
  %sub = sub i64 %shr1, 1, !dbg !2644
  %sh_prom = trunc i64 %sub to i32, !dbg !2645
  %shl = shl i32 1, %sh_prom, !dbg !2645
  %sub2 = sub i32 %shl, 1, !dbg !2646
  %shl3 = shl i32 %sub2, 1, !dbg !2647
  %add = add i32 %shl3, 1, !dbg !2648
  %8 = load i64, i64* %size.addr, align 8, !dbg !2649, !tbaa !1088
  %and = and i64 %8, 65535, !dbg !2650
  %sh_prom4 = trunc i64 %and to i32, !dbg !2651
  %shl5 = shl i32 %add, %sh_prom4, !dbg !2651
  %neg = xor i32 %shl5, -1, !dbg !2652
  %and6 = and i32 %conv, %neg, !dbg !2653
  %9 = load i64, i64* %val, align 8, !dbg !2654, !tbaa !1088
  %conv7 = trunc i64 %9 to i16, !dbg !2655
  %conv8 = zext i16 %conv7 to i32, !dbg !2655
  %10 = load i64, i64* %size.addr, align 8, !dbg !2656, !tbaa !1088
  %shr9 = ashr i64 %10, 16, !dbg !2657
  %sub10 = sub i64 %shr9, 1, !dbg !2658
  %sh_prom11 = trunc i64 %sub10 to i32, !dbg !2659
  %shl12 = shl i32 1, %sh_prom11, !dbg !2659
  %sub13 = sub i32 %shl12, 1, !dbg !2660
  %shl14 = shl i32 %sub13, 1, !dbg !2661
  %add15 = add i32 %shl14, 1, !dbg !2662
  %and16 = and i32 %conv8, %add15, !dbg !2663
  %11 = load i64, i64* %size.addr, align 8, !dbg !2664, !tbaa !1088
  %and17 = and i64 %11, 65535, !dbg !2665
  %sh_prom18 = trunc i64 %and17 to i32, !dbg !2666
  %shl19 = shl i32 %and16, %sh_prom18, !dbg !2666
  %or = or i32 %and6, %shl19, !dbg !2667
  br label %cond.end, !dbg !2638

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %val, align 8, !dbg !2668, !tbaa !1088
  %conv20 = trunc i64 %12 to i16, !dbg !2670
  %conv21 = zext i16 %conv20 to i32, !dbg !2670
  br label %cond.end, !dbg !2638

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv21, %cond.false ], !dbg !2638
  %conv22 = trunc i32 %cond to i16, !dbg !2671
  store i16 %conv22, i16* %x, align 2, !dbg !2674, !tbaa !2438
  %13 = load i8*, i8** %ptr.addr, align 8, !dbg !2675, !tbaa !1082
  %14 = bitcast i16* %x to i8*, !dbg !2676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 2, i32 1, i1 false), !dbg !2676
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2677, !tbaa !1141
  %inc = add i64 %15, 1, !dbg !2677
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2677, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2678
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2678

cleanup:                                          ; preds = %cond.end, %if.then
  %16 = bitcast i16* %x to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 2, i8* %16) #2, !dbg !2679
  %17 = bitcast i64* %val to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2679
  %18 = load %struct._object*, %struct._object** %retval, !dbg !2679
  ret %struct._object* %18, !dbg !2679
}

; Function Attrs: uwtable
define internal %struct._object* @H_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i16, align 2
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !784, metadata !1086), !dbg !2680
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !785, metadata !1086), !dbg !2681
  %0 = bitcast i16* %val to i8*, !dbg !2682
  call void @llvm.lifetime.start(i64 2, i8* %0) #2, !dbg !2682
  call void @llvm.dbg.declare(metadata i16* %val, metadata !786, metadata !1086), !dbg !2683
  %1 = bitcast i16* %val to i8*, !dbg !2684
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !2685, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 2, i32 1, i1 false), !dbg !2684
  %3 = load i64, i64* %size.addr, align 8, !dbg !2686, !tbaa !1088
  %shr = ashr i64 %3, 16, !dbg !2688
  %tobool = icmp ne i64 %shr, 0, !dbg !2688
  br i1 %tobool, label %if.then, label %if.end, !dbg !2689

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8, !dbg !2690, !tbaa !1088
  %and = and i64 %4, 65535, !dbg !2693
  %sub = sub i64 16, %and, !dbg !2694
  %5 = load i64, i64* %size.addr, align 8, !dbg !2695, !tbaa !1088
  %shr1 = ashr i64 %5, 16, !dbg !2696
  %sub2 = sub i64 %sub, %shr1, !dbg !2697
  %6 = load i16, i16* %val, align 2, !dbg !2698, !tbaa !2438
  %conv = zext i16 %6 to i32, !dbg !2698
  %sh_prom = trunc i64 %sub2 to i32, !dbg !2698
  %shl = shl i32 %conv, %sh_prom, !dbg !2698
  %conv3 = trunc i32 %shl to i16, !dbg !2698
  store i16 %conv3, i16* %val, align 2, !dbg !2698, !tbaa !2438
  %7 = load i64, i64* %size.addr, align 8, !dbg !2699, !tbaa !1088
  %shr4 = ashr i64 %7, 16, !dbg !2700
  %sub5 = sub i64 16, %shr4, !dbg !2701
  %8 = load i16, i16* %val, align 2, !dbg !2702, !tbaa !2438
  %conv6 = zext i16 %8 to i32, !dbg !2702
  %sh_prom7 = trunc i64 %sub5 to i32, !dbg !2702
  %shr8 = ashr i32 %conv6, %sh_prom7, !dbg !2702
  %conv9 = trunc i32 %shr8 to i16, !dbg !2702
  store i16 %conv9, i16* %val, align 2, !dbg !2702, !tbaa !2438
  br label %if.end, !dbg !2703

if.end:                                           ; preds = %if.then, %entry
  %9 = load i16, i16* %val, align 2, !dbg !2704, !tbaa !2438
  %conv10 = zext i16 %9 to i64, !dbg !2704
  %call = call %struct._object* @PyLong_FromLong(i64 %conv10), !dbg !2705
  %10 = bitcast i16* %val to i8*, !dbg !2706
  call void @llvm.lifetime.end(i64 2, i8* %10) #2, !dbg !2706
  ret %struct._object* %call, !dbg !2707
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !789, metadata !1086), !dbg !2708
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !790, metadata !1086), !dbg !2709
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !791, metadata !1086), !dbg !2710
  %0 = bitcast i64* %val to i8*, !dbg !2711
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2711
  call void @llvm.dbg.declare(metadata i64* %val, metadata !792, metadata !1086), !dbg !2712
  %1 = bitcast i16* %field to i8*, !dbg !2713
  call void @llvm.lifetime.start(i64 2, i8* %1) #2, !dbg !2713
  call void @llvm.dbg.declare(metadata i16* %field, metadata !793, metadata !1086), !dbg !2714
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2715, !tbaa !1082
  %call = call i32 @get_ulong(%struct._object* %2, i64* %val), !dbg !2717
  %cmp = icmp slt i32 %call, 0, !dbg !2718
  br i1 %cmp, label %if.then, label %if.end, !dbg !2719

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2720
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2720

if.end:                                           ; preds = %entry
  %3 = bitcast i16* %field to i8*, !dbg !2721
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !2722, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 2, i32 1, i1 false), !dbg !2721
  %5 = load i16, i16* %field, align 2, !dbg !2723, !tbaa !2438
  %conv = zext i16 %5 to i32, !dbg !2723
  %shr = ashr i32 %conv, 8, !dbg !2724
  %and = and i32 %shr, 255, !dbg !2725
  %6 = load i16, i16* %field, align 2, !dbg !2726, !tbaa !2438
  %conv1 = zext i16 %6 to i32, !dbg !2726
  %shl = shl i32 %conv1, 8, !dbg !2727
  %and2 = and i32 %shl, 65280, !dbg !2728
  %or = or i32 %and, %and2, !dbg !2729
  %conv3 = trunc i32 %or to i16, !dbg !2730
  store i16 %conv3, i16* %field, align 2, !dbg !2731, !tbaa !2438
  %7 = load i64, i64* %size.addr, align 8, !dbg !2732, !tbaa !1088
  %shr4 = ashr i64 %7, 16, !dbg !2733
  %tobool = icmp ne i64 %shr4, 0, !dbg !2733
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2734

cond.true:                                        ; preds = %if.end
  %8 = load i16, i16* %field, align 2, !dbg !2735, !tbaa !2438
  %conv5 = zext i16 %8 to i32, !dbg !2737
  %9 = load i64, i64* %size.addr, align 8, !dbg !2738, !tbaa !1088
  %shr6 = ashr i64 %9, 16, !dbg !2739
  %sub = sub i64 %shr6, 1, !dbg !2740
  %sh_prom = trunc i64 %sub to i32, !dbg !2741
  %shl7 = shl i32 1, %sh_prom, !dbg !2741
  %sub8 = sub i32 %shl7, 1, !dbg !2742
  %shl9 = shl i32 %sub8, 1, !dbg !2743
  %add = add i32 %shl9, 1, !dbg !2744
  %10 = load i64, i64* %size.addr, align 8, !dbg !2745, !tbaa !1088
  %and10 = and i64 %10, 65535, !dbg !2746
  %sh_prom11 = trunc i64 %and10 to i32, !dbg !2747
  %shl12 = shl i32 %add, %sh_prom11, !dbg !2747
  %neg = xor i32 %shl12, -1, !dbg !2748
  %and13 = and i32 %conv5, %neg, !dbg !2749
  %11 = load i64, i64* %val, align 8, !dbg !2750, !tbaa !1088
  %conv14 = trunc i64 %11 to i16, !dbg !2751
  %conv15 = zext i16 %conv14 to i32, !dbg !2751
  %12 = load i64, i64* %size.addr, align 8, !dbg !2752, !tbaa !1088
  %shr16 = ashr i64 %12, 16, !dbg !2753
  %sub17 = sub i64 %shr16, 1, !dbg !2754
  %sh_prom18 = trunc i64 %sub17 to i32, !dbg !2755
  %shl19 = shl i32 1, %sh_prom18, !dbg !2755
  %sub20 = sub i32 %shl19, 1, !dbg !2756
  %shl21 = shl i32 %sub20, 1, !dbg !2757
  %add22 = add i32 %shl21, 1, !dbg !2758
  %and23 = and i32 %conv15, %add22, !dbg !2759
  %13 = load i64, i64* %size.addr, align 8, !dbg !2760, !tbaa !1088
  %and24 = and i64 %13, 65535, !dbg !2761
  %sh_prom25 = trunc i64 %and24 to i32, !dbg !2762
  %shl26 = shl i32 %and23, %sh_prom25, !dbg !2762
  %or27 = or i32 %and13, %shl26, !dbg !2763
  br label %cond.end, !dbg !2734

cond.false:                                       ; preds = %if.end
  %14 = load i64, i64* %val, align 8, !dbg !2764, !tbaa !1088
  %conv28 = trunc i64 %14 to i16, !dbg !2766
  %conv29 = zext i16 %conv28 to i32, !dbg !2766
  br label %cond.end, !dbg !2734

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or27, %cond.true ], [ %conv29, %cond.false ], !dbg !2734
  %conv30 = trunc i32 %cond to i16, !dbg !2767
  store i16 %conv30, i16* %field, align 2, !dbg !2770, !tbaa !2438
  %15 = load i16, i16* %field, align 2, !dbg !2771, !tbaa !2438
  %conv31 = zext i16 %15 to i32, !dbg !2771
  %shr32 = ashr i32 %conv31, 8, !dbg !2772
  %and33 = and i32 %shr32, 255, !dbg !2773
  %16 = load i16, i16* %field, align 2, !dbg !2774, !tbaa !2438
  %conv34 = zext i16 %16 to i32, !dbg !2774
  %shl35 = shl i32 %conv34, 8, !dbg !2775
  %and36 = and i32 %shl35, 65280, !dbg !2776
  %or37 = or i32 %and33, %and36, !dbg !2777
  %conv38 = trunc i32 %or37 to i16, !dbg !2778
  store i16 %conv38, i16* %field, align 2, !dbg !2779, !tbaa !2438
  %17 = load i8*, i8** %ptr.addr, align 8, !dbg !2780, !tbaa !1082
  %18 = bitcast i16* %field to i8*, !dbg !2781
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 2, i32 1, i1 false), !dbg !2781
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2782, !tbaa !1141
  %inc = add i64 %19, 1, !dbg !2782
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2782, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2783
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2783

cleanup:                                          ; preds = %cond.end, %if.then
  %20 = bitcast i16* %field to i8*, !dbg !2784
  call void @llvm.lifetime.end(i64 2, i8* %20) #2, !dbg !2784
  %21 = bitcast i64* %val to i8*, !dbg !2784
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !2784
  %22 = load %struct._object*, %struct._object** %retval, !dbg !2784
  ret %struct._object* %22, !dbg !2784
}

; Function Attrs: uwtable
define internal %struct._object* @H_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i16, align 2
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !796, metadata !1086), !dbg !2785
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !797, metadata !1086), !dbg !2786
  %0 = bitcast i16* %val to i8*, !dbg !2787
  call void @llvm.lifetime.start(i64 2, i8* %0) #2, !dbg !2787
  call void @llvm.dbg.declare(metadata i16* %val, metadata !798, metadata !1086), !dbg !2788
  %1 = bitcast i16* %val to i8*, !dbg !2789
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !2790, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 2, i32 1, i1 false), !dbg !2789
  %3 = load i16, i16* %val, align 2, !dbg !2791, !tbaa !2438
  %conv = zext i16 %3 to i32, !dbg !2791
  %shr = ashr i32 %conv, 8, !dbg !2792
  %and = and i32 %shr, 255, !dbg !2793
  %4 = load i16, i16* %val, align 2, !dbg !2794, !tbaa !2438
  %conv1 = zext i16 %4 to i32, !dbg !2794
  %shl = shl i32 %conv1, 8, !dbg !2795
  %and2 = and i32 %shl, 65280, !dbg !2796
  %or = or i32 %and, %and2, !dbg !2797
  %conv3 = trunc i32 %or to i16, !dbg !2798
  store i16 %conv3, i16* %val, align 2, !dbg !2799, !tbaa !2438
  %5 = load i64, i64* %size.addr, align 8, !dbg !2800, !tbaa !1088
  %shr4 = ashr i64 %5, 16, !dbg !2802
  %tobool = icmp ne i64 %shr4, 0, !dbg !2802
  br i1 %tobool, label %if.then, label %if.end, !dbg !2803

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %size.addr, align 8, !dbg !2804, !tbaa !1088
  %and5 = and i64 %6, 65535, !dbg !2807
  %sub = sub i64 16, %and5, !dbg !2808
  %7 = load i64, i64* %size.addr, align 8, !dbg !2809, !tbaa !1088
  %shr6 = ashr i64 %7, 16, !dbg !2810
  %sub7 = sub i64 %sub, %shr6, !dbg !2811
  %8 = load i16, i16* %val, align 2, !dbg !2812, !tbaa !2438
  %conv8 = zext i16 %8 to i32, !dbg !2812
  %sh_prom = trunc i64 %sub7 to i32, !dbg !2812
  %shl9 = shl i32 %conv8, %sh_prom, !dbg !2812
  %conv10 = trunc i32 %shl9 to i16, !dbg !2812
  store i16 %conv10, i16* %val, align 2, !dbg !2812, !tbaa !2438
  %9 = load i64, i64* %size.addr, align 8, !dbg !2813, !tbaa !1088
  %shr11 = ashr i64 %9, 16, !dbg !2814
  %sub12 = sub i64 16, %shr11, !dbg !2815
  %10 = load i16, i16* %val, align 2, !dbg !2816, !tbaa !2438
  %conv13 = zext i16 %10 to i32, !dbg !2816
  %sh_prom14 = trunc i64 %sub12 to i32, !dbg !2816
  %shr15 = ashr i32 %conv13, %sh_prom14, !dbg !2816
  %conv16 = trunc i32 %shr15 to i16, !dbg !2816
  store i16 %conv16, i16* %val, align 2, !dbg !2816, !tbaa !2438
  br label %if.end, !dbg !2817

if.end:                                           ; preds = %if.then, %entry
  %11 = load i16, i16* %val, align 2, !dbg !2818, !tbaa !2438
  %conv17 = zext i16 %11 to i64, !dbg !2818
  %call = call %struct._object* @PyLong_FromLong(i64 %conv17), !dbg !2819
  %12 = bitcast i16* %val to i8*, !dbg !2820
  call void @llvm.lifetime.end(i64 2, i8* %12) #2, !dbg !2820
  ret %struct._object* %call, !dbg !2821
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !801, metadata !1086), !dbg !2822
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !802, metadata !1086), !dbg !2823
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !803, metadata !1086), !dbg !2824
  %0 = bitcast i64* %val to i8*, !dbg !2825
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2825
  call void @llvm.dbg.declare(metadata i64* %val, metadata !804, metadata !1086), !dbg !2826
  %1 = bitcast i32* %x to i8*, !dbg !2827
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !2827
  call void @llvm.dbg.declare(metadata i32* %x, metadata !805, metadata !1086), !dbg !2828
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2829, !tbaa !1082
  %call = call i32 @get_long(%struct._object* %2, i64* %val), !dbg !2831
  %cmp = icmp slt i32 %call, 0, !dbg !2832
  br i1 %cmp, label %if.then, label %if.end, !dbg !2833

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2834
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2834

if.end:                                           ; preds = %entry
  %3 = bitcast i32* %x to i8*, !dbg !2835
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !2836, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 4, i32 1, i1 false), !dbg !2835
  %5 = load i64, i64* %size.addr, align 8, !dbg !2837, !tbaa !1088
  %shr = ashr i64 %5, 16, !dbg !2838
  %tobool = icmp ne i64 %shr, 0, !dbg !2838
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2839

cond.true:                                        ; preds = %if.end
  %6 = load i32, i32* %x, align 4, !dbg !2840, !tbaa !1092
  %7 = load i64, i64* %size.addr, align 8, !dbg !2842, !tbaa !1088
  %shr1 = ashr i64 %7, 16, !dbg !2843
  %sub = sub i64 %shr1, 1, !dbg !2844
  %sh_prom = trunc i64 %sub to i32, !dbg !2845
  %shl = shl i32 1, %sh_prom, !dbg !2845
  %sub2 = sub i32 %shl, 1, !dbg !2846
  %shl3 = shl i32 %sub2, 1, !dbg !2847
  %add = add i32 %shl3, 1, !dbg !2848
  %8 = load i64, i64* %size.addr, align 8, !dbg !2849, !tbaa !1088
  %and = and i64 %8, 65535, !dbg !2850
  %sh_prom4 = trunc i64 %and to i32, !dbg !2851
  %shl5 = shl i32 %add, %sh_prom4, !dbg !2851
  %neg = xor i32 %shl5, -1, !dbg !2852
  %and6 = and i32 %6, %neg, !dbg !2853
  %9 = load i64, i64* %val, align 8, !dbg !2854, !tbaa !1088
  %conv = trunc i64 %9 to i32, !dbg !2855
  %10 = load i64, i64* %size.addr, align 8, !dbg !2856, !tbaa !1088
  %shr7 = ashr i64 %10, 16, !dbg !2857
  %sub8 = sub i64 %shr7, 1, !dbg !2858
  %sh_prom9 = trunc i64 %sub8 to i32, !dbg !2859
  %shl10 = shl i32 1, %sh_prom9, !dbg !2859
  %sub11 = sub i32 %shl10, 1, !dbg !2860
  %shl12 = shl i32 %sub11, 1, !dbg !2861
  %add13 = add i32 %shl12, 1, !dbg !2862
  %and14 = and i32 %conv, %add13, !dbg !2863
  %11 = load i64, i64* %size.addr, align 8, !dbg !2864, !tbaa !1088
  %and15 = and i64 %11, 65535, !dbg !2865
  %sh_prom16 = trunc i64 %and15 to i32, !dbg !2866
  %shl17 = shl i32 %and14, %sh_prom16, !dbg !2866
  %or = or i32 %and6, %shl17, !dbg !2867
  br label %cond.end, !dbg !2839

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %val, align 8, !dbg !2868, !tbaa !1088
  %conv18 = trunc i64 %12 to i32, !dbg !2870
  br label %cond.end, !dbg !2839

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv18, %cond.false ], !dbg !2839
  store i32 %cond, i32* %x, align 4, !dbg !2871, !tbaa !1092
  %13 = load i8*, i8** %ptr.addr, align 8, !dbg !2874, !tbaa !1082
  %14 = bitcast i32* %x to i8*, !dbg !2875
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 4, i32 1, i1 false), !dbg !2875
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2876, !tbaa !1141
  %inc = add i64 %15, 1, !dbg !2876
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2876, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2877
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2877

cleanup:                                          ; preds = %cond.end, %if.then
  %16 = bitcast i32* %x to i8*, !dbg !2878
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !2878
  %17 = bitcast i64* %val to i8*, !dbg !2878
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2878
  %18 = load %struct._object*, %struct._object** %retval, !dbg !2878
  ret %struct._object* %18, !dbg !2878
}

; Function Attrs: uwtable
define internal %struct._object* @i_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !808, metadata !1086), !dbg !2879
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !809, metadata !1086), !dbg !2880
  %0 = bitcast i32* %val to i8*, !dbg !2881
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2881
  call void @llvm.dbg.declare(metadata i32* %val, metadata !810, metadata !1086), !dbg !2882
  %1 = bitcast i32* %val to i8*, !dbg !2883
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !2884, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false), !dbg !2883
  %3 = load i64, i64* %size.addr, align 8, !dbg !2885, !tbaa !1088
  %shr = ashr i64 %3, 16, !dbg !2887
  %tobool = icmp ne i64 %shr, 0, !dbg !2887
  br i1 %tobool, label %if.then, label %if.end, !dbg !2888

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8, !dbg !2889, !tbaa !1088
  %and = and i64 %4, 65535, !dbg !2892
  %sub = sub i64 32, %and, !dbg !2893
  %5 = load i64, i64* %size.addr, align 8, !dbg !2894, !tbaa !1088
  %shr1 = ashr i64 %5, 16, !dbg !2895
  %sub2 = sub i64 %sub, %shr1, !dbg !2896
  %6 = load i32, i32* %val, align 4, !dbg !2897, !tbaa !1092
  %sh_prom = trunc i64 %sub2 to i32, !dbg !2897
  %shl = shl i32 %6, %sh_prom, !dbg !2897
  store i32 %shl, i32* %val, align 4, !dbg !2897, !tbaa !1092
  %7 = load i64, i64* %size.addr, align 8, !dbg !2898, !tbaa !1088
  %shr3 = ashr i64 %7, 16, !dbg !2899
  %sub4 = sub i64 32, %shr3, !dbg !2900
  %8 = load i32, i32* %val, align 4, !dbg !2901, !tbaa !1092
  %sh_prom5 = trunc i64 %sub4 to i32, !dbg !2901
  %shr6 = ashr i32 %8, %sh_prom5, !dbg !2901
  store i32 %shr6, i32* %val, align 4, !dbg !2901, !tbaa !1092
  br label %if.end, !dbg !2902

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %val, align 4, !dbg !2903, !tbaa !1092
  %conv = sext i32 %9 to i64, !dbg !2903
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2904
  %10 = bitcast i32* %val to i8*, !dbg !2905
  call void @llvm.lifetime.end(i64 4, i8* %10) #2, !dbg !2905
  ret %struct._object* %call, !dbg !2906
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !813, metadata !1086), !dbg !2907
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !814, metadata !1086), !dbg !2908
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !815, metadata !1086), !dbg !2909
  %0 = bitcast i64* %val to i8*, !dbg !2910
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2910
  call void @llvm.dbg.declare(metadata i64* %val, metadata !816, metadata !1086), !dbg !2911
  %1 = bitcast i32* %field to i8*, !dbg !2912
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !2912
  call void @llvm.dbg.declare(metadata i32* %field, metadata !817, metadata !1086), !dbg !2913
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !2914, !tbaa !1082
  %call = call i32 @get_long(%struct._object* %2, i64* %val), !dbg !2916
  %cmp = icmp slt i32 %call, 0, !dbg !2917
  br i1 %cmp, label %if.then, label %if.end, !dbg !2918

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2919
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2919

if.end:                                           ; preds = %entry
  %3 = bitcast i32* %field to i8*, !dbg !2920
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !2921, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 4, i32 1, i1 false), !dbg !2920
  %5 = load i32, i32* %field, align 4, !dbg !2922, !tbaa !1092
  %and = and i32 %5, 255, !dbg !2923
  %shl = shl i32 %and, 24, !dbg !2924
  %6 = load i32, i32* %field, align 4, !dbg !2925, !tbaa !1092
  %and1 = and i32 %6, 65280, !dbg !2926
  %shl2 = shl i32 %and1, 8, !dbg !2927
  %or = or i32 %shl, %shl2, !dbg !2928
  %7 = load i32, i32* %field, align 4, !dbg !2929, !tbaa !1092
  %and3 = and i32 %7, 16711680, !dbg !2930
  %shr = ashr i32 %and3, 8, !dbg !2931
  %or4 = or i32 %or, %shr, !dbg !2932
  %8 = load i32, i32* %field, align 4, !dbg !2933, !tbaa !1092
  %shr5 = ashr i32 %8, 24, !dbg !2934
  %and6 = and i32 %shr5, 255, !dbg !2935
  %or7 = or i32 %or4, %and6, !dbg !2936
  store i32 %or7, i32* %field, align 4, !dbg !2937, !tbaa !1092
  %9 = load i64, i64* %size.addr, align 8, !dbg !2938, !tbaa !1088
  %shr8 = ashr i64 %9, 16, !dbg !2939
  %tobool = icmp ne i64 %shr8, 0, !dbg !2939
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2940

cond.true:                                        ; preds = %if.end
  %10 = load i32, i32* %field, align 4, !dbg !2941, !tbaa !1092
  %11 = load i64, i64* %size.addr, align 8, !dbg !2943, !tbaa !1088
  %shr9 = ashr i64 %11, 16, !dbg !2944
  %sub = sub i64 %shr9, 1, !dbg !2945
  %sh_prom = trunc i64 %sub to i32, !dbg !2946
  %shl10 = shl i32 1, %sh_prom, !dbg !2946
  %sub11 = sub i32 %shl10, 1, !dbg !2947
  %shl12 = shl i32 %sub11, 1, !dbg !2948
  %add = add i32 %shl12, 1, !dbg !2949
  %12 = load i64, i64* %size.addr, align 8, !dbg !2950, !tbaa !1088
  %and13 = and i64 %12, 65535, !dbg !2951
  %sh_prom14 = trunc i64 %and13 to i32, !dbg !2952
  %shl15 = shl i32 %add, %sh_prom14, !dbg !2952
  %neg = xor i32 %shl15, -1, !dbg !2953
  %and16 = and i32 %10, %neg, !dbg !2954
  %13 = load i64, i64* %val, align 8, !dbg !2955, !tbaa !1088
  %conv = trunc i64 %13 to i32, !dbg !2956
  %14 = load i64, i64* %size.addr, align 8, !dbg !2957, !tbaa !1088
  %shr17 = ashr i64 %14, 16, !dbg !2958
  %sub18 = sub i64 %shr17, 1, !dbg !2959
  %sh_prom19 = trunc i64 %sub18 to i32, !dbg !2960
  %shl20 = shl i32 1, %sh_prom19, !dbg !2960
  %sub21 = sub i32 %shl20, 1, !dbg !2961
  %shl22 = shl i32 %sub21, 1, !dbg !2962
  %add23 = add i32 %shl22, 1, !dbg !2963
  %and24 = and i32 %conv, %add23, !dbg !2964
  %15 = load i64, i64* %size.addr, align 8, !dbg !2965, !tbaa !1088
  %and25 = and i64 %15, 65535, !dbg !2966
  %sh_prom26 = trunc i64 %and25 to i32, !dbg !2967
  %shl27 = shl i32 %and24, %sh_prom26, !dbg !2967
  %or28 = or i32 %and16, %shl27, !dbg !2968
  br label %cond.end, !dbg !2940

cond.false:                                       ; preds = %if.end
  %16 = load i64, i64* %val, align 8, !dbg !2969, !tbaa !1088
  %conv29 = trunc i64 %16 to i32, !dbg !2971
  br label %cond.end, !dbg !2940

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or28, %cond.true ], [ %conv29, %cond.false ], !dbg !2940
  store i32 %cond, i32* %field, align 4, !dbg !2972, !tbaa !1092
  %17 = load i32, i32* %field, align 4, !dbg !2975, !tbaa !1092
  %and30 = and i32 %17, 255, !dbg !2976
  %shl31 = shl i32 %and30, 24, !dbg !2977
  %18 = load i32, i32* %field, align 4, !dbg !2978, !tbaa !1092
  %and32 = and i32 %18, 65280, !dbg !2979
  %shl33 = shl i32 %and32, 8, !dbg !2980
  %or34 = or i32 %shl31, %shl33, !dbg !2981
  %19 = load i32, i32* %field, align 4, !dbg !2982, !tbaa !1092
  %and35 = and i32 %19, 16711680, !dbg !2983
  %shr36 = ashr i32 %and35, 8, !dbg !2984
  %or37 = or i32 %or34, %shr36, !dbg !2985
  %20 = load i32, i32* %field, align 4, !dbg !2986, !tbaa !1092
  %shr38 = ashr i32 %20, 24, !dbg !2987
  %and39 = and i32 %shr38, 255, !dbg !2988
  %or40 = or i32 %or37, %and39, !dbg !2989
  store i32 %or40, i32* %field, align 4, !dbg !2990, !tbaa !1092
  %21 = load i8*, i8** %ptr.addr, align 8, !dbg !2991, !tbaa !1082
  %22 = bitcast i32* %field to i8*, !dbg !2992
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 4, i32 1, i1 false), !dbg !2992
  %23 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2993, !tbaa !1141
  %inc = add i64 %23, 1, !dbg !2993
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2993, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2994
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2994

cleanup:                                          ; preds = %cond.end, %if.then
  %24 = bitcast i32* %field to i8*, !dbg !2995
  call void @llvm.lifetime.end(i64 4, i8* %24) #2, !dbg !2995
  %25 = bitcast i64* %val to i8*, !dbg !2995
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !2995
  %26 = load %struct._object*, %struct._object** %retval, !dbg !2995
  ret %struct._object* %26, !dbg !2995
}

; Function Attrs: uwtable
define internal %struct._object* @i_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !820, metadata !1086), !dbg !2996
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !821, metadata !1086), !dbg !2997
  %0 = bitcast i32* %val to i8*, !dbg !2998
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2998
  call void @llvm.dbg.declare(metadata i32* %val, metadata !822, metadata !1086), !dbg !2999
  %1 = bitcast i32* %val to i8*, !dbg !3000
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !3001, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false), !dbg !3000
  %3 = load i32, i32* %val, align 4, !dbg !3002, !tbaa !1092
  %and = and i32 %3, 255, !dbg !3003
  %shl = shl i32 %and, 24, !dbg !3004
  %4 = load i32, i32* %val, align 4, !dbg !3005, !tbaa !1092
  %and1 = and i32 %4, 65280, !dbg !3006
  %shl2 = shl i32 %and1, 8, !dbg !3007
  %or = or i32 %shl, %shl2, !dbg !3008
  %5 = load i32, i32* %val, align 4, !dbg !3009, !tbaa !1092
  %and3 = and i32 %5, 16711680, !dbg !3010
  %shr = ashr i32 %and3, 8, !dbg !3011
  %or4 = or i32 %or, %shr, !dbg !3012
  %6 = load i32, i32* %val, align 4, !dbg !3013, !tbaa !1092
  %shr5 = ashr i32 %6, 24, !dbg !3014
  %and6 = and i32 %shr5, 255, !dbg !3015
  %or7 = or i32 %or4, %and6, !dbg !3016
  store i32 %or7, i32* %val, align 4, !dbg !3017, !tbaa !1092
  %7 = load i64, i64* %size.addr, align 8, !dbg !3018, !tbaa !1088
  %shr8 = ashr i64 %7, 16, !dbg !3020
  %tobool = icmp ne i64 %shr8, 0, !dbg !3020
  br i1 %tobool, label %if.then, label %if.end, !dbg !3021

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %size.addr, align 8, !dbg !3022, !tbaa !1088
  %and9 = and i64 %8, 65535, !dbg !3025
  %sub = sub i64 32, %and9, !dbg !3026
  %9 = load i64, i64* %size.addr, align 8, !dbg !3027, !tbaa !1088
  %shr10 = ashr i64 %9, 16, !dbg !3028
  %sub11 = sub i64 %sub, %shr10, !dbg !3029
  %10 = load i32, i32* %val, align 4, !dbg !3030, !tbaa !1092
  %sh_prom = trunc i64 %sub11 to i32, !dbg !3030
  %shl12 = shl i32 %10, %sh_prom, !dbg !3030
  store i32 %shl12, i32* %val, align 4, !dbg !3030, !tbaa !1092
  %11 = load i64, i64* %size.addr, align 8, !dbg !3031, !tbaa !1088
  %shr13 = ashr i64 %11, 16, !dbg !3032
  %sub14 = sub i64 32, %shr13, !dbg !3033
  %12 = load i32, i32* %val, align 4, !dbg !3034, !tbaa !1092
  %sh_prom15 = trunc i64 %sub14 to i32, !dbg !3034
  %shr16 = ashr i32 %12, %sh_prom15, !dbg !3034
  store i32 %shr16, i32* %val, align 4, !dbg !3034, !tbaa !1092
  br label %if.end, !dbg !3035

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %val, align 4, !dbg !3036, !tbaa !1092
  %conv = sext i32 %13 to i64, !dbg !3036
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !3037
  %14 = bitcast i32* %val to i8*, !dbg !3038
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !3038
  ret %struct._object* %call, !dbg !3039
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !825, metadata !1086), !dbg !3040
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !826, metadata !1086), !dbg !3041
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !827, metadata !1086), !dbg !3042
  %0 = bitcast i64* %val to i8*, !dbg !3043
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3043
  call void @llvm.dbg.declare(metadata i64* %val, metadata !828, metadata !1086), !dbg !3044
  %1 = bitcast i32* %x to i8*, !dbg !3045
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3045
  call void @llvm.dbg.declare(metadata i32* %x, metadata !829, metadata !1086), !dbg !3046
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3047, !tbaa !1082
  %call = call i32 @get_ulong(%struct._object* %2, i64* %val), !dbg !3049
  %cmp = icmp slt i32 %call, 0, !dbg !3050
  br i1 %cmp, label %if.then, label %if.end, !dbg !3051

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3052
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3052

if.end:                                           ; preds = %entry
  %3 = bitcast i32* %x to i8*, !dbg !3053
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !3054, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 4, i32 1, i1 false), !dbg !3053
  %5 = load i64, i64* %size.addr, align 8, !dbg !3055, !tbaa !1088
  %shr = ashr i64 %5, 16, !dbg !3056
  %tobool = icmp ne i64 %shr, 0, !dbg !3056
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3057

cond.true:                                        ; preds = %if.end
  %6 = load i32, i32* %x, align 4, !dbg !3058, !tbaa !1092
  %7 = load i64, i64* %size.addr, align 8, !dbg !3060, !tbaa !1088
  %shr1 = ashr i64 %7, 16, !dbg !3061
  %sub = sub i64 %shr1, 1, !dbg !3062
  %sh_prom = trunc i64 %sub to i32, !dbg !3063
  %shl = shl i32 1, %sh_prom, !dbg !3063
  %sub2 = sub i32 %shl, 1, !dbg !3064
  %shl3 = shl i32 %sub2, 1, !dbg !3065
  %add = add i32 %shl3, 1, !dbg !3066
  %8 = load i64, i64* %size.addr, align 8, !dbg !3067, !tbaa !1088
  %and = and i64 %8, 65535, !dbg !3068
  %sh_prom4 = trunc i64 %and to i32, !dbg !3069
  %shl5 = shl i32 %add, %sh_prom4, !dbg !3069
  %neg = xor i32 %shl5, -1, !dbg !3070
  %and6 = and i32 %6, %neg, !dbg !3071
  %9 = load i64, i64* %val, align 8, !dbg !3072, !tbaa !1088
  %conv = trunc i64 %9 to i32, !dbg !3073
  %10 = load i64, i64* %size.addr, align 8, !dbg !3074, !tbaa !1088
  %shr7 = ashr i64 %10, 16, !dbg !3075
  %sub8 = sub i64 %shr7, 1, !dbg !3076
  %sh_prom9 = trunc i64 %sub8 to i32, !dbg !3077
  %shl10 = shl i32 1, %sh_prom9, !dbg !3077
  %sub11 = sub i32 %shl10, 1, !dbg !3078
  %shl12 = shl i32 %sub11, 1, !dbg !3079
  %add13 = add i32 %shl12, 1, !dbg !3080
  %and14 = and i32 %conv, %add13, !dbg !3081
  %11 = load i64, i64* %size.addr, align 8, !dbg !3082, !tbaa !1088
  %and15 = and i64 %11, 65535, !dbg !3083
  %sh_prom16 = trunc i64 %and15 to i32, !dbg !3084
  %shl17 = shl i32 %and14, %sh_prom16, !dbg !3084
  %or = or i32 %and6, %shl17, !dbg !3085
  br label %cond.end, !dbg !3057

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %val, align 8, !dbg !3086, !tbaa !1088
  %conv18 = trunc i64 %12 to i32, !dbg !3088
  br label %cond.end, !dbg !3057

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv18, %cond.false ], !dbg !3057
  store i32 %cond, i32* %x, align 4, !dbg !3089, !tbaa !1092
  %13 = load i8*, i8** %ptr.addr, align 8, !dbg !3092, !tbaa !1082
  %14 = bitcast i32* %x to i8*, !dbg !3093
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 4, i32 1, i1 false), !dbg !3093
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3094, !tbaa !1141
  %inc = add i64 %15, 1, !dbg !3094
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3094, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3095
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3095

cleanup:                                          ; preds = %cond.end, %if.then
  %16 = bitcast i32* %x to i8*, !dbg !3096
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !3096
  %17 = bitcast i64* %val to i8*, !dbg !3096
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !3096
  %18 = load %struct._object*, %struct._object** %retval, !dbg !3096
  ret %struct._object* %18, !dbg !3096
}

; Function Attrs: uwtable
define internal %struct._object* @I_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !832, metadata !1086), !dbg !3097
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !833, metadata !1086), !dbg !3098
  %0 = bitcast i32* %val to i8*, !dbg !3099
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !3099
  call void @llvm.dbg.declare(metadata i32* %val, metadata !834, metadata !1086), !dbg !3100
  %1 = bitcast i32* %val to i8*, !dbg !3101
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !3102, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false), !dbg !3101
  %3 = load i64, i64* %size.addr, align 8, !dbg !3103, !tbaa !1088
  %shr = ashr i64 %3, 16, !dbg !3105
  %tobool = icmp ne i64 %shr, 0, !dbg !3105
  br i1 %tobool, label %if.then, label %if.end, !dbg !3106

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8, !dbg !3107, !tbaa !1088
  %and = and i64 %4, 65535, !dbg !3110
  %sub = sub i64 32, %and, !dbg !3111
  %5 = load i64, i64* %size.addr, align 8, !dbg !3112, !tbaa !1088
  %shr1 = ashr i64 %5, 16, !dbg !3113
  %sub2 = sub i64 %sub, %shr1, !dbg !3114
  %6 = load i32, i32* %val, align 4, !dbg !3115, !tbaa !1092
  %sh_prom = trunc i64 %sub2 to i32, !dbg !3115
  %shl = shl i32 %6, %sh_prom, !dbg !3115
  store i32 %shl, i32* %val, align 4, !dbg !3115, !tbaa !1092
  %7 = load i64, i64* %size.addr, align 8, !dbg !3116, !tbaa !1088
  %shr3 = ashr i64 %7, 16, !dbg !3117
  %sub4 = sub i64 32, %shr3, !dbg !3118
  %8 = load i32, i32* %val, align 4, !dbg !3119, !tbaa !1092
  %sh_prom5 = trunc i64 %sub4 to i32, !dbg !3119
  %shr6 = lshr i32 %8, %sh_prom5, !dbg !3119
  store i32 %shr6, i32* %val, align 4, !dbg !3119, !tbaa !1092
  br label %if.end, !dbg !3120

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %val, align 4, !dbg !3121, !tbaa !1092
  %conv = zext i32 %9 to i64, !dbg !3121
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv), !dbg !3122
  %10 = bitcast i32* %val to i8*, !dbg !3123
  call void @llvm.lifetime.end(i64 4, i8* %10) #2, !dbg !3123
  ret %struct._object* %call, !dbg !3124
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !837, metadata !1086), !dbg !3125
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !838, metadata !1086), !dbg !3126
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !839, metadata !1086), !dbg !3127
  %0 = bitcast i64* %val to i8*, !dbg !3128
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3128
  call void @llvm.dbg.declare(metadata i64* %val, metadata !840, metadata !1086), !dbg !3129
  %1 = bitcast i32* %field to i8*, !dbg !3130
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3130
  call void @llvm.dbg.declare(metadata i32* %field, metadata !841, metadata !1086), !dbg !3131
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3132, !tbaa !1082
  %call = call i32 @get_ulong(%struct._object* %2, i64* %val), !dbg !3134
  %cmp = icmp slt i32 %call, 0, !dbg !3135
  br i1 %cmp, label %if.then, label %if.end, !dbg !3136

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3137
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3137

if.end:                                           ; preds = %entry
  %3 = bitcast i32* %field to i8*, !dbg !3138
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !3139, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 4, i32 1, i1 false), !dbg !3138
  %5 = load i64, i64* %size.addr, align 8, !dbg !3140, !tbaa !1088
  %shr = ashr i64 %5, 16, !dbg !3141
  %tobool = icmp ne i64 %shr, 0, !dbg !3141
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3142

cond.true:                                        ; preds = %if.end
  %6 = load i32, i32* %field, align 4, !dbg !3143, !tbaa !1092
  %7 = load i64, i64* %size.addr, align 8, !dbg !3145, !tbaa !1088
  %shr1 = ashr i64 %7, 16, !dbg !3146
  %sub = sub i64 %shr1, 1, !dbg !3147
  %sh_prom = trunc i64 %sub to i32, !dbg !3148
  %shl = shl i32 1, %sh_prom, !dbg !3148
  %sub2 = sub i32 %shl, 1, !dbg !3149
  %shl3 = shl i32 %sub2, 1, !dbg !3150
  %add = add i32 %shl3, 1, !dbg !3151
  %8 = load i64, i64* %size.addr, align 8, !dbg !3152, !tbaa !1088
  %and = and i64 %8, 65535, !dbg !3153
  %sh_prom4 = trunc i64 %and to i32, !dbg !3154
  %shl5 = shl i32 %add, %sh_prom4, !dbg !3154
  %neg = xor i32 %shl5, -1, !dbg !3155
  %and6 = and i32 %6, %neg, !dbg !3156
  %9 = load i64, i64* %val, align 8, !dbg !3157, !tbaa !1088
  %conv = trunc i64 %9 to i32, !dbg !3158
  %10 = load i64, i64* %size.addr, align 8, !dbg !3159, !tbaa !1088
  %shr7 = ashr i64 %10, 16, !dbg !3160
  %sub8 = sub i64 %shr7, 1, !dbg !3161
  %sh_prom9 = trunc i64 %sub8 to i32, !dbg !3162
  %shl10 = shl i32 1, %sh_prom9, !dbg !3162
  %sub11 = sub i32 %shl10, 1, !dbg !3163
  %shl12 = shl i32 %sub11, 1, !dbg !3164
  %add13 = add i32 %shl12, 1, !dbg !3165
  %and14 = and i32 %conv, %add13, !dbg !3166
  %11 = load i64, i64* %size.addr, align 8, !dbg !3167, !tbaa !1088
  %and15 = and i64 %11, 65535, !dbg !3168
  %sh_prom16 = trunc i64 %and15 to i32, !dbg !3169
  %shl17 = shl i32 %and14, %sh_prom16, !dbg !3169
  %or = or i32 %and6, %shl17, !dbg !3170
  br label %cond.end, !dbg !3142

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %val, align 8, !dbg !3171, !tbaa !1088
  %conv18 = trunc i64 %12 to i32, !dbg !3173
  br label %cond.end, !dbg !3142

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %conv18, %cond.false ], !dbg !3142
  store i32 %cond, i32* %field, align 4, !dbg !3174, !tbaa !1092
  %13 = load i32, i32* %field, align 4, !dbg !3177, !tbaa !1092
  %and19 = and i32 %13, 255, !dbg !3178
  %shl20 = shl i32 %and19, 24, !dbg !3179
  %14 = load i32, i32* %field, align 4, !dbg !3180, !tbaa !1092
  %and21 = and i32 %14, 65280, !dbg !3181
  %shl22 = shl i32 %and21, 8, !dbg !3182
  %or23 = or i32 %shl20, %shl22, !dbg !3183
  %15 = load i32, i32* %field, align 4, !dbg !3184, !tbaa !1092
  %and24 = and i32 %15, 16711680, !dbg !3185
  %shr25 = lshr i32 %and24, 8, !dbg !3186
  %or26 = or i32 %or23, %shr25, !dbg !3187
  %16 = load i32, i32* %field, align 4, !dbg !3188, !tbaa !1092
  %shr27 = lshr i32 %16, 24, !dbg !3189
  %and28 = and i32 %shr27, 255, !dbg !3190
  %or29 = or i32 %or26, %and28, !dbg !3191
  store i32 %or29, i32* %field, align 4, !dbg !3192, !tbaa !1092
  %17 = load i8*, i8** %ptr.addr, align 8, !dbg !3193, !tbaa !1082
  %18 = bitcast i32* %field to i8*, !dbg !3194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 4, i32 1, i1 false), !dbg !3194
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3195, !tbaa !1141
  %inc = add i64 %19, 1, !dbg !3195
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3195, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3196
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3196

cleanup:                                          ; preds = %cond.end, %if.then
  %20 = bitcast i32* %field to i8*, !dbg !3197
  call void @llvm.lifetime.end(i64 4, i8* %20) #2, !dbg !3197
  %21 = bitcast i64* %val to i8*, !dbg !3197
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !3197
  %22 = load %struct._object*, %struct._object** %retval, !dbg !3197
  ret %struct._object* %22, !dbg !3197
}

; Function Attrs: uwtable
define internal %struct._object* @I_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !844, metadata !1086), !dbg !3198
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !845, metadata !1086), !dbg !3199
  %0 = bitcast i32* %val to i8*, !dbg !3200
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !3200
  call void @llvm.dbg.declare(metadata i32* %val, metadata !846, metadata !1086), !dbg !3201
  %1 = bitcast i32* %val to i8*, !dbg !3202
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !3203, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false), !dbg !3202
  %3 = load i32, i32* %val, align 4, !dbg !3204, !tbaa !1092
  %and = and i32 %3, 255, !dbg !3205
  %shl = shl i32 %and, 24, !dbg !3206
  %4 = load i32, i32* %val, align 4, !dbg !3207, !tbaa !1092
  %and1 = and i32 %4, 65280, !dbg !3208
  %shl2 = shl i32 %and1, 8, !dbg !3209
  %or = or i32 %shl, %shl2, !dbg !3210
  %5 = load i32, i32* %val, align 4, !dbg !3211, !tbaa !1092
  %and3 = and i32 %5, 16711680, !dbg !3212
  %shr = lshr i32 %and3, 8, !dbg !3213
  %or4 = or i32 %or, %shr, !dbg !3214
  %6 = load i32, i32* %val, align 4, !dbg !3215, !tbaa !1092
  %shr5 = lshr i32 %6, 24, !dbg !3216
  %and6 = and i32 %shr5, 255, !dbg !3217
  %or7 = or i32 %or4, %and6, !dbg !3218
  store i32 %or7, i32* %val, align 4, !dbg !3219, !tbaa !1092
  %7 = load i64, i64* %size.addr, align 8, !dbg !3220, !tbaa !1088
  %shr8 = ashr i64 %7, 16, !dbg !3222
  %tobool = icmp ne i64 %shr8, 0, !dbg !3222
  br i1 %tobool, label %if.then, label %if.end, !dbg !3223

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %size.addr, align 8, !dbg !3224, !tbaa !1088
  %and9 = and i64 %8, 65535, !dbg !3227
  %sub = sub i64 32, %and9, !dbg !3228
  %9 = load i64, i64* %size.addr, align 8, !dbg !3229, !tbaa !1088
  %shr10 = ashr i64 %9, 16, !dbg !3230
  %sub11 = sub i64 %sub, %shr10, !dbg !3231
  %10 = load i32, i32* %val, align 4, !dbg !3232, !tbaa !1092
  %sh_prom = trunc i64 %sub11 to i32, !dbg !3232
  %shl12 = shl i32 %10, %sh_prom, !dbg !3232
  store i32 %shl12, i32* %val, align 4, !dbg !3232, !tbaa !1092
  %11 = load i64, i64* %size.addr, align 8, !dbg !3233, !tbaa !1088
  %shr13 = ashr i64 %11, 16, !dbg !3234
  %sub14 = sub i64 32, %shr13, !dbg !3235
  %12 = load i32, i32* %val, align 4, !dbg !3236, !tbaa !1092
  %sh_prom15 = trunc i64 %sub14 to i32, !dbg !3236
  %shr16 = lshr i32 %12, %sh_prom15, !dbg !3236
  store i32 %shr16, i32* %val, align 4, !dbg !3236, !tbaa !1092
  br label %if.end, !dbg !3237

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %val, align 4, !dbg !3238, !tbaa !1092
  %conv = zext i32 %13 to i64, !dbg !3238
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv), !dbg !3239
  %14 = bitcast i32* %val to i8*, !dbg !3240
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !3240
  ret %struct._object* %call, !dbg !3241
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !849, metadata !1086), !dbg !3242
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !850, metadata !1086), !dbg !3243
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !851, metadata !1086), !dbg !3244
  %0 = bitcast i64* %val to i8*, !dbg !3245
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3245
  call void @llvm.dbg.declare(metadata i64* %val, metadata !852, metadata !1086), !dbg !3246
  %1 = bitcast i64* %x to i8*, !dbg !3247
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3247
  call void @llvm.dbg.declare(metadata i64* %x, metadata !853, metadata !1086), !dbg !3248
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3249, !tbaa !1082
  %call = call i32 @get_long(%struct._object* %2, i64* %val), !dbg !3251
  %cmp = icmp slt i32 %call, 0, !dbg !3252
  br i1 %cmp, label %if.then, label %if.end, !dbg !3253

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3254
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3254

if.end:                                           ; preds = %entry
  %3 = bitcast i64* %x to i8*, !dbg !3255
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !3256, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 1, i1 false), !dbg !3255
  %5 = load i64, i64* %size.addr, align 8, !dbg !3257, !tbaa !1088
  %shr = ashr i64 %5, 16, !dbg !3258
  %tobool = icmp ne i64 %shr, 0, !dbg !3258
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3259

cond.true:                                        ; preds = %if.end
  %6 = load i64, i64* %x, align 8, !dbg !3260, !tbaa !1088
  %7 = load i64, i64* %size.addr, align 8, !dbg !3262, !tbaa !1088
  %shr1 = ashr i64 %7, 16, !dbg !3263
  %sub = sub i64 %shr1, 1, !dbg !3264
  %shl = shl i64 1, %sub, !dbg !3265
  %sub2 = sub i64 %shl, 1, !dbg !3266
  %shl3 = shl i64 %sub2, 1, !dbg !3267
  %add = add i64 %shl3, 1, !dbg !3268
  %8 = load i64, i64* %size.addr, align 8, !dbg !3269, !tbaa !1088
  %and = and i64 %8, 65535, !dbg !3270
  %shl4 = shl i64 %add, %and, !dbg !3271
  %neg = xor i64 %shl4, -1, !dbg !3272
  %and5 = and i64 %6, %neg, !dbg !3273
  %9 = load i64, i64* %val, align 8, !dbg !3274, !tbaa !1088
  %10 = load i64, i64* %size.addr, align 8, !dbg !3275, !tbaa !1088
  %shr6 = ashr i64 %10, 16, !dbg !3276
  %sub7 = sub i64 %shr6, 1, !dbg !3277
  %shl8 = shl i64 1, %sub7, !dbg !3278
  %sub9 = sub i64 %shl8, 1, !dbg !3279
  %shl10 = shl i64 %sub9, 1, !dbg !3280
  %add11 = add i64 %shl10, 1, !dbg !3281
  %and12 = and i64 %9, %add11, !dbg !3282
  %11 = load i64, i64* %size.addr, align 8, !dbg !3283, !tbaa !1088
  %and13 = and i64 %11, 65535, !dbg !3284
  %shl14 = shl i64 %and12, %and13, !dbg !3285
  %or = or i64 %and5, %shl14, !dbg !3286
  br label %cond.end, !dbg !3259

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %val, align 8, !dbg !3287, !tbaa !1088
  br label %cond.end, !dbg !3259

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or, %cond.true ], [ %12, %cond.false ], !dbg !3259
  store i64 %cond, i64* %x, align 8, !dbg !3289, !tbaa !1088
  %13 = load i8*, i8** %ptr.addr, align 8, !dbg !3292, !tbaa !1082
  %14 = bitcast i64* %x to i8*, !dbg !3293
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 1, i1 false), !dbg !3293
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3294, !tbaa !1141
  %inc = add i64 %15, 1, !dbg !3294
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3294, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3295
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3295

cleanup:                                          ; preds = %cond.end, %if.then
  %16 = bitcast i64* %x to i8*, !dbg !3296
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !3296
  %17 = bitcast i64* %val to i8*, !dbg !3296
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !3296
  %18 = load %struct._object*, %struct._object** %retval, !dbg !3296
  ret %struct._object* %18, !dbg !3296
}

; Function Attrs: uwtable
define internal %struct._object* @l_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !856, metadata !1086), !dbg !3297
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !857, metadata !1086), !dbg !3298
  %0 = bitcast i64* %val to i8*, !dbg !3299
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3299
  call void @llvm.dbg.declare(metadata i64* %val, metadata !858, metadata !1086), !dbg !3300
  %1 = bitcast i64* %val to i8*, !dbg !3301
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !3302, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !3301
  %3 = load i64, i64* %size.addr, align 8, !dbg !3303, !tbaa !1088
  %shr = ashr i64 %3, 16, !dbg !3305
  %tobool = icmp ne i64 %shr, 0, !dbg !3305
  br i1 %tobool, label %if.then, label %if.end, !dbg !3306

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8, !dbg !3307, !tbaa !1088
  %and = and i64 %4, 65535, !dbg !3310
  %sub = sub i64 64, %and, !dbg !3311
  %5 = load i64, i64* %size.addr, align 8, !dbg !3312, !tbaa !1088
  %shr1 = ashr i64 %5, 16, !dbg !3313
  %sub2 = sub i64 %sub, %shr1, !dbg !3314
  %6 = load i64, i64* %val, align 8, !dbg !3315, !tbaa !1088
  %shl = shl i64 %6, %sub2, !dbg !3315
  store i64 %shl, i64* %val, align 8, !dbg !3315, !tbaa !1088
  %7 = load i64, i64* %size.addr, align 8, !dbg !3316, !tbaa !1088
  %shr3 = ashr i64 %7, 16, !dbg !3317
  %sub4 = sub i64 64, %shr3, !dbg !3318
  %8 = load i64, i64* %val, align 8, !dbg !3319, !tbaa !1088
  %shr5 = ashr i64 %8, %sub4, !dbg !3319
  store i64 %shr5, i64* %val, align 8, !dbg !3319, !tbaa !1088
  br label %if.end, !dbg !3320

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %val, align 8, !dbg !3321, !tbaa !1088
  %call = call %struct._object* @PyLong_FromLong(i64 %9), !dbg !3322
  %10 = bitcast i64* %val to i8*, !dbg !3323
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3323
  ret %struct._object* %call, !dbg !3324
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !861, metadata !1086), !dbg !3325
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !862, metadata !1086), !dbg !3326
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !863, metadata !1086), !dbg !3327
  %0 = bitcast i64* %val to i8*, !dbg !3328
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3328
  call void @llvm.dbg.declare(metadata i64* %val, metadata !864, metadata !1086), !dbg !3329
  %1 = bitcast i64* %field to i8*, !dbg !3330
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3330
  call void @llvm.dbg.declare(metadata i64* %field, metadata !865, metadata !1086), !dbg !3331
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3332, !tbaa !1082
  %call = call i32 @get_long(%struct._object* %2, i64* %val), !dbg !3334
  %cmp = icmp slt i32 %call, 0, !dbg !3335
  br i1 %cmp, label %if.then, label %if.end, !dbg !3336

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3337
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3337

if.end:                                           ; preds = %entry
  %3 = bitcast i64* %field to i8*, !dbg !3338
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !3339, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 1, i1 false), !dbg !3338
  %5 = load i64, i64* %field, align 8, !dbg !3340, !tbaa !1088
  %and = and i64 %5, 255, !dbg !3341
  %shl = shl i64 %and, 56, !dbg !3342
  %6 = load i64, i64* %field, align 8, !dbg !3343, !tbaa !1088
  %and1 = and i64 %6, 65280, !dbg !3344
  %shl2 = shl i64 %and1, 40, !dbg !3345
  %or = or i64 %shl, %shl2, !dbg !3346
  %7 = load i64, i64* %field, align 8, !dbg !3347, !tbaa !1088
  %and3 = and i64 %7, 16711680, !dbg !3348
  %shl4 = shl i64 %and3, 24, !dbg !3349
  %or5 = or i64 %or, %shl4, !dbg !3350
  %8 = load i64, i64* %field, align 8, !dbg !3351, !tbaa !1088
  %and6 = and i64 %8, 4278190080, !dbg !3352
  %shl7 = shl i64 %and6, 8, !dbg !3353
  %or8 = or i64 %or5, %shl7, !dbg !3354
  %9 = load i64, i64* %field, align 8, !dbg !3355, !tbaa !1088
  %and9 = and i64 %9, 1095216660480, !dbg !3356
  %shr = ashr i64 %and9, 8, !dbg !3357
  %or10 = or i64 %or8, %shr, !dbg !3358
  %10 = load i64, i64* %field, align 8, !dbg !3359, !tbaa !1088
  %and11 = and i64 %10, 280375465082880, !dbg !3360
  %shr12 = ashr i64 %and11, 24, !dbg !3361
  %or13 = or i64 %or10, %shr12, !dbg !3362
  %11 = load i64, i64* %field, align 8, !dbg !3363, !tbaa !1088
  %and14 = and i64 %11, 71776119061217280, !dbg !3364
  %shr15 = ashr i64 %and14, 40, !dbg !3365
  %or16 = or i64 %or13, %shr15, !dbg !3366
  %12 = load i64, i64* %field, align 8, !dbg !3367, !tbaa !1088
  %shr17 = ashr i64 %12, 56, !dbg !3368
  %and18 = and i64 %shr17, 255, !dbg !3369
  %or19 = or i64 %or16, %and18, !dbg !3370
  store i64 %or19, i64* %field, align 8, !dbg !3371, !tbaa !1088
  %13 = load i64, i64* %size.addr, align 8, !dbg !3372, !tbaa !1088
  %shr20 = ashr i64 %13, 16, !dbg !3373
  %tobool = icmp ne i64 %shr20, 0, !dbg !3373
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3374

cond.true:                                        ; preds = %if.end
  %14 = load i64, i64* %field, align 8, !dbg !3375, !tbaa !1088
  %15 = load i64, i64* %size.addr, align 8, !dbg !3377, !tbaa !1088
  %shr21 = ashr i64 %15, 16, !dbg !3378
  %sub = sub i64 %shr21, 1, !dbg !3379
  %shl22 = shl i64 1, %sub, !dbg !3380
  %sub23 = sub i64 %shl22, 1, !dbg !3381
  %shl24 = shl i64 %sub23, 1, !dbg !3382
  %add = add i64 %shl24, 1, !dbg !3383
  %16 = load i64, i64* %size.addr, align 8, !dbg !3384, !tbaa !1088
  %and25 = and i64 %16, 65535, !dbg !3385
  %shl26 = shl i64 %add, %and25, !dbg !3386
  %neg = xor i64 %shl26, -1, !dbg !3387
  %and27 = and i64 %14, %neg, !dbg !3388
  %17 = load i64, i64* %val, align 8, !dbg !3389, !tbaa !1088
  %18 = load i64, i64* %size.addr, align 8, !dbg !3390, !tbaa !1088
  %shr28 = ashr i64 %18, 16, !dbg !3391
  %sub29 = sub i64 %shr28, 1, !dbg !3392
  %shl30 = shl i64 1, %sub29, !dbg !3393
  %sub31 = sub i64 %shl30, 1, !dbg !3394
  %shl32 = shl i64 %sub31, 1, !dbg !3395
  %add33 = add i64 %shl32, 1, !dbg !3396
  %and34 = and i64 %17, %add33, !dbg !3397
  %19 = load i64, i64* %size.addr, align 8, !dbg !3398, !tbaa !1088
  %and35 = and i64 %19, 65535, !dbg !3399
  %shl36 = shl i64 %and34, %and35, !dbg !3400
  %or37 = or i64 %and27, %shl36, !dbg !3401
  br label %cond.end, !dbg !3374

cond.false:                                       ; preds = %if.end
  %20 = load i64, i64* %val, align 8, !dbg !3402, !tbaa !1088
  br label %cond.end, !dbg !3374

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or37, %cond.true ], [ %20, %cond.false ], !dbg !3374
  store i64 %cond, i64* %field, align 8, !dbg !3404, !tbaa !1088
  %21 = load i64, i64* %field, align 8, !dbg !3407, !tbaa !1088
  %and38 = and i64 %21, 255, !dbg !3408
  %shl39 = shl i64 %and38, 56, !dbg !3409
  %22 = load i64, i64* %field, align 8, !dbg !3410, !tbaa !1088
  %and40 = and i64 %22, 65280, !dbg !3411
  %shl41 = shl i64 %and40, 40, !dbg !3412
  %or42 = or i64 %shl39, %shl41, !dbg !3413
  %23 = load i64, i64* %field, align 8, !dbg !3414, !tbaa !1088
  %and43 = and i64 %23, 16711680, !dbg !3415
  %shl44 = shl i64 %and43, 24, !dbg !3416
  %or45 = or i64 %or42, %shl44, !dbg !3417
  %24 = load i64, i64* %field, align 8, !dbg !3418, !tbaa !1088
  %and46 = and i64 %24, 4278190080, !dbg !3419
  %shl47 = shl i64 %and46, 8, !dbg !3420
  %or48 = or i64 %or45, %shl47, !dbg !3421
  %25 = load i64, i64* %field, align 8, !dbg !3422, !tbaa !1088
  %and49 = and i64 %25, 1095216660480, !dbg !3423
  %shr50 = ashr i64 %and49, 8, !dbg !3424
  %or51 = or i64 %or48, %shr50, !dbg !3425
  %26 = load i64, i64* %field, align 8, !dbg !3426, !tbaa !1088
  %and52 = and i64 %26, 280375465082880, !dbg !3427
  %shr53 = ashr i64 %and52, 24, !dbg !3428
  %or54 = or i64 %or51, %shr53, !dbg !3429
  %27 = load i64, i64* %field, align 8, !dbg !3430, !tbaa !1088
  %and55 = and i64 %27, 71776119061217280, !dbg !3431
  %shr56 = ashr i64 %and55, 40, !dbg !3432
  %or57 = or i64 %or54, %shr56, !dbg !3433
  %28 = load i64, i64* %field, align 8, !dbg !3434, !tbaa !1088
  %shr58 = ashr i64 %28, 56, !dbg !3435
  %and59 = and i64 %shr58, 255, !dbg !3436
  %or60 = or i64 %or57, %and59, !dbg !3437
  store i64 %or60, i64* %field, align 8, !dbg !3438, !tbaa !1088
  %29 = load i8*, i8** %ptr.addr, align 8, !dbg !3439, !tbaa !1082
  %30 = bitcast i64* %field to i8*, !dbg !3440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 8, i32 1, i1 false), !dbg !3440
  %31 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3441, !tbaa !1141
  %inc = add i64 %31, 1, !dbg !3441
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3441, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3442
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3442

cleanup:                                          ; preds = %cond.end, %if.then
  %32 = bitcast i64* %field to i8*, !dbg !3443
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !3443
  %33 = bitcast i64* %val to i8*, !dbg !3443
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !3443
  %34 = load %struct._object*, %struct._object** %retval, !dbg !3443
  ret %struct._object* %34, !dbg !3443
}

; Function Attrs: uwtable
define internal %struct._object* @l_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !868, metadata !1086), !dbg !3444
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !869, metadata !1086), !dbg !3445
  %0 = bitcast i64* %val to i8*, !dbg !3446
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3446
  call void @llvm.dbg.declare(metadata i64* %val, metadata !870, metadata !1086), !dbg !3447
  %1 = bitcast i64* %val to i8*, !dbg !3448
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !3449, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !3448
  %3 = load i64, i64* %val, align 8, !dbg !3450, !tbaa !1088
  %and = and i64 %3, 255, !dbg !3451
  %shl = shl i64 %and, 56, !dbg !3452
  %4 = load i64, i64* %val, align 8, !dbg !3453, !tbaa !1088
  %and1 = and i64 %4, 65280, !dbg !3454
  %shl2 = shl i64 %and1, 40, !dbg !3455
  %or = or i64 %shl, %shl2, !dbg !3456
  %5 = load i64, i64* %val, align 8, !dbg !3457, !tbaa !1088
  %and3 = and i64 %5, 16711680, !dbg !3458
  %shl4 = shl i64 %and3, 24, !dbg !3459
  %or5 = or i64 %or, %shl4, !dbg !3460
  %6 = load i64, i64* %val, align 8, !dbg !3461, !tbaa !1088
  %and6 = and i64 %6, 4278190080, !dbg !3462
  %shl7 = shl i64 %and6, 8, !dbg !3463
  %or8 = or i64 %or5, %shl7, !dbg !3464
  %7 = load i64, i64* %val, align 8, !dbg !3465, !tbaa !1088
  %and9 = and i64 %7, 1095216660480, !dbg !3466
  %shr = ashr i64 %and9, 8, !dbg !3467
  %or10 = or i64 %or8, %shr, !dbg !3468
  %8 = load i64, i64* %val, align 8, !dbg !3469, !tbaa !1088
  %and11 = and i64 %8, 280375465082880, !dbg !3470
  %shr12 = ashr i64 %and11, 24, !dbg !3471
  %or13 = or i64 %or10, %shr12, !dbg !3472
  %9 = load i64, i64* %val, align 8, !dbg !3473, !tbaa !1088
  %and14 = and i64 %9, 71776119061217280, !dbg !3474
  %shr15 = ashr i64 %and14, 40, !dbg !3475
  %or16 = or i64 %or13, %shr15, !dbg !3476
  %10 = load i64, i64* %val, align 8, !dbg !3477, !tbaa !1088
  %shr17 = ashr i64 %10, 56, !dbg !3478
  %and18 = and i64 %shr17, 255, !dbg !3479
  %or19 = or i64 %or16, %and18, !dbg !3480
  store i64 %or19, i64* %val, align 8, !dbg !3481, !tbaa !1088
  %11 = load i64, i64* %size.addr, align 8, !dbg !3482, !tbaa !1088
  %shr20 = ashr i64 %11, 16, !dbg !3484
  %tobool = icmp ne i64 %shr20, 0, !dbg !3484
  br i1 %tobool, label %if.then, label %if.end, !dbg !3485

if.then:                                          ; preds = %entry
  %12 = load i64, i64* %size.addr, align 8, !dbg !3486, !tbaa !1088
  %and21 = and i64 %12, 65535, !dbg !3489
  %sub = sub i64 64, %and21, !dbg !3490
  %13 = load i64, i64* %size.addr, align 8, !dbg !3491, !tbaa !1088
  %shr22 = ashr i64 %13, 16, !dbg !3492
  %sub23 = sub i64 %sub, %shr22, !dbg !3493
  %14 = load i64, i64* %val, align 8, !dbg !3494, !tbaa !1088
  %shl24 = shl i64 %14, %sub23, !dbg !3494
  store i64 %shl24, i64* %val, align 8, !dbg !3494, !tbaa !1088
  %15 = load i64, i64* %size.addr, align 8, !dbg !3495, !tbaa !1088
  %shr25 = ashr i64 %15, 16, !dbg !3496
  %sub26 = sub i64 64, %shr25, !dbg !3497
  %16 = load i64, i64* %val, align 8, !dbg !3498, !tbaa !1088
  %shr27 = ashr i64 %16, %sub26, !dbg !3498
  store i64 %shr27, i64* %val, align 8, !dbg !3498, !tbaa !1088
  br label %if.end, !dbg !3499

if.end:                                           ; preds = %if.then, %entry
  %17 = load i64, i64* %val, align 8, !dbg !3500, !tbaa !1088
  %call = call %struct._object* @PyLong_FromLong(i64 %17), !dbg !3501
  %18 = bitcast i64* %val to i8*, !dbg !3502
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !3502
  ret %struct._object* %call, !dbg !3503
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !873, metadata !1086), !dbg !3504
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !874, metadata !1086), !dbg !3505
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !875, metadata !1086), !dbg !3506
  %0 = bitcast i64* %val to i8*, !dbg !3507
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3507
  call void @llvm.dbg.declare(metadata i64* %val, metadata !876, metadata !1086), !dbg !3508
  %1 = bitcast i64* %x to i8*, !dbg !3509
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3509
  call void @llvm.dbg.declare(metadata i64* %x, metadata !877, metadata !1086), !dbg !3510
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3511, !tbaa !1082
  %call = call i32 @get_ulong(%struct._object* %2, i64* %val), !dbg !3513
  %cmp = icmp slt i32 %call, 0, !dbg !3514
  br i1 %cmp, label %if.then, label %if.end, !dbg !3515

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3516
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3516

if.end:                                           ; preds = %entry
  %3 = bitcast i64* %x to i8*, !dbg !3517
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !3518, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 1, i1 false), !dbg !3517
  %5 = load i64, i64* %size.addr, align 8, !dbg !3519, !tbaa !1088
  %shr = ashr i64 %5, 16, !dbg !3520
  %tobool = icmp ne i64 %shr, 0, !dbg !3520
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3521

cond.true:                                        ; preds = %if.end
  %6 = load i64, i64* %x, align 8, !dbg !3522, !tbaa !1088
  %7 = load i64, i64* %size.addr, align 8, !dbg !3524, !tbaa !1088
  %shr1 = ashr i64 %7, 16, !dbg !3525
  %sub = sub i64 %shr1, 1, !dbg !3526
  %shl = shl i64 1, %sub, !dbg !3527
  %sub2 = sub i64 %shl, 1, !dbg !3528
  %shl3 = shl i64 %sub2, 1, !dbg !3529
  %add = add i64 %shl3, 1, !dbg !3530
  %8 = load i64, i64* %size.addr, align 8, !dbg !3531, !tbaa !1088
  %and = and i64 %8, 65535, !dbg !3532
  %shl4 = shl i64 %add, %and, !dbg !3533
  %neg = xor i64 %shl4, -1, !dbg !3534
  %and5 = and i64 %6, %neg, !dbg !3535
  %9 = load i64, i64* %val, align 8, !dbg !3536, !tbaa !1088
  %10 = load i64, i64* %size.addr, align 8, !dbg !3537, !tbaa !1088
  %shr6 = ashr i64 %10, 16, !dbg !3538
  %sub7 = sub i64 %shr6, 1, !dbg !3539
  %shl8 = shl i64 1, %sub7, !dbg !3540
  %sub9 = sub i64 %shl8, 1, !dbg !3541
  %shl10 = shl i64 %sub9, 1, !dbg !3542
  %add11 = add i64 %shl10, 1, !dbg !3543
  %and12 = and i64 %9, %add11, !dbg !3544
  %11 = load i64, i64* %size.addr, align 8, !dbg !3545, !tbaa !1088
  %and13 = and i64 %11, 65535, !dbg !3546
  %shl14 = shl i64 %and12, %and13, !dbg !3547
  %or = or i64 %and5, %shl14, !dbg !3548
  br label %cond.end, !dbg !3521

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %val, align 8, !dbg !3549, !tbaa !1088
  br label %cond.end, !dbg !3521

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or, %cond.true ], [ %12, %cond.false ], !dbg !3521
  store i64 %cond, i64* %x, align 8, !dbg !3551, !tbaa !1088
  %13 = load i8*, i8** %ptr.addr, align 8, !dbg !3554, !tbaa !1082
  %14 = bitcast i64* %x to i8*, !dbg !3555
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 1, i1 false), !dbg !3555
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3556, !tbaa !1141
  %inc = add i64 %15, 1, !dbg !3556
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3556, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3557
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3557

cleanup:                                          ; preds = %cond.end, %if.then
  %16 = bitcast i64* %x to i8*, !dbg !3558
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !3558
  %17 = bitcast i64* %val to i8*, !dbg !3558
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !3558
  %18 = load %struct._object*, %struct._object** %retval, !dbg !3558
  ret %struct._object* %18, !dbg !3558
}

; Function Attrs: uwtable
define internal %struct._object* @L_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !880, metadata !1086), !dbg !3559
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !881, metadata !1086), !dbg !3560
  %0 = bitcast i64* %val to i8*, !dbg !3561
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3561
  call void @llvm.dbg.declare(metadata i64* %val, metadata !882, metadata !1086), !dbg !3562
  %1 = bitcast i64* %val to i8*, !dbg !3563
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !3564, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !3563
  %3 = load i64, i64* %size.addr, align 8, !dbg !3565, !tbaa !1088
  %shr = ashr i64 %3, 16, !dbg !3567
  %tobool = icmp ne i64 %shr, 0, !dbg !3567
  br i1 %tobool, label %if.then, label %if.end, !dbg !3568

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8, !dbg !3569, !tbaa !1088
  %and = and i64 %4, 65535, !dbg !3572
  %sub = sub i64 64, %and, !dbg !3573
  %5 = load i64, i64* %size.addr, align 8, !dbg !3574, !tbaa !1088
  %shr1 = ashr i64 %5, 16, !dbg !3575
  %sub2 = sub i64 %sub, %shr1, !dbg !3576
  %6 = load i64, i64* %val, align 8, !dbg !3577, !tbaa !1088
  %shl = shl i64 %6, %sub2, !dbg !3577
  store i64 %shl, i64* %val, align 8, !dbg !3577, !tbaa !1088
  %7 = load i64, i64* %size.addr, align 8, !dbg !3578, !tbaa !1088
  %shr3 = ashr i64 %7, 16, !dbg !3579
  %sub4 = sub i64 64, %shr3, !dbg !3580
  %8 = load i64, i64* %val, align 8, !dbg !3581, !tbaa !1088
  %shr5 = lshr i64 %8, %sub4, !dbg !3581
  store i64 %shr5, i64* %val, align 8, !dbg !3581, !tbaa !1088
  br label %if.end, !dbg !3582

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %val, align 8, !dbg !3583, !tbaa !1088
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %9), !dbg !3584
  %10 = bitcast i64* %val to i8*, !dbg !3585
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3585
  ret %struct._object* %call, !dbg !3586
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !885, metadata !1086), !dbg !3587
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !886, metadata !1086), !dbg !3588
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !887, metadata !1086), !dbg !3589
  %0 = bitcast i64* %val to i8*, !dbg !3590
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3590
  call void @llvm.dbg.declare(metadata i64* %val, metadata !888, metadata !1086), !dbg !3591
  %1 = bitcast i64* %field to i8*, !dbg !3592
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3592
  call void @llvm.dbg.declare(metadata i64* %field, metadata !889, metadata !1086), !dbg !3593
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3594, !tbaa !1082
  %call = call i32 @get_ulong(%struct._object* %2, i64* %val), !dbg !3596
  %cmp = icmp slt i32 %call, 0, !dbg !3597
  br i1 %cmp, label %if.then, label %if.end, !dbg !3598

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3599
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3599

if.end:                                           ; preds = %entry
  %3 = bitcast i64* %field to i8*, !dbg !3600
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !3601, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 1, i1 false), !dbg !3600
  %5 = load i64, i64* %field, align 8, !dbg !3602, !tbaa !1088
  %and = and i64 %5, 255, !dbg !3603
  %shl = shl i64 %and, 56, !dbg !3604
  %6 = load i64, i64* %field, align 8, !dbg !3605, !tbaa !1088
  %and1 = and i64 %6, 65280, !dbg !3606
  %shl2 = shl i64 %and1, 40, !dbg !3607
  %or = or i64 %shl, %shl2, !dbg !3608
  %7 = load i64, i64* %field, align 8, !dbg !3609, !tbaa !1088
  %and3 = and i64 %7, 16711680, !dbg !3610
  %shl4 = shl i64 %and3, 24, !dbg !3611
  %or5 = or i64 %or, %shl4, !dbg !3612
  %8 = load i64, i64* %field, align 8, !dbg !3613, !tbaa !1088
  %and6 = and i64 %8, 4278190080, !dbg !3614
  %shl7 = shl i64 %and6, 8, !dbg !3615
  %or8 = or i64 %or5, %shl7, !dbg !3616
  %9 = load i64, i64* %field, align 8, !dbg !3617, !tbaa !1088
  %and9 = and i64 %9, 1095216660480, !dbg !3618
  %shr = lshr i64 %and9, 8, !dbg !3619
  %or10 = or i64 %or8, %shr, !dbg !3620
  %10 = load i64, i64* %field, align 8, !dbg !3621, !tbaa !1088
  %and11 = and i64 %10, 280375465082880, !dbg !3622
  %shr12 = lshr i64 %and11, 24, !dbg !3623
  %or13 = or i64 %or10, %shr12, !dbg !3624
  %11 = load i64, i64* %field, align 8, !dbg !3625, !tbaa !1088
  %and14 = and i64 %11, 71776119061217280, !dbg !3626
  %shr15 = lshr i64 %and14, 40, !dbg !3627
  %or16 = or i64 %or13, %shr15, !dbg !3628
  %12 = load i64, i64* %field, align 8, !dbg !3629, !tbaa !1088
  %shr17 = lshr i64 %12, 56, !dbg !3630
  %and18 = and i64 %shr17, 255, !dbg !3631
  %or19 = or i64 %or16, %and18, !dbg !3632
  store i64 %or19, i64* %field, align 8, !dbg !3633, !tbaa !1088
  %13 = load i64, i64* %size.addr, align 8, !dbg !3634, !tbaa !1088
  %shr20 = ashr i64 %13, 16, !dbg !3635
  %tobool = icmp ne i64 %shr20, 0, !dbg !3635
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3636

cond.true:                                        ; preds = %if.end
  %14 = load i64, i64* %field, align 8, !dbg !3637, !tbaa !1088
  %15 = load i64, i64* %size.addr, align 8, !dbg !3639, !tbaa !1088
  %shr21 = ashr i64 %15, 16, !dbg !3640
  %sub = sub i64 %shr21, 1, !dbg !3641
  %shl22 = shl i64 1, %sub, !dbg !3642
  %sub23 = sub i64 %shl22, 1, !dbg !3643
  %shl24 = shl i64 %sub23, 1, !dbg !3644
  %add = add i64 %shl24, 1, !dbg !3645
  %16 = load i64, i64* %size.addr, align 8, !dbg !3646, !tbaa !1088
  %and25 = and i64 %16, 65535, !dbg !3647
  %shl26 = shl i64 %add, %and25, !dbg !3648
  %neg = xor i64 %shl26, -1, !dbg !3649
  %and27 = and i64 %14, %neg, !dbg !3650
  %17 = load i64, i64* %val, align 8, !dbg !3651, !tbaa !1088
  %18 = load i64, i64* %size.addr, align 8, !dbg !3652, !tbaa !1088
  %shr28 = ashr i64 %18, 16, !dbg !3653
  %sub29 = sub i64 %shr28, 1, !dbg !3654
  %shl30 = shl i64 1, %sub29, !dbg !3655
  %sub31 = sub i64 %shl30, 1, !dbg !3656
  %shl32 = shl i64 %sub31, 1, !dbg !3657
  %add33 = add i64 %shl32, 1, !dbg !3658
  %and34 = and i64 %17, %add33, !dbg !3659
  %19 = load i64, i64* %size.addr, align 8, !dbg !3660, !tbaa !1088
  %and35 = and i64 %19, 65535, !dbg !3661
  %shl36 = shl i64 %and34, %and35, !dbg !3662
  %or37 = or i64 %and27, %shl36, !dbg !3663
  br label %cond.end, !dbg !3636

cond.false:                                       ; preds = %if.end
  %20 = load i64, i64* %val, align 8, !dbg !3664, !tbaa !1088
  br label %cond.end, !dbg !3636

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or37, %cond.true ], [ %20, %cond.false ], !dbg !3636
  store i64 %cond, i64* %field, align 8, !dbg !3666, !tbaa !1088
  %21 = load i64, i64* %field, align 8, !dbg !3669, !tbaa !1088
  %and38 = and i64 %21, 255, !dbg !3670
  %shl39 = shl i64 %and38, 56, !dbg !3671
  %22 = load i64, i64* %field, align 8, !dbg !3672, !tbaa !1088
  %and40 = and i64 %22, 65280, !dbg !3673
  %shl41 = shl i64 %and40, 40, !dbg !3674
  %or42 = or i64 %shl39, %shl41, !dbg !3675
  %23 = load i64, i64* %field, align 8, !dbg !3676, !tbaa !1088
  %and43 = and i64 %23, 16711680, !dbg !3677
  %shl44 = shl i64 %and43, 24, !dbg !3678
  %or45 = or i64 %or42, %shl44, !dbg !3679
  %24 = load i64, i64* %field, align 8, !dbg !3680, !tbaa !1088
  %and46 = and i64 %24, 4278190080, !dbg !3681
  %shl47 = shl i64 %and46, 8, !dbg !3682
  %or48 = or i64 %or45, %shl47, !dbg !3683
  %25 = load i64, i64* %field, align 8, !dbg !3684, !tbaa !1088
  %and49 = and i64 %25, 1095216660480, !dbg !3685
  %shr50 = lshr i64 %and49, 8, !dbg !3686
  %or51 = or i64 %or48, %shr50, !dbg !3687
  %26 = load i64, i64* %field, align 8, !dbg !3688, !tbaa !1088
  %and52 = and i64 %26, 280375465082880, !dbg !3689
  %shr53 = lshr i64 %and52, 24, !dbg !3690
  %or54 = or i64 %or51, %shr53, !dbg !3691
  %27 = load i64, i64* %field, align 8, !dbg !3692, !tbaa !1088
  %and55 = and i64 %27, 71776119061217280, !dbg !3693
  %shr56 = lshr i64 %and55, 40, !dbg !3694
  %or57 = or i64 %or54, %shr56, !dbg !3695
  %28 = load i64, i64* %field, align 8, !dbg !3696, !tbaa !1088
  %shr58 = lshr i64 %28, 56, !dbg !3697
  %and59 = and i64 %shr58, 255, !dbg !3698
  %or60 = or i64 %or57, %and59, !dbg !3699
  store i64 %or60, i64* %field, align 8, !dbg !3700, !tbaa !1088
  %29 = load i8*, i8** %ptr.addr, align 8, !dbg !3701, !tbaa !1082
  %30 = bitcast i64* %field to i8*, !dbg !3702
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 8, i32 1, i1 false), !dbg !3702
  %31 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3703, !tbaa !1141
  %inc = add i64 %31, 1, !dbg !3703
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3703, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3704
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3704

cleanup:                                          ; preds = %cond.end, %if.then
  %32 = bitcast i64* %field to i8*, !dbg !3705
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !3705
  %33 = bitcast i64* %val to i8*, !dbg !3705
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !3705
  %34 = load %struct._object*, %struct._object** %retval, !dbg !3705
  ret %struct._object* %34, !dbg !3705
}

; Function Attrs: uwtable
define internal %struct._object* @L_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !892, metadata !1086), !dbg !3706
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !893, metadata !1086), !dbg !3707
  %0 = bitcast i64* %val to i8*, !dbg !3708
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3708
  call void @llvm.dbg.declare(metadata i64* %val, metadata !894, metadata !1086), !dbg !3709
  %1 = bitcast i64* %val to i8*, !dbg !3710
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !3711, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !3710
  %3 = load i64, i64* %val, align 8, !dbg !3712, !tbaa !1088
  %and = and i64 %3, 255, !dbg !3713
  %shl = shl i64 %and, 56, !dbg !3714
  %4 = load i64, i64* %val, align 8, !dbg !3715, !tbaa !1088
  %and1 = and i64 %4, 65280, !dbg !3716
  %shl2 = shl i64 %and1, 40, !dbg !3717
  %or = or i64 %shl, %shl2, !dbg !3718
  %5 = load i64, i64* %val, align 8, !dbg !3719, !tbaa !1088
  %and3 = and i64 %5, 16711680, !dbg !3720
  %shl4 = shl i64 %and3, 24, !dbg !3721
  %or5 = or i64 %or, %shl4, !dbg !3722
  %6 = load i64, i64* %val, align 8, !dbg !3723, !tbaa !1088
  %and6 = and i64 %6, 4278190080, !dbg !3724
  %shl7 = shl i64 %and6, 8, !dbg !3725
  %or8 = or i64 %or5, %shl7, !dbg !3726
  %7 = load i64, i64* %val, align 8, !dbg !3727, !tbaa !1088
  %and9 = and i64 %7, 1095216660480, !dbg !3728
  %shr = lshr i64 %and9, 8, !dbg !3729
  %or10 = or i64 %or8, %shr, !dbg !3730
  %8 = load i64, i64* %val, align 8, !dbg !3731, !tbaa !1088
  %and11 = and i64 %8, 280375465082880, !dbg !3732
  %shr12 = lshr i64 %and11, 24, !dbg !3733
  %or13 = or i64 %or10, %shr12, !dbg !3734
  %9 = load i64, i64* %val, align 8, !dbg !3735, !tbaa !1088
  %and14 = and i64 %9, 71776119061217280, !dbg !3736
  %shr15 = lshr i64 %and14, 40, !dbg !3737
  %or16 = or i64 %or13, %shr15, !dbg !3738
  %10 = load i64, i64* %val, align 8, !dbg !3739, !tbaa !1088
  %shr17 = lshr i64 %10, 56, !dbg !3740
  %and18 = and i64 %shr17, 255, !dbg !3741
  %or19 = or i64 %or16, %and18, !dbg !3742
  store i64 %or19, i64* %val, align 8, !dbg !3743, !tbaa !1088
  %11 = load i64, i64* %size.addr, align 8, !dbg !3744, !tbaa !1088
  %shr20 = ashr i64 %11, 16, !dbg !3746
  %tobool = icmp ne i64 %shr20, 0, !dbg !3746
  br i1 %tobool, label %if.then, label %if.end, !dbg !3747

if.then:                                          ; preds = %entry
  %12 = load i64, i64* %size.addr, align 8, !dbg !3748, !tbaa !1088
  %and21 = and i64 %12, 65535, !dbg !3751
  %sub = sub i64 64, %and21, !dbg !3752
  %13 = load i64, i64* %size.addr, align 8, !dbg !3753, !tbaa !1088
  %shr22 = ashr i64 %13, 16, !dbg !3754
  %sub23 = sub i64 %sub, %shr22, !dbg !3755
  %14 = load i64, i64* %val, align 8, !dbg !3756, !tbaa !1088
  %shl24 = shl i64 %14, %sub23, !dbg !3756
  store i64 %shl24, i64* %val, align 8, !dbg !3756, !tbaa !1088
  %15 = load i64, i64* %size.addr, align 8, !dbg !3757, !tbaa !1088
  %shr25 = ashr i64 %15, 16, !dbg !3758
  %sub26 = sub i64 64, %shr25, !dbg !3759
  %16 = load i64, i64* %val, align 8, !dbg !3760, !tbaa !1088
  %shr27 = lshr i64 %16, %sub26, !dbg !3760
  store i64 %shr27, i64* %val, align 8, !dbg !3760, !tbaa !1088
  br label %if.end, !dbg !3761

if.end:                                           ; preds = %if.then, %entry
  %17 = load i64, i64* %val, align 8, !dbg !3762, !tbaa !1088
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %17), !dbg !3763
  %18 = bitcast i64* %val to i8*, !dbg !3764
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !3764
  ret %struct._object* %call, !dbg !3765
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !897, metadata !1086), !dbg !3766
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !898, metadata !1086), !dbg !3767
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !899, metadata !1086), !dbg !3768
  %0 = bitcast i64* %val to i8*, !dbg !3769
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3769
  call void @llvm.dbg.declare(metadata i64* %val, metadata !900, metadata !1086), !dbg !3770
  %1 = bitcast i64* %x to i8*, !dbg !3771
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3771
  call void @llvm.dbg.declare(metadata i64* %x, metadata !901, metadata !1086), !dbg !3772
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3773, !tbaa !1082
  %call = call i32 @get_longlong(%struct._object* %2, i64* %val), !dbg !3775
  %cmp = icmp slt i32 %call, 0, !dbg !3776
  br i1 %cmp, label %if.then, label %if.end, !dbg !3777

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3778
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3778

if.end:                                           ; preds = %entry
  %3 = bitcast i64* %x to i8*, !dbg !3779
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !3780, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 1, i1 false), !dbg !3779
  %5 = load i64, i64* %size.addr, align 8, !dbg !3781, !tbaa !1088
  %shr = ashr i64 %5, 16, !dbg !3782
  %tobool = icmp ne i64 %shr, 0, !dbg !3782
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3783

cond.true:                                        ; preds = %if.end
  %6 = load i64, i64* %x, align 8, !dbg !3784, !tbaa !3786
  %7 = load i64, i64* %size.addr, align 8, !dbg !3788, !tbaa !1088
  %shr1 = ashr i64 %7, 16, !dbg !3789
  %sub = sub i64 %shr1, 1, !dbg !3790
  %shl = shl i64 1, %sub, !dbg !3791
  %sub2 = sub i64 %shl, 1, !dbg !3792
  %shl3 = shl i64 %sub2, 1, !dbg !3793
  %add = add i64 %shl3, 1, !dbg !3794
  %8 = load i64, i64* %size.addr, align 8, !dbg !3795, !tbaa !1088
  %and = and i64 %8, 65535, !dbg !3796
  %shl4 = shl i64 %add, %and, !dbg !3797
  %neg = xor i64 %shl4, -1, !dbg !3798
  %and5 = and i64 %6, %neg, !dbg !3799
  %9 = load i64, i64* %val, align 8, !dbg !3800, !tbaa !3786
  %10 = load i64, i64* %size.addr, align 8, !dbg !3801, !tbaa !1088
  %shr6 = ashr i64 %10, 16, !dbg !3802
  %sub7 = sub i64 %shr6, 1, !dbg !3803
  %shl8 = shl i64 1, %sub7, !dbg !3804
  %sub9 = sub i64 %shl8, 1, !dbg !3805
  %shl10 = shl i64 %sub9, 1, !dbg !3806
  %add11 = add i64 %shl10, 1, !dbg !3807
  %and12 = and i64 %9, %add11, !dbg !3808
  %11 = load i64, i64* %size.addr, align 8, !dbg !3809, !tbaa !1088
  %and13 = and i64 %11, 65535, !dbg !3810
  %shl14 = shl i64 %and12, %and13, !dbg !3811
  %or = or i64 %and5, %shl14, !dbg !3812
  br label %cond.end, !dbg !3783

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %val, align 8, !dbg !3813, !tbaa !3786
  br label %cond.end, !dbg !3783

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or, %cond.true ], [ %12, %cond.false ], !dbg !3783
  store i64 %cond, i64* %x, align 8, !dbg !3815, !tbaa !3786
  %13 = load i8*, i8** %ptr.addr, align 8, !dbg !3818, !tbaa !1082
  %14 = bitcast i64* %x to i8*, !dbg !3819
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 1, i1 false), !dbg !3819
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3820, !tbaa !1141
  %inc = add i64 %15, 1, !dbg !3820
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3820, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3821
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3821

cleanup:                                          ; preds = %cond.end, %if.then
  %16 = bitcast i64* %x to i8*, !dbg !3822
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !3822
  %17 = bitcast i64* %val to i8*, !dbg !3822
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !3822
  %18 = load %struct._object*, %struct._object** %retval, !dbg !3822
  ret %struct._object* %18, !dbg !3822
}

; Function Attrs: uwtable
define internal %struct._object* @q_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !912, metadata !1086), !dbg !3823
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !913, metadata !1086), !dbg !3824
  %0 = bitcast i64* %val to i8*, !dbg !3825
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3825
  call void @llvm.dbg.declare(metadata i64* %val, metadata !914, metadata !1086), !dbg !3826
  %1 = bitcast i64* %val to i8*, !dbg !3827
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !3828, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !3827
  %3 = load i64, i64* %size.addr, align 8, !dbg !3829, !tbaa !1088
  %shr = ashr i64 %3, 16, !dbg !3831
  %tobool = icmp ne i64 %shr, 0, !dbg !3831
  br i1 %tobool, label %if.then, label %if.end, !dbg !3832

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8, !dbg !3833, !tbaa !1088
  %and = and i64 %4, 65535, !dbg !3836
  %sub = sub i64 64, %and, !dbg !3837
  %5 = load i64, i64* %size.addr, align 8, !dbg !3838, !tbaa !1088
  %shr1 = ashr i64 %5, 16, !dbg !3839
  %sub2 = sub i64 %sub, %shr1, !dbg !3840
  %6 = load i64, i64* %val, align 8, !dbg !3841, !tbaa !3786
  %shl = shl i64 %6, %sub2, !dbg !3841
  store i64 %shl, i64* %val, align 8, !dbg !3841, !tbaa !3786
  %7 = load i64, i64* %size.addr, align 8, !dbg !3842, !tbaa !1088
  %shr3 = ashr i64 %7, 16, !dbg !3843
  %sub4 = sub i64 64, %shr3, !dbg !3844
  %8 = load i64, i64* %val, align 8, !dbg !3845, !tbaa !3786
  %shr5 = ashr i64 %8, %sub4, !dbg !3845
  store i64 %shr5, i64* %val, align 8, !dbg !3845, !tbaa !3786
  br label %if.end, !dbg !3846

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %val, align 8, !dbg !3847, !tbaa !3786
  %call = call %struct._object* @PyLong_FromLongLong(i64 %9), !dbg !3848
  %10 = bitcast i64* %val to i8*, !dbg !3849
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3849
  ret %struct._object* %call, !dbg !3850
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !917, metadata !1086), !dbg !3851
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !918, metadata !1086), !dbg !3852
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !919, metadata !1086), !dbg !3853
  %0 = bitcast i64* %val to i8*, !dbg !3854
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3854
  call void @llvm.dbg.declare(metadata i64* %val, metadata !920, metadata !1086), !dbg !3855
  %1 = bitcast i64* %field to i8*, !dbg !3856
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3856
  call void @llvm.dbg.declare(metadata i64* %field, metadata !921, metadata !1086), !dbg !3857
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !3858, !tbaa !1082
  %call = call i32 @get_longlong(%struct._object* %2, i64* %val), !dbg !3860
  %cmp = icmp slt i32 %call, 0, !dbg !3861
  br i1 %cmp, label %if.then, label %if.end, !dbg !3862

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3863
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3863

if.end:                                           ; preds = %entry
  %3 = bitcast i64* %field to i8*, !dbg !3864
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !3865, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 1, i1 false), !dbg !3864
  %5 = load i64, i64* %field, align 8, !dbg !3866, !tbaa !3786
  %and = and i64 %5, 255, !dbg !3867
  %shl = shl i64 %and, 56, !dbg !3868
  %6 = load i64, i64* %field, align 8, !dbg !3869, !tbaa !3786
  %and1 = and i64 %6, 65280, !dbg !3870
  %shl2 = shl i64 %and1, 40, !dbg !3871
  %or = or i64 %shl, %shl2, !dbg !3872
  %7 = load i64, i64* %field, align 8, !dbg !3873, !tbaa !3786
  %and3 = and i64 %7, 16711680, !dbg !3874
  %shl4 = shl i64 %and3, 24, !dbg !3875
  %or5 = or i64 %or, %shl4, !dbg !3876
  %8 = load i64, i64* %field, align 8, !dbg !3877, !tbaa !3786
  %and6 = and i64 %8, 4278190080, !dbg !3878
  %shl7 = shl i64 %and6, 8, !dbg !3879
  %or8 = or i64 %or5, %shl7, !dbg !3880
  %9 = load i64, i64* %field, align 8, !dbg !3881, !tbaa !3786
  %and9 = and i64 %9, 1095216660480, !dbg !3882
  %shr = ashr i64 %and9, 8, !dbg !3883
  %or10 = or i64 %or8, %shr, !dbg !3884
  %10 = load i64, i64* %field, align 8, !dbg !3885, !tbaa !3786
  %and11 = and i64 %10, 280375465082880, !dbg !3886
  %shr12 = ashr i64 %and11, 24, !dbg !3887
  %or13 = or i64 %or10, %shr12, !dbg !3888
  %11 = load i64, i64* %field, align 8, !dbg !3889, !tbaa !3786
  %and14 = and i64 %11, 71776119061217280, !dbg !3890
  %shr15 = ashr i64 %and14, 40, !dbg !3891
  %or16 = or i64 %or13, %shr15, !dbg !3892
  %12 = load i64, i64* %field, align 8, !dbg !3893, !tbaa !3786
  %shr17 = ashr i64 %12, 56, !dbg !3894
  %and18 = and i64 %shr17, 255, !dbg !3895
  %or19 = or i64 %or16, %and18, !dbg !3896
  store i64 %or19, i64* %field, align 8, !dbg !3897, !tbaa !3786
  %13 = load i64, i64* %size.addr, align 8, !dbg !3898, !tbaa !1088
  %shr20 = ashr i64 %13, 16, !dbg !3899
  %tobool = icmp ne i64 %shr20, 0, !dbg !3899
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3900

cond.true:                                        ; preds = %if.end
  %14 = load i64, i64* %field, align 8, !dbg !3901, !tbaa !3786
  %15 = load i64, i64* %size.addr, align 8, !dbg !3903, !tbaa !1088
  %shr21 = ashr i64 %15, 16, !dbg !3904
  %sub = sub i64 %shr21, 1, !dbg !3905
  %shl22 = shl i64 1, %sub, !dbg !3906
  %sub23 = sub i64 %shl22, 1, !dbg !3907
  %shl24 = shl i64 %sub23, 1, !dbg !3908
  %add = add i64 %shl24, 1, !dbg !3909
  %16 = load i64, i64* %size.addr, align 8, !dbg !3910, !tbaa !1088
  %and25 = and i64 %16, 65535, !dbg !3911
  %shl26 = shl i64 %add, %and25, !dbg !3912
  %neg = xor i64 %shl26, -1, !dbg !3913
  %and27 = and i64 %14, %neg, !dbg !3914
  %17 = load i64, i64* %val, align 8, !dbg !3915, !tbaa !3786
  %18 = load i64, i64* %size.addr, align 8, !dbg !3916, !tbaa !1088
  %shr28 = ashr i64 %18, 16, !dbg !3917
  %sub29 = sub i64 %shr28, 1, !dbg !3918
  %shl30 = shl i64 1, %sub29, !dbg !3919
  %sub31 = sub i64 %shl30, 1, !dbg !3920
  %shl32 = shl i64 %sub31, 1, !dbg !3921
  %add33 = add i64 %shl32, 1, !dbg !3922
  %and34 = and i64 %17, %add33, !dbg !3923
  %19 = load i64, i64* %size.addr, align 8, !dbg !3924, !tbaa !1088
  %and35 = and i64 %19, 65535, !dbg !3925
  %shl36 = shl i64 %and34, %and35, !dbg !3926
  %or37 = or i64 %and27, %shl36, !dbg !3927
  br label %cond.end, !dbg !3900

cond.false:                                       ; preds = %if.end
  %20 = load i64, i64* %val, align 8, !dbg !3928, !tbaa !3786
  br label %cond.end, !dbg !3900

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or37, %cond.true ], [ %20, %cond.false ], !dbg !3900
  store i64 %cond, i64* %field, align 8, !dbg !3930, !tbaa !3786
  %21 = load i64, i64* %field, align 8, !dbg !3933, !tbaa !3786
  %and38 = and i64 %21, 255, !dbg !3934
  %shl39 = shl i64 %and38, 56, !dbg !3935
  %22 = load i64, i64* %field, align 8, !dbg !3936, !tbaa !3786
  %and40 = and i64 %22, 65280, !dbg !3937
  %shl41 = shl i64 %and40, 40, !dbg !3938
  %or42 = or i64 %shl39, %shl41, !dbg !3939
  %23 = load i64, i64* %field, align 8, !dbg !3940, !tbaa !3786
  %and43 = and i64 %23, 16711680, !dbg !3941
  %shl44 = shl i64 %and43, 24, !dbg !3942
  %or45 = or i64 %or42, %shl44, !dbg !3943
  %24 = load i64, i64* %field, align 8, !dbg !3944, !tbaa !3786
  %and46 = and i64 %24, 4278190080, !dbg !3945
  %shl47 = shl i64 %and46, 8, !dbg !3946
  %or48 = or i64 %or45, %shl47, !dbg !3947
  %25 = load i64, i64* %field, align 8, !dbg !3948, !tbaa !3786
  %and49 = and i64 %25, 1095216660480, !dbg !3949
  %shr50 = ashr i64 %and49, 8, !dbg !3950
  %or51 = or i64 %or48, %shr50, !dbg !3951
  %26 = load i64, i64* %field, align 8, !dbg !3952, !tbaa !3786
  %and52 = and i64 %26, 280375465082880, !dbg !3953
  %shr53 = ashr i64 %and52, 24, !dbg !3954
  %or54 = or i64 %or51, %shr53, !dbg !3955
  %27 = load i64, i64* %field, align 8, !dbg !3956, !tbaa !3786
  %and55 = and i64 %27, 71776119061217280, !dbg !3957
  %shr56 = ashr i64 %and55, 40, !dbg !3958
  %or57 = or i64 %or54, %shr56, !dbg !3959
  %28 = load i64, i64* %field, align 8, !dbg !3960, !tbaa !3786
  %shr58 = ashr i64 %28, 56, !dbg !3961
  %and59 = and i64 %shr58, 255, !dbg !3962
  %or60 = or i64 %or57, %and59, !dbg !3963
  store i64 %or60, i64* %field, align 8, !dbg !3964, !tbaa !3786
  %29 = load i8*, i8** %ptr.addr, align 8, !dbg !3965, !tbaa !1082
  %30 = bitcast i64* %field to i8*, !dbg !3966
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 8, i32 1, i1 false), !dbg !3966
  %31 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3967, !tbaa !1141
  %inc = add i64 %31, 1, !dbg !3967
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3967, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3968
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3968

cleanup:                                          ; preds = %cond.end, %if.then
  %32 = bitcast i64* %field to i8*, !dbg !3969
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !3969
  %33 = bitcast i64* %val to i8*, !dbg !3969
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !3969
  %34 = load %struct._object*, %struct._object** %retval, !dbg !3969
  ret %struct._object* %34, !dbg !3969
}

; Function Attrs: uwtable
define internal %struct._object* @q_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !924, metadata !1086), !dbg !3970
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !925, metadata !1086), !dbg !3971
  %0 = bitcast i64* %val to i8*, !dbg !3972
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3972
  call void @llvm.dbg.declare(metadata i64* %val, metadata !926, metadata !1086), !dbg !3973
  %1 = bitcast i64* %val to i8*, !dbg !3974
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !3975, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !3974
  %3 = load i64, i64* %val, align 8, !dbg !3976, !tbaa !3786
  %and = and i64 %3, 255, !dbg !3977
  %shl = shl i64 %and, 56, !dbg !3978
  %4 = load i64, i64* %val, align 8, !dbg !3979, !tbaa !3786
  %and1 = and i64 %4, 65280, !dbg !3980
  %shl2 = shl i64 %and1, 40, !dbg !3981
  %or = or i64 %shl, %shl2, !dbg !3982
  %5 = load i64, i64* %val, align 8, !dbg !3983, !tbaa !3786
  %and3 = and i64 %5, 16711680, !dbg !3984
  %shl4 = shl i64 %and3, 24, !dbg !3985
  %or5 = or i64 %or, %shl4, !dbg !3986
  %6 = load i64, i64* %val, align 8, !dbg !3987, !tbaa !3786
  %and6 = and i64 %6, 4278190080, !dbg !3988
  %shl7 = shl i64 %and6, 8, !dbg !3989
  %or8 = or i64 %or5, %shl7, !dbg !3990
  %7 = load i64, i64* %val, align 8, !dbg !3991, !tbaa !3786
  %and9 = and i64 %7, 1095216660480, !dbg !3992
  %shr = ashr i64 %and9, 8, !dbg !3993
  %or10 = or i64 %or8, %shr, !dbg !3994
  %8 = load i64, i64* %val, align 8, !dbg !3995, !tbaa !3786
  %and11 = and i64 %8, 280375465082880, !dbg !3996
  %shr12 = ashr i64 %and11, 24, !dbg !3997
  %or13 = or i64 %or10, %shr12, !dbg !3998
  %9 = load i64, i64* %val, align 8, !dbg !3999, !tbaa !3786
  %and14 = and i64 %9, 71776119061217280, !dbg !4000
  %shr15 = ashr i64 %and14, 40, !dbg !4001
  %or16 = or i64 %or13, %shr15, !dbg !4002
  %10 = load i64, i64* %val, align 8, !dbg !4003, !tbaa !3786
  %shr17 = ashr i64 %10, 56, !dbg !4004
  %and18 = and i64 %shr17, 255, !dbg !4005
  %or19 = or i64 %or16, %and18, !dbg !4006
  store i64 %or19, i64* %val, align 8, !dbg !4007, !tbaa !3786
  %11 = load i64, i64* %size.addr, align 8, !dbg !4008, !tbaa !1088
  %shr20 = ashr i64 %11, 16, !dbg !4010
  %tobool = icmp ne i64 %shr20, 0, !dbg !4010
  br i1 %tobool, label %if.then, label %if.end, !dbg !4011

if.then:                                          ; preds = %entry
  %12 = load i64, i64* %size.addr, align 8, !dbg !4012, !tbaa !1088
  %and21 = and i64 %12, 65535, !dbg !4015
  %sub = sub i64 64, %and21, !dbg !4016
  %13 = load i64, i64* %size.addr, align 8, !dbg !4017, !tbaa !1088
  %shr22 = ashr i64 %13, 16, !dbg !4018
  %sub23 = sub i64 %sub, %shr22, !dbg !4019
  %14 = load i64, i64* %val, align 8, !dbg !4020, !tbaa !3786
  %shl24 = shl i64 %14, %sub23, !dbg !4020
  store i64 %shl24, i64* %val, align 8, !dbg !4020, !tbaa !3786
  %15 = load i64, i64* %size.addr, align 8, !dbg !4021, !tbaa !1088
  %shr25 = ashr i64 %15, 16, !dbg !4022
  %sub26 = sub i64 64, %shr25, !dbg !4023
  %16 = load i64, i64* %val, align 8, !dbg !4024, !tbaa !3786
  %shr27 = ashr i64 %16, %sub26, !dbg !4024
  store i64 %shr27, i64* %val, align 8, !dbg !4024, !tbaa !3786
  br label %if.end, !dbg !4025

if.end:                                           ; preds = %if.then, %entry
  %17 = load i64, i64* %val, align 8, !dbg !4026, !tbaa !3786
  %call = call %struct._object* @PyLong_FromLongLong(i64 %17), !dbg !4027
  %18 = bitcast i64* %val to i8*, !dbg !4028
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !4028
  ret %struct._object* %call, !dbg !4029
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !929, metadata !1086), !dbg !4030
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !930, metadata !1086), !dbg !4031
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !931, metadata !1086), !dbg !4032
  %0 = bitcast i64* %val to i8*, !dbg !4033
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4033
  call void @llvm.dbg.declare(metadata i64* %val, metadata !932, metadata !1086), !dbg !4034
  %1 = bitcast i64* %x to i8*, !dbg !4035
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4035
  call void @llvm.dbg.declare(metadata i64* %x, metadata !933, metadata !1086), !dbg !4036
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4037, !tbaa !1082
  %call = call i32 @get_ulonglong(%struct._object* %2, i64* %val), !dbg !4039
  %cmp = icmp slt i32 %call, 0, !dbg !4040
  br i1 %cmp, label %if.then, label %if.end, !dbg !4041

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4042
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4042

if.end:                                           ; preds = %entry
  %3 = bitcast i64* %x to i8*, !dbg !4043
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !4044, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 1, i1 false), !dbg !4043
  %5 = load i64, i64* %size.addr, align 8, !dbg !4045, !tbaa !1088
  %shr = ashr i64 %5, 16, !dbg !4046
  %tobool = icmp ne i64 %shr, 0, !dbg !4046
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4047

cond.true:                                        ; preds = %if.end
  %6 = load i64, i64* %x, align 8, !dbg !4048, !tbaa !3786
  %7 = load i64, i64* %size.addr, align 8, !dbg !4050, !tbaa !1088
  %shr1 = ashr i64 %7, 16, !dbg !4051
  %sub = sub i64 %shr1, 1, !dbg !4052
  %shl = shl i64 1, %sub, !dbg !4053
  %sub2 = sub i64 %shl, 1, !dbg !4054
  %shl3 = shl i64 %sub2, 1, !dbg !4055
  %add = add i64 %shl3, 1, !dbg !4056
  %8 = load i64, i64* %size.addr, align 8, !dbg !4057, !tbaa !1088
  %and = and i64 %8, 65535, !dbg !4058
  %shl4 = shl i64 %add, %and, !dbg !4059
  %neg = xor i64 %shl4, -1, !dbg !4060
  %and5 = and i64 %6, %neg, !dbg !4061
  %9 = load i64, i64* %val, align 8, !dbg !4062, !tbaa !3786
  %10 = load i64, i64* %size.addr, align 8, !dbg !4063, !tbaa !1088
  %shr6 = ashr i64 %10, 16, !dbg !4064
  %sub7 = sub i64 %shr6, 1, !dbg !4065
  %shl8 = shl i64 1, %sub7, !dbg !4066
  %sub9 = sub i64 %shl8, 1, !dbg !4067
  %shl10 = shl i64 %sub9, 1, !dbg !4068
  %add11 = add i64 %shl10, 1, !dbg !4069
  %and12 = and i64 %9, %add11, !dbg !4070
  %11 = load i64, i64* %size.addr, align 8, !dbg !4071, !tbaa !1088
  %and13 = and i64 %11, 65535, !dbg !4072
  %shl14 = shl i64 %and12, %and13, !dbg !4073
  %or = or i64 %and5, %shl14, !dbg !4074
  br label %cond.end, !dbg !4047

cond.false:                                       ; preds = %if.end
  %12 = load i64, i64* %val, align 8, !dbg !4075, !tbaa !3786
  br label %cond.end, !dbg !4047

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or, %cond.true ], [ %12, %cond.false ], !dbg !4047
  store i64 %cond, i64* %x, align 8, !dbg !4077, !tbaa !3786
  %13 = load i8*, i8** %ptr.addr, align 8, !dbg !4080, !tbaa !1082
  %14 = bitcast i64* %x to i8*, !dbg !4081
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 1, i1 false), !dbg !4081
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4082, !tbaa !1141
  %inc = add i64 %15, 1, !dbg !4082
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4082, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4083
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4083

cleanup:                                          ; preds = %cond.end, %if.then
  %16 = bitcast i64* %x to i8*, !dbg !4084
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !4084
  %17 = bitcast i64* %val to i8*, !dbg !4084
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !4084
  %18 = load %struct._object*, %struct._object** %retval, !dbg !4084
  ret %struct._object* %18, !dbg !4084
}

; Function Attrs: uwtable
define internal %struct._object* @Q_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !944, metadata !1086), !dbg !4085
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !945, metadata !1086), !dbg !4086
  %0 = bitcast i64* %val to i8*, !dbg !4087
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4087
  call void @llvm.dbg.declare(metadata i64* %val, metadata !946, metadata !1086), !dbg !4088
  %1 = bitcast i64* %val to i8*, !dbg !4089
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !4090, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !4089
  %3 = load i64, i64* %size.addr, align 8, !dbg !4091, !tbaa !1088
  %shr = ashr i64 %3, 16, !dbg !4093
  %tobool = icmp ne i64 %shr, 0, !dbg !4093
  br i1 %tobool, label %if.then, label %if.end, !dbg !4094

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %size.addr, align 8, !dbg !4095, !tbaa !1088
  %and = and i64 %4, 65535, !dbg !4098
  %sub = sub i64 64, %and, !dbg !4099
  %5 = load i64, i64* %size.addr, align 8, !dbg !4100, !tbaa !1088
  %shr1 = ashr i64 %5, 16, !dbg !4101
  %sub2 = sub i64 %sub, %shr1, !dbg !4102
  %6 = load i64, i64* %val, align 8, !dbg !4103, !tbaa !3786
  %shl = shl i64 %6, %sub2, !dbg !4103
  store i64 %shl, i64* %val, align 8, !dbg !4103, !tbaa !3786
  %7 = load i64, i64* %size.addr, align 8, !dbg !4104, !tbaa !1088
  %shr3 = ashr i64 %7, 16, !dbg !4105
  %sub4 = sub i64 64, %shr3, !dbg !4106
  %8 = load i64, i64* %val, align 8, !dbg !4107, !tbaa !3786
  %shr5 = lshr i64 %8, %sub4, !dbg !4107
  store i64 %shr5, i64* %val, align 8, !dbg !4107, !tbaa !3786
  br label %if.end, !dbg !4108

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %val, align 8, !dbg !4109, !tbaa !3786
  %call = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %9), !dbg !4110
  %10 = bitcast i64* %val to i8*, !dbg !4111
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !4111
  ret %struct._object* %call, !dbg !4112
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !949, metadata !1086), !dbg !4113
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !950, metadata !1086), !dbg !4114
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !951, metadata !1086), !dbg !4115
  %0 = bitcast i64* %val to i8*, !dbg !4116
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4116
  call void @llvm.dbg.declare(metadata i64* %val, metadata !952, metadata !1086), !dbg !4117
  %1 = bitcast i64* %field to i8*, !dbg !4118
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4118
  call void @llvm.dbg.declare(metadata i64* %field, metadata !953, metadata !1086), !dbg !4119
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4120, !tbaa !1082
  %call = call i32 @get_ulonglong(%struct._object* %2, i64* %val), !dbg !4122
  %cmp = icmp slt i32 %call, 0, !dbg !4123
  br i1 %cmp, label %if.then, label %if.end, !dbg !4124

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4125
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4125

if.end:                                           ; preds = %entry
  %3 = bitcast i64* %field to i8*, !dbg !4126
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !4127, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 1, i1 false), !dbg !4126
  %5 = load i64, i64* %field, align 8, !dbg !4128, !tbaa !3786
  %and = and i64 %5, 255, !dbg !4129
  %shl = shl i64 %and, 56, !dbg !4130
  %6 = load i64, i64* %field, align 8, !dbg !4131, !tbaa !3786
  %and1 = and i64 %6, 65280, !dbg !4132
  %shl2 = shl i64 %and1, 40, !dbg !4133
  %or = or i64 %shl, %shl2, !dbg !4134
  %7 = load i64, i64* %field, align 8, !dbg !4135, !tbaa !3786
  %and3 = and i64 %7, 16711680, !dbg !4136
  %shl4 = shl i64 %and3, 24, !dbg !4137
  %or5 = or i64 %or, %shl4, !dbg !4138
  %8 = load i64, i64* %field, align 8, !dbg !4139, !tbaa !3786
  %and6 = and i64 %8, 4278190080, !dbg !4140
  %shl7 = shl i64 %and6, 8, !dbg !4141
  %or8 = or i64 %or5, %shl7, !dbg !4142
  %9 = load i64, i64* %field, align 8, !dbg !4143, !tbaa !3786
  %and9 = and i64 %9, 1095216660480, !dbg !4144
  %shr = lshr i64 %and9, 8, !dbg !4145
  %or10 = or i64 %or8, %shr, !dbg !4146
  %10 = load i64, i64* %field, align 8, !dbg !4147, !tbaa !3786
  %and11 = and i64 %10, 280375465082880, !dbg !4148
  %shr12 = lshr i64 %and11, 24, !dbg !4149
  %or13 = or i64 %or10, %shr12, !dbg !4150
  %11 = load i64, i64* %field, align 8, !dbg !4151, !tbaa !3786
  %and14 = and i64 %11, 71776119061217280, !dbg !4152
  %shr15 = lshr i64 %and14, 40, !dbg !4153
  %or16 = or i64 %or13, %shr15, !dbg !4154
  %12 = load i64, i64* %field, align 8, !dbg !4155, !tbaa !3786
  %shr17 = lshr i64 %12, 56, !dbg !4156
  %and18 = and i64 %shr17, 255, !dbg !4157
  %or19 = or i64 %or16, %and18, !dbg !4158
  store i64 %or19, i64* %field, align 8, !dbg !4159, !tbaa !3786
  %13 = load i64, i64* %size.addr, align 8, !dbg !4160, !tbaa !1088
  %shr20 = ashr i64 %13, 16, !dbg !4161
  %tobool = icmp ne i64 %shr20, 0, !dbg !4161
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4162

cond.true:                                        ; preds = %if.end
  %14 = load i64, i64* %field, align 8, !dbg !4163, !tbaa !3786
  %15 = load i64, i64* %size.addr, align 8, !dbg !4165, !tbaa !1088
  %shr21 = ashr i64 %15, 16, !dbg !4166
  %sub = sub i64 %shr21, 1, !dbg !4167
  %shl22 = shl i64 1, %sub, !dbg !4168
  %sub23 = sub i64 %shl22, 1, !dbg !4169
  %shl24 = shl i64 %sub23, 1, !dbg !4170
  %add = add i64 %shl24, 1, !dbg !4171
  %16 = load i64, i64* %size.addr, align 8, !dbg !4172, !tbaa !1088
  %and25 = and i64 %16, 65535, !dbg !4173
  %shl26 = shl i64 %add, %and25, !dbg !4174
  %neg = xor i64 %shl26, -1, !dbg !4175
  %and27 = and i64 %14, %neg, !dbg !4176
  %17 = load i64, i64* %val, align 8, !dbg !4177, !tbaa !3786
  %18 = load i64, i64* %size.addr, align 8, !dbg !4178, !tbaa !1088
  %shr28 = ashr i64 %18, 16, !dbg !4179
  %sub29 = sub i64 %shr28, 1, !dbg !4180
  %shl30 = shl i64 1, %sub29, !dbg !4181
  %sub31 = sub i64 %shl30, 1, !dbg !4182
  %shl32 = shl i64 %sub31, 1, !dbg !4183
  %add33 = add i64 %shl32, 1, !dbg !4184
  %and34 = and i64 %17, %add33, !dbg !4185
  %19 = load i64, i64* %size.addr, align 8, !dbg !4186, !tbaa !1088
  %and35 = and i64 %19, 65535, !dbg !4187
  %shl36 = shl i64 %and34, %and35, !dbg !4188
  %or37 = or i64 %and27, %shl36, !dbg !4189
  br label %cond.end, !dbg !4162

cond.false:                                       ; preds = %if.end
  %20 = load i64, i64* %val, align 8, !dbg !4190, !tbaa !3786
  br label %cond.end, !dbg !4162

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or37, %cond.true ], [ %20, %cond.false ], !dbg !4162
  store i64 %cond, i64* %field, align 8, !dbg !4192, !tbaa !3786
  %21 = load i64, i64* %field, align 8, !dbg !4195, !tbaa !3786
  %and38 = and i64 %21, 255, !dbg !4196
  %shl39 = shl i64 %and38, 56, !dbg !4197
  %22 = load i64, i64* %field, align 8, !dbg !4198, !tbaa !3786
  %and40 = and i64 %22, 65280, !dbg !4199
  %shl41 = shl i64 %and40, 40, !dbg !4200
  %or42 = or i64 %shl39, %shl41, !dbg !4201
  %23 = load i64, i64* %field, align 8, !dbg !4202, !tbaa !3786
  %and43 = and i64 %23, 16711680, !dbg !4203
  %shl44 = shl i64 %and43, 24, !dbg !4204
  %or45 = or i64 %or42, %shl44, !dbg !4205
  %24 = load i64, i64* %field, align 8, !dbg !4206, !tbaa !3786
  %and46 = and i64 %24, 4278190080, !dbg !4207
  %shl47 = shl i64 %and46, 8, !dbg !4208
  %or48 = or i64 %or45, %shl47, !dbg !4209
  %25 = load i64, i64* %field, align 8, !dbg !4210, !tbaa !3786
  %and49 = and i64 %25, 1095216660480, !dbg !4211
  %shr50 = lshr i64 %and49, 8, !dbg !4212
  %or51 = or i64 %or48, %shr50, !dbg !4213
  %26 = load i64, i64* %field, align 8, !dbg !4214, !tbaa !3786
  %and52 = and i64 %26, 280375465082880, !dbg !4215
  %shr53 = lshr i64 %and52, 24, !dbg !4216
  %or54 = or i64 %or51, %shr53, !dbg !4217
  %27 = load i64, i64* %field, align 8, !dbg !4218, !tbaa !3786
  %and55 = and i64 %27, 71776119061217280, !dbg !4219
  %shr56 = lshr i64 %and55, 40, !dbg !4220
  %or57 = or i64 %or54, %shr56, !dbg !4221
  %28 = load i64, i64* %field, align 8, !dbg !4222, !tbaa !3786
  %shr58 = lshr i64 %28, 56, !dbg !4223
  %and59 = and i64 %shr58, 255, !dbg !4224
  %or60 = or i64 %or57, %and59, !dbg !4225
  store i64 %or60, i64* %field, align 8, !dbg !4226, !tbaa !3786
  %29 = load i8*, i8** %ptr.addr, align 8, !dbg !4227, !tbaa !1082
  %30 = bitcast i64* %field to i8*, !dbg !4228
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 8, i32 1, i1 false), !dbg !4228
  %31 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4229, !tbaa !1141
  %inc = add i64 %31, 1, !dbg !4229
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4229, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4230
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4230

cleanup:                                          ; preds = %cond.end, %if.then
  %32 = bitcast i64* %field to i8*, !dbg !4231
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !4231
  %33 = bitcast i64* %val to i8*, !dbg !4231
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !4231
  %34 = load %struct._object*, %struct._object** %retval, !dbg !4231
  ret %struct._object* %34, !dbg !4231
}

; Function Attrs: uwtable
define internal %struct._object* @Q_get_sw(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !956, metadata !1086), !dbg !4232
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !957, metadata !1086), !dbg !4233
  %0 = bitcast i64* %val to i8*, !dbg !4234
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4234
  call void @llvm.dbg.declare(metadata i64* %val, metadata !958, metadata !1086), !dbg !4235
  %1 = bitcast i64* %val to i8*, !dbg !4236
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !4237, !tbaa !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false), !dbg !4236
  %3 = load i64, i64* %val, align 8, !dbg !4238, !tbaa !3786
  %and = and i64 %3, 255, !dbg !4239
  %shl = shl i64 %and, 56, !dbg !4240
  %4 = load i64, i64* %val, align 8, !dbg !4241, !tbaa !3786
  %and1 = and i64 %4, 65280, !dbg !4242
  %shl2 = shl i64 %and1, 40, !dbg !4243
  %or = or i64 %shl, %shl2, !dbg !4244
  %5 = load i64, i64* %val, align 8, !dbg !4245, !tbaa !3786
  %and3 = and i64 %5, 16711680, !dbg !4246
  %shl4 = shl i64 %and3, 24, !dbg !4247
  %or5 = or i64 %or, %shl4, !dbg !4248
  %6 = load i64, i64* %val, align 8, !dbg !4249, !tbaa !3786
  %and6 = and i64 %6, 4278190080, !dbg !4250
  %shl7 = shl i64 %and6, 8, !dbg !4251
  %or8 = or i64 %or5, %shl7, !dbg !4252
  %7 = load i64, i64* %val, align 8, !dbg !4253, !tbaa !3786
  %and9 = and i64 %7, 1095216660480, !dbg !4254
  %shr = lshr i64 %and9, 8, !dbg !4255
  %or10 = or i64 %or8, %shr, !dbg !4256
  %8 = load i64, i64* %val, align 8, !dbg !4257, !tbaa !3786
  %and11 = and i64 %8, 280375465082880, !dbg !4258
  %shr12 = lshr i64 %and11, 24, !dbg !4259
  %or13 = or i64 %or10, %shr12, !dbg !4260
  %9 = load i64, i64* %val, align 8, !dbg !4261, !tbaa !3786
  %and14 = and i64 %9, 71776119061217280, !dbg !4262
  %shr15 = lshr i64 %and14, 40, !dbg !4263
  %or16 = or i64 %or13, %shr15, !dbg !4264
  %10 = load i64, i64* %val, align 8, !dbg !4265, !tbaa !3786
  %shr17 = lshr i64 %10, 56, !dbg !4266
  %and18 = and i64 %shr17, 255, !dbg !4267
  %or19 = or i64 %or16, %and18, !dbg !4268
  store i64 %or19, i64* %val, align 8, !dbg !4269, !tbaa !3786
  %11 = load i64, i64* %size.addr, align 8, !dbg !4270, !tbaa !1088
  %shr20 = ashr i64 %11, 16, !dbg !4272
  %tobool = icmp ne i64 %shr20, 0, !dbg !4272
  br i1 %tobool, label %if.then, label %if.end, !dbg !4273

if.then:                                          ; preds = %entry
  %12 = load i64, i64* %size.addr, align 8, !dbg !4274, !tbaa !1088
  %and21 = and i64 %12, 65535, !dbg !4277
  %sub = sub i64 64, %and21, !dbg !4278
  %13 = load i64, i64* %size.addr, align 8, !dbg !4279, !tbaa !1088
  %shr22 = ashr i64 %13, 16, !dbg !4280
  %sub23 = sub i64 %sub, %shr22, !dbg !4281
  %14 = load i64, i64* %val, align 8, !dbg !4282, !tbaa !3786
  %shl24 = shl i64 %14, %sub23, !dbg !4282
  store i64 %shl24, i64* %val, align 8, !dbg !4282, !tbaa !3786
  %15 = load i64, i64* %size.addr, align 8, !dbg !4283, !tbaa !1088
  %shr25 = ashr i64 %15, 16, !dbg !4284
  %sub26 = sub i64 64, %shr25, !dbg !4285
  %16 = load i64, i64* %val, align 8, !dbg !4286, !tbaa !3786
  %shr27 = lshr i64 %16, %sub26, !dbg !4286
  store i64 %shr27, i64* %val, align 8, !dbg !4286, !tbaa !3786
  br label %if.end, !dbg !4287

if.end:                                           ; preds = %if.then, %entry
  %17 = load i64, i64* %val, align 8, !dbg !4288, !tbaa !3786
  %call = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %17), !dbg !4289
  %18 = bitcast i64* %val to i8*, !dbg !4290
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !4290
  ret %struct._object* %call, !dbg !4291
}

; Function Attrs: uwtable
define internal %struct._object* @P_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  %v = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !961, metadata !1086), !dbg !4292
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !962, metadata !1086), !dbg !4293
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !963, metadata !1086), !dbg !4294
  %0 = bitcast i8** %v to i8*, !dbg !4295
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4295
  call void @llvm.dbg.declare(metadata i8** %v, metadata !964, metadata !1086), !dbg !4296
  %1 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4297, !tbaa !1082
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct, !dbg !4299
  br i1 %cmp, label %if.then, label %if.end, !dbg !4300

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !4301, !tbaa !1082
  %3 = bitcast i8* %2 to i8**, !dbg !4303
  store i8* null, i8** %3, align 8, !dbg !4304, !tbaa !1082
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4305, !tbaa !1141
  %inc = add i64 %4, 1, !dbg !4305
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4305, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4306
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4306

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4307, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !4309
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4309, !tbaa !1150
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19, !dbg !4310
  %7 = load i64, i64* %tp_flags, align 8, !dbg !4310, !tbaa !1856
  %and = and i64 %7, 16777216, !dbg !4311
  %cmp1 = icmp ne i64 %and, 0, !dbg !4312
  br i1 %cmp1, label %if.end.7, label %land.lhs.true, !dbg !4313

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4314, !tbaa !1082
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !4316
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !4316, !tbaa !1150
  %tp_flags3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19, !dbg !4317
  %10 = load i64, i64* %tp_flags3, align 8, !dbg !4317, !tbaa !1856
  %and4 = and i64 %10, 16777216, !dbg !4318
  %cmp5 = icmp ne i64 %and4, 0, !dbg !4319
  br i1 %cmp5, label %if.end.7, label %if.then.6, !dbg !4320

if.then.6:                                        ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4321, !tbaa !1082
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0)), !dbg !4323
  store %struct._object* null, %struct._object** %retval, !dbg !4324
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4324

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %12 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4325, !tbaa !1082
  %call = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %12), !dbg !4326
  %13 = inttoptr i64 %call to i8*, !dbg !4327
  store i8* %13, i8** %v, align 8, !dbg !4328, !tbaa !1082
  %call8 = call %struct._object* @PyErr_Occurred(), !dbg !4329
  %tobool = icmp ne %struct._object* %call8, null, !dbg !4329
  br i1 %tobool, label %if.then.9, label %if.end.10, !dbg !4331

if.then.9:                                        ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !4332
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4332

if.end.10:                                        ; preds = %if.end.7
  %14 = load i8*, i8** %v, align 8, !dbg !4333, !tbaa !1082
  %15 = load i8*, i8** %ptr.addr, align 8, !dbg !4334, !tbaa !1082
  %16 = bitcast i8* %15 to i8**, !dbg !4335
  store i8* %14, i8** %16, align 8, !dbg !4336, !tbaa !1082
  %17 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4337, !tbaa !1141
  %inc11 = add i64 %17, 1, !dbg !4337
  store i64 %inc11, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4337, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4338
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4338

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then.6, %if.then
  %18 = bitcast i8** %v to i8*, !dbg !4339
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !4339
  %19 = load %struct._object*, %struct._object** %retval, !dbg !4339
  ret %struct._object* %19, !dbg !4339
}

; Function Attrs: uwtable
define internal %struct._object* @P_get(i8* %ptr, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !967, metadata !1086), !dbg !4340
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !968, metadata !1086), !dbg !4341
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4342, !tbaa !1082
  %1 = bitcast i8* %0 to i8**, !dbg !4344
  %2 = load i8*, i8** %1, align 8, !dbg !4345, !tbaa !1082
  %cmp = icmp eq i8* %2, null, !dbg !4346
  br i1 %cmp, label %if.then, label %if.end, !dbg !4347

if.then:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4348, !tbaa !1141
  %inc = add i64 %3, 1, !dbg !4348
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4348, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4350
  br label %return, !dbg !4350

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !4351, !tbaa !1082
  %5 = bitcast i8* %4 to i8**, !dbg !4352
  %6 = load i8*, i8** %5, align 8, !dbg !4353, !tbaa !1082
  %call = call %struct._object* @PyLong_FromVoidPtr(i8* %6), !dbg !4354
  store %struct._object* %call, %struct._object** %retval, !dbg !4355
  br label %return, !dbg !4355

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval, !dbg !4356
  ret %struct._object* %7, !dbg !4356
}

; Function Attrs: uwtable
define internal %struct._object* @z_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !971, metadata !1086), !dbg !4357
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !972, metadata !1086), !dbg !4358
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !973, metadata !1086), !dbg !4359
  %0 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4360, !tbaa !1082
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct, !dbg !4362
  br i1 %cmp, label %if.then, label %if.end, !dbg !4363

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !4364, !tbaa !1082
  %2 = bitcast i8* %1 to i8**, !dbg !4366
  store i8* null, i8** %2, align 8, !dbg !4367, !tbaa !1082
  %3 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4368, !tbaa !1082
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !4369
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !4370, !tbaa !1141
  %inc = add i64 %4, 1, !dbg !4370
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4370, !tbaa !1141
  %5 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4371, !tbaa !1082
  store %struct._object* %5, %struct._object** %retval, !dbg !4372
  br label %return, !dbg !4372

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4373, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !4375
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4375, !tbaa !1150
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19, !dbg !4376
  %8 = load i64, i64* %tp_flags, align 8, !dbg !4376, !tbaa !1856
  %and = and i64 %8, 134217728, !dbg !4377
  %cmp1 = icmp ne i64 %and, 0, !dbg !4378
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !4379

if.then.2:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4380, !tbaa !1082
  %call = call i8* @PyBytes_AsString(%struct._object* %9), !dbg !4382
  %10 = load i8*, i8** %ptr.addr, align 8, !dbg !4383, !tbaa !1082
  %11 = bitcast i8* %10 to i8**, !dbg !4384
  store i8* %call, i8** %11, align 8, !dbg !4385, !tbaa !1082
  %12 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4386, !tbaa !1082
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !4387
  %13 = load i64, i64* %ob_refcnt3, align 8, !dbg !4388, !tbaa !1141
  %inc4 = add i64 %13, 1, !dbg !4388
  store i64 %inc4, i64* %ob_refcnt3, align 8, !dbg !4388, !tbaa !1141
  %14 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4389, !tbaa !1082
  store %struct._object* %14, %struct._object** %retval, !dbg !4390
  br label %return, !dbg !4390

if.else:                                          ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4391, !tbaa !1082
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4393
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !4393, !tbaa !1150
  %tp_flags6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19, !dbg !4394
  %17 = load i64, i64* %tp_flags6, align 8, !dbg !4394, !tbaa !1856
  %and7 = and i64 %17, 16777216, !dbg !4395
  %cmp8 = icmp ne i64 %and7, 0, !dbg !4396
  br i1 %cmp8, label %if.then.9, label %if.end.12, !dbg !4397

if.then.9:                                        ; preds = %if.else
  %18 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4398, !tbaa !1082
  %call10 = call i64 @PyLong_AsUnsignedLongLongMask(%struct._object* %18), !dbg !4400
  %19 = inttoptr i64 %call10 to i8*, !dbg !4401
  %20 = load i8*, i8** %ptr.addr, align 8, !dbg !4402, !tbaa !1082
  %21 = bitcast i8* %20 to i8**, !dbg !4403
  store i8* %19, i8** %21, align 8, !dbg !4404, !tbaa !1082
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4405, !tbaa !1141
  %inc11 = add i64 %22, 1, !dbg !4405
  store i64 %inc11, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4405, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4406
  br label %return, !dbg !4406

if.end.12:                                        ; preds = %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4407, !tbaa !1082
  %24 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4408, !tbaa !1082
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !4409
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !4409, !tbaa !1150
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 1, !dbg !4410
  %26 = load i8*, i8** %tp_name, align 8, !dbg !4410, !tbaa !1639
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.19, i32 0, i32 0), i8* %26), !dbg !4411
  store %struct._object* null, %struct._object** %retval, !dbg !4412
  br label %return, !dbg !4412

return:                                           ; preds = %if.end.13, %if.then.9, %if.then.2, %if.then
  %27 = load %struct._object*, %struct._object** %retval, !dbg !4413
  ret %struct._object* %27, !dbg !4413
}

; Function Attrs: uwtable
define internal %struct._object* @z_get(i8* %ptr, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !976, metadata !1086), !dbg !4414
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !977, metadata !1086), !dbg !4415
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4416, !tbaa !1082
  %1 = bitcast i8* %0 to i8**, !dbg !4418
  %2 = load i8*, i8** %1, align 8, !dbg !4419, !tbaa !1082
  %tobool = icmp ne i8* %2, null, !dbg !4419
  br i1 %tobool, label %if.then, label %if.else, !dbg !4420

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !4421, !tbaa !1082
  %4 = bitcast i8* %3 to i8**, !dbg !4423
  %5 = load i8*, i8** %4, align 8, !dbg !4424, !tbaa !1082
  %6 = load i8*, i8** %ptr.addr, align 8, !dbg !4425, !tbaa !1082
  %7 = bitcast i8* %6 to i8**, !dbg !4426
  %8 = load i8*, i8** %7, align 8, !dbg !4427, !tbaa !1082
  %call = call i64 @strlen(i8* %8) #6, !dbg !4428
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* %5, i64 %call), !dbg !4429
  store %struct._object* %call1, %struct._object** %retval, !dbg !4430
  br label %return, !dbg !4430

if.else:                                          ; preds = %entry
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4431, !tbaa !1141
  %inc = add i64 %9, 1, !dbg !4431
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4431, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4433
  br label %return, !dbg !4433

return:                                           ; preds = %if.else, %if.then
  %10 = load %struct._object*, %struct._object** %retval, !dbg !4434
  ret %struct._object* %10, !dbg !4434
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !980, metadata !1086), !dbg !4435
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !981, metadata !1086), !dbg !4436
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !982, metadata !1086), !dbg !4437
  %0 = bitcast i64* %len to i8*, !dbg !4438
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4438
  call void @llvm.dbg.declare(metadata i64* %len, metadata !983, metadata !1086), !dbg !4439
  %1 = bitcast [2 x i32]* %chars to i8*, !dbg !4440
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4440
  call void @llvm.dbg.declare(metadata [2 x i32]* %chars, metadata !984, metadata !1086), !dbg !4441
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4442, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !4444
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4444, !tbaa !1150
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19, !dbg !4445
  %4 = load i64, i64* %tp_flags, align 8, !dbg !4445, !tbaa !1856
  %and = and i64 %4, 268435456, !dbg !4446
  %cmp = icmp ne i64 %and, 0, !dbg !4447
  br i1 %cmp, label %if.else, label %if.then, !dbg !4448

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4449, !tbaa !1082
  %6 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4451, !tbaa !1082
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !4452
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4452, !tbaa !1150
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1, !dbg !4453
  %8 = load i8*, i8** %tp_name, align 8, !dbg !4453, !tbaa !1639
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i32 0, i32 0), i8* %8), !dbg !4454
  store %struct._object* null, %struct._object** %retval, !dbg !4455
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4455

if.else:                                          ; preds = %entry
  %9 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4456, !tbaa !1082
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !4457
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !4458, !tbaa !1141
  %inc = add i64 %10, 1, !dbg !4458
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4458, !tbaa !1141
  br label %if.end

if.end:                                           ; preds = %if.else
  %11 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4459, !tbaa !1082
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %chars, i32 0, i32 0, !dbg !4460
  %call2 = call i64 @PyUnicode_AsWideChar(%struct._object* %11, i32* %arraydecay, i64 2), !dbg !4461
  store i64 %call2, i64* %len, align 8, !dbg !4462, !tbaa !1088
  %12 = load i64, i64* %len, align 8, !dbg !4463, !tbaa !1088
  %cmp3 = icmp ne i64 %12, 1, !dbg !4464
  br i1 %cmp3, label %if.then.4, label %if.end.11, !dbg !4465

if.then.4:                                        ; preds = %if.end
  br label %do.body, !dbg !4466

do.body:                                          ; preds = %if.then.4
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4467
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !4467
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !988, metadata !1086), !dbg !4469
  %14 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4470, !tbaa !1082
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !4469, !tbaa !1082
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4471, !tbaa !1082
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !4473
  %16 = load i64, i64* %ob_refcnt5, align 8, !dbg !4474, !tbaa !1141
  %dec = add i64 %16, -1, !dbg !4474
  store i64 %dec, i64* %ob_refcnt5, align 8, !dbg !4474, !tbaa !1141
  %cmp6 = icmp ne i64 %dec, 0, !dbg !4475
  br i1 %cmp6, label %if.then.7, label %if.else.8, !dbg !4476

if.then.7:                                        ; preds = %do.body
  br label %if.end.10, !dbg !4477

if.else.8:                                        ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4479, !tbaa !1082
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !4481
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !4481, !tbaa !1150
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !4482
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4482, !tbaa !1152
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4483, !tbaa !1082
  call void %19(%struct._object* %20), !dbg !4484
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4485
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !4485
  br label %do.cond, !dbg !4487

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !4488

do.end:                                           ; preds = %do.cond
  %22 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4490, !tbaa !1082
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0)), !dbg !4491
  store %struct._object* null, %struct._object** %retval, !dbg !4492
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4492

if.end.11:                                        ; preds = %if.end
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %chars, i32 0, i64 0, !dbg !4493
  %23 = load i32, i32* %arrayidx, align 4, !dbg !4493, !tbaa !1092
  %24 = load i8*, i8** %ptr.addr, align 8, !dbg !4494, !tbaa !1082
  %25 = bitcast i8* %24 to i32*, !dbg !4495
  store i32 %23, i32* %25, align 4, !dbg !4496, !tbaa !1092
  br label %do.body.12, !dbg !4497

do.body.12:                                       ; preds = %if.end.11
  %26 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !4498
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !4498
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp13, metadata !992, metadata !1086), !dbg !4500
  %27 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4501, !tbaa !1082
  store %struct._object* %27, %struct._object** %_py_decref_tmp13, align 8, !dbg !4500, !tbaa !1082
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !4502, !tbaa !1082
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !4504
  %29 = load i64, i64* %ob_refcnt14, align 8, !dbg !4505, !tbaa !1141
  %dec15 = add i64 %29, -1, !dbg !4505
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !4505, !tbaa !1141
  %cmp16 = icmp ne i64 %dec15, 0, !dbg !4506
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !4507

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21, !dbg !4508

if.else.18:                                       ; preds = %do.body.12
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !4510, !tbaa !1082
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !4512
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !4512, !tbaa !1150
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !4513
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !4513, !tbaa !1152
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !4514, !tbaa !1082
  call void %32(%struct._object* %33), !dbg !4515
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  %34 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !4516
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !4516
  br label %do.cond.22, !dbg !4518

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !4519

do.end.23:                                        ; preds = %do.cond.22
  %35 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4521, !tbaa !1141
  %inc24 = add i64 %35, 1, !dbg !4521
  store i64 %inc24, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4521, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4522
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4522

cleanup:                                          ; preds = %do.end.23, %do.end, %if.then
  %36 = bitcast [2 x i32]* %chars to i8*, !dbg !4523
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !4523
  %37 = bitcast i64* %len to i8*, !dbg !4523
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !4523
  %38 = load %struct._object*, %struct._object** %retval, !dbg !4523
  ret %struct._object* %38, !dbg !4523
}

; Function Attrs: uwtable
define internal %struct._object* @u_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !996, metadata !1086), !dbg !4524
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !997, metadata !1086), !dbg !4525
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4526, !tbaa !1082
  %1 = bitcast i8* %0 to i32*, !dbg !4527
  %call = call %struct._object* @PyUnicode_FromWideChar(i32* %1, i64 1), !dbg !4528
  ret %struct._object* %call, !dbg !4529
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1000, metadata !1086), !dbg !4530
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !1001, metadata !1086), !dbg !4531
  store i64 %length, i64* %length.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !1002, metadata !1086), !dbg !4532
  %0 = bitcast i32** %wstr to i8*, !dbg !4533
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4533
  call void @llvm.dbg.declare(metadata i32** %wstr, metadata !1003, metadata !1086), !dbg !4534
  %1 = bitcast i64* %size to i8*, !dbg !4535
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4535
  call void @llvm.dbg.declare(metadata i64* %size, metadata !1007, metadata !1086), !dbg !4536
  %2 = load i64, i64* %length.addr, align 8, !dbg !4537, !tbaa !1088
  %div = udiv i64 %2, 4, !dbg !4537
  store i64 %div, i64* %length.addr, align 8, !dbg !4537, !tbaa !1088
  %3 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4538, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !4540
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4540, !tbaa !1150
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !4541
  %5 = load i64, i64* %tp_flags, align 8, !dbg !4541, !tbaa !1856
  %and = and i64 %5, 268435456, !dbg !4542
  %cmp = icmp ne i64 %and, 0, !dbg !4543
  br i1 %cmp, label %if.else, label %if.then, !dbg !4544

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4545, !tbaa !1082
  %7 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4547, !tbaa !1082
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !4548
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4548, !tbaa !1150
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 1, !dbg !4549
  %9 = load i8*, i8** %tp_name, align 8, !dbg !4549, !tbaa !1639
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i32 0, i32 0), i8* %9), !dbg !4550
  store %struct._object* null, %struct._object** %retval, !dbg !4551
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4551

if.else:                                          ; preds = %entry
  %10 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4552, !tbaa !1082
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !4553
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !4554, !tbaa !1141
  %inc = add i64 %11, 1, !dbg !4554
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4554, !tbaa !1141
  br label %if.end

if.end:                                           ; preds = %if.else
  %12 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4555, !tbaa !1082
  %call2 = call i32* @PyUnicode_AsUnicodeAndSize(%struct._object* %12, i64* %size), !dbg !4556
  store i32* %call2, i32** %wstr, align 8, !dbg !4557, !tbaa !1082
  %13 = load i32*, i32** %wstr, align 8, !dbg !4558, !tbaa !1082
  %cmp3 = icmp eq i32* %13, null, !dbg !4560
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !4561

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !4562
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4562

if.end.5:                                         ; preds = %if.end
  %14 = load i64, i64* %size, align 8, !dbg !4563, !tbaa !1088
  %15 = load i64, i64* %length.addr, align 8, !dbg !4564, !tbaa !1088
  %cmp6 = icmp sgt i64 %14, %15, !dbg !4565
  br i1 %cmp6, label %if.then.7, label %if.else.15, !dbg !4566

if.then.7:                                        ; preds = %if.end.5
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4567, !tbaa !1082
  %17 = load i64, i64* %size, align 8, !dbg !4568, !tbaa !1088
  %18 = load i64, i64* %length.addr, align 8, !dbg !4569, !tbaa !1088
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i64 %17, i64 %18), !dbg !4570
  br label %do.body, !dbg !4571

do.body:                                          ; preds = %if.then.7
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4572
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !4572
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1008, metadata !1086), !dbg !4574
  %20 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4575, !tbaa !1082
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8, !dbg !4574, !tbaa !1082
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4576, !tbaa !1082
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !4578
  %22 = load i64, i64* %ob_refcnt9, align 8, !dbg !4579, !tbaa !1141
  %dec = add i64 %22, -1, !dbg !4579
  store i64 %dec, i64* %ob_refcnt9, align 8, !dbg !4579, !tbaa !1141
  %cmp10 = icmp ne i64 %dec, 0, !dbg !4580
  br i1 %cmp10, label %if.then.11, label %if.else.12, !dbg !4581

if.then.11:                                       ; preds = %do.body
  br label %if.end.14, !dbg !4582

if.else.12:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4584, !tbaa !1082
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !4586
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8, !dbg !4586, !tbaa !1150
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !4587
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4587, !tbaa !1152
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4588, !tbaa !1082
  call void %25(%struct._object* %26), !dbg !4589
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4590
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !4590
  br label %do.cond, !dbg !4592

do.cond:                                          ; preds = %if.end.14
  br label %do.end, !dbg !4593

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !4595
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4595

if.else.15:                                       ; preds = %if.end.5
  %28 = load i64, i64* %size, align 8, !dbg !4596, !tbaa !1088
  %29 = load i64, i64* %length.addr, align 8, !dbg !4598, !tbaa !1088
  %sub = sub i64 %29, 1, !dbg !4599
  %cmp16 = icmp slt i64 %28, %sub, !dbg !4600
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !4601

if.then.17:                                       ; preds = %if.else.15
  %30 = load i64, i64* %size, align 8, !dbg !4602, !tbaa !1088
  %add = add i64 %30, 1, !dbg !4602
  store i64 %add, i64* %size, align 8, !dbg !4602, !tbaa !1088
  br label %if.end.18, !dbg !4603

if.end.18:                                        ; preds = %if.then.17, %if.else.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  %31 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4604, !tbaa !1082
  %32 = load i8*, i8** %ptr.addr, align 8, !dbg !4606, !tbaa !1082
  %33 = bitcast i8* %32 to i32*, !dbg !4607
  %34 = load i64, i64* %size, align 8, !dbg !4608, !tbaa !1088
  %call20 = call i64 @PyUnicode_AsWideChar(%struct._object* %31, i32* %33, i64 %34), !dbg !4609
  %cmp21 = icmp eq i64 %call20, -1, !dbg !4610
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !4611

if.then.22:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval, !dbg !4612
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4612

if.end.23:                                        ; preds = %if.end.19
  %35 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4614, !tbaa !1082
  store %struct._object* %35, %struct._object** %retval, !dbg !4615
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4615

cleanup:                                          ; preds = %if.end.23, %if.then.22, %do.end, %if.then.4, %if.then
  %36 = bitcast i64* %size to i8*, !dbg !4616
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !4616
  %37 = bitcast i32** %wstr to i8*, !dbg !4616
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !4616
  %38 = load %struct._object*, %struct._object** %retval, !dbg !4616
  ret %struct._object* %38, !dbg !4616
}

; Function Attrs: uwtable
define internal %struct._object* @U_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %p = alloca i32*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1014, metadata !1086), !dbg !4617
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1015, metadata !1086), !dbg !4618
  %0 = bitcast i64* %len to i8*, !dbg !4619
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4619
  call void @llvm.dbg.declare(metadata i64* %len, metadata !1016, metadata !1086), !dbg !4620
  %1 = bitcast i32** %p to i8*, !dbg !4621
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4621
  call void @llvm.dbg.declare(metadata i32** %p, metadata !1017, metadata !1086), !dbg !4622
  %2 = load i64, i64* %size.addr, align 8, !dbg !4623, !tbaa !1088
  %div = udiv i64 %2, 4, !dbg !4623
  store i64 %div, i64* %size.addr, align 8, !dbg !4623, !tbaa !1088
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !4624, !tbaa !1082
  %4 = bitcast i8* %3 to i32*, !dbg !4625
  store i32* %4, i32** %p, align 8, !dbg !4626, !tbaa !1082
  store i64 0, i64* %len, align 8, !dbg !4627, !tbaa !1088
  br label %for.cond, !dbg !4629

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %len, align 8, !dbg !4630, !tbaa !1088
  %6 = load i64, i64* %size.addr, align 8, !dbg !4634, !tbaa !1088
  %cmp = icmp slt i64 %5, %6, !dbg !4635
  br i1 %cmp, label %for.body, label %for.end, !dbg !4636

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %len, align 8, !dbg !4637, !tbaa !1088
  %8 = load i32*, i32** %p, align 8, !dbg !4640, !tbaa !1082
  %arrayidx = getelementptr i32, i32* %8, i64 %7, !dbg !4640
  %9 = load i32, i32* %arrayidx, align 4, !dbg !4640, !tbaa !1092
  %tobool = icmp ne i32 %9, 0, !dbg !4640
  br i1 %tobool, label %if.end, label %if.then, !dbg !4641

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !4642

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4643

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %len, align 8, !dbg !4644, !tbaa !1088
  %inc = add i64 %10, 1, !dbg !4644
  store i64 %inc, i64* %len, align 8, !dbg !4644, !tbaa !1088
  br label %for.cond, !dbg !4645

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load i8*, i8** %ptr.addr, align 8, !dbg !4646, !tbaa !1082
  %12 = bitcast i8* %11 to i32*, !dbg !4647
  %13 = load i64, i64* %len, align 8, !dbg !4648, !tbaa !1088
  %call = call %struct._object* @PyUnicode_FromWideChar(i32* %12, i64 %13), !dbg !4649
  %14 = bitcast i32** %p to i8*, !dbg !4650
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !4650
  %15 = bitcast i64* %len to i8*, !dbg !4650
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !4650
  ret %struct._object* %call, !dbg !4651
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
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1020, metadata !1086), !dbg !4652
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !1021, metadata !1086), !dbg !4653
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1022, metadata !1086), !dbg !4654
  %0 = bitcast %struct._object** %keep to i8*, !dbg !4655
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4655
  call void @llvm.dbg.declare(metadata %struct._object** %keep, metadata !1023, metadata !1086), !dbg !4656
  %1 = bitcast i32** %buffer to i8*, !dbg !4657
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4657
  call void @llvm.dbg.declare(metadata i32** %buffer, metadata !1024, metadata !1086), !dbg !4658
  %2 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4659, !tbaa !1082
  %cmp = icmp eq %struct._object* %2, @_Py_NoneStruct, !dbg !4661
  br i1 %cmp, label %if.then, label %if.end, !dbg !4662

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !4663, !tbaa !1082
  %4 = bitcast i8* %3 to i32**, !dbg !4665
  store i32* null, i32** %4, align 8, !dbg !4666, !tbaa !1082
  %5 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4667, !tbaa !1082
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !4668
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !4669, !tbaa !1141
  %inc = add i64 %6, 1, !dbg !4669
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4669, !tbaa !1141
  %7 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4670, !tbaa !1082
  store %struct._object* %7, %struct._object** %retval, !dbg !4671
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4671

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4672, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !4674
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4674, !tbaa !1150
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19, !dbg !4675
  %10 = load i64, i64* %tp_flags, align 8, !dbg !4675, !tbaa !1856
  %and = and i64 %10, 16777216, !dbg !4676
  %cmp1 = icmp ne i64 %and, 0, !dbg !4677
  br i1 %cmp1, label %if.then.6, label %lor.lhs.false, !dbg !4678

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4679, !tbaa !1082
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !4681
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !4681, !tbaa !1150
  %tp_flags3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19, !dbg !4682
  %13 = load i64, i64* %tp_flags3, align 8, !dbg !4682, !tbaa !1856
  %and4 = and i64 %13, 16777216, !dbg !4683
  %cmp5 = icmp ne i64 %and4, 0, !dbg !4684
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !4685

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %14 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4686, !tbaa !1082
  %call = call i64 @PyLong_AsUnsignedLongLongMask(%struct._object* %14), !dbg !4688
  %15 = inttoptr i64 %call to i32*, !dbg !4689
  %16 = load i8*, i8** %ptr.addr, align 8, !dbg !4690, !tbaa !1082
  %17 = bitcast i8* %16 to i32**, !dbg !4691
  store i32* %15, i32** %17, align 8, !dbg !4692, !tbaa !1082
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4693, !tbaa !1141
  %inc7 = add i64 %18, 1, !dbg !4693
  store i64 %inc7, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4693, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4694
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4694

if.end.8:                                         ; preds = %lor.lhs.false
  %19 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4695, !tbaa !1082
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !4697
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !4697, !tbaa !1150
  %tp_flags10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 19, !dbg !4698
  %21 = load i64, i64* %tp_flags10, align 8, !dbg !4698, !tbaa !1856
  %and11 = and i64 %21, 268435456, !dbg !4699
  %cmp12 = icmp ne i64 %and11, 0, !dbg !4700
  br i1 %cmp12, label %if.end.16, label %if.then.13, !dbg !4701

if.then.13:                                       ; preds = %if.end.8
  %22 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4702, !tbaa !1082
  %23 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4704, !tbaa !1082
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !4705
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !4705, !tbaa !1150
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 1, !dbg !4706
  %25 = load i8*, i8** %tp_name, align 8, !dbg !4706, !tbaa !1639
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %22, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.22, i32 0, i32 0), i8* %25), !dbg !4707
  store %struct._object* null, %struct._object** %retval, !dbg !4708
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4708

if.end.16:                                        ; preds = %if.end.8
  %26 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4709, !tbaa !1082
  %call17 = call i32* @PyUnicode_AsWideCharString(%struct._object* %26, i64* null), !dbg !4710
  store i32* %call17, i32** %buffer, align 8, !dbg !4711, !tbaa !1082
  %27 = load i32*, i32** %buffer, align 8, !dbg !4712, !tbaa !1082
  %tobool = icmp ne i32* %27, null, !dbg !4712
  br i1 %tobool, label %if.end.19, label %if.then.18, !dbg !4714

if.then.18:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval, !dbg !4715
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4715

if.end.19:                                        ; preds = %if.end.16
  %28 = load i32*, i32** %buffer, align 8, !dbg !4716, !tbaa !1082
  %29 = bitcast i32* %28 to i8*, !dbg !4716
  %call20 = call %struct._object* @PyCapsule_New(i8* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), void (%struct._object*)* @pymem_destructor), !dbg !4717
  store %struct._object* %call20, %struct._object** %keep, align 8, !dbg !4718, !tbaa !1082
  %30 = load %struct._object*, %struct._object** %keep, align 8, !dbg !4719, !tbaa !1082
  %tobool21 = icmp ne %struct._object* %30, null, !dbg !4719
  br i1 %tobool21, label %if.end.23, label %if.then.22, !dbg !4721

if.then.22:                                       ; preds = %if.end.19
  %31 = load i32*, i32** %buffer, align 8, !dbg !4722, !tbaa !1082
  %32 = bitcast i32* %31 to i8*, !dbg !4722
  call void @PyMem_Free(i8* %32), !dbg !4724
  store %struct._object* null, %struct._object** %retval, !dbg !4725
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4725

if.end.23:                                        ; preds = %if.end.19
  %33 = load i32*, i32** %buffer, align 8, !dbg !4726, !tbaa !1082
  %34 = load i8*, i8** %ptr.addr, align 8, !dbg !4727, !tbaa !1082
  %35 = bitcast i8* %34 to i32**, !dbg !4728
  store i32* %33, i32** %35, align 8, !dbg !4729, !tbaa !1082
  %36 = load %struct._object*, %struct._object** %keep, align 8, !dbg !4730, !tbaa !1082
  store %struct._object* %36, %struct._object** %retval, !dbg !4731
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4731

cleanup:                                          ; preds = %if.end.23, %if.then.22, %if.then.18, %if.then.13, %if.then.6, %if.then
  %37 = bitcast i32** %buffer to i8*, !dbg !4732
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !4732
  %38 = bitcast %struct._object** %keep to i8*, !dbg !4732
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !4732
  %39 = load %struct._object*, %struct._object** %retval, !dbg !4732
  ret %struct._object* %39, !dbg !4732
}

; Function Attrs: uwtable
define internal %struct._object* @Z_get(i8* %ptr, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %p = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1031, metadata !1086), !dbg !4733
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1032, metadata !1086), !dbg !4734
  %0 = bitcast i32** %p to i8*, !dbg !4735
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4735
  call void @llvm.dbg.declare(metadata i32** %p, metadata !1033, metadata !1086), !dbg !4736
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !4737, !tbaa !1082
  %2 = bitcast i8* %1 to i32**, !dbg !4738
  %3 = load i32*, i32** %2, align 8, !dbg !4739, !tbaa !1082
  store i32* %3, i32** %p, align 8, !dbg !4740, !tbaa !1082
  %4 = load i32*, i32** %p, align 8, !dbg !4741, !tbaa !1082
  %tobool = icmp ne i32* %4, null, !dbg !4741
  br i1 %tobool, label %if.then, label %if.else, !dbg !4743

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %p, align 8, !dbg !4744, !tbaa !1082
  %6 = load i32*, i32** %p, align 8, !dbg !4746, !tbaa !1082
  %call = call i64 @wcslen(i32* %6) #6, !dbg !4747
  %call1 = call %struct._object* @PyUnicode_FromWideChar(i32* %5, i64 %call), !dbg !4748
  store %struct._object* %call1, %struct._object** %retval, !dbg !4749
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4749

if.else:                                          ; preds = %entry
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4750, !tbaa !1141
  %inc = add i64 %7, 1, !dbg !4750
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4750, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4752
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4752

cleanup:                                          ; preds = %if.else, %if.then
  %8 = bitcast i32** %p to i8*, !dbg !4753
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !4753
  %9 = load %struct._object*, %struct._object** %retval, !dbg !4753
  ret %struct._object* %9, !dbg !4753
}

; Function Attrs: uwtable
define internal %struct._object* @bool_set(i8* %ptr, %struct._object* %value, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1036, metadata !1086), !dbg !4754
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !1037, metadata !1086), !dbg !4755
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1038, metadata !1086), !dbg !4756
  %0 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4757, !tbaa !1082
  %call = call i32 @PyObject_IsTrue(%struct._object* %0), !dbg !4758
  switch i32 %call, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.1
  ], !dbg !4759

sw.bb:                                            ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4760
  br label %return, !dbg !4760

sw.bb.1:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !4762, !tbaa !1082
  store i8 0, i8* %1, align 1, !dbg !4763, !tbaa !4764
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4766, !tbaa !1141
  %inc = add i64 %2, 1, !dbg !4766
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4766, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4767
  br label %return, !dbg !4767

sw.default:                                       ; preds = %entry
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !4768, !tbaa !1082
  store i8 1, i8* %3, align 1, !dbg !4769, !tbaa !4764
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4770, !tbaa !1141
  %inc2 = add i64 %4, 1, !dbg !4770
  store i64 %inc2, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4770, !tbaa !1141
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4771
  br label %return, !dbg !4771

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb
  %5 = load %struct._object*, %struct._object** %retval, !dbg !4772
  ret %struct._object* %5, !dbg !4772
}

; Function Attrs: uwtable
define internal %struct._object* @bool_get(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1041, metadata !1086), !dbg !4773
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1042, metadata !1086), !dbg !4774
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4775, !tbaa !1082
  %1 = load i8, i8* %0, align 1, !dbg !4776, !tbaa !4764, !range !4777
  %tobool = trunc i8 %1 to i1, !dbg !4776
  %conv = zext i1 %tobool to i64, !dbg !4778
  %call = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !4779
  ret %struct._object* %call, !dbg !4780
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @O_set(i8* %ptr, %struct._object* %value, i64 %size) #4 {
entry:
  %ptr.addr = alloca i8*, align 8
  %value.addr = alloca %struct._object*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1045, metadata !1086), !dbg !4781
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !1046, metadata !1086), !dbg !4782
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1047, metadata !1086), !dbg !4783
  %0 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4784, !tbaa !1082
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !4785, !tbaa !1082
  %2 = bitcast i8* %1 to %struct._object**, !dbg !4786
  store %struct._object* %0, %struct._object** %2, align 8, !dbg !4787, !tbaa !1082
  %3 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4788, !tbaa !1082
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !4789
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !4790, !tbaa !1141
  %inc = add i64 %4, 1, !dbg !4790
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4790, !tbaa !1141
  %5 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !4791, !tbaa !1082
  ret %struct._object* %5, !dbg !4792
}

; Function Attrs: uwtable
define internal %struct._object* @O_get(i8* %ptr, i64 %size) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ob = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1050, metadata !1086), !dbg !4793
  store i64 %size, i64* %size.addr, align 8, !tbaa !1088
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1051, metadata !1086), !dbg !4794
  %0 = bitcast %struct._object** %ob to i8*, !dbg !4795
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4795
  call void @llvm.dbg.declare(metadata %struct._object** %ob, metadata !1052, metadata !1086), !dbg !4796
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !4797, !tbaa !1082
  %2 = bitcast i8* %1 to %struct._object**, !dbg !4798
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !4799, !tbaa !1082
  store %struct._object* %3, %struct._object** %ob, align 8, !dbg !4796, !tbaa !1082
  %4 = load %struct._object*, %struct._object** %ob, align 8, !dbg !4800, !tbaa !1082
  %cmp = icmp eq %struct._object* %4, null, !dbg !4802
  br i1 %cmp, label %if.then, label %if.end.2, !dbg !4803

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_Occurred(), !dbg !4804
  %tobool = icmp ne %struct._object* %call, null, !dbg !4804
  br i1 %tobool, label %if.end, label %if.then.1, !dbg !4807

if.then.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4808, !tbaa !1082
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0)), !dbg !4809
  br label %if.end, !dbg !4809

if.end:                                           ; preds = %if.then.1, %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4810
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4810

if.end.2:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %ob, align 8, !dbg !4811, !tbaa !1082
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !4812
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !4813, !tbaa !1141
  %inc = add i64 %7, 1, !dbg !4813
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4813, !tbaa !1141
  %8 = load %struct._object*, %struct._object** %ob, align 8, !dbg !4814, !tbaa !1082
  store %struct._object* %8, %struct._object** %retval, !dbg !4815
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4815

cleanup:                                          ; preds = %if.end.2, %if.end
  %9 = bitcast %struct._object** %ob to i8*, !dbg !4816
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !4816
  %10 = load %struct._object*, %struct._object** %retval, !dbg !4816
  ret %struct._object* %10, !dbg !4816
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

; Function Attrs: uwtable
define internal i32 @get_long(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !659, metadata !1086), !dbg !4817
  store i64* %p, i64** %p.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !660, metadata !1086), !dbg !4818
  %0 = bitcast i64* %x to i8*, !dbg !4819
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4819
  call void @llvm.dbg.declare(metadata i64* %x, metadata !661, metadata !1086), !dbg !4820
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4821, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !4823
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4823, !tbaa !1150
  %cmp = icmp eq %struct._typeobject* %2, @PyFloat_Type, !dbg !4824
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4825

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4826, !tbaa !1082
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !4828
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4828, !tbaa !1150
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* @PyFloat_Type), !dbg !4829
  %tobool = icmp ne i32 %call, 0, !dbg !4829
  br i1 %tobool, label %if.then, label %if.end, !dbg !4830

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4831, !tbaa !1082
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0)), !dbg !4833
  store i32 -1, i32* %retval, !dbg !4834
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4834

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4835, !tbaa !1082
  %call2 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %6), !dbg !4836
  store i64 %call2, i64* %x, align 8, !dbg !4837, !tbaa !1088
  %7 = load i64, i64* %x, align 8, !dbg !4838, !tbaa !1088
  %cmp3 = icmp eq i64 %7, -1, !dbg !4840
  br i1 %cmp3, label %land.lhs.true, label %if.end.7, !dbg !4841

land.lhs.true:                                    ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !4842
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !4842
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !4844

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !4845
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4845

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %8 = load i64, i64* %x, align 8, !dbg !4846, !tbaa !1088
  %9 = load i64*, i64** %p.addr, align 8, !dbg !4847, !tbaa !1082
  store i64 %8, i64* %9, align 8, !dbg !4848, !tbaa !1088
  store i32 0, i32* %retval, !dbg !4849
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4849

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %10 = bitcast i64* %x to i8*, !dbg !4850
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !4850
  %11 = load i32, i32* %retval, !dbg !4850
  ret i32 %11, !dbg !4850
}

declare i64 @PyLong_AsUnsignedLongMask(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyLong_FromLong(i64) #3

; Function Attrs: uwtable
define internal i32 @get_ulong(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !678, metadata !1086), !dbg !4851
  store i64* %p, i64** %p.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !679, metadata !1086), !dbg !4852
  %0 = bitcast i64* %x to i8*, !dbg !4853
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4853
  call void @llvm.dbg.declare(metadata i64* %x, metadata !680, metadata !1086), !dbg !4854
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4855, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !4857
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4857, !tbaa !1150
  %cmp = icmp eq %struct._typeobject* %2, @PyFloat_Type, !dbg !4858
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4859

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4860, !tbaa !1082
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !4862
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4862, !tbaa !1150
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* @PyFloat_Type), !dbg !4863
  %tobool = icmp ne i32 %call, 0, !dbg !4863
  br i1 %tobool, label %if.then, label %if.end, !dbg !4864

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4865, !tbaa !1082
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0)), !dbg !4867
  store i32 -1, i32* %retval, !dbg !4868
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4868

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4869, !tbaa !1082
  %call2 = call i64 @PyLong_AsUnsignedLongMask(%struct._object* %6), !dbg !4870
  store i64 %call2, i64* %x, align 8, !dbg !4871, !tbaa !1088
  %7 = load i64, i64* %x, align 8, !dbg !4872, !tbaa !1088
  %cmp3 = icmp eq i64 %7, -1, !dbg !4874
  br i1 %cmp3, label %land.lhs.true, label %if.end.7, !dbg !4875

land.lhs.true:                                    ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !4876
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !4876
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !4878

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !4879
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4879

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %8 = load i64, i64* %x, align 8, !dbg !4880, !tbaa !1088
  %9 = load i64*, i64** %p.addr, align 8, !dbg !4881, !tbaa !1082
  store i64 %8, i64* %9, align 8, !dbg !4882, !tbaa !1088
  store i32 0, i32* %retval, !dbg !4883
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4883

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %10 = bitcast i64* %x to i8*, !dbg !4884
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !4884
  %11 = load i32, i32* %retval, !dbg !4884
  ret i32 %11, !dbg !4884
}

declare i64 @PyLong_AsLong(%struct._object*) #3

declare double @PyFloat_AsDouble(%struct._object*) #3

declare %struct._object* @PyFloat_FromDouble(double) #3

declare i32 @_PyFloat_Pack8(double, i8*, i32) #3

declare double @_PyFloat_Unpack8(i8*, i32) #3

declare i32 @_PyFloat_Pack4(double, i8*, i32) #3

declare double @_PyFloat_Unpack4(i8*, i32) #3

declare %struct._object* @PyLong_FromUnsignedLong(i64) #3

; Function Attrs: uwtable
define internal i32 @get_longlong(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !907, metadata !1086), !dbg !4885
  store i64* %p, i64** %p.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !908, metadata !1086), !dbg !4886
  %0 = bitcast i64* %x to i8*, !dbg !4887
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4887
  call void @llvm.dbg.declare(metadata i64* %x, metadata !909, metadata !1086), !dbg !4888
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4889, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !4891
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4891, !tbaa !1150
  %cmp = icmp eq %struct._typeobject* %2, @PyFloat_Type, !dbg !4892
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4893

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4894, !tbaa !1082
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !4896
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4896, !tbaa !1150
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* @PyFloat_Type), !dbg !4897
  %tobool = icmp ne i32 %call, 0, !dbg !4897
  br i1 %tobool, label %if.then, label %if.end, !dbg !4898

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4899, !tbaa !1082
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0)), !dbg !4901
  store i32 -1, i32* %retval, !dbg !4902
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4902

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4903, !tbaa !1082
  %call2 = call i64 @PyLong_AsUnsignedLongLongMask(%struct._object* %6), !dbg !4904
  store i64 %call2, i64* %x, align 8, !dbg !4905, !tbaa !3786
  %7 = load i64, i64* %x, align 8, !dbg !4906, !tbaa !3786
  %cmp3 = icmp eq i64 %7, -1, !dbg !4908
  br i1 %cmp3, label %land.lhs.true, label %if.end.7, !dbg !4909

land.lhs.true:                                    ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !4910
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !4910
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !4912

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !4913
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4913

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %8 = load i64, i64* %x, align 8, !dbg !4914, !tbaa !3786
  %9 = load i64*, i64** %p.addr, align 8, !dbg !4915, !tbaa !1082
  store i64 %8, i64* %9, align 8, !dbg !4916, !tbaa !3786
  store i32 0, i32* %retval, !dbg !4917
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4917

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %10 = bitcast i64* %x to i8*, !dbg !4918
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !4918
  %11 = load i32, i32* %retval, !dbg !4918
  ret i32 %11, !dbg !4918
}

declare i64 @PyLong_AsUnsignedLongLongMask(%struct._object*) #3

declare %struct._object* @PyLong_FromLongLong(i64) #3

; Function Attrs: uwtable
define internal i32 @get_ulonglong(%struct._object* %v, i64* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %p.addr = alloca i64*, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !939, metadata !1086), !dbg !4919
  store i64* %p, i64** %p.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !940, metadata !1086), !dbg !4920
  %0 = bitcast i64* %x to i8*, !dbg !4921
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4921
  call void @llvm.dbg.declare(metadata i64* %x, metadata !941, metadata !1086), !dbg !4922
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4923, !tbaa !1082
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !4925
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4925, !tbaa !1150
  %cmp = icmp eq %struct._typeobject* %2, @PyFloat_Type, !dbg !4926
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4927

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4928, !tbaa !1082
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !4930
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4930, !tbaa !1150
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* @PyFloat_Type), !dbg !4931
  %tobool = icmp ne i32 %call, 0, !dbg !4931
  br i1 %tobool, label %if.then, label %if.end, !dbg !4932

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4933, !tbaa !1082
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0)), !dbg !4935
  store i32 -1, i32* %retval, !dbg !4936
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4936

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4937, !tbaa !1082
  %call2 = call i64 @PyLong_AsUnsignedLongLongMask(%struct._object* %6), !dbg !4938
  store i64 %call2, i64* %x, align 8, !dbg !4939, !tbaa !3786
  %7 = load i64, i64* %x, align 8, !dbg !4940, !tbaa !3786
  %cmp3 = icmp eq i64 %7, -1, !dbg !4942
  br i1 %cmp3, label %land.lhs.true, label %if.end.7, !dbg !4943

land.lhs.true:                                    ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !4944
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !4944
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !4946

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !4947
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4947

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %8 = load i64, i64* %x, align 8, !dbg !4948, !tbaa !3786
  %9 = load i64*, i64** %p.addr, align 8, !dbg !4949, !tbaa !1082
  store i64 %8, i64* %9, align 8, !dbg !4950, !tbaa !3786
  store i32 0, i32* %retval, !dbg !4951
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4951

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %10 = bitcast i64* %x to i8*, !dbg !4952
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !4952
  %11 = load i32, i32* %retval, !dbg !4952
  ret i32 %11, !dbg !4952
}

declare %struct._object* @PyLong_FromUnsignedLongLong(i64) #3

declare %struct._object* @PyLong_FromVoidPtr(i8*) #3

declare i8* @PyBytes_AsString(%struct._object*) #3

declare i64 @PyUnicode_AsWideChar(%struct._object*, i32*, i64) #3

declare %struct._object* @PyUnicode_FromWideChar(i32*, i64) #3

declare i32* @PyUnicode_AsUnicodeAndSize(%struct._object*, i64*) #3

declare i32* @PyUnicode_AsWideCharString(%struct._object*, i64*) #3

declare %struct._object* @PyCapsule_New(i8*, i8*, void (%struct._object*)*) #3

; Function Attrs: uwtable
define internal void @pymem_destructor(%struct._object* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  store %struct._object* %ptr, %struct._object** %ptr.addr, align 8, !tbaa !1082
  call void @llvm.dbg.declare(metadata %struct._object** %ptr.addr, metadata !1027, metadata !1086), !dbg !4953
  %0 = bitcast i8** %p to i8*, !dbg !4954
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4954
  call void @llvm.dbg.declare(metadata i8** %p, metadata !1028, metadata !1086), !dbg !4955
  %1 = load %struct._object*, %struct._object** %ptr.addr, align 8, !dbg !4956, !tbaa !1082
  %call = call i8* @PyCapsule_GetPointer(%struct._object* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0)), !dbg !4957
  store i8* %call, i8** %p, align 8, !dbg !4955, !tbaa !1082
  %2 = load i8*, i8** %p, align 8, !dbg !4958, !tbaa !1082
  %tobool = icmp ne i8* %2, null, !dbg !4958
  br i1 %tobool, label %if.then, label %if.end, !dbg !4960

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %p, align 8, !dbg !4961, !tbaa !1082
  call void @PyMem_Free(i8* %3), !dbg !4963
  br label %if.end, !dbg !4964

if.end:                                           ; preds = %if.then, %entry
  %4 = bitcast i8** %p to i8*, !dbg !4965
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !4965
  ret void, !dbg !4965
}

declare void @PyMem_Free(i8*) #3

declare i8* @PyCapsule_GetPointer(%struct._object*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #5

declare i32 @PyObject_IsTrue(%struct._object*) #3

declare %struct._object* @PyBool_FromLong(i64) #3

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1078, !1079, !1080}
!llvm.ident = !{!1081}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !428, globals: !1053)
!1 = !DIFile(filename: "cfield.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !43, !95, !364, !366, !397, !57, !15, !84, !405, !406, !407, !102, !408, !409, !35, !390, !386, !21, !82, !49, !347, !394, !419, !420, !421, !422, !424, !425, !427}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "CFieldObject", file: !6, line: 183, baseType: !7)
!6 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_ctypes/ctypes.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 173, size: 576, align: 64, elements: !8)
!8 = !{!9, !349, !350, !351, !352, !353, !358, !363}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !7, file: !6, line: 174, baseType: !10, size: 128, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !11, line: 109, baseType: !12)
!11 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !11, line: 105, size: 128, align: 64, elements: !13)
!13 = !{!14, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !12, file: !11, line: 107, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !16, line: 177, baseType: !17)
!16 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 102, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !20, line: 181, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !12, file: !11, line: 108, baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !11, line: 334, size: 3200, align: 64, elements: !25)
!25 = !{!26, !32, !36, !37, !38, !44, !108, !113, !118, !119, !124, !176, !207, !219, !225, !226, !227, !229, !231, !262, !263, !264, !273, !274, !279, !280, !282, !284, !294, !297, !315, !316, !317, !319, !321, !322, !324, !329, !334, !339, !340, !341, !342, !343, !344, !345, !346, !348}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !11, line: 335, baseType: !27, size: 192, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !11, line: 114, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 111, size: 192, align: 64, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !28, file: !11, line: 112, baseType: !10, size: 128, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !28, file: !11, line: 113, baseType: !15, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !24, file: !11, line: 336, baseType: !33, size: 64, align: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !24, file: !11, line: 337, baseType: !15, size: 64, align: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !24, file: !11, line: 337, baseType: !15, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !24, file: !11, line: 341, baseType: !39, size: 64, align: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !11, line: 308, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !24, file: !11, line: 342, baseType: !45, size: 64, align: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !11, line: 314, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !43, !50, !49}
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 48, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 246, size: 1728, align: 64, elements: !54)
!53 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!54 = !{!55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !76, !77, !78, !79, !81, !83, !85, !89, !92, !94, !96, !97, !98, !99, !103, !104}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !52, file: !53, line: 247, baseType: !49, size: 32, align: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !52, file: !53, line: 252, baseType: !57, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !52, file: !53, line: 253, baseType: !57, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !52, file: !53, line: 254, baseType: !57, size: 64, align: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !52, file: !53, line: 255, baseType: !57, size: 64, align: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !52, file: !53, line: 256, baseType: !57, size: 64, align: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !52, file: !53, line: 257, baseType: !57, size: 64, align: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !52, file: !53, line: 258, baseType: !57, size: 64, align: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !52, file: !53, line: 259, baseType: !57, size: 64, align: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !52, file: !53, line: 261, baseType: !57, size: 64, align: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !52, file: !53, line: 262, baseType: !57, size: 64, align: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !52, file: !53, line: 263, baseType: !57, size: 64, align: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !52, file: !53, line: 265, baseType: !69, size: 64, align: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !53, line: 161, size: 192, align: 64, elements: !71)
!71 = !{!72, !73, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !70, file: !53, line: 162, baseType: !69, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !70, file: !53, line: 163, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !70, file: !53, line: 167, baseType: !49, size: 32, align: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !52, file: !53, line: 267, baseType: !74, size: 64, align: 64, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !52, file: !53, line: 269, baseType: !49, size: 32, align: 32, offset: 896)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !52, file: !53, line: 273, baseType: !49, size: 32, align: 32, offset: 928)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !52, file: !53, line: 275, baseType: !80, size: 64, align: 64, offset: 960)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !20, line: 140, baseType: !21)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !52, file: !53, line: 279, baseType: !82, size: 16, align: 16, offset: 1024)
!82 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !52, file: !53, line: 280, baseType: !84, size: 8, align: 8, offset: 1040)
!84 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !52, file: !53, line: 281, baseType: !86, size: 8, align: 8, offset: 1048)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !52, file: !53, line: 285, baseType: !90, size: 64, align: 64, offset: 1088)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !53, line: 155, baseType: null)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !52, file: !53, line: 294, baseType: !93, size: 64, align: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !20, line: 141, baseType: !21)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !52, file: !53, line: 303, baseType: !95, size: 64, align: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !52, file: !53, line: 304, baseType: !95, size: 64, align: 64, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !52, file: !53, line: 305, baseType: !95, size: 64, align: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !52, file: !53, line: 306, baseType: !95, size: 64, align: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !52, file: !53, line: 307, baseType: !100, size: 64, align: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!102 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !52, file: !53, line: 309, baseType: !49, size: 32, align: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !52, file: !53, line: 311, baseType: !105, size: 160, align: 8, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !24, file: !11, line: 343, baseType: !109, size: 64, align: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !11, line: 316, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!43, !43, !57}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !24, file: !11, line: 344, baseType: !114, size: 64, align: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !11, line: 318, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!49, !43, !57, !43}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !24, file: !11, line: 345, baseType: !95, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !24, file: !11, line: 346, baseType: !120, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !11, line: 320, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!43, !43}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !24, file: !11, line: 350, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !11, line: 278, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 236, size: 2176, align: 64, elements: !128)
!128 = !{!129, !134, !135, !136, !137, !138, !143, !145, !146, !147, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !127, file: !11, line: 241, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !11, line: 166, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!43, !43, !43}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !127, file: !11, line: 242, baseType: !130, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !127, file: !11, line: 243, baseType: !130, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !127, file: !11, line: 244, baseType: !130, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !127, file: !11, line: 245, baseType: !130, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !127, file: !11, line: 246, baseType: !139, size: 64, align: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !11, line: 167, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!43, !43, !43, !43}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !127, file: !11, line: 247, baseType: !144, size: 64, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !11, line: 165, baseType: !121)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !127, file: !11, line: 248, baseType: !144, size: 64, align: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !127, file: !11, line: 249, baseType: !144, size: 64, align: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !127, file: !11, line: 250, baseType: !148, size: 64, align: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !11, line: 168, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!49, !43}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !127, file: !11, line: 251, baseType: !144, size: 64, align: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !127, file: !11, line: 252, baseType: !130, size: 64, align: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !127, file: !11, line: 253, baseType: !130, size: 64, align: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !127, file: !11, line: 254, baseType: !130, size: 64, align: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !127, file: !11, line: 255, baseType: !130, size: 64, align: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !127, file: !11, line: 256, baseType: !130, size: 64, align: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !127, file: !11, line: 257, baseType: !144, size: 64, align: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !127, file: !11, line: 258, baseType: !95, size: 64, align: 64, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !127, file: !11, line: 259, baseType: !144, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !127, file: !11, line: 261, baseType: !130, size: 64, align: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !127, file: !11, line: 262, baseType: !130, size: 64, align: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !127, file: !11, line: 263, baseType: !130, size: 64, align: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !127, file: !11, line: 264, baseType: !130, size: 64, align: 64, offset: 1408)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !127, file: !11, line: 265, baseType: !139, size: 64, align: 64, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !127, file: !11, line: 266, baseType: !130, size: 64, align: 64, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !127, file: !11, line: 267, baseType: !130, size: 64, align: 64, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !127, file: !11, line: 268, baseType: !130, size: 64, align: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !127, file: !11, line: 269, baseType: !130, size: 64, align: 64, offset: 1728)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !127, file: !11, line: 270, baseType: !130, size: 64, align: 64, offset: 1792)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !127, file: !11, line: 272, baseType: !130, size: 64, align: 64, offset: 1856)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !127, file: !11, line: 273, baseType: !130, size: 64, align: 64, offset: 1920)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !127, file: !11, line: 274, baseType: !130, size: 64, align: 64, offset: 1984)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !127, file: !11, line: 275, baseType: !130, size: 64, align: 64, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !127, file: !11, line: 277, baseType: !144, size: 64, align: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !24, file: !11, line: 351, baseType: !177, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !11, line: 292, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 280, size: 640, align: 64, elements: !180)
!180 = !{!181, !186, !187, !192, !193, !194, !199, !200, !205, !206}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !179, file: !11, line: 281, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !11, line: 169, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!15, !43}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !179, file: !11, line: 282, baseType: !130, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !179, file: !11, line: 283, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !11, line: 170, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!43, !43, !15}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !179, file: !11, line: 284, baseType: !188, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !179, file: !11, line: 285, baseType: !95, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !179, file: !11, line: 286, baseType: !195, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !11, line: 172, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!49, !43, !15, !43}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !179, file: !11, line: 287, baseType: !95, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !179, file: !11, line: 288, baseType: !201, size: 64, align: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !11, line: 231, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!49, !43, !43}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !179, file: !11, line: 290, baseType: !130, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !179, file: !11, line: 291, baseType: !188, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !24, file: !11, line: 352, baseType: !208, size: 64, align: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !11, line: 298, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 294, size: 192, align: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !210, file: !11, line: 295, baseType: !182, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !210, file: !11, line: 296, baseType: !130, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !210, file: !11, line: 297, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !11, line: 174, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!49, !43, !43, !43}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !24, file: !11, line: 356, baseType: !220, size: 64, align: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !11, line: 321, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !43}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !16, line: 186, baseType: !15)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !24, file: !11, line: 357, baseType: !139, size: 64, align: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !24, file: !11, line: 358, baseType: !120, size: 64, align: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !24, file: !11, line: 359, baseType: !228, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !11, line: 317, baseType: !131)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !24, file: !11, line: 360, baseType: !230, size: 64, align: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !11, line: 319, baseType: !216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !24, file: !11, line: 363, baseType: !232, size: 64, align: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !11, line: 304, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 301, size: 128, align: 64, elements: !235)
!235 = !{!236, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !234, file: !11, line: 302, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !11, line: 193, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!49, !43, !241, !49}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !11, line: 191, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !11, line: 178, size: 640, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !11, line: 179, baseType: !95, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !243, file: !11, line: 180, baseType: !43, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !11, line: 181, baseType: !15, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !243, file: !11, line: 182, baseType: !15, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !243, file: !11, line: 184, baseType: !49, size: 32, align: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !243, file: !11, line: 185, baseType: !49, size: 32, align: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !243, file: !11, line: 186, baseType: !57, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !243, file: !11, line: 187, baseType: !253, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !243, file: !11, line: 188, baseType: !253, size: 64, align: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !243, file: !11, line: 189, baseType: !253, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !243, file: !11, line: 190, baseType: !95, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !234, file: !11, line: 303, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !11, line: 194, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !43, !241}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !24, file: !11, line: 366, baseType: !102, size: 64, align: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !24, file: !11, line: 368, baseType: !33, size: 64, align: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !24, file: !11, line: 372, baseType: !265, size: 64, align: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !11, line: 233, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!49, !43, !269, !95}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !11, line: 232, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!49, !43, !95}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !24, file: !11, line: 375, baseType: !148, size: 64, align: 64, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !24, file: !11, line: 379, baseType: !275, size: 64, align: 64, offset: 1600)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !11, line: 322, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!43, !43, !43, !49}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !24, file: !11, line: 382, baseType: !15, size: 64, align: 64, offset: 1664)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !24, file: !11, line: 385, baseType: !281, size: 64, align: 64, offset: 1728)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !11, line: 323, baseType: !121)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !24, file: !11, line: 386, baseType: !283, size: 64, align: 64, offset: 1792)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !11, line: 324, baseType: !121)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !24, file: !11, line: 389, baseType: !285, size: 64, align: 64, offset: 1856)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !287, line: 40, size: 256, align: 64, elements: !288)
!287 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !33, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !49, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !33, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !24, file: !11, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !11, line: 390, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !24, file: !11, line: 391, baseType: !298, size: 64, align: 64, offset: 1984)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !300, line: 11, size: 320, align: 64, elements: !301)
!300 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!301 = !{!302, !303, !308, !313, !314}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !300, line: 12, baseType: !57, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !299, file: !300, line: 13, baseType: !304, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !300, line: 8, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!43, !43, !95}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !299, file: !300, line: 14, baseType: !309, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !300, line: 9, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!49, !43, !43, !95}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !299, file: !300, line: 15, baseType: !57, size: 64, align: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !299, file: !300, line: 16, baseType: !95, size: 64, align: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !24, file: !11, line: 392, baseType: !23, size: 64, align: 64, offset: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !24, file: !11, line: 393, baseType: !43, size: 64, align: 64, offset: 2112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !24, file: !11, line: 394, baseType: !318, size: 64, align: 64, offset: 2176)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !11, line: 325, baseType: !140)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !24, file: !11, line: 395, baseType: !320, size: 64, align: 64, offset: 2240)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !11, line: 326, baseType: !216)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !24, file: !11, line: 396, baseType: !15, size: 64, align: 64, offset: 2304)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !24, file: !11, line: 397, baseType: !323, size: 64, align: 64, offset: 2368)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !11, line: 327, baseType: !216)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !24, file: !11, line: 398, baseType: !325, size: 64, align: 64, offset: 2432)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !11, line: 329, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!43, !23, !15}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !24, file: !11, line: 399, baseType: !330, size: 64, align: 64, offset: 2496)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !11, line: 328, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!43, !23, !43, !43}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !24, file: !11, line: 400, baseType: !335, size: 64, align: 64, offset: 2560)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !11, line: 307, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !95}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !24, file: !11, line: 401, baseType: !148, size: 64, align: 64, offset: 2624)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !24, file: !11, line: 402, baseType: !43, size: 64, align: 64, offset: 2688)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !24, file: !11, line: 403, baseType: !43, size: 64, align: 64, offset: 2752)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !24, file: !11, line: 404, baseType: !43, size: 64, align: 64, offset: 2816)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !24, file: !11, line: 405, baseType: !43, size: 64, align: 64, offset: 2880)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !24, file: !11, line: 406, baseType: !43, size: 64, align: 64, offset: 2944)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !24, file: !11, line: 407, baseType: !39, size: 64, align: 64, offset: 3008)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !24, file: !11, line: 410, baseType: !347, size: 32, align: 32, offset: 3072)
!347 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !24, file: !11, line: 412, baseType: !39, size: 64, align: 64, offset: 3136)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !7, file: !6, line: 175, baseType: !15, size: 64, align: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !7, file: !6, line: 176, baseType: !15, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !7, file: !6, line: 177, baseType: !15, size: 64, align: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !7, file: !6, line: 179, baseType: !43, size: 64, align: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "getfunc", scope: !7, file: !6, line: 180, baseType: !354, size: 64, align: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "GETFUNC", file: !6, line: 16, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!43, !95, !15}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "setfunc", scope: !7, file: !6, line: 181, baseType: !359, size: 64, align: 64, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "SETFUNC", file: !6, line: 17, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!43, !95, !43, !15}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "anonymous", scope: !7, file: !6, line: 182, baseType: !49, size: 32, align: 32, offset: 512)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !11, line: 422, baseType: !24)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "CDataObject", file: !6, line: 15, baseType: !368)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "tagCDataObject", file: !6, line: 46, size: 768, align: 128, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !368, file: !6, line: 47, baseType: !10, size: 128, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "b_ptr", scope: !368, file: !6, line: 48, baseType: !57, size: 64, align: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "b_needsfree", scope: !368, file: !6, line: 49, baseType: !49, size: 32, align: 32, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "b_base", scope: !368, file: !6, line: 50, baseType: !366, size: 64, align: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !368, file: !6, line: 51, baseType: !15, size: 64, align: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "b_length", scope: !368, file: !6, line: 52, baseType: !15, size: 64, align: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "b_index", scope: !368, file: !6, line: 53, baseType: !15, size: 64, align: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "b_objects", scope: !368, file: !6, line: 55, baseType: !43, size: 64, align: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "b_value", scope: !368, file: !6, line: 56, baseType: !379, size: 128, align: 128, offset: 640)
!379 = !DICompositeType(tag: DW_TAG_union_type, name: "value", file: !6, line: 27, size: 128, align: 128, elements: !380)
!380 = !{!381, !385, !387, !388, !389, !391, !393, !395}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !379, file: !6, line: 28, baseType: !382, size: 128, align: 8)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, align: 8, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 16)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !379, file: !6, line: 29, baseType: !386, size: 16, align: 16)
!386 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !379, file: !6, line: 30, baseType: !49, size: 32, align: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !379, file: !6, line: 31, baseType: !21, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !379, file: !6, line: 32, baseType: !390, size: 32, align: 32)
!390 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !379, file: !6, line: 33, baseType: !392, size: 64, align: 64)
!392 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ll", scope: !379, file: !6, line: 35, baseType: !394, size: 64, align: 64)
!394 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !379, file: !6, line: 37, baseType: !396, size: 128, align: 128)
!396 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !399, line: 41, baseType: !400)
!399 = !DIFile(filename: "./Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!400 = !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 31, size: 320, align: 64, elements: !401)
!401 = !{!402, !403, !404}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !400, file: !399, line: 32, baseType: !27, size: 192, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !400, file: !399, line: 33, baseType: !224, size: 64, align: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !400, file: !399, line: 34, baseType: !86, size: 8, align: 8, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!406 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyByteArrayObject", file: !411, line: 30, baseType: !412)
!411 = !DIFile(filename: "./Include/bytearrayobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!412 = !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 23, size: 448, align: 64, elements: !413)
!413 = !{!414, !415, !416, !417, !418}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !412, file: !411, line: 24, baseType: !27, size: 192, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ob_alloc", scope: !412, file: !411, line: 25, baseType: !15, size: 64, align: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ob_bytes", scope: !412, file: !411, line: 26, baseType: !57, size: 64, align: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ob_start", scope: !412, file: !411, line: 27, baseType: !57, size: 64, align: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ob_exports", scope: !412, file: !411, line: 29, baseType: !49, size: 32, align: 32, offset: 384)
!419 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !101, line: 90, baseType: !49)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!428 = !{!429, !555, !561, !564, !573, !584, !595, !599, !603, !611, !620, !628, !642, !648, !654, !662, !667, !673, !681, !686, !694, !698, !704, !709, !715, !719, !725, !730, !736, !741, !747, !751, !758, !763, !770, !775, !782, !787, !794, !799, !806, !811, !818, !823, !830, !835, !842, !847, !854, !859, !866, !871, !878, !883, !890, !895, !902, !910, !915, !922, !927, !934, !942, !947, !954, !959, !965, !969, !974, !978, !994, !998, !1012, !1018, !1025, !1029, !1034, !1039, !1043, !1048}
!429 = !DISubprogram(name: "PyCField_FromDesc", scope: !430, file: !430, line: 46, type: !431, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i64, i64*, i32, i32*, i64*, i64*, i64*, i32, i32)* @PyCField_FromDesc, variables: !434)
!430 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_ctypes/cfield.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!431 = !DISubroutineType(types: !432)
!432 = !{!43, !43, !15, !253, !49, !433, !253, !253, !253, !49, !49}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !521, !522, !526, !529, !530, !536, !548, !551}
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 1, scope: !429, file: !430, line: 46, type: !43)
!436 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 2, scope: !429, file: !430, line: 46, type: !15)
!437 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pfield_size", arg: 3, scope: !429, file: !430, line: 47, type: !253)
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bitsize", arg: 4, scope: !429, file: !430, line: 47, type: !49)
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pbitofs", arg: 5, scope: !429, file: !430, line: 47, type: !433)
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "psize", arg: 6, scope: !429, file: !430, line: 48, type: !253)
!441 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "poffset", arg: 7, scope: !429, file: !430, line: 48, type: !253)
!442 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "palign", arg: 8, scope: !429, file: !430, line: 48, type: !253)
!443 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pack", arg: 9, scope: !429, file: !430, line: 49, type: !49)
!444 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "big_endian", arg: 10, scope: !429, file: !430, line: 49, type: !49)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !429, file: !430, line: 51, type: !4)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "proto", scope: !429, file: !430, line: 52, type: !43)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !429, file: !430, line: 53, type: !15)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "align", scope: !429, file: !430, line: 53, type: !15)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "setfunc", scope: !429, file: !430, line: 54, type: !359)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "getfunc", scope: !429, file: !430, line: 55, type: !354)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !429, file: !430, line: 56, type: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "StgDictObject", file: !6, line: 220, baseType: !454)
!454 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 187, size: 1472, align: 64, elements: !455)
!455 = !{!456, !468, !469, !470, !471, !482, !483, !484, !485, !513, !514, !515, !516, !517, !518, !519, !520}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !454, file: !6, line: 188, baseType: !457, size: 320, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictObject", file: !458, line: 28, baseType: !459)
!458 = !DIFile(filename: "./Include/dictobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!459 = !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 23, size: 320, align: 64, elements: !460)
!460 = !{!461, !462, !463, !467}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !459, file: !458, line: 24, baseType: !10, size: 128, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ma_used", scope: !459, file: !458, line: 25, baseType: !15, size: 64, align: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ma_keys", scope: !459, file: !458, line: 26, baseType: !464, size: 64, align: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictKeysObject", file: !458, line: 18, baseType: !466)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "_dictkeysobject", file: !11, line: 461, flags: DIFlagFwdDecl)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ma_values", scope: !459, file: !458, line: 27, baseType: !427, size: 64, align: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !454, file: !6, line: 197, baseType: !15, size: 64, align: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !454, file: !6, line: 198, baseType: !15, size: 64, align: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !454, file: !6, line: 199, baseType: !15, size: 64, align: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ffi_type_pointer", scope: !454, file: !6, line: 200, baseType: !472, size: 192, align: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_type", file: !473, line: 118, baseType: !474)
!473 = !DIFile(filename: "build/temp.linux-x86_64-3.4/libffi/include/ffi.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ffi_type", file: !473, line: 112, size: 192, align: 64, elements: !475)
!475 = !{!476, !477, !478, !479}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !474, file: !473, line: 114, baseType: !100, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !474, file: !473, line: 115, baseType: !82, size: 16, align: 16, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !473, line: 116, baseType: !82, size: 16, align: 16, offset: 80)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !474, file: !473, line: 117, baseType: !480, size: 64, align: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !454, file: !6, line: 201, baseType: !43, size: 64, align: 64, offset: 704)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "setfunc", scope: !454, file: !6, line: 202, baseType: !359, size: 64, align: 64, offset: 768)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "getfunc", scope: !454, file: !6, line: 203, baseType: !354, size: 64, align: 64, offset: 832)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "paramfunc", scope: !454, file: !6, line: 204, baseType: !486, size: 64, align: 64, offset: 896)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARAMFUNC", file: !6, line: 18, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !366}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCArgObject", file: !6, line: 14, baseType: !492)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "tagPyCArgObject", file: !6, line: 296, size: 512, align: 128, elements: !493)
!493 = !{!494, !495, !497, !498, !511, !512}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !492, file: !6, line: 297, baseType: !10, size: 128, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pffi_type", scope: !492, file: !6, line: 298, baseType: !496, size: 64, align: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !492, file: !6, line: 299, baseType: !35, size: 8, align: 8, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !492, file: !6, line: 313, baseType: !499, size: 128, align: 128, offset: 256)
!499 = !DICompositeType(tag: DW_TAG_union_type, scope: !492, file: !6, line: 300, size: 128, align: 128, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !499, file: !6, line: 301, baseType: !35, size: 8, align: 8)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !499, file: !6, line: 302, baseType: !35, size: 8, align: 8)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !499, file: !6, line: 303, baseType: !386, size: 16, align: 16)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !499, file: !6, line: 304, baseType: !49, size: 32, align: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !499, file: !6, line: 305, baseType: !21, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !499, file: !6, line: 307, baseType: !394, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !499, file: !6, line: 309, baseType: !396, size: 128, align: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !499, file: !6, line: 310, baseType: !392, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !499, file: !6, line: 311, baseType: !390, size: 32, align: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !499, file: !6, line: 312, baseType: !95, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !492, file: !6, line: 314, baseType: !43, size: 64, align: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !492, file: !6, line: 315, baseType: !15, size: 64, align: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "argtypes", scope: !454, file: !6, line: 207, baseType: !43, size: 64, align: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "converters", scope: !454, file: !6, line: 208, baseType: !43, size: 64, align: 64, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "restype", scope: !454, file: !6, line: 209, baseType: !43, size: 64, align: 64, offset: 1088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "checker", scope: !454, file: !6, line: 210, baseType: !43, size: 64, align: 64, offset: 1152)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !6, line: 211, baseType: !49, size: 32, align: 32, offset: 1216)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !454, file: !6, line: 214, baseType: !57, size: 64, align: 64, offset: 1280)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !454, file: !6, line: 215, baseType: !49, size: 32, align: 32, offset: 1344)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !454, file: !6, line: 216, baseType: !253, size: 64, align: 64, offset: 1408)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fieldtype", scope: !429, file: !430, line: 57, type: !49)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !523, file: !430, line: 71, type: !43)
!523 = distinct !DILexicalBlock(scope: !524, file: !430, line: 71, column: 12)
!524 = distinct !DILexicalBlock(scope: !525, file: !430, line: 68, column: 16)
!525 = distinct !DILexicalBlock(scope: !429, file: !430, line: 68, column: 9)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adict", scope: !527, file: !430, line: 113, type: !452)
!527 = distinct !DILexicalBlock(scope: !528, file: !430, line: 112, column: 143)
!528 = distinct !DILexicalBlock(scope: !429, file: !430, line: 112, column: 9)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idict", scope: !527, file: !430, line: 114, type: !452)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !531, file: !430, line: 120, type: !43)
!531 = distinct !DILexicalBlock(scope: !532, file: !430, line: 120, column: 20)
!532 = distinct !DILexicalBlock(scope: !533, file: !430, line: 117, column: 25)
!533 = distinct !DILexicalBlock(scope: !534, file: !430, line: 117, column: 17)
!534 = distinct !DILexicalBlock(scope: !535, file: !430, line: 115, column: 36)
!535 = distinct !DILexicalBlock(scope: !527, file: !430, line: 115, column: 13)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !537, file: !430, line: 124, type: !539)
!537 = distinct !DILexicalBlock(scope: !538, file: !430, line: 123, column: 72)
!538 = distinct !DILexicalBlock(scope: !534, file: !430, line: 123, column: 17)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "fielddesc", file: !6, line: 164, size: 384, align: 64, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !540, file: !6, line: 165, baseType: !35, size: 8, align: 8)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "setfunc", scope: !540, file: !6, line: 166, baseType: !359, size: 64, align: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "getfunc", scope: !540, file: !6, line: 167, baseType: !354, size: 64, align: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "pffi_type", scope: !540, file: !6, line: 168, baseType: !496, size: 64, align: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "setfunc_swapped", scope: !540, file: !6, line: 169, baseType: !359, size: 64, align: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "getfunc_swapped", scope: !540, file: !6, line: 170, baseType: !354, size: 64, align: 64, offset: 320)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !549, file: !430, line: 130, type: !539)
!549 = distinct !DILexicalBlock(scope: !550, file: !430, line: 129, column: 72)
!550 = distinct !DILexicalBlock(scope: !534, file: !430, line: 129, column: 17)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delta", scope: !552, file: !430, line: 159, type: !15)
!552 = distinct !DILexicalBlock(scope: !553, file: !430, line: 158, column: 40)
!553 = distinct !DILexicalBlock(scope: !554, file: !430, line: 158, column: 13)
!554 = distinct !DILexicalBlock(scope: !429, file: !430, line: 145, column: 24)
!555 = !DISubprogram(name: "_ctypes_get_fielddesc", scope: !430, file: !430, line: 1606, type: !556, isLocal: false, isDefinition: true, scopeLine: 1607, flags: DIFlagPrototyped, isOptimized: true, function: %struct.fielddesc* (i8*)* @_ctypes_get_fielddesc, variables: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!539, !33}
!558 = !{!559, !560}
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 1, scope: !555, file: !430, line: 1606, type: !33)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "table", scope: !555, file: !430, line: 1609, type: !539)
!561 = !DISubprogram(name: "PyCField_dealloc", scope: !430, file: !430, line: 267, type: !41, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @PyCField_dealloc, variables: !562)
!562 = !{!563}
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !561, file: !430, line: 267, type: !43)
!564 = !DISubprogram(name: "PyCField_repr", scope: !430, file: !430, line: 274, type: !565, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.CFieldObject*)* @PyCField_repr, variables: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{!43, !4}
!567 = !{!568, !569, !570, !571, !572}
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !564, file: !430, line: 274, type: !4)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !564, file: !430, line: 276, type: !43)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bits", scope: !564, file: !430, line: 277, type: !15)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !564, file: !430, line: 278, type: !15)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !564, file: !430, line: 279, type: !33)
!573 = !DISubprogram(name: "PyCField_traverse", scope: !430, file: !430, line: 253, type: !574, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.CFieldObject*, i32 (%struct._object*, i8*)*, i8*)* @PyCField_traverse, variables: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!49, !4, !269, !95}
!576 = !{!577, !578, !579, !580}
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !573, file: !430, line: 253, type: !4)
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !573, file: !430, line: 253, type: !269)
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !573, file: !430, line: 253, type: !95)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !581, file: !430, line: 255, type: !49)
!581 = distinct !DILexicalBlock(scope: !582, file: !430, line: 255, column: 27)
!582 = distinct !DILexicalBlock(scope: !583, file: !430, line: 255, column: 14)
!583 = distinct !DILexicalBlock(scope: !573, file: !430, line: 255, column: 8)
!584 = !DISubprogram(name: "PyCField_clear", scope: !430, file: !430, line: 260, type: !585, isLocal: true, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.CFieldObject*)* @PyCField_clear, variables: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{!49, !4}
!587 = !{!588, !589, !591}
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !584, file: !430, line: 260, type: !4)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !590, file: !430, line: 262, type: !43)
!590 = distinct !DILexicalBlock(scope: !584, file: !430, line: 262, column: 8)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !592, file: !430, line: 262, type: !43)
!592 = distinct !DILexicalBlock(scope: !593, file: !430, line: 262, column: 117)
!593 = distinct !DILexicalBlock(scope: !594, file: !430, line: 262, column: 84)
!594 = distinct !DILexicalBlock(scope: !590, file: !430, line: 262, column: 61)
!595 = !DISubprogram(name: "PyCField_get_offset", scope: !430, file: !430, line: 235, type: !306, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @PyCField_get_offset, variables: !596)
!596 = !{!597, !598}
!597 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !595, file: !430, line: 235, type: !43)
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !595, file: !430, line: 235, type: !95)
!599 = !DISubprogram(name: "PyCField_get_size", scope: !430, file: !430, line: 241, type: !306, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @PyCField_get_size, variables: !600)
!600 = !{!601, !602}
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !599, file: !430, line: 241, type: !43)
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !599, file: !430, line: 241, type: !95)
!603 = !DISubprogram(name: "PyCField_get", scope: !430, file: !430, line: 221, type: !604, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.CFieldObject*, %struct._object*, %struct._typeobject*)* @PyCField_get, variables: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!43, !4, !43, !364}
!606 = !{!607, !608, !609, !610}
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !603, file: !430, line: 221, type: !4)
!608 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inst", arg: 2, scope: !603, file: !430, line: 221, type: !43)
!609 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !603, file: !430, line: 221, type: !364)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "src", scope: !603, file: !430, line: 223, type: !366)
!611 = !DISubprogram(name: "PyCField_set", scope: !430, file: !430, line: 204, type: !612, isLocal: true, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.CFieldObject*, %struct._object*, %struct._object*)* @PyCField_set, variables: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{!49, !4, !43, !43}
!614 = !{!615, !616, !617, !618, !619}
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !611, file: !430, line: 204, type: !4)
!616 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inst", arg: 2, scope: !611, file: !430, line: 204, type: !43)
!617 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !611, file: !430, line: 204, type: !43)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dst", scope: !611, file: !430, line: 206, type: !366)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !611, file: !430, line: 207, type: !57)
!620 = !DISubprogram(name: "PyCField_new", scope: !430, file: !430, line: 26, type: !621, isLocal: true, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyCField_new, variables: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!43, !364, !43, !43}
!623 = !{!624, !625, !626, !627}
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !620, file: !430, line: 26, type: !364)
!625 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !620, file: !430, line: 26, type: !43)
!626 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !620, file: !430, line: 26, type: !43)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !620, file: !430, line: 28, type: !4)
!628 = !DISubprogram(name: "s_set", scope: !430, file: !430, line: 1289, type: !361, isLocal: true, isDefinition: true, scopeLine: 1290, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @s_set, variables: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !640}
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !628, file: !430, line: 1289, type: !95)
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !628, file: !430, line: 1289, type: !43)
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 3, scope: !628, file: !430, line: 1289, type: !15)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !628, file: !430, line: 1291, type: !57)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !628, file: !430, line: 1292, type: !15)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !636, file: !430, line: 1316, type: !43)
!636 = distinct !DILexicalBlock(scope: !637, file: !430, line: 1316, column: 12)
!637 = distinct !DILexicalBlock(scope: !638, file: !430, line: 1312, column: 31)
!638 = distinct !DILexicalBlock(scope: !639, file: !430, line: 1312, column: 16)
!639 = distinct !DILexicalBlock(scope: !628, file: !430, line: 1307, column: 9)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !641, file: !430, line: 1322, type: !43)
!641 = distinct !DILexicalBlock(scope: !628, file: !430, line: 1322, column: 8)
!642 = !DISubprogram(name: "s_get", scope: !430, file: !430, line: 1274, type: !356, isLocal: true, isDefinition: true, scopeLine: 1275, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @s_get, variables: !643)
!643 = !{!644, !645, !646, !647}
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !642, file: !430, line: 1274, type: !95)
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !642, file: !430, line: 1274, type: !15)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !642, file: !430, line: 1276, type: !15)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !642, file: !430, line: 1277, type: !57)
!648 = !DISubprogram(name: "b_set", scope: !430, file: !430, line: 513, type: !361, isLocal: true, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @b_set, variables: !649)
!649 = !{!650, !651, !652, !653}
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !648, file: !430, line: 513, type: !95)
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !648, file: !430, line: 513, type: !43)
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !648, file: !430, line: 513, type: !15)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !648, file: !430, line: 515, type: !21)
!654 = !DISubprogram(name: "get_long", scope: !430, file: !430, line: 347, type: !655, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*)* @get_long, variables: !658)
!655 = !DISubroutineType(types: !656)
!656 = !{!49, !43, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!658 = !{!659, !660, !661}
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !654, file: !430, line: 347, type: !43)
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !654, file: !430, line: 347, type: !657)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !654, file: !430, line: 349, type: !21)
!662 = !DISubprogram(name: "b_get", scope: !430, file: !430, line: 524, type: !356, isLocal: true, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @b_get, variables: !663)
!663 = !{!664, !665, !666}
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !662, file: !430, line: 524, type: !95)
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !662, file: !430, line: 524, type: !15)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !662, file: !430, line: 526, type: !84)
!667 = !DISubprogram(name: "B_set", scope: !430, file: !430, line: 532, type: !361, isLocal: true, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @B_set, variables: !668)
!668 = !{!669, !670, !671, !672}
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !667, file: !430, line: 532, type: !95)
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !667, file: !430, line: 532, type: !43)
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !667, file: !430, line: 532, type: !15)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !667, file: !430, line: 534, type: !102)
!673 = !DISubprogram(name: "get_ulong", scope: !430, file: !430, line: 366, type: !674, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*)* @get_ulong, variables: !677)
!674 = !DISubroutineType(types: !675)
!675 = !{!49, !43, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!677 = !{!678, !679, !680}
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !673, file: !430, line: 366, type: !43)
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !673, file: !430, line: 366, type: !676)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !673, file: !430, line: 368, type: !102)
!681 = !DISubprogram(name: "B_get", scope: !430, file: !430, line: 543, type: !356, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @B_get, variables: !682)
!682 = !{!683, !684, !685}
!683 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !681, file: !430, line: 543, type: !95)
!684 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !681, file: !430, line: 543, type: !15)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !681, file: !430, line: 545, type: !406)
!686 = !DISubprogram(name: "c_set", scope: !430, file: !430, line: 1143, type: !361, isLocal: true, isDefinition: true, scopeLine: 1144, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @c_set, variables: !687)
!687 = !{!688, !689, !690, !691}
!688 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !686, file: !430, line: 1143, type: !95)
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !686, file: !430, line: 1143, type: !43)
!690 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !686, file: !430, line: 1143, type: !15)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "longval", scope: !692, file: !430, line: 1155, type: !21)
!692 = distinct !DILexicalBlock(scope: !693, file: !430, line: 1154, column: 5)
!693 = distinct !DILexicalBlock(scope: !686, file: !430, line: 1153, column: 9)
!694 = !DISubprogram(name: "c_get", scope: !430, file: !430, line: 1169, type: !356, isLocal: true, isDefinition: true, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @c_get, variables: !695)
!695 = !{!696, !697}
!696 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !694, file: !430, line: 1169, type: !95)
!697 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !694, file: !430, line: 1169, type: !15)
!698 = !DISubprogram(name: "d_set", scope: !430, file: !430, line: 1012, type: !361, isLocal: true, isDefinition: true, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @d_set, variables: !699)
!699 = !{!700, !701, !702, !703}
!700 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !698, file: !430, line: 1012, type: !95)
!701 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !698, file: !430, line: 1012, type: !43)
!702 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !698, file: !430, line: 1012, type: !15)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !698, file: !430, line: 1014, type: !392)
!704 = !DISubprogram(name: "d_get", scope: !430, file: !430, line: 1024, type: !356, isLocal: true, isDefinition: true, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @d_get, variables: !705)
!705 = !{!706, !707, !708}
!706 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !704, file: !430, line: 1024, type: !95)
!707 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !704, file: !430, line: 1024, type: !15)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !704, file: !430, line: 1026, type: !392)
!709 = !DISubprogram(name: "d_set_sw", scope: !430, file: !430, line: 1032, type: !361, isLocal: true, isDefinition: true, scopeLine: 1033, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @d_set_sw, variables: !710)
!710 = !{!711, !712, !713, !714}
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !709, file: !430, line: 1032, type: !95)
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !709, file: !430, line: 1032, type: !43)
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !709, file: !430, line: 1032, type: !15)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !709, file: !430, line: 1034, type: !392)
!715 = !DISubprogram(name: "d_get_sw", scope: !430, file: !430, line: 1050, type: !356, isLocal: true, isDefinition: true, scopeLine: 1051, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @d_get_sw, variables: !716)
!716 = !{!717, !718}
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !715, file: !430, line: 1050, type: !95)
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !715, file: !430, line: 1050, type: !15)
!719 = !DISubprogram(name: "g_set", scope: !430, file: !430, line: 992, type: !361, isLocal: true, isDefinition: true, scopeLine: 993, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @g_set, variables: !720)
!720 = !{!721, !722, !723, !724}
!721 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !719, file: !430, line: 992, type: !95)
!722 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !719, file: !430, line: 992, type: !43)
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !719, file: !430, line: 992, type: !15)
!724 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !719, file: !430, line: 994, type: !396)
!725 = !DISubprogram(name: "g_get", scope: !430, file: !430, line: 1004, type: !356, isLocal: true, isDefinition: true, scopeLine: 1005, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @g_get, variables: !726)
!726 = !{!727, !728, !729}
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !725, file: !430, line: 1004, type: !95)
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !725, file: !430, line: 1004, type: !15)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !725, file: !430, line: 1006, type: !396)
!730 = !DISubprogram(name: "f_set", scope: !430, file: !430, line: 1060, type: !361, isLocal: true, isDefinition: true, scopeLine: 1061, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @f_set, variables: !731)
!731 = !{!732, !733, !734, !735}
!732 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !730, file: !430, line: 1060, type: !95)
!733 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !730, file: !430, line: 1060, type: !43)
!734 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !730, file: !430, line: 1060, type: !15)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !730, file: !430, line: 1062, type: !390)
!736 = !DISubprogram(name: "f_get", scope: !430, file: !430, line: 1072, type: !356, isLocal: true, isDefinition: true, scopeLine: 1073, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @f_get, variables: !737)
!737 = !{!738, !739, !740}
!738 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !736, file: !430, line: 1072, type: !95)
!739 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !736, file: !430, line: 1072, type: !15)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !736, file: !430, line: 1074, type: !390)
!741 = !DISubprogram(name: "f_set_sw", scope: !430, file: !430, line: 1080, type: !361, isLocal: true, isDefinition: true, scopeLine: 1081, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @f_set_sw, variables: !742)
!742 = !{!743, !744, !745, !746}
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !741, file: !430, line: 1080, type: !95)
!744 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !741, file: !430, line: 1080, type: !43)
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !741, file: !430, line: 1080, type: !15)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !741, file: !430, line: 1082, type: !390)
!747 = !DISubprogram(name: "f_get_sw", scope: !430, file: !430, line: 1098, type: !356, isLocal: true, isDefinition: true, scopeLine: 1099, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @f_get_sw, variables: !748)
!748 = !{!749, !750}
!749 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !747, file: !430, line: 1098, type: !95)
!750 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !747, file: !430, line: 1098, type: !15)
!751 = !DISubprogram(name: "h_set", scope: !430, file: !430, line: 551, type: !361, isLocal: true, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @h_set, variables: !752)
!752 = !{!753, !754, !755, !756, !757}
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !751, file: !430, line: 551, type: !95)
!754 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !751, file: !430, line: 551, type: !43)
!755 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !751, file: !430, line: 551, type: !15)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !751, file: !430, line: 553, type: !21)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !751, file: !430, line: 554, type: !386)
!758 = !DISubprogram(name: "h_get", scope: !430, file: !430, line: 580, type: !356, isLocal: true, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @h_get, variables: !759)
!759 = !{!760, !761, !762}
!760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !758, file: !430, line: 580, type: !95)
!761 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !758, file: !430, line: 580, type: !15)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !758, file: !430, line: 582, type: !386)
!763 = !DISubprogram(name: "h_set_sw", scope: !430, file: !430, line: 565, type: !361, isLocal: true, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @h_set_sw, variables: !764)
!764 = !{!765, !766, !767, !768, !769}
!765 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !763, file: !430, line: 565, type: !95)
!766 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !763, file: !430, line: 565, type: !43)
!767 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !763, file: !430, line: 565, type: !15)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !763, file: !430, line: 567, type: !21)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field", scope: !763, file: !430, line: 568, type: !386)
!770 = !DISubprogram(name: "h_get_sw", scope: !430, file: !430, line: 589, type: !356, isLocal: true, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @h_get_sw, variables: !771)
!771 = !{!772, !773, !774}
!772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !770, file: !430, line: 589, type: !95)
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !770, file: !430, line: 589, type: !15)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !770, file: !430, line: 591, type: !386)
!775 = !DISubprogram(name: "H_set", scope: !430, file: !430, line: 599, type: !361, isLocal: true, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @H_set, variables: !776)
!776 = !{!777, !778, !779, !780, !781}
!777 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !775, file: !430, line: 599, type: !95)
!778 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !775, file: !430, line: 599, type: !43)
!779 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !775, file: !430, line: 599, type: !15)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !775, file: !430, line: 601, type: !102)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !775, file: !430, line: 602, type: !82)
!782 = !DISubprogram(name: "H_get", scope: !430, file: !430, line: 628, type: !356, isLocal: true, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @H_get, variables: !783)
!783 = !{!784, !785, !786}
!784 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !782, file: !430, line: 628, type: !95)
!785 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !782, file: !430, line: 628, type: !15)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !782, file: !430, line: 630, type: !82)
!787 = !DISubprogram(name: "H_set_sw", scope: !430, file: !430, line: 612, type: !361, isLocal: true, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @H_set_sw, variables: !788)
!788 = !{!789, !790, !791, !792, !793}
!789 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !787, file: !430, line: 612, type: !95)
!790 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !787, file: !430, line: 612, type: !43)
!791 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !787, file: !430, line: 612, type: !15)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !787, file: !430, line: 614, type: !102)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field", scope: !787, file: !430, line: 615, type: !82)
!794 = !DISubprogram(name: "H_get_sw", scope: !430, file: !430, line: 637, type: !356, isLocal: true, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @H_get_sw, variables: !795)
!795 = !{!796, !797, !798}
!796 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !794, file: !430, line: 637, type: !95)
!797 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !794, file: !430, line: 637, type: !15)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !794, file: !430, line: 639, type: !82)
!799 = !DISubprogram(name: "i_set", scope: !430, file: !430, line: 647, type: !361, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @i_set, variables: !800)
!800 = !{!801, !802, !803, !804, !805}
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !799, file: !430, line: 647, type: !95)
!802 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !799, file: !430, line: 647, type: !43)
!803 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !799, file: !430, line: 647, type: !15)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !799, file: !430, line: 649, type: !21)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !799, file: !430, line: 650, type: !49)
!806 = !DISubprogram(name: "i_get", scope: !430, file: !430, line: 676, type: !356, isLocal: true, isDefinition: true, scopeLine: 677, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @i_get, variables: !807)
!807 = !{!808, !809, !810}
!808 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !806, file: !430, line: 676, type: !95)
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !806, file: !430, line: 676, type: !15)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !806, file: !430, line: 678, type: !49)
!811 = !DISubprogram(name: "i_set_sw", scope: !430, file: !430, line: 660, type: !361, isLocal: true, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @i_set_sw, variables: !812)
!812 = !{!813, !814, !815, !816, !817}
!813 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !811, file: !430, line: 660, type: !95)
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !811, file: !430, line: 660, type: !43)
!815 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !811, file: !430, line: 660, type: !15)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !811, file: !430, line: 662, type: !21)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field", scope: !811, file: !430, line: 663, type: !49)
!818 = !DISubprogram(name: "i_get_sw", scope: !430, file: !430, line: 685, type: !356, isLocal: true, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @i_get_sw, variables: !819)
!819 = !{!820, !821, !822}
!820 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !818, file: !430, line: 685, type: !95)
!821 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !818, file: !430, line: 685, type: !15)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !818, file: !430, line: 687, type: !49)
!823 = !DISubprogram(name: "I_set", scope: !430, file: !430, line: 748, type: !361, isLocal: true, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @I_set, variables: !824)
!824 = !{!825, !826, !827, !828, !829}
!825 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !823, file: !430, line: 748, type: !95)
!826 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !823, file: !430, line: 748, type: !43)
!827 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !823, file: !430, line: 748, type: !15)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !823, file: !430, line: 750, type: !102)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !823, file: !430, line: 751, type: !347)
!830 = !DISubprogram(name: "I_get", scope: !430, file: !430, line: 776, type: !356, isLocal: true, isDefinition: true, scopeLine: 777, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @I_get, variables: !831)
!831 = !{!832, !833, !834}
!832 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !830, file: !430, line: 776, type: !95)
!833 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !830, file: !430, line: 776, type: !15)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !830, file: !430, line: 778, type: !347)
!835 = !DISubprogram(name: "I_set_sw", scope: !430, file: !430, line: 761, type: !361, isLocal: true, isDefinition: true, scopeLine: 762, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @I_set_sw, variables: !836)
!836 = !{!837, !838, !839, !840, !841}
!837 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !835, file: !430, line: 761, type: !95)
!838 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !835, file: !430, line: 761, type: !43)
!839 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !835, file: !430, line: 761, type: !15)
!840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !835, file: !430, line: 763, type: !102)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field", scope: !835, file: !430, line: 764, type: !347)
!842 = !DISubprogram(name: "I_get_sw", scope: !430, file: !430, line: 785, type: !356, isLocal: true, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @I_get_sw, variables: !843)
!843 = !{!844, !845, !846}
!844 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !842, file: !430, line: 785, type: !95)
!845 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !842, file: !430, line: 785, type: !15)
!846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !842, file: !430, line: 787, type: !347)
!847 = !DISubprogram(name: "l_set", scope: !430, file: !430, line: 795, type: !361, isLocal: true, isDefinition: true, scopeLine: 796, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @l_set, variables: !848)
!848 = !{!849, !850, !851, !852, !853}
!849 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !847, file: !430, line: 795, type: !95)
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !847, file: !430, line: 795, type: !43)
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !847, file: !430, line: 795, type: !15)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !847, file: !430, line: 797, type: !21)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !847, file: !430, line: 798, type: !21)
!854 = !DISubprogram(name: "l_get", scope: !430, file: !430, line: 824, type: !356, isLocal: true, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @l_get, variables: !855)
!855 = !{!856, !857, !858}
!856 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !854, file: !430, line: 824, type: !95)
!857 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !854, file: !430, line: 824, type: !15)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !854, file: !430, line: 826, type: !21)
!859 = !DISubprogram(name: "l_set_sw", scope: !430, file: !430, line: 808, type: !361, isLocal: true, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @l_set_sw, variables: !860)
!860 = !{!861, !862, !863, !864, !865}
!861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !859, file: !430, line: 808, type: !95)
!862 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !859, file: !430, line: 808, type: !43)
!863 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !859, file: !430, line: 808, type: !15)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !859, file: !430, line: 810, type: !21)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field", scope: !859, file: !430, line: 811, type: !21)
!866 = !DISubprogram(name: "l_get_sw", scope: !430, file: !430, line: 833, type: !356, isLocal: true, isDefinition: true, scopeLine: 834, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @l_get_sw, variables: !867)
!867 = !{!868, !869, !870}
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !866, file: !430, line: 833, type: !95)
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !866, file: !430, line: 833, type: !15)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !866, file: !430, line: 835, type: !21)
!871 = !DISubprogram(name: "L_set", scope: !430, file: !430, line: 843, type: !361, isLocal: true, isDefinition: true, scopeLine: 844, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @L_set, variables: !872)
!872 = !{!873, !874, !875, !876, !877}
!873 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !871, file: !430, line: 843, type: !95)
!874 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !871, file: !430, line: 843, type: !43)
!875 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !871, file: !430, line: 843, type: !15)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !871, file: !430, line: 845, type: !102)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !871, file: !430, line: 846, type: !102)
!878 = !DISubprogram(name: "L_get", scope: !430, file: !430, line: 872, type: !356, isLocal: true, isDefinition: true, scopeLine: 873, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @L_get, variables: !879)
!879 = !{!880, !881, !882}
!880 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !878, file: !430, line: 872, type: !95)
!881 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !878, file: !430, line: 872, type: !15)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !878, file: !430, line: 874, type: !102)
!883 = !DISubprogram(name: "L_set_sw", scope: !430, file: !430, line: 856, type: !361, isLocal: true, isDefinition: true, scopeLine: 857, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @L_set_sw, variables: !884)
!884 = !{!885, !886, !887, !888, !889}
!885 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !883, file: !430, line: 856, type: !95)
!886 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !883, file: !430, line: 856, type: !43)
!887 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !883, file: !430, line: 856, type: !15)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !883, file: !430, line: 858, type: !102)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field", scope: !883, file: !430, line: 859, type: !102)
!890 = !DISubprogram(name: "L_get_sw", scope: !430, file: !430, line: 881, type: !356, isLocal: true, isDefinition: true, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @L_get_sw, variables: !891)
!891 = !{!892, !893, !894}
!892 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !890, file: !430, line: 881, type: !95)
!893 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !890, file: !430, line: 881, type: !15)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !890, file: !430, line: 883, type: !102)
!895 = !DISubprogram(name: "q_set", scope: !430, file: !430, line: 892, type: !361, isLocal: true, isDefinition: true, scopeLine: 893, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @q_set, variables: !896)
!896 = !{!897, !898, !899, !900, !901}
!897 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !895, file: !430, line: 892, type: !95)
!898 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !895, file: !430, line: 892, type: !43)
!899 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !895, file: !430, line: 892, type: !15)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !895, file: !430, line: 894, type: !394)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !895, file: !430, line: 895, type: !394)
!902 = !DISubprogram(name: "get_longlong", scope: !430, file: !430, line: 387, type: !903, isLocal: true, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*)* @get_longlong, variables: !906)
!903 = !DISubroutineType(types: !904)
!904 = !{!49, !43, !905}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!906 = !{!907, !908, !909}
!907 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !902, file: !430, line: 387, type: !43)
!908 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !902, file: !430, line: 387, type: !905)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !902, file: !430, line: 389, type: !394)
!910 = !DISubprogram(name: "q_get", scope: !430, file: !430, line: 920, type: !356, isLocal: true, isDefinition: true, scopeLine: 921, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @q_get, variables: !911)
!911 = !{!912, !913, !914}
!912 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !910, file: !430, line: 920, type: !95)
!913 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !910, file: !430, line: 920, type: !15)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !910, file: !430, line: 922, type: !394)
!915 = !DISubprogram(name: "q_set_sw", scope: !430, file: !430, line: 905, type: !361, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @q_set_sw, variables: !916)
!916 = !{!917, !918, !919, !920, !921}
!917 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !915, file: !430, line: 905, type: !95)
!918 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !915, file: !430, line: 905, type: !43)
!919 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !915, file: !430, line: 905, type: !15)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !915, file: !430, line: 907, type: !394)
!921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field", scope: !915, file: !430, line: 908, type: !394)
!922 = !DISubprogram(name: "q_get_sw", scope: !430, file: !430, line: 929, type: !356, isLocal: true, isDefinition: true, scopeLine: 930, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @q_get_sw, variables: !923)
!923 = !{!924, !925, !926}
!924 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !922, file: !430, line: 929, type: !95)
!925 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !922, file: !430, line: 929, type: !15)
!926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !922, file: !430, line: 931, type: !394)
!927 = !DISubprogram(name: "Q_set", scope: !430, file: !430, line: 939, type: !361, isLocal: true, isDefinition: true, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @Q_set, variables: !928)
!928 = !{!929, !930, !931, !932, !933}
!929 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !927, file: !430, line: 939, type: !95)
!930 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !927, file: !430, line: 939, type: !43)
!931 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !927, file: !430, line: 939, type: !15)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !927, file: !430, line: 941, type: !419)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !927, file: !430, line: 942, type: !419)
!934 = !DISubprogram(name: "get_ulonglong", scope: !430, file: !430, line: 405, type: !935, isLocal: true, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*)* @get_ulonglong, variables: !938)
!935 = !DISubroutineType(types: !936)
!936 = !{!49, !43, !937}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!938 = !{!939, !940, !941}
!939 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !934, file: !430, line: 405, type: !43)
!940 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !934, file: !430, line: 405, type: !937)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !934, file: !430, line: 407, type: !419)
!942 = !DISubprogram(name: "Q_get", scope: !430, file: !430, line: 967, type: !356, isLocal: true, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @Q_get, variables: !943)
!943 = !{!944, !945, !946}
!944 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !942, file: !430, line: 967, type: !95)
!945 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !942, file: !430, line: 967, type: !15)
!946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !942, file: !430, line: 969, type: !419)
!947 = !DISubprogram(name: "Q_set_sw", scope: !430, file: !430, line: 952, type: !361, isLocal: true, isDefinition: true, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @Q_set_sw, variables: !948)
!948 = !{!949, !950, !951, !952, !953}
!949 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !947, file: !430, line: 952, type: !95)
!950 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !947, file: !430, line: 952, type: !43)
!951 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !947, file: !430, line: 952, type: !15)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !947, file: !430, line: 954, type: !419)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field", scope: !947, file: !430, line: 955, type: !419)
!954 = !DISubprogram(name: "Q_get_sw", scope: !430, file: !430, line: 976, type: !356, isLocal: true, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @Q_get_sw, variables: !955)
!955 = !{!956, !957, !958}
!956 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !954, file: !430, line: 976, type: !95)
!957 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !954, file: !430, line: 976, type: !15)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !954, file: !430, line: 978, type: !419)
!959 = !DISubprogram(name: "P_set", scope: !430, file: !430, line: 1501, type: !361, isLocal: true, isDefinition: true, scopeLine: 1502, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @P_set, variables: !960)
!960 = !{!961, !962, !963, !964}
!961 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !959, file: !430, line: 1501, type: !95)
!962 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !959, file: !430, line: 1501, type: !43)
!963 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !959, file: !430, line: 1501, type: !15)
!964 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !959, file: !430, line: 1503, type: !95)
!965 = !DISubprogram(name: "P_get", scope: !430, file: !430, line: 1534, type: !356, isLocal: true, isDefinition: true, scopeLine: 1535, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @P_get, variables: !966)
!966 = !{!967, !968}
!967 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !965, file: !430, line: 1534, type: !95)
!968 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !965, file: !430, line: 1534, type: !15)
!969 = !DISubprogram(name: "z_set", scope: !430, file: !430, line: 1327, type: !361, isLocal: true, isDefinition: true, scopeLine: 1328, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @z_set, variables: !970)
!970 = !{!971, !972, !973}
!971 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !969, file: !430, line: 1327, type: !95)
!972 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !969, file: !430, line: 1327, type: !43)
!973 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !969, file: !430, line: 1327, type: !15)
!974 = !DISubprogram(name: "z_get", scope: !430, file: !430, line: 1353, type: !356, isLocal: true, isDefinition: true, scopeLine: 1354, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @z_get, variables: !975)
!975 = !{!976, !977}
!976 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !974, file: !430, line: 1353, type: !95)
!977 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !974, file: !430, line: 1353, type: !15)
!978 = !DISubprogram(name: "u_set", scope: !430, file: !430, line: 1177, type: !361, isLocal: true, isDefinition: true, scopeLine: 1178, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @u_set, variables: !979)
!979 = !{!980, !981, !982, !983, !984, !988, !992}
!980 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !978, file: !430, line: 1177, type: !95)
!981 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !978, file: !430, line: 1177, type: !43)
!982 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !978, file: !430, line: 1177, type: !15)
!983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !978, file: !430, line: 1179, type: !15)
!984 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chars", scope: !978, file: !430, line: 1180, type: !985)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 64, align: 32, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 2)
!988 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !989, file: !430, line: 1191, type: !43)
!989 = distinct !DILexicalBlock(scope: !990, file: !430, line: 1191, column: 12)
!990 = distinct !DILexicalBlock(scope: !991, file: !430, line: 1190, column: 19)
!991 = distinct !DILexicalBlock(scope: !978, file: !430, line: 1190, column: 9)
!992 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !993, file: !430, line: 1198, type: !43)
!993 = distinct !DILexicalBlock(scope: !978, file: !430, line: 1198, column: 8)
!994 = !DISubprogram(name: "u_get", scope: !430, file: !430, line: 1205, type: !356, isLocal: true, isDefinition: true, scopeLine: 1206, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @u_get, variables: !995)
!995 = !{!996, !997}
!996 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !994, file: !430, line: 1205, type: !95)
!997 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !994, file: !430, line: 1205, type: !15)
!998 = !DISubprogram(name: "U_set", scope: !430, file: !430, line: 1235, type: !361, isLocal: true, isDefinition: true, scopeLine: 1236, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @U_set, variables: !999)
!999 = !{!1000, !1001, !1002, !1003, !1007, !1008}
!1000 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !998, file: !430, line: 1235, type: !95)
!1001 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !998, file: !430, line: 1235, type: !43)
!1002 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 3, scope: !998, file: !430, line: 1235, type: !15)
!1003 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wstr", scope: !998, file: !430, line: 1237, type: !1004)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64, align: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UNICODE", file: !1006, line: 93, baseType: !423)
!1006 = !DIFile(filename: "./Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!1007 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !998, file: !430, line: 1238, type: !15)
!1008 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1009, file: !430, line: 1258, type: !43)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !430, line: 1258, column: 12)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !430, line: 1254, column: 24)
!1011 = distinct !DILexicalBlock(scope: !998, file: !430, line: 1254, column: 9)
!1012 = !DISubprogram(name: "U_get", scope: !430, file: !430, line: 1212, type: !356, isLocal: true, isDefinition: true, scopeLine: 1213, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @U_get, variables: !1013)
!1013 = !{!1014, !1015, !1016, !1017}
!1014 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !1012, file: !430, line: 1212, type: !95)
!1015 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !1012, file: !430, line: 1212, type: !15)
!1016 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !1012, file: !430, line: 1214, type: !15)
!1017 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1012, file: !430, line: 1215, type: !422)
!1018 = !DISubprogram(name: "Z_set", scope: !430, file: !430, line: 1375, type: !361, isLocal: true, isDefinition: true, scopeLine: 1376, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @Z_set, variables: !1019)
!1019 = !{!1020, !1021, !1022, !1023, !1024}
!1020 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !1018, file: !430, line: 1375, type: !95)
!1021 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !1018, file: !430, line: 1375, type: !43)
!1022 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !1018, file: !430, line: 1375, type: !15)
!1023 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keep", scope: !1018, file: !430, line: 1377, type: !43)
!1024 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !1018, file: !430, line: 1378, type: !422)
!1025 = !DISubprogram(name: "pymem_destructor", scope: !430, file: !430, line: 12, type: !41, isLocal: true, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @pymem_destructor, variables: !1026)
!1026 = !{!1027, !1028}
!1027 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !1025, file: !430, line: 12, type: !43)
!1028 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1025, file: !430, line: 14, type: !95)
!1029 = !DISubprogram(name: "Z_get", scope: !430, file: !430, line: 1416, type: !356, isLocal: true, isDefinition: true, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @Z_get, variables: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !1029, file: !430, line: 1416, type: !95)
!1032 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !1029, file: !430, line: 1416, type: !15)
!1033 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1029, file: !430, line: 1418, type: !422)
!1034 = !DISubprogram(name: "bool_set", scope: !430, file: !430, line: 727, type: !361, isLocal: true, isDefinition: true, scopeLine: 728, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @bool_set, variables: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !1034, file: !430, line: 727, type: !95)
!1037 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !1034, file: !430, line: 727, type: !43)
!1038 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !1034, file: !430, line: 727, type: !15)
!1039 = !DISubprogram(name: "bool_get", scope: !430, file: !430, line: 742, type: !356, isLocal: true, isDefinition: true, scopeLine: 743, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @bool_get, variables: !1040)
!1040 = !{!1041, !1042}
!1041 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !1039, file: !430, line: 742, type: !95)
!1042 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !1039, file: !430, line: 742, type: !15)
!1043 = !DISubprogram(name: "O_set", scope: !430, file: !430, line: 1133, type: !361, isLocal: true, isDefinition: true, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i64)* @O_set, variables: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !1043, file: !430, line: 1133, type: !95)
!1046 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !1043, file: !430, line: 1133, type: !43)
!1047 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !1043, file: !430, line: 1133, type: !15)
!1048 = !DISubprogram(name: "O_get", scope: !430, file: !430, line: 1118, type: !356, isLocal: true, isDefinition: true, scopeLine: 1119, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @O_get, variables: !1049)
!1049 = !{!1050, !1051, !1052}
!1050 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !1048, file: !430, line: 1118, type: !95)
!1051 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !1048, file: !430, line: 1118, type: !15)
!1052 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ob", scope: !1048, file: !430, line: 1120, type: !43)
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1074}
!1054 = !DIGlobalVariable(name: "PyCField_Type", scope: !0, file: !430, line: 294, type: !365, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyCField_Type)
!1055 = !DIGlobalVariable(name: "initialized", scope: !555, file: !430, line: 1608, type: !49, isLocal: true, isDefinition: true, variable: i32* @_ctypes_get_fielddesc.initialized)
!1056 = !DIGlobalVariable(name: "ffi_type_void", scope: !0, file: !430, line: 1679, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_void)
!1057 = !DIGlobalVariable(name: "ffi_type_uint8", scope: !0, file: !430, line: 1681, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_uint8)
!1058 = !DIGlobalVariable(name: "ffi_type_sint8", scope: !0, file: !430, line: 1682, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_sint8)
!1059 = !DIGlobalVariable(name: "ffi_type_uint16", scope: !0, file: !430, line: 1684, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_uint16)
!1060 = !DIGlobalVariable(name: "ffi_type_sint16", scope: !0, file: !430, line: 1685, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_sint16)
!1061 = !DIGlobalVariable(name: "ffi_type_uint32", scope: !0, file: !430, line: 1687, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_uint32)
!1062 = !DIGlobalVariable(name: "ffi_type_sint32", scope: !0, file: !430, line: 1688, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_sint32)
!1063 = !DIGlobalVariable(name: "ffi_type_uint64", scope: !0, file: !430, line: 1690, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_uint64)
!1064 = !DIGlobalVariable(name: "ffi_type_sint64", scope: !0, file: !430, line: 1691, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_sint64)
!1065 = !DIGlobalVariable(name: "ffi_type_float", scope: !0, file: !430, line: 1693, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_float)
!1066 = !DIGlobalVariable(name: "ffi_type_double", scope: !0, file: !430, line: 1694, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_double)
!1067 = !DIGlobalVariable(name: "ffi_type_longdouble", scope: !0, file: !430, line: 1700, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_longdouble)
!1068 = !DIGlobalVariable(name: "ffi_type_pointer", scope: !0, file: !430, line: 1703, type: !472, isLocal: false, isDefinition: true, variable: %struct._ffi_type* @ffi_type_pointer)
!1069 = !DIGlobalVariable(name: "PyCField_getset", scope: !0, file: !430, line: 246, type: !1070, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @PyCField_getset)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 960, align: 64, elements: !1072)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !300, line: 17, baseType: !299)
!1072 = !{!1073}
!1073 = !DISubrange(count: 3)
!1074 = !DIGlobalVariable(name: "formattable", scope: !0, file: !430, line: 1543, type: !1075, isLocal: true, isDefinition: true, variable: [23 x %struct.fielddesc]* @formattable)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 8832, align: 64, elements: !1076)
!1076 = !{!1077}
!1077 = !DISubrange(count: 23)
!1078 = !{i32 2, !"Dwarf Version", i32 4}
!1079 = !{i32 2, !"Debug Info Version", i32 3}
!1080 = !{i32 1, !"PIC Level", i32 2}
!1081 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1082 = !{!1083, !1083, i64 0}
!1083 = !{!"any pointer", !1084, i64 0}
!1084 = !{!"omnipotent char", !1085, i64 0}
!1085 = !{!"Simple C/C++ TBAA"}
!1086 = !DIExpression()
!1087 = !DILocation(line: 46, column: 29, scope: !429)
!1088 = !{!1089, !1089, i64 0}
!1089 = !{!"long", !1084, i64 0}
!1090 = !DILocation(line: 46, column: 46, scope: !429)
!1091 = !DILocation(line: 47, column: 29, scope: !429)
!1092 = !{!1093, !1093, i64 0}
!1093 = !{!"int", !1084, i64 0}
!1094 = !DILocation(line: 47, column: 46, scope: !429)
!1095 = !DILocation(line: 47, column: 60, scope: !429)
!1096 = !DILocation(line: 48, column: 29, scope: !429)
!1097 = !DILocation(line: 48, column: 48, scope: !429)
!1098 = !DILocation(line: 48, column: 69, scope: !429)
!1099 = !DILocation(line: 49, column: 21, scope: !429)
!1100 = !DILocation(line: 49, column: 31, scope: !429)
!1101 = !DILocation(line: 51, column: 5, scope: !429)
!1102 = !DILocation(line: 51, column: 19, scope: !429)
!1103 = !DILocation(line: 52, column: 5, scope: !429)
!1104 = !DILocation(line: 52, column: 15, scope: !429)
!1105 = !DILocation(line: 53, column: 5, scope: !429)
!1106 = !DILocation(line: 53, column: 16, scope: !429)
!1107 = !DILocation(line: 53, column: 22, scope: !429)
!1108 = !DILocation(line: 54, column: 5, scope: !429)
!1109 = !DILocation(line: 54, column: 13, scope: !429)
!1110 = !DILocation(line: 55, column: 5, scope: !429)
!1111 = !DILocation(line: 55, column: 13, scope: !429)
!1112 = !DILocation(line: 56, column: 5, scope: !429)
!1113 = !DILocation(line: 56, column: 20, scope: !429)
!1114 = !DILocation(line: 57, column: 5, scope: !429)
!1115 = !DILocation(line: 57, column: 9, scope: !429)
!1116 = !DILocation(line: 63, column: 28, scope: !429)
!1117 = !DILocation(line: 63, column: 12, scope: !429)
!1118 = !DILocation(line: 63, column: 10, scope: !429)
!1119 = !DILocation(line: 65, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !429, file: !430, line: 65, column: 9)
!1121 = !DILocation(line: 65, column: 14, scope: !1120)
!1122 = !DILocation(line: 65, column: 9, scope: !429)
!1123 = !DILocation(line: 66, column: 9, scope: !1120)
!1124 = !DILocation(line: 67, column: 27, scope: !429)
!1125 = !DILocation(line: 67, column: 12, scope: !429)
!1126 = !DILocation(line: 67, column: 10, scope: !429)
!1127 = !DILocation(line: 68, column: 10, scope: !525)
!1128 = !DILocation(line: 68, column: 9, scope: !429)
!1129 = !DILocation(line: 69, column: 25, scope: !524)
!1130 = !DILocation(line: 69, column: 9, scope: !524)
!1131 = !DILocation(line: 71, column: 9, scope: !524)
!1132 = !DILocation(line: 71, column: 14, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !523, file: !430, discriminator: 1)
!1134 = !DILocation(line: 71, column: 24, scope: !523)
!1135 = !DILocation(line: 71, column: 54, scope: !523)
!1136 = !DILocation(line: 71, column: 41, scope: !523)
!1137 = !DILocation(line: 71, column: 69, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !523, file: !430, line: 71, column: 66)
!1139 = !DILocation(line: 71, column: 86, scope: !1138)
!1140 = !DILocation(line: 71, column: 66, scope: !1138)
!1141 = !{!1142, !1089, i64 0}
!1142 = !{!"_object", !1089, i64 0, !1083, i64 8}
!1143 = !DILocation(line: 71, column: 96, scope: !1138)
!1144 = !DILocation(line: 71, column: 66, scope: !523)
!1145 = !DILocation(line: 71, column: 66, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !523, file: !430, discriminator: 2)
!1147 = !DILocation(line: 71, column: 127, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1138, file: !430, discriminator: 3)
!1149 = !DILocation(line: 71, column: 145, scope: !1138)
!1150 = !{!1142, !1083, i64 8}
!1151 = !DILocation(line: 71, column: 155, scope: !1138)
!1152 = !{!1153, !1083, i64 48}
!1153 = !{!"_typeobject", !1154, i64 0, !1083, i64 24, !1089, i64 32, !1089, i64 40, !1083, i64 48, !1083, i64 56, !1083, i64 64, !1083, i64 72, !1083, i64 80, !1083, i64 88, !1083, i64 96, !1083, i64 104, !1083, i64 112, !1083, i64 120, !1083, i64 128, !1083, i64 136, !1083, i64 144, !1083, i64 152, !1083, i64 160, !1089, i64 168, !1083, i64 176, !1083, i64 184, !1083, i64 192, !1083, i64 200, !1089, i64 208, !1083, i64 216, !1083, i64 224, !1083, i64 232, !1083, i64 240, !1083, i64 248, !1083, i64 256, !1083, i64 264, !1083, i64 272, !1083, i64 280, !1089, i64 288, !1083, i64 296, !1083, i64 304, !1083, i64 312, !1083, i64 320, !1083, i64 328, !1083, i64 336, !1083, i64 344, !1083, i64 352, !1083, i64 360, !1083, i64 368, !1083, i64 376, !1093, i64 384, !1083, i64 392}
!1154 = !{!"", !1142, i64 0, !1089, i64 16}
!1155 = !DILocation(line: 71, column: 180, scope: !1138)
!1156 = !DILocation(line: 71, column: 111, scope: !1138)
!1157 = !DILocation(line: 71, column: 199, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !524, file: !430, discriminator: 4)
!1159 = !DILocation(line: 71, column: 199, scope: !523)
!1160 = !DILocation(line: 71, column: 199, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !523, file: !430, discriminator: 5)
!1162 = !DILocation(line: 72, column: 9, scope: !524)
!1163 = !DILocation(line: 74, column: 9, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !429, file: !430, line: 74, column: 9)
!1165 = !DILocation(line: 75, column: 9, scope: !1164)
!1166 = !DILocation(line: 75, column: 13, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1164, file: !430, discriminator: 1)
!1168 = !DILocation(line: 75, column: 12, scope: !1164)
!1169 = !DILocation(line: 81, column: 9, scope: !1164)
!1170 = !DILocation(line: 81, column: 12, scope: !1167)
!1171 = !DILocation(line: 81, column: 18, scope: !1164)
!1172 = !{!1173, !1089, i64 40}
!1173 = !{!"", !1174, i64 0, !1089, i64 40, !1089, i64 48, !1089, i64 56, !1175, i64 64, !1083, i64 88, !1083, i64 96, !1083, i64 104, !1083, i64 112, !1083, i64 120, !1083, i64 128, !1083, i64 136, !1083, i64 144, !1093, i64 152, !1083, i64 160, !1093, i64 168, !1083, i64 176}
!1174 = !{!"", !1142, i64 0, !1089, i64 16, !1083, i64 24, !1083, i64 32}
!1175 = !{!"_ffi_type", !1089, i64 0, !1176, i64 8, !1176, i64 10, !1083, i64 16}
!1176 = !{!"short", !1084, i64 0}
!1177 = !DILocation(line: 81, column: 23, scope: !1164)
!1178 = !DILocation(line: 81, column: 31, scope: !1164)
!1179 = !DILocation(line: 81, column: 30, scope: !1164)
!1180 = !DILocation(line: 81, column: 27, scope: !1164)
!1181 = !DILocation(line: 83, column: 9, scope: !1164)
!1182 = !DILocation(line: 83, column: 14, scope: !1167)
!1183 = !DILocation(line: 83, column: 13, scope: !1164)
!1184 = !DILocation(line: 83, column: 24, scope: !1164)
!1185 = !DILocation(line: 83, column: 22, scope: !1164)
!1186 = !DILocation(line: 83, column: 12, scope: !1164)
!1187 = !DILocation(line: 83, column: 37, scope: !1164)
!1188 = !DILocation(line: 83, column: 36, scope: !1164)
!1189 = !DILocation(line: 83, column: 33, scope: !1164)
!1190 = !DILocation(line: 74, column: 9, scope: !429)
!1191 = !DILocation(line: 85, column: 19, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1164, file: !430, line: 83, column: 50)
!1193 = !DILocation(line: 87, column: 5, scope: !1192)
!1194 = !DILocation(line: 87, column: 16, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1164, file: !430, line: 87, column: 16)
!1196 = !DILocation(line: 88, column: 9, scope: !1195)
!1197 = !DILocation(line: 88, column: 13, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1195, file: !430, discriminator: 1)
!1199 = !DILocation(line: 88, column: 12, scope: !1195)
!1200 = !DILocation(line: 89, column: 9, scope: !1195)
!1201 = !DILocation(line: 89, column: 12, scope: !1198)
!1202 = !DILocation(line: 89, column: 18, scope: !1195)
!1203 = !DILocation(line: 89, column: 23, scope: !1195)
!1204 = !DILocation(line: 89, column: 31, scope: !1195)
!1205 = !DILocation(line: 89, column: 30, scope: !1195)
!1206 = !DILocation(line: 89, column: 27, scope: !1195)
!1207 = !DILocation(line: 90, column: 9, scope: !1195)
!1208 = !DILocation(line: 90, column: 14, scope: !1198)
!1209 = !DILocation(line: 90, column: 13, scope: !1195)
!1210 = !DILocation(line: 90, column: 24, scope: !1195)
!1211 = !DILocation(line: 90, column: 22, scope: !1195)
!1212 = !DILocation(line: 90, column: 12, scope: !1195)
!1213 = !DILocation(line: 90, column: 36, scope: !1195)
!1214 = !DILocation(line: 90, column: 42, scope: !1195)
!1215 = !DILocation(line: 90, column: 47, scope: !1195)
!1216 = !DILocation(line: 90, column: 33, scope: !1195)
!1217 = !DILocation(line: 87, column: 16, scope: !1164)
!1218 = !DILocation(line: 92, column: 19, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1195, file: !430, line: 90, column: 52)
!1220 = !DILocation(line: 94, column: 5, scope: !1219)
!1221 = !DILocation(line: 94, column: 16, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1195, file: !430, line: 94, column: 16)
!1223 = !DILocation(line: 94, column: 16, scope: !1195)
!1224 = !DILocation(line: 96, column: 19, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !430, line: 94, column: 25)
!1226 = !DILocation(line: 97, column: 10, scope: !1225)
!1227 = !DILocation(line: 97, column: 18, scope: !1225)
!1228 = !DILocation(line: 98, column: 24, scope: !1225)
!1229 = !DILocation(line: 98, column: 30, scope: !1225)
!1230 = !DILocation(line: 98, column: 35, scope: !1225)
!1231 = !DILocation(line: 98, column: 10, scope: !1225)
!1232 = !DILocation(line: 98, column: 22, scope: !1225)
!1233 = !DILocation(line: 99, column: 5, scope: !1225)
!1234 = !DILocation(line: 101, column: 19, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1222, file: !430, line: 99, column: 12)
!1236 = !DILocation(line: 102, column: 10, scope: !1235)
!1237 = !DILocation(line: 102, column: 18, scope: !1235)
!1238 = !DILocation(line: 103, column: 10, scope: !1235)
!1239 = !DILocation(line: 103, column: 22, scope: !1235)
!1240 = !DILocation(line: 106, column: 12, scope: !429)
!1241 = !DILocation(line: 106, column: 18, scope: !429)
!1242 = !DILocation(line: 106, column: 10, scope: !429)
!1243 = !DILocation(line: 107, column: 13, scope: !429)
!1244 = !DILocation(line: 107, column: 11, scope: !429)
!1245 = !DILocation(line: 112, column: 24, scope: !528)
!1246 = !DILocation(line: 112, column: 33, scope: !528)
!1247 = !DILocation(line: 112, column: 42, scope: !528)
!1248 = !DILocation(line: 112, column: 66, scope: !528)
!1249 = !DILocation(line: 112, column: 100, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !528, file: !430, discriminator: 1)
!1251 = !DILocation(line: 112, column: 109, scope: !528)
!1252 = !DILocation(line: 112, column: 69, scope: !528)
!1253 = !DILocation(line: 112, column: 9, scope: !429)
!1254 = !DILocation(line: 113, column: 9, scope: !527)
!1255 = !DILocation(line: 113, column: 24, scope: !527)
!1256 = !DILocation(line: 113, column: 47, scope: !527)
!1257 = !DILocation(line: 113, column: 32, scope: !527)
!1258 = !DILocation(line: 114, column: 9, scope: !527)
!1259 = !DILocation(line: 114, column: 24, scope: !527)
!1260 = !DILocation(line: 115, column: 13, scope: !535)
!1261 = !DILocation(line: 115, column: 19, scope: !535)
!1262 = !DILocation(line: 115, column: 22, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !535, file: !430, discriminator: 1)
!1264 = !DILocation(line: 115, column: 29, scope: !535)
!1265 = !{!1173, !1083, i64 88}
!1266 = !DILocation(line: 115, column: 22, scope: !535)
!1267 = !DILocation(line: 115, column: 13, scope: !527)
!1268 = !DILocation(line: 116, column: 36, scope: !534)
!1269 = !DILocation(line: 116, column: 43, scope: !534)
!1270 = !DILocation(line: 116, column: 21, scope: !534)
!1271 = !DILocation(line: 116, column: 19, scope: !534)
!1272 = !DILocation(line: 117, column: 18, scope: !533)
!1273 = !DILocation(line: 117, column: 17, scope: !534)
!1274 = !DILocation(line: 118, column: 33, scope: !532)
!1275 = !DILocation(line: 118, column: 17, scope: !532)
!1276 = !DILocation(line: 120, column: 17, scope: !532)
!1277 = !DILocation(line: 120, column: 22, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !531, file: !430, discriminator: 1)
!1279 = !DILocation(line: 120, column: 32, scope: !531)
!1280 = !DILocation(line: 120, column: 62, scope: !531)
!1281 = !DILocation(line: 120, column: 49, scope: !531)
!1282 = !DILocation(line: 120, column: 77, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !531, file: !430, line: 120, column: 74)
!1284 = !DILocation(line: 120, column: 94, scope: !1283)
!1285 = !DILocation(line: 120, column: 74, scope: !1283)
!1286 = !DILocation(line: 120, column: 104, scope: !1283)
!1287 = !DILocation(line: 120, column: 74, scope: !531)
!1288 = !DILocation(line: 120, column: 74, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !531, file: !430, discriminator: 2)
!1290 = !DILocation(line: 120, column: 135, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1283, file: !430, discriminator: 3)
!1292 = !DILocation(line: 120, column: 153, scope: !1283)
!1293 = !DILocation(line: 120, column: 163, scope: !1283)
!1294 = !DILocation(line: 120, column: 188, scope: !1283)
!1295 = !DILocation(line: 120, column: 119, scope: !1283)
!1296 = !DILocation(line: 120, column: 207, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !532, file: !430, discriminator: 4)
!1298 = !DILocation(line: 120, column: 207, scope: !531)
!1299 = !DILocation(line: 120, column: 207, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !531, file: !430, discriminator: 5)
!1301 = !DILocation(line: 121, column: 17, scope: !532)
!1302 = !DILocation(line: 123, column: 17, scope: !538)
!1303 = !DILocation(line: 123, column: 24, scope: !538)
!1304 = !{!1173, !1083, i64 104}
!1305 = !DILocation(line: 123, column: 35, scope: !538)
!1306 = !DILocation(line: 123, column: 63, scope: !538)
!1307 = !{!1308, !1083, i64 16}
!1308 = !{!"fielddesc", !1084, i64 0, !1083, i64 8, !1083, i64 16, !1083, i64 24, !1083, i64 32, !1083, i64 40}
!1309 = !DILocation(line: 123, column: 32, scope: !538)
!1310 = !DILocation(line: 123, column: 17, scope: !534)
!1311 = !DILocation(line: 124, column: 17, scope: !537)
!1312 = !DILocation(line: 124, column: 35, scope: !537)
!1313 = !DILocation(line: 124, column: 40, scope: !537)
!1314 = !DILocation(line: 125, column: 27, scope: !537)
!1315 = !DILocation(line: 125, column: 31, scope: !537)
!1316 = !DILocation(line: 125, column: 25, scope: !537)
!1317 = !DILocation(line: 126, column: 27, scope: !537)
!1318 = !DILocation(line: 126, column: 31, scope: !537)
!1319 = !{!1308, !1083, i64 8}
!1320 = !DILocation(line: 126, column: 25, scope: !537)
!1321 = !DILocation(line: 127, column: 13, scope: !538)
!1322 = !DILocation(line: 127, column: 13, scope: !537)
!1323 = !DILocation(line: 129, column: 17, scope: !550)
!1324 = !DILocation(line: 129, column: 24, scope: !550)
!1325 = !DILocation(line: 129, column: 35, scope: !550)
!1326 = !DILocation(line: 129, column: 63, scope: !550)
!1327 = !DILocation(line: 129, column: 32, scope: !550)
!1328 = !DILocation(line: 129, column: 17, scope: !534)
!1329 = !DILocation(line: 130, column: 17, scope: !549)
!1330 = !DILocation(line: 130, column: 35, scope: !549)
!1331 = !DILocation(line: 130, column: 40, scope: !549)
!1332 = !DILocation(line: 131, column: 27, scope: !549)
!1333 = !DILocation(line: 131, column: 31, scope: !549)
!1334 = !DILocation(line: 131, column: 25, scope: !549)
!1335 = !DILocation(line: 132, column: 27, scope: !549)
!1336 = !DILocation(line: 132, column: 31, scope: !549)
!1337 = !DILocation(line: 132, column: 25, scope: !549)
!1338 = !DILocation(line: 133, column: 13, scope: !550)
!1339 = !DILocation(line: 133, column: 13, scope: !549)
!1340 = !DILocation(line: 135, column: 9, scope: !534)
!1341 = !DILocation(line: 136, column: 5, scope: !528)
!1342 = !DILocation(line: 136, column: 5, scope: !1250)
!1343 = !DILocation(line: 136, column: 5, scope: !527)
!1344 = !DILocation(line: 138, column: 21, scope: !429)
!1345 = !DILocation(line: 138, column: 5, scope: !429)
!1346 = !DILocation(line: 138, column: 11, scope: !429)
!1347 = !DILocation(line: 138, column: 19, scope: !429)
!1348 = !{!1349, !1083, i64 56}
!1349 = !{!"", !1142, i64 0, !1089, i64 16, !1089, i64 24, !1089, i64 32, !1083, i64 40, !1083, i64 48, !1083, i64 56, !1093, i64 64}
!1350 = !DILocation(line: 139, column: 21, scope: !429)
!1351 = !DILocation(line: 139, column: 5, scope: !429)
!1352 = !DILocation(line: 139, column: 11, scope: !429)
!1353 = !DILocation(line: 139, column: 19, scope: !429)
!1354 = !{!1349, !1083, i64 48}
!1355 = !DILocation(line: 140, column: 19, scope: !429)
!1356 = !DILocation(line: 140, column: 5, scope: !429)
!1357 = !DILocation(line: 140, column: 11, scope: !429)
!1358 = !DILocation(line: 140, column: 17, scope: !429)
!1359 = !{!1349, !1089, i64 32}
!1360 = !DILocation(line: 142, column: 21, scope: !429)
!1361 = !DILocation(line: 142, column: 30, scope: !429)
!1362 = !DILocation(line: 142, column: 39, scope: !429)
!1363 = !DILocation(line: 143, column: 19, scope: !429)
!1364 = !DILocation(line: 143, column: 5, scope: !429)
!1365 = !DILocation(line: 143, column: 11, scope: !429)
!1366 = !DILocation(line: 143, column: 17, scope: !429)
!1367 = !{!1349, !1083, i64 40}
!1368 = !DILocation(line: 145, column: 13, scope: !429)
!1369 = !DILocation(line: 145, column: 5, scope: !429)
!1370 = !DILocation(line: 147, column: 13, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !554, file: !430, line: 147, column: 13)
!1372 = !DILocation(line: 147, column: 13, scope: !554)
!1373 = !DILocation(line: 148, column: 27, scope: !1371)
!1374 = !DILocation(line: 148, column: 35, scope: !1371)
!1375 = !DILocation(line: 148, column: 26, scope: !1371)
!1376 = !DILocation(line: 148, column: 45, scope: !1371)
!1377 = !DILocation(line: 148, column: 44, scope: !1371)
!1378 = !DILocation(line: 148, column: 42, scope: !1371)
!1379 = !DILocation(line: 148, column: 60, scope: !1371)
!1380 = !DILocation(line: 148, column: 59, scope: !1371)
!1381 = !DILocation(line: 148, column: 57, scope: !1371)
!1382 = !DILocation(line: 148, column: 70, scope: !1371)
!1383 = !DILocation(line: 148, column: 68, scope: !1371)
!1384 = !DILocation(line: 148, column: 13, scope: !1371)
!1385 = !DILocation(line: 148, column: 19, scope: !1371)
!1386 = !DILocation(line: 148, column: 24, scope: !1371)
!1387 = !{!1349, !1089, i64 24}
!1388 = !DILocation(line: 150, column: 27, scope: !1371)
!1389 = !DILocation(line: 150, column: 35, scope: !1371)
!1390 = !DILocation(line: 150, column: 45, scope: !1371)
!1391 = !DILocation(line: 150, column: 44, scope: !1371)
!1392 = !DILocation(line: 150, column: 42, scope: !1371)
!1393 = !DILocation(line: 150, column: 26, scope: !1371)
!1394 = !DILocation(line: 150, column: 13, scope: !1371)
!1395 = !DILocation(line: 150, column: 19, scope: !1371)
!1396 = !DILocation(line: 150, column: 24, scope: !1371)
!1397 = !DILocation(line: 151, column: 20, scope: !554)
!1398 = !DILocation(line: 151, column: 10, scope: !554)
!1399 = !DILocation(line: 151, column: 18, scope: !554)
!1400 = !DILocation(line: 151, column: 9, scope: !554)
!1401 = !DILocation(line: 154, column: 13, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !554, file: !430, line: 154, column: 13)
!1403 = !DILocation(line: 154, column: 13, scope: !554)
!1404 = !DILocation(line: 155, column: 23, scope: !1402)
!1405 = !DILocation(line: 155, column: 22, scope: !1402)
!1406 = !DILocation(line: 155, column: 32, scope: !1402)
!1407 = !DILocation(line: 155, column: 38, scope: !1402)
!1408 = !{!1173, !1089, i64 48}
!1409 = !DILocation(line: 155, column: 29, scope: !1402)
!1410 = !DILocation(line: 155, column: 48, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1402, file: !430, discriminator: 1)
!1412 = !DILocation(line: 155, column: 47, scope: !1402)
!1413 = !DILocation(line: 155, column: 57, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1402, file: !430, discriminator: 2)
!1415 = !DILocation(line: 155, column: 63, scope: !1402)
!1416 = !DILocation(line: 155, column: 19, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1418, file: !430, discriminator: 4)
!1418 = !DILexicalBlockFile(scope: !1402, file: !430, discriminator: 3)
!1419 = !DILocation(line: 155, column: 13, scope: !1402)
!1420 = !DILocation(line: 157, column: 21, scope: !1402)
!1421 = !DILocation(line: 157, column: 27, scope: !1402)
!1422 = !DILocation(line: 157, column: 19, scope: !1402)
!1423 = !DILocation(line: 158, column: 13, scope: !553)
!1424 = !DILocation(line: 158, column: 19, scope: !553)
!1425 = !DILocation(line: 158, column: 23, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !553, file: !430, discriminator: 1)
!1427 = !DILocation(line: 158, column: 22, scope: !553)
!1428 = !DILocation(line: 158, column: 33, scope: !553)
!1429 = !DILocation(line: 158, column: 31, scope: !553)
!1430 = !DILocation(line: 158, column: 13, scope: !554)
!1431 = !DILocation(line: 159, column: 13, scope: !552)
!1432 = !DILocation(line: 159, column: 24, scope: !552)
!1433 = !DILocation(line: 159, column: 32, scope: !552)
!1434 = !DILocation(line: 159, column: 42, scope: !552)
!1435 = !DILocation(line: 159, column: 41, scope: !552)
!1436 = !DILocation(line: 159, column: 52, scope: !552)
!1437 = !DILocation(line: 159, column: 50, scope: !552)
!1438 = !DILocation(line: 159, column: 38, scope: !552)
!1439 = !DILocation(line: 160, column: 23, scope: !552)
!1440 = !DILocation(line: 160, column: 14, scope: !552)
!1441 = !DILocation(line: 160, column: 20, scope: !552)
!1442 = !DILocation(line: 161, column: 25, scope: !552)
!1443 = !DILocation(line: 161, column: 14, scope: !552)
!1444 = !DILocation(line: 161, column: 22, scope: !552)
!1445 = !DILocation(line: 162, column: 9, scope: !553)
!1446 = !DILocation(line: 162, column: 9, scope: !552)
!1447 = !DILocation(line: 164, column: 13, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !554, file: !430, line: 164, column: 13)
!1449 = !DILocation(line: 164, column: 21, scope: !1448)
!1450 = !DILocation(line: 164, column: 13, scope: !554)
!1451 = !DILocation(line: 165, column: 26, scope: !1448)
!1452 = !DILocation(line: 165, column: 13, scope: !1448)
!1453 = !DILocation(line: 165, column: 19, scope: !1448)
!1454 = !DILocation(line: 165, column: 24, scope: !1448)
!1455 = !DILocation(line: 166, column: 19, scope: !554)
!1456 = !DILocation(line: 166, column: 10, scope: !554)
!1457 = !DILocation(line: 166, column: 16, scope: !554)
!1458 = !DILocation(line: 168, column: 25, scope: !554)
!1459 = !DILocation(line: 168, column: 24, scope: !554)
!1460 = !DILocation(line: 168, column: 9, scope: !554)
!1461 = !DILocation(line: 168, column: 15, scope: !554)
!1462 = !DILocation(line: 168, column: 22, scope: !554)
!1463 = !{!1349, !1089, i64 16}
!1464 = !DILocation(line: 169, column: 21, scope: !554)
!1465 = !DILocation(line: 169, column: 10, scope: !554)
!1466 = !DILocation(line: 169, column: 18, scope: !554)
!1467 = !DILocation(line: 171, column: 19, scope: !554)
!1468 = !DILocation(line: 171, column: 10, scope: !554)
!1469 = !DILocation(line: 171, column: 17, scope: !554)
!1470 = !DILocation(line: 172, column: 9, scope: !554)
!1471 = !DILocation(line: 175, column: 21, scope: !554)
!1472 = !DILocation(line: 175, column: 27, scope: !554)
!1473 = !DILocation(line: 175, column: 35, scope: !554)
!1474 = !DILocation(line: 175, column: 34, scope: !554)
!1475 = !DILocation(line: 175, column: 46, scope: !554)
!1476 = !DILocation(line: 175, column: 32, scope: !554)
!1477 = !DILocation(line: 175, column: 10, scope: !554)
!1478 = !DILocation(line: 175, column: 18, scope: !554)
!1479 = !DILocation(line: 176, column: 19, scope: !554)
!1480 = !DILocation(line: 176, column: 25, scope: !554)
!1481 = !DILocation(line: 176, column: 33, scope: !554)
!1482 = !DILocation(line: 176, column: 32, scope: !554)
!1483 = !DILocation(line: 176, column: 44, scope: !554)
!1484 = !DILocation(line: 176, column: 30, scope: !554)
!1485 = !DILocation(line: 176, column: 10, scope: !554)
!1486 = !DILocation(line: 176, column: 16, scope: !554)
!1487 = !DILocation(line: 178, column: 24, scope: !554)
!1488 = !DILocation(line: 178, column: 30, scope: !554)
!1489 = !DILocation(line: 178, column: 35, scope: !554)
!1490 = !DILocation(line: 178, column: 10, scope: !554)
!1491 = !DILocation(line: 178, column: 22, scope: !554)
!1492 = !DILocation(line: 180, column: 13, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !554, file: !430, line: 180, column: 13)
!1494 = !DILocation(line: 180, column: 13, scope: !554)
!1495 = !DILocation(line: 181, column: 27, scope: !1493)
!1496 = !DILocation(line: 181, column: 35, scope: !1493)
!1497 = !DILocation(line: 181, column: 26, scope: !1493)
!1498 = !DILocation(line: 181, column: 45, scope: !1493)
!1499 = !DILocation(line: 181, column: 44, scope: !1493)
!1500 = !DILocation(line: 181, column: 42, scope: !1493)
!1501 = !DILocation(line: 181, column: 60, scope: !1493)
!1502 = !DILocation(line: 181, column: 59, scope: !1493)
!1503 = !DILocation(line: 181, column: 57, scope: !1493)
!1504 = !DILocation(line: 181, column: 70, scope: !1493)
!1505 = !DILocation(line: 181, column: 68, scope: !1493)
!1506 = !DILocation(line: 181, column: 13, scope: !1493)
!1507 = !DILocation(line: 181, column: 19, scope: !1493)
!1508 = !DILocation(line: 181, column: 24, scope: !1493)
!1509 = !DILocation(line: 183, column: 27, scope: !1493)
!1510 = !DILocation(line: 183, column: 35, scope: !1493)
!1511 = !DILocation(line: 183, column: 45, scope: !1493)
!1512 = !DILocation(line: 183, column: 44, scope: !1493)
!1513 = !DILocation(line: 183, column: 42, scope: !1493)
!1514 = !DILocation(line: 183, column: 26, scope: !1493)
!1515 = !DILocation(line: 183, column: 13, scope: !1493)
!1516 = !DILocation(line: 183, column: 19, scope: !1493)
!1517 = !DILocation(line: 183, column: 24, scope: !1493)
!1518 = !DILocation(line: 185, column: 25, scope: !554)
!1519 = !DILocation(line: 185, column: 24, scope: !554)
!1520 = !DILocation(line: 185, column: 35, scope: !554)
!1521 = !DILocation(line: 185, column: 33, scope: !554)
!1522 = !DILocation(line: 185, column: 9, scope: !554)
!1523 = !DILocation(line: 185, column: 15, scope: !554)
!1524 = !DILocation(line: 185, column: 22, scope: !554)
!1525 = !DILocation(line: 186, column: 21, scope: !554)
!1526 = !DILocation(line: 186, column: 10, scope: !554)
!1527 = !DILocation(line: 186, column: 18, scope: !554)
!1528 = !DILocation(line: 187, column: 9, scope: !554)
!1529 = !DILocation(line: 190, column: 13, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !554, file: !430, line: 190, column: 13)
!1531 = !DILocation(line: 190, column: 13, scope: !554)
!1532 = !DILocation(line: 191, column: 27, scope: !1530)
!1533 = !DILocation(line: 191, column: 35, scope: !1530)
!1534 = !DILocation(line: 191, column: 26, scope: !1530)
!1535 = !DILocation(line: 191, column: 45, scope: !1530)
!1536 = !DILocation(line: 191, column: 44, scope: !1530)
!1537 = !DILocation(line: 191, column: 42, scope: !1530)
!1538 = !DILocation(line: 191, column: 60, scope: !1530)
!1539 = !DILocation(line: 191, column: 59, scope: !1530)
!1540 = !DILocation(line: 191, column: 57, scope: !1530)
!1541 = !DILocation(line: 191, column: 70, scope: !1530)
!1542 = !DILocation(line: 191, column: 68, scope: !1530)
!1543 = !DILocation(line: 191, column: 13, scope: !1530)
!1544 = !DILocation(line: 191, column: 19, scope: !1530)
!1545 = !DILocation(line: 191, column: 24, scope: !1530)
!1546 = !DILocation(line: 193, column: 27, scope: !1530)
!1547 = !DILocation(line: 193, column: 35, scope: !1530)
!1548 = !DILocation(line: 193, column: 45, scope: !1530)
!1549 = !DILocation(line: 193, column: 44, scope: !1530)
!1550 = !DILocation(line: 193, column: 42, scope: !1530)
!1551 = !DILocation(line: 193, column: 26, scope: !1530)
!1552 = !DILocation(line: 193, column: 13, scope: !1530)
!1553 = !DILocation(line: 193, column: 19, scope: !1530)
!1554 = !DILocation(line: 193, column: 24, scope: !1530)
!1555 = !DILocation(line: 195, column: 25, scope: !554)
!1556 = !DILocation(line: 195, column: 24, scope: !554)
!1557 = !DILocation(line: 195, column: 35, scope: !554)
!1558 = !DILocation(line: 195, column: 33, scope: !554)
!1559 = !DILocation(line: 195, column: 9, scope: !554)
!1560 = !DILocation(line: 195, column: 15, scope: !554)
!1561 = !DILocation(line: 195, column: 22, scope: !554)
!1562 = !DILocation(line: 196, column: 21, scope: !554)
!1563 = !DILocation(line: 196, column: 10, scope: !554)
!1564 = !DILocation(line: 196, column: 18, scope: !554)
!1565 = !DILocation(line: 197, column: 9, scope: !554)
!1566 = !DILocation(line: 200, column: 24, scope: !429)
!1567 = !DILocation(line: 200, column: 12, scope: !429)
!1568 = !DILocation(line: 200, column: 5, scope: !429)
!1569 = !DILocation(line: 201, column: 1, scope: !429)
!1570 = !DILocation(line: 1606, column: 35, scope: !555)
!1571 = !DILocation(line: 1609, column: 5, scope: !555)
!1572 = !DILocation(line: 1609, column: 23, scope: !555)
!1573 = !DILocation(line: 1611, column: 10, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !555, file: !430, line: 1611, column: 9)
!1575 = !DILocation(line: 1611, column: 9, scope: !555)
!1576 = !DILocation(line: 1612, column: 21, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !430, line: 1611, column: 23)
!1578 = !DILocation(line: 1617, column: 13, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !430, line: 1616, column: 18)
!1580 = distinct !DILexicalBlock(scope: !1577, file: !430, line: 1614, column: 13)
!1581 = !DILocation(line: 1617, column: 41, scope: !1579)
!1582 = !DILocation(line: 1617, column: 51, scope: !1579)
!1583 = !{!1308, !1083, i64 24}
!1584 = !DILocation(line: 1621, column: 5, scope: !1577)
!1585 = !DILocation(line: 1623, column: 5, scope: !555)
!1586 = !DILocation(line: 1623, column: 12, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1588, file: !430, discriminator: 2)
!1588 = !DILexicalBlockFile(scope: !1589, file: !430, discriminator: 1)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !430, line: 1623, column: 5)
!1590 = distinct !DILexicalBlock(scope: !555, file: !430, line: 1623, column: 5)
!1591 = !DILocation(line: 1623, column: 19, scope: !1589)
!1592 = !{!1308, !1084, i64 0}
!1593 = !DILocation(line: 1623, column: 5, scope: !1590)
!1594 = !DILocation(line: 1624, column: 13, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !430, line: 1624, column: 13)
!1596 = distinct !DILexicalBlock(scope: !1589, file: !430, line: 1623, column: 34)
!1597 = !DILocation(line: 1624, column: 20, scope: !1595)
!1598 = !DILocation(line: 1624, column: 28, scope: !1595)
!1599 = !{!1084, !1084, i64 0}
!1600 = !DILocation(line: 1624, column: 25, scope: !1595)
!1601 = !DILocation(line: 1624, column: 13, scope: !1596)
!1602 = !DILocation(line: 1625, column: 20, scope: !1595)
!1603 = !DILocation(line: 1625, column: 13, scope: !1595)
!1604 = !DILocation(line: 1626, column: 5, scope: !1596)
!1605 = !DILocation(line: 1623, column: 25, scope: !1589)
!1606 = !DILocation(line: 1623, column: 5, scope: !1589)
!1607 = !DILocation(line: 1627, column: 5, scope: !555)
!1608 = !DILocation(line: 1628, column: 1, scope: !555)
!1609 = !DILocation(line: 267, column: 28, scope: !561)
!1610 = !DILocation(line: 269, column: 36, scope: !561)
!1611 = !DILocation(line: 269, column: 20, scope: !561)
!1612 = !DILocation(line: 269, column: 5, scope: !561)
!1613 = !DILocation(line: 270, column: 5, scope: !561)
!1614 = !DILocation(line: 270, column: 11, scope: !561)
!1615 = !DILocation(line: 270, column: 20, scope: !561)
!1616 = !{!1153, !1083, i64 320}
!1617 = !DILocation(line: 270, column: 40, scope: !561)
!1618 = !DILocation(line: 270, column: 28, scope: !561)
!1619 = !DILocation(line: 271, column: 1, scope: !561)
!1620 = !DILocation(line: 274, column: 29, scope: !564)
!1621 = !DILocation(line: 276, column: 5, scope: !564)
!1622 = !DILocation(line: 276, column: 15, scope: !564)
!1623 = !DILocation(line: 277, column: 5, scope: !564)
!1624 = !DILocation(line: 277, column: 16, scope: !564)
!1625 = !DILocation(line: 277, column: 23, scope: !564)
!1626 = !DILocation(line: 277, column: 29, scope: !564)
!1627 = !DILocation(line: 277, column: 34, scope: !564)
!1628 = !DILocation(line: 278, column: 5, scope: !564)
!1629 = !DILocation(line: 278, column: 16, scope: !564)
!1630 = !DILocation(line: 278, column: 23, scope: !564)
!1631 = !DILocation(line: 278, column: 29, scope: !564)
!1632 = !DILocation(line: 278, column: 34, scope: !564)
!1633 = !DILocation(line: 279, column: 5, scope: !564)
!1634 = !DILocation(line: 279, column: 17, scope: !564)
!1635 = !DILocation(line: 281, column: 29, scope: !564)
!1636 = !DILocation(line: 281, column: 35, scope: !564)
!1637 = !DILocation(line: 281, column: 13, scope: !564)
!1638 = !DILocation(line: 281, column: 43, scope: !564)
!1639 = !{!1153, !1083, i64 24}
!1640 = !DILocation(line: 281, column: 10, scope: !564)
!1641 = !DILocation(line: 283, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !564, file: !430, line: 283, column: 9)
!1643 = !DILocation(line: 283, column: 9, scope: !564)
!1644 = !DILocation(line: 286, column: 13, scope: !1642)
!1645 = !DILocation(line: 286, column: 19, scope: !1642)
!1646 = !DILocation(line: 286, column: 25, scope: !1642)
!1647 = !DILocation(line: 286, column: 33, scope: !1642)
!1648 = !DILocation(line: 286, column: 39, scope: !1642)
!1649 = !DILocation(line: 284, column: 18, scope: !1642)
!1650 = !DILocation(line: 284, column: 16, scope: !1642)
!1651 = !DILocation(line: 284, column: 9, scope: !1642)
!1652 = !DILocation(line: 290, column: 13, scope: !1642)
!1653 = !DILocation(line: 290, column: 19, scope: !1642)
!1654 = !DILocation(line: 290, column: 25, scope: !1642)
!1655 = !DILocation(line: 290, column: 33, scope: !1642)
!1656 = !DILocation(line: 288, column: 18, scope: !1642)
!1657 = !DILocation(line: 288, column: 16, scope: !1642)
!1658 = !DILocation(line: 291, column: 12, scope: !564)
!1659 = !DILocation(line: 292, column: 1, scope: !564)
!1660 = !DILocation(line: 291, column: 5, scope: !564)
!1661 = !DILocation(line: 253, column: 33, scope: !573)
!1662 = !DILocation(line: 253, column: 49, scope: !573)
!1663 = !DILocation(line: 253, column: 62, scope: !573)
!1664 = !DILocation(line: 255, column: 5, scope: !573)
!1665 = !DILocation(line: 255, column: 14, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !582, file: !430, discriminator: 1)
!1667 = !DILocation(line: 255, column: 20, scope: !582)
!1668 = !DILocation(line: 255, column: 14, scope: !582)
!1669 = !DILocation(line: 255, column: 14, scope: !583)
!1670 = !DILocation(line: 255, column: 29, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !581, file: !430, discriminator: 2)
!1672 = !DILocation(line: 255, column: 33, scope: !581)
!1673 = !DILocation(line: 255, column: 40, scope: !581)
!1674 = !DILocation(line: 255, column: 59, scope: !581)
!1675 = !DILocation(line: 255, column: 65, scope: !581)
!1676 = !DILocation(line: 255, column: 73, scope: !581)
!1677 = !DILocation(line: 255, column: 83, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !581, file: !430, line: 255, column: 83)
!1679 = !DILocation(line: 255, column: 83, scope: !581)
!1680 = !DILocation(line: 255, column: 96, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1678, file: !430, discriminator: 4)
!1682 = !DILocation(line: 255, column: 89, scope: !1678)
!1683 = !DILocation(line: 255, column: 102, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !582, file: !430, discriminator: 5)
!1685 = !DILocation(line: 255, column: 102, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1687, file: !430, discriminator: 7)
!1687 = !DILexicalBlockFile(scope: !582, file: !430, discriminator: 6)
!1688 = !DILocation(line: 255, column: 102, scope: !581)
!1689 = !DILocation(line: 255, column: 104, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1691, file: !430, discriminator: 8)
!1691 = !DILexicalBlockFile(scope: !583, file: !430, discriminator: 3)
!1692 = !DILocation(line: 256, column: 5, scope: !573)
!1693 = !DILocation(line: 257, column: 1, scope: !573)
!1694 = !DILocation(line: 260, column: 30, scope: !584)
!1695 = !DILocation(line: 262, column: 5, scope: !584)
!1696 = !DILocation(line: 262, column: 10, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !590, file: !430, discriminator: 1)
!1698 = !DILocation(line: 262, column: 20, scope: !590)
!1699 = !DILocation(line: 262, column: 43, scope: !590)
!1700 = !DILocation(line: 262, column: 49, scope: !590)
!1701 = !DILocation(line: 262, column: 61, scope: !594)
!1702 = !DILocation(line: 262, column: 69, scope: !594)
!1703 = !DILocation(line: 262, column: 61, scope: !590)
!1704 = !DILocation(line: 262, column: 87, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !593, file: !430, discriminator: 2)
!1706 = !DILocation(line: 262, column: 93, scope: !593)
!1707 = !DILocation(line: 262, column: 100, scope: !593)
!1708 = !DILocation(line: 262, column: 114, scope: !593)
!1709 = !DILocation(line: 262, column: 119, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !592, file: !430, discriminator: 4)
!1711 = !DILocation(line: 262, column: 129, scope: !592)
!1712 = !DILocation(line: 262, column: 159, scope: !592)
!1713 = !DILocation(line: 262, column: 177, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !592, file: !430, line: 262, column: 174)
!1715 = !DILocation(line: 262, column: 194, scope: !1714)
!1716 = !DILocation(line: 262, column: 174, scope: !1714)
!1717 = !DILocation(line: 262, column: 204, scope: !1714)
!1718 = !DILocation(line: 262, column: 174, scope: !592)
!1719 = !DILocation(line: 262, column: 174, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !592, file: !430, discriminator: 5)
!1721 = !DILocation(line: 262, column: 235, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1714, file: !430, discriminator: 6)
!1723 = !DILocation(line: 262, column: 253, scope: !1714)
!1724 = !DILocation(line: 262, column: 263, scope: !1714)
!1725 = !DILocation(line: 262, column: 288, scope: !1714)
!1726 = !DILocation(line: 262, column: 219, scope: !1714)
!1727 = !DILocation(line: 262, column: 307, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !593, file: !430, discriminator: 7)
!1729 = !DILocation(line: 262, column: 307, scope: !592)
!1730 = !DILocation(line: 262, column: 307, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !592, file: !430, discriminator: 8)
!1732 = !DILocation(line: 262, column: 320, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !593, file: !430, discriminator: 9)
!1734 = !DILocation(line: 262, column: 322, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1736, file: !430, discriminator: 10)
!1736 = !DILexicalBlockFile(scope: !584, file: !430, discriminator: 3)
!1737 = !DILocation(line: 262, column: 322, scope: !590)
!1738 = !DILocation(line: 263, column: 5, scope: !584)
!1739 = !DILocation(line: 221, column: 28, scope: !603)
!1740 = !DILocation(line: 221, column: 44, scope: !603)
!1741 = !DILocation(line: 221, column: 64, scope: !603)
!1742 = !DILocation(line: 223, column: 5, scope: !603)
!1743 = !DILocation(line: 223, column: 18, scope: !603)
!1744 = !DILocation(line: 224, column: 9, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !603, file: !430, line: 224, column: 9)
!1746 = !DILocation(line: 224, column: 14, scope: !1745)
!1747 = !DILocation(line: 224, column: 9, scope: !603)
!1748 = !DILocation(line: 225, column: 25, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !430, line: 224, column: 29)
!1750 = !DILocation(line: 225, column: 12, scope: !1749)
!1751 = !DILocation(line: 225, column: 33, scope: !1749)
!1752 = !DILocation(line: 225, column: 42, scope: !1749)
!1753 = !DILocation(line: 226, column: 28, scope: !1749)
!1754 = !DILocation(line: 226, column: 16, scope: !1749)
!1755 = !DILocation(line: 226, column: 9, scope: !1749)
!1756 = !DILocation(line: 229, column: 26, scope: !603)
!1757 = !DILocation(line: 229, column: 11, scope: !603)
!1758 = !DILocation(line: 229, column: 9, scope: !603)
!1759 = !DILocation(line: 230, column: 24, scope: !603)
!1760 = !DILocation(line: 230, column: 30, scope: !603)
!1761 = !DILocation(line: 230, column: 37, scope: !603)
!1762 = !DILocation(line: 230, column: 43, scope: !603)
!1763 = !DILocation(line: 230, column: 52, scope: !603)
!1764 = !DILocation(line: 231, column: 22, scope: !603)
!1765 = !DILocation(line: 231, column: 28, scope: !603)
!1766 = !DILocation(line: 231, column: 35, scope: !603)
!1767 = !DILocation(line: 231, column: 41, scope: !603)
!1768 = !DILocation(line: 231, column: 47, scope: !603)
!1769 = !DILocation(line: 231, column: 52, scope: !603)
!1770 = !{!1771, !1083, i64 16}
!1771 = !{!"tagCDataObject", !1142, i64 0, !1083, i64 16, !1093, i64 24, !1083, i64 32, !1089, i64 40, !1089, i64 48, !1089, i64 56, !1083, i64 64, !1084, i64 80}
!1772 = !DILocation(line: 231, column: 60, scope: !603)
!1773 = !DILocation(line: 231, column: 66, scope: !603)
!1774 = !DILocation(line: 231, column: 58, scope: !603)
!1775 = !DILocation(line: 230, column: 12, scope: !603)
!1776 = !DILocation(line: 230, column: 5, scope: !603)
!1777 = !DILocation(line: 232, column: 1, scope: !603)
!1778 = !DILocation(line: 204, column: 28, scope: !611)
!1779 = !DILocation(line: 204, column: 44, scope: !611)
!1780 = !DILocation(line: 204, column: 60, scope: !611)
!1781 = !DILocation(line: 206, column: 5, scope: !611)
!1782 = !DILocation(line: 206, column: 18, scope: !611)
!1783 = !DILocation(line: 207, column: 5, scope: !611)
!1784 = !DILocation(line: 207, column: 11, scope: !611)
!1785 = !DILocation(line: 209, column: 26, scope: !611)
!1786 = !DILocation(line: 209, column: 11, scope: !611)
!1787 = !DILocation(line: 209, column: 9, scope: !611)
!1788 = !DILocation(line: 210, column: 11, scope: !611)
!1789 = !DILocation(line: 210, column: 16, scope: !611)
!1790 = !DILocation(line: 210, column: 24, scope: !611)
!1791 = !DILocation(line: 210, column: 30, scope: !611)
!1792 = !DILocation(line: 210, column: 22, scope: !611)
!1793 = !DILocation(line: 210, column: 9, scope: !611)
!1794 = !DILocation(line: 211, column: 9, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !611, file: !430, line: 211, column: 9)
!1796 = !DILocation(line: 211, column: 15, scope: !1795)
!1797 = !DILocation(line: 211, column: 9, scope: !611)
!1798 = !DILocation(line: 212, column: 25, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !430, line: 211, column: 30)
!1800 = !DILocation(line: 212, column: 9, scope: !1799)
!1801 = !DILocation(line: 214, column: 9, scope: !1799)
!1802 = !DILocation(line: 216, column: 24, scope: !611)
!1803 = !DILocation(line: 216, column: 30, scope: !611)
!1804 = !DILocation(line: 216, column: 36, scope: !611)
!1805 = !DILocation(line: 216, column: 43, scope: !611)
!1806 = !DILocation(line: 216, column: 49, scope: !611)
!1807 = !DILocation(line: 216, column: 58, scope: !611)
!1808 = !DILocation(line: 217, column: 22, scope: !611)
!1809 = !DILocation(line: 217, column: 28, scope: !611)
!1810 = !DILocation(line: 217, column: 35, scope: !611)
!1811 = !DILocation(line: 217, column: 41, scope: !611)
!1812 = !DILocation(line: 217, column: 47, scope: !611)
!1813 = !DILocation(line: 216, column: 12, scope: !611)
!1814 = !DILocation(line: 216, column: 5, scope: !611)
!1815 = !DILocation(line: 218, column: 1, scope: !611)
!1816 = !DILocation(line: 26, column: 28, scope: !620)
!1817 = !DILocation(line: 26, column: 44, scope: !620)
!1818 = !DILocation(line: 26, column: 60, scope: !620)
!1819 = !DILocation(line: 28, column: 5, scope: !620)
!1820 = !DILocation(line: 28, column: 19, scope: !620)
!1821 = !DILocation(line: 29, column: 27, scope: !620)
!1822 = !DILocation(line: 29, column: 33, scope: !620)
!1823 = !{!1153, !1083, i64 304}
!1824 = !DILocation(line: 29, column: 42, scope: !620)
!1825 = !DILocation(line: 29, column: 11, scope: !620)
!1826 = !DILocation(line: 29, column: 9, scope: !620)
!1827 = !DILocation(line: 30, column: 24, scope: !620)
!1828 = !DILocation(line: 30, column: 12, scope: !620)
!1829 = !DILocation(line: 31, column: 1, scope: !620)
!1830 = !DILocation(line: 30, column: 5, scope: !620)
!1831 = !DILocation(line: 235, column: 31, scope: !595)
!1832 = !DILocation(line: 235, column: 43, scope: !595)
!1833 = !DILocation(line: 237, column: 48, scope: !595)
!1834 = !DILocation(line: 237, column: 32, scope: !595)
!1835 = !DILocation(line: 237, column: 55, scope: !595)
!1836 = !DILocation(line: 237, column: 12, scope: !595)
!1837 = !DILocation(line: 237, column: 5, scope: !595)
!1838 = !DILocation(line: 241, column: 29, scope: !599)
!1839 = !DILocation(line: 241, column: 41, scope: !599)
!1840 = !DILocation(line: 243, column: 48, scope: !599)
!1841 = !DILocation(line: 243, column: 32, scope: !599)
!1842 = !DILocation(line: 243, column: 55, scope: !599)
!1843 = !DILocation(line: 243, column: 12, scope: !599)
!1844 = !DILocation(line: 243, column: 5, scope: !599)
!1845 = !DILocation(line: 1289, column: 13, scope: !628)
!1846 = !DILocation(line: 1289, column: 28, scope: !628)
!1847 = !DILocation(line: 1289, column: 46, scope: !628)
!1848 = !DILocation(line: 1291, column: 5, scope: !628)
!1849 = !DILocation(line: 1291, column: 11, scope: !628)
!1850 = !DILocation(line: 1292, column: 5, scope: !628)
!1851 = !DILocation(line: 1292, column: 16, scope: !628)
!1852 = !DILocation(line: 1294, column: 25, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !628, file: !430, line: 1294, column: 8)
!1854 = !DILocation(line: 1294, column: 34, scope: !1853)
!1855 = !DILocation(line: 1294, column: 45, scope: !1853)
!1856 = !{!1153, !1089, i64 168}
!1857 = !DILocation(line: 1294, column: 54, scope: !1853)
!1858 = !DILocation(line: 1294, column: 71, scope: !1853)
!1859 = !DILocation(line: 1294, column: 8, scope: !628)
!1860 = !DILocation(line: 1295, column: 25, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1853, file: !430, line: 1294, column: 78)
!1862 = !DILocation(line: 1295, column: 34, scope: !1861)
!1863 = !DILocation(line: 1295, column: 43, scope: !1861)
!1864 = !DILocation(line: 1296, column: 5, scope: !1861)
!1865 = !DILocation(line: 1297, column: 22, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1853, file: !430, line: 1296, column: 12)
!1867 = !DILocation(line: 1299, column: 22, scope: !1866)
!1868 = !DILocation(line: 1299, column: 29, scope: !1866)
!1869 = !DILocation(line: 1299, column: 38, scope: !1866)
!1870 = !DILocation(line: 1297, column: 9, scope: !1866)
!1871 = !DILocation(line: 1300, column: 9, scope: !1866)
!1872 = !DILocation(line: 1303, column: 47, scope: !628)
!1873 = !DILocation(line: 1303, column: 29, scope: !628)
!1874 = !DILocation(line: 1303, column: 56, scope: !628)
!1875 = !DILocation(line: 1303, column: 27, scope: !628)
!1876 = !DILocation(line: 1303, column: 10, scope: !628)
!1877 = !DILocation(line: 1304, column: 10, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !628, file: !430, line: 1304, column: 9)
!1879 = !DILocation(line: 1304, column: 9, scope: !628)
!1880 = !DILocation(line: 1305, column: 9, scope: !1878)
!1881 = !DILocation(line: 1306, column: 19, scope: !628)
!1882 = !DILocation(line: 1306, column: 12, scope: !628)
!1883 = !DILocation(line: 1306, column: 10, scope: !628)
!1884 = !DILocation(line: 1307, column: 9, scope: !639)
!1885 = !DILocation(line: 1307, column: 16, scope: !639)
!1886 = !DILocation(line: 1307, column: 14, scope: !639)
!1887 = !DILocation(line: 1307, column: 9, scope: !628)
!1888 = !DILocation(line: 1311, column: 9, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !639, file: !430, line: 1307, column: 24)
!1890 = !DILocation(line: 1312, column: 5, scope: !1889)
!1891 = !DILocation(line: 1312, column: 16, scope: !638)
!1892 = !DILocation(line: 1312, column: 23, scope: !638)
!1893 = !DILocation(line: 1312, column: 21, scope: !638)
!1894 = !DILocation(line: 1312, column: 16, scope: !639)
!1895 = !DILocation(line: 1313, column: 22, scope: !637)
!1896 = !DILocation(line: 1315, column: 22, scope: !637)
!1897 = !DILocation(line: 1315, column: 28, scope: !637)
!1898 = !DILocation(line: 1313, column: 9, scope: !637)
!1899 = !DILocation(line: 1316, column: 9, scope: !637)
!1900 = !DILocation(line: 1316, column: 14, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !636, file: !430, discriminator: 1)
!1902 = !DILocation(line: 1316, column: 24, scope: !636)
!1903 = !DILocation(line: 1316, column: 54, scope: !636)
!1904 = !DILocation(line: 1316, column: 70, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !636, file: !430, line: 1316, column: 67)
!1906 = !DILocation(line: 1316, column: 87, scope: !1905)
!1907 = !DILocation(line: 1316, column: 67, scope: !1905)
!1908 = !DILocation(line: 1316, column: 97, scope: !1905)
!1909 = !DILocation(line: 1316, column: 67, scope: !636)
!1910 = !DILocation(line: 1316, column: 67, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !636, file: !430, discriminator: 2)
!1912 = !DILocation(line: 1316, column: 128, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1905, file: !430, discriminator: 3)
!1914 = !DILocation(line: 1316, column: 146, scope: !1905)
!1915 = !DILocation(line: 1316, column: 156, scope: !1905)
!1916 = !DILocation(line: 1316, column: 181, scope: !1905)
!1917 = !DILocation(line: 1316, column: 112, scope: !1905)
!1918 = !DILocation(line: 1316, column: 200, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !637, file: !430, discriminator: 4)
!1920 = !DILocation(line: 1316, column: 200, scope: !636)
!1921 = !DILocation(line: 1316, column: 200, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !636, file: !430, discriminator: 5)
!1923 = !DILocation(line: 1317, column: 9, scope: !637)
!1924 = !DILocation(line: 1320, column: 20, scope: !628)
!1925 = !DILocation(line: 1320, column: 25, scope: !628)
!1926 = !DILocation(line: 1320, column: 31, scope: !628)
!1927 = !DILocation(line: 1320, column: 5, scope: !628)
!1928 = !DILocation(line: 1322, column: 5, scope: !628)
!1929 = !DILocation(line: 1322, column: 10, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !641, file: !430, discriminator: 1)
!1931 = !DILocation(line: 1322, column: 20, scope: !641)
!1932 = !DILocation(line: 1322, column: 50, scope: !641)
!1933 = !DILocation(line: 1322, column: 66, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !641, file: !430, line: 1322, column: 63)
!1935 = !DILocation(line: 1322, column: 83, scope: !1934)
!1936 = !DILocation(line: 1322, column: 63, scope: !1934)
!1937 = !DILocation(line: 1322, column: 93, scope: !1934)
!1938 = !DILocation(line: 1322, column: 63, scope: !641)
!1939 = !DILocation(line: 1322, column: 63, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !641, file: !430, discriminator: 2)
!1941 = !DILocation(line: 1322, column: 124, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1934, file: !430, discriminator: 3)
!1943 = !DILocation(line: 1322, column: 142, scope: !1934)
!1944 = !DILocation(line: 1322, column: 152, scope: !1934)
!1945 = !DILocation(line: 1322, column: 177, scope: !1934)
!1946 = !DILocation(line: 1322, column: 108, scope: !1934)
!1947 = !DILocation(line: 1322, column: 196, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !628, file: !430, discriminator: 4)
!1949 = !DILocation(line: 1322, column: 196, scope: !641)
!1950 = !DILocation(line: 1322, column: 196, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !641, file: !430, discriminator: 5)
!1952 = !DILocation(line: 1323, column: 51, scope: !628)
!1953 = !DILocation(line: 1323, column: 56, scope: !628)
!1954 = !DILocation(line: 1324, column: 1, scope: !628)
!1955 = !DILocation(line: 1274, column: 13, scope: !642)
!1956 = !DILocation(line: 1274, column: 29, scope: !642)
!1957 = !DILocation(line: 1276, column: 5, scope: !642)
!1958 = !DILocation(line: 1276, column: 16, scope: !642)
!1959 = !DILocation(line: 1277, column: 5, scope: !642)
!1960 = !DILocation(line: 1277, column: 11, scope: !642)
!1961 = !DILocation(line: 1279, column: 17, scope: !642)
!1962 = !DILocation(line: 1279, column: 7, scope: !642)
!1963 = !DILocation(line: 1280, column: 12, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !642, file: !430, line: 1280, column: 5)
!1965 = !DILocation(line: 1280, column: 10, scope: !1964)
!1966 = !DILocation(line: 1280, column: 17, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1968, file: !430, discriminator: 2)
!1968 = !DILexicalBlockFile(scope: !1969, file: !430, discriminator: 1)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !430, line: 1280, column: 5)
!1970 = !DILocation(line: 1280, column: 21, scope: !1969)
!1971 = !DILocation(line: 1280, column: 19, scope: !1969)
!1972 = !DILocation(line: 1280, column: 5, scope: !1964)
!1973 = !DILocation(line: 1281, column: 15, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !430, line: 1281, column: 13)
!1975 = distinct !DILexicalBlock(scope: !1969, file: !430, line: 1280, column: 32)
!1976 = !DILocation(line: 1281, column: 13, scope: !1974)
!1977 = !DILocation(line: 1281, column: 18, scope: !1974)
!1978 = !DILocation(line: 1281, column: 13, scope: !1975)
!1979 = !DILocation(line: 1282, column: 13, scope: !1974)
!1980 = !DILocation(line: 1283, column: 5, scope: !1975)
!1981 = !DILocation(line: 1280, column: 27, scope: !1969)
!1982 = !DILocation(line: 1280, column: 5, scope: !1969)
!1983 = !DILocation(line: 1285, column: 46, scope: !642)
!1984 = !DILocation(line: 1285, column: 63, scope: !642)
!1985 = !DILocation(line: 1285, column: 12, scope: !642)
!1986 = !DILocation(line: 1286, column: 1, scope: !642)
!1987 = !DILocation(line: 1285, column: 5, scope: !642)
!1988 = !DILocation(line: 513, column: 13, scope: !648)
!1989 = !DILocation(line: 513, column: 28, scope: !648)
!1990 = !DILocation(line: 513, column: 46, scope: !648)
!1991 = !DILocation(line: 515, column: 5, scope: !648)
!1992 = !DILocation(line: 515, column: 10, scope: !648)
!1993 = !DILocation(line: 516, column: 18, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !648, file: !430, line: 516, column: 9)
!1995 = !DILocation(line: 516, column: 9, scope: !1994)
!1996 = !DILocation(line: 516, column: 31, scope: !1994)
!1997 = !DILocation(line: 516, column: 9, scope: !648)
!1998 = !DILocation(line: 517, column: 9, scope: !1994)
!1999 = !DILocation(line: 518, column: 30, scope: !648)
!2000 = !DILocation(line: 518, column: 36, scope: !648)
!2001 = !DILocation(line: 518, column: 28, scope: !648)
!2002 = !DILocation(line: 518, column: 78, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !648, file: !430, discriminator: 1)
!2004 = !DILocation(line: 518, column: 62, scope: !648)
!2005 = !DILocation(line: 518, column: 49, scope: !648)
!2006 = !DILocation(line: 518, column: 111, scope: !648)
!2007 = !DILocation(line: 518, column: 117, scope: !648)
!2008 = !DILocation(line: 518, column: 124, scope: !648)
!2009 = !DILocation(line: 518, column: 105, scope: !648)
!2010 = !DILocation(line: 518, column: 130, scope: !648)
!2011 = !DILocation(line: 518, column: 135, scope: !648)
!2012 = !DILocation(line: 518, column: 141, scope: !648)
!2013 = !DILocation(line: 518, column: 151, scope: !648)
!2014 = !DILocation(line: 518, column: 157, scope: !648)
!2015 = !DILocation(line: 518, column: 146, scope: !648)
!2016 = !DILocation(line: 518, column: 84, scope: !648)
!2017 = !DILocation(line: 518, column: 82, scope: !648)
!2018 = !DILocation(line: 518, column: 188, scope: !648)
!2019 = !DILocation(line: 518, column: 175, scope: !648)
!2020 = !DILocation(line: 518, column: 219, scope: !648)
!2021 = !DILocation(line: 518, column: 225, scope: !648)
!2022 = !DILocation(line: 518, column: 232, scope: !648)
!2023 = !DILocation(line: 518, column: 213, scope: !648)
!2024 = !DILocation(line: 518, column: 238, scope: !648)
!2025 = !DILocation(line: 518, column: 243, scope: !648)
!2026 = !DILocation(line: 518, column: 249, scope: !648)
!2027 = !DILocation(line: 518, column: 192, scope: !648)
!2028 = !DILocation(line: 518, column: 260, scope: !648)
!2029 = !DILocation(line: 518, column: 266, scope: !648)
!2030 = !DILocation(line: 518, column: 255, scope: !648)
!2031 = !DILocation(line: 518, column: 170, scope: !648)
!2032 = !DILocation(line: 518, column: 295, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !648, file: !430, discriminator: 2)
!2034 = !DILocation(line: 518, column: 282, scope: !648)
!2035 = !DILocation(line: 518, column: 27, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2037, file: !430, discriminator: 4)
!2037 = !DILexicalBlockFile(scope: !648, file: !430, discriminator: 3)
!2038 = !DILocation(line: 518, column: 21, scope: !648)
!2039 = !DILocation(line: 518, column: 25, scope: !648)
!2040 = !DILocation(line: 519, column: 51, scope: !648)
!2041 = !DILocation(line: 519, column: 56, scope: !648)
!2042 = !DILocation(line: 520, column: 1, scope: !648)
!2043 = !DILocation(line: 524, column: 13, scope: !662)
!2044 = !DILocation(line: 524, column: 29, scope: !662)
!2045 = !DILocation(line: 526, column: 5, scope: !662)
!2046 = !DILocation(line: 526, column: 17, scope: !662)
!2047 = !DILocation(line: 526, column: 39, scope: !662)
!2048 = !DILocation(line: 526, column: 23, scope: !662)
!2049 = !DILocation(line: 527, column: 11, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !662, file: !430, line: 527, column: 9)
!2051 = !DILocation(line: 527, column: 17, scope: !2050)
!2052 = !DILocation(line: 527, column: 9, scope: !662)
!2053 = !DILocation(line: 527, column: 54, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2055, file: !430, discriminator: 1)
!2055 = distinct !DILexicalBlock(scope: !2050, file: !430, line: 527, column: 25)
!2056 = !DILocation(line: 527, column: 60, scope: !2055)
!2057 = !DILocation(line: 527, column: 50, scope: !2055)
!2058 = !DILocation(line: 527, column: 74, scope: !2055)
!2059 = !DILocation(line: 527, column: 80, scope: !2055)
!2060 = !DILocation(line: 527, column: 70, scope: !2055)
!2061 = !DILocation(line: 527, column: 31, scope: !2055)
!2062 = !DILocation(line: 527, column: 116, scope: !2055)
!2063 = !DILocation(line: 527, column: 122, scope: !2055)
!2064 = !DILocation(line: 527, column: 112, scope: !2055)
!2065 = !DILocation(line: 527, column: 93, scope: !2055)
!2066 = !DILocation(line: 527, column: 131, scope: !2055)
!2067 = !DILocation(line: 528, column: 28, scope: !662)
!2068 = !DILocation(line: 528, column: 12, scope: !662)
!2069 = !DILocation(line: 529, column: 1, scope: !662)
!2070 = !DILocation(line: 528, column: 5, scope: !662)
!2071 = !DILocation(line: 532, column: 13, scope: !667)
!2072 = !DILocation(line: 532, column: 28, scope: !667)
!2073 = !DILocation(line: 532, column: 46, scope: !667)
!2074 = !DILocation(line: 534, column: 5, scope: !667)
!2075 = !DILocation(line: 534, column: 19, scope: !667)
!2076 = !DILocation(line: 535, column: 19, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !667, file: !430, line: 535, column: 9)
!2078 = !DILocation(line: 535, column: 9, scope: !2077)
!2079 = !DILocation(line: 535, column: 32, scope: !2077)
!2080 = !DILocation(line: 535, column: 9, scope: !667)
!2081 = !DILocation(line: 536, column: 9, scope: !2077)
!2082 = !DILocation(line: 537, column: 32, scope: !667)
!2083 = !DILocation(line: 537, column: 38, scope: !667)
!2084 = !DILocation(line: 537, column: 30, scope: !667)
!2085 = !DILocation(line: 537, column: 83, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !667, file: !430, discriminator: 1)
!2087 = !DILocation(line: 537, column: 66, scope: !667)
!2088 = !DILocation(line: 537, column: 51, scope: !667)
!2089 = !DILocation(line: 537, column: 118, scope: !667)
!2090 = !DILocation(line: 537, column: 124, scope: !667)
!2091 = !DILocation(line: 537, column: 131, scope: !667)
!2092 = !DILocation(line: 537, column: 112, scope: !667)
!2093 = !DILocation(line: 537, column: 137, scope: !667)
!2094 = !DILocation(line: 537, column: 142, scope: !667)
!2095 = !DILocation(line: 537, column: 148, scope: !667)
!2096 = !DILocation(line: 537, column: 158, scope: !667)
!2097 = !DILocation(line: 537, column: 164, scope: !667)
!2098 = !DILocation(line: 537, column: 153, scope: !667)
!2099 = !DILocation(line: 537, column: 89, scope: !667)
!2100 = !DILocation(line: 537, column: 87, scope: !667)
!2101 = !DILocation(line: 537, column: 197, scope: !667)
!2102 = !DILocation(line: 537, column: 182, scope: !667)
!2103 = !DILocation(line: 537, column: 230, scope: !667)
!2104 = !DILocation(line: 537, column: 236, scope: !667)
!2105 = !DILocation(line: 537, column: 243, scope: !667)
!2106 = !DILocation(line: 537, column: 224, scope: !667)
!2107 = !DILocation(line: 537, column: 249, scope: !667)
!2108 = !DILocation(line: 537, column: 254, scope: !667)
!2109 = !DILocation(line: 537, column: 260, scope: !667)
!2110 = !DILocation(line: 537, column: 201, scope: !667)
!2111 = !DILocation(line: 537, column: 271, scope: !667)
!2112 = !DILocation(line: 537, column: 277, scope: !667)
!2113 = !DILocation(line: 537, column: 266, scope: !667)
!2114 = !DILocation(line: 537, column: 177, scope: !667)
!2115 = !DILocation(line: 537, column: 308, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !667, file: !430, discriminator: 2)
!2117 = !DILocation(line: 537, column: 293, scope: !667)
!2118 = !DILocation(line: 537, column: 29, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2120, file: !430, discriminator: 4)
!2120 = !DILexicalBlockFile(scope: !667, file: !430, discriminator: 3)
!2121 = !DILocation(line: 537, column: 23, scope: !667)
!2122 = !DILocation(line: 537, column: 27, scope: !667)
!2123 = !DILocation(line: 538, column: 51, scope: !667)
!2124 = !DILocation(line: 538, column: 56, scope: !667)
!2125 = !DILocation(line: 539, column: 1, scope: !667)
!2126 = !DILocation(line: 543, column: 13, scope: !681)
!2127 = !DILocation(line: 543, column: 29, scope: !681)
!2128 = !DILocation(line: 545, column: 5, scope: !681)
!2129 = !DILocation(line: 545, column: 19, scope: !681)
!2130 = !DILocation(line: 545, column: 43, scope: !681)
!2131 = !DILocation(line: 545, column: 25, scope: !681)
!2132 = !DILocation(line: 546, column: 11, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !681, file: !430, line: 546, column: 9)
!2134 = !DILocation(line: 546, column: 17, scope: !2133)
!2135 = !DILocation(line: 546, column: 9, scope: !681)
!2136 = !DILocation(line: 546, column: 54, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2138, file: !430, discriminator: 1)
!2138 = distinct !DILexicalBlock(scope: !2133, file: !430, line: 546, column: 25)
!2139 = !DILocation(line: 546, column: 60, scope: !2138)
!2140 = !DILocation(line: 546, column: 50, scope: !2138)
!2141 = !DILocation(line: 546, column: 74, scope: !2138)
!2142 = !DILocation(line: 546, column: 80, scope: !2138)
!2143 = !DILocation(line: 546, column: 70, scope: !2138)
!2144 = !DILocation(line: 546, column: 31, scope: !2138)
!2145 = !DILocation(line: 546, column: 116, scope: !2138)
!2146 = !DILocation(line: 546, column: 122, scope: !2138)
!2147 = !DILocation(line: 546, column: 112, scope: !2138)
!2148 = !DILocation(line: 546, column: 93, scope: !2138)
!2149 = !DILocation(line: 546, column: 131, scope: !2138)
!2150 = !DILocation(line: 547, column: 28, scope: !681)
!2151 = !DILocation(line: 547, column: 12, scope: !681)
!2152 = !DILocation(line: 548, column: 1, scope: !681)
!2153 = !DILocation(line: 547, column: 5, scope: !681)
!2154 = !DILocation(line: 1143, column: 13, scope: !686)
!2155 = !DILocation(line: 1143, column: 28, scope: !686)
!2156 = !DILocation(line: 1143, column: 46, scope: !686)
!2157 = !DILocation(line: 1145, column: 26, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !686, file: !430, line: 1145, column: 9)
!2159 = !DILocation(line: 1145, column: 35, scope: !2158)
!2160 = !DILocation(line: 1145, column: 46, scope: !2158)
!2161 = !DILocation(line: 1145, column: 55, scope: !2158)
!2162 = !DILocation(line: 1145, column: 72, scope: !2158)
!2163 = !DILocation(line: 1145, column: 78, scope: !2158)
!2164 = !DILocation(line: 1145, column: 112, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2158, file: !430, discriminator: 1)
!2166 = !DILocation(line: 1145, column: 97, scope: !2158)
!2167 = !DILocation(line: 1145, column: 121, scope: !2158)
!2168 = !{!1154, !1089, i64 16}
!2169 = !DILocation(line: 1145, column: 131, scope: !2158)
!2170 = !DILocation(line: 1145, column: 9, scope: !686)
!2171 = !DILocation(line: 1146, column: 59, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2158, file: !430, line: 1145, column: 137)
!2173 = !DILocation(line: 1146, column: 41, scope: !2172)
!2174 = !DILocation(line: 1146, column: 68, scope: !2172)
!2175 = !DILocation(line: 1146, column: 39, scope: !2172)
!2176 = !DILocation(line: 1146, column: 24, scope: !2172)
!2177 = !DILocation(line: 1146, column: 18, scope: !2172)
!2178 = !DILocation(line: 1146, column: 22, scope: !2172)
!2179 = !DILocation(line: 1147, column: 55, scope: !2172)
!2180 = !DILocation(line: 1147, column: 60, scope: !2172)
!2181 = !DILocation(line: 1149, column: 24, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !686, file: !430, line: 1149, column: 9)
!2183 = !DILocation(line: 1149, column: 33, scope: !2182)
!2184 = !DILocation(line: 1149, column: 42, scope: !2182)
!2185 = !DILocation(line: 1149, column: 65, scope: !2182)
!2186 = !DILocation(line: 1149, column: 99, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2182, file: !430, discriminator: 2)
!2188 = !DILocation(line: 1149, column: 108, scope: !2182)
!2189 = !DILocation(line: 1149, column: 68, scope: !2182)
!2190 = !DILocation(line: 1149, column: 140, scope: !2182)
!2191 = !DILocation(line: 1149, column: 175, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2193, file: !430, discriminator: 3)
!2193 = !DILexicalBlockFile(scope: !2182, file: !430, discriminator: 1)
!2194 = !DILocation(line: 1149, column: 160, scope: !2182)
!2195 = !DILocation(line: 1149, column: 184, scope: !2182)
!2196 = !DILocation(line: 1149, column: 194, scope: !2182)
!2197 = !DILocation(line: 1149, column: 9, scope: !686)
!2198 = !DILocation(line: 1150, column: 56, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2182, file: !430, line: 1149, column: 200)
!2200 = !DILocation(line: 1150, column: 41, scope: !2199)
!2201 = !DILocation(line: 1150, column: 65, scope: !2199)
!2202 = !DILocation(line: 1150, column: 39, scope: !2199)
!2203 = !DILocation(line: 1150, column: 99, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2199, file: !430, discriminator: 1)
!2205 = !DILocation(line: 1150, column: 77, scope: !2199)
!2206 = !DILocation(line: 1150, column: 108, scope: !2199)
!2207 = !{!2208, !1083, i64 40}
!2208 = !{!"", !1154, i64 0, !1089, i64 24, !1083, i64 32, !1083, i64 40, !1093, i64 48}
!2209 = !DILocation(line: 1150, column: 39, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2199, file: !430, discriminator: 2)
!2211 = !DILocation(line: 1150, column: 24, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2213, file: !430, discriminator: 4)
!2213 = !DILexicalBlockFile(scope: !2199, file: !430, discriminator: 3)
!2214 = !DILocation(line: 1150, column: 18, scope: !2199)
!2215 = !DILocation(line: 1150, column: 22, scope: !2199)
!2216 = !DILocation(line: 1151, column: 55, scope: !2199)
!2217 = !DILocation(line: 1151, column: 60, scope: !2199)
!2218 = !DILocation(line: 1153, column: 26, scope: !693)
!2219 = !DILocation(line: 1153, column: 35, scope: !693)
!2220 = !DILocation(line: 1153, column: 46, scope: !693)
!2221 = !DILocation(line: 1153, column: 55, scope: !693)
!2222 = !DILocation(line: 1153, column: 72, scope: !693)
!2223 = !DILocation(line: 1153, column: 9, scope: !686)
!2224 = !DILocation(line: 1155, column: 9, scope: !692)
!2225 = !DILocation(line: 1155, column: 14, scope: !692)
!2226 = !DILocation(line: 1155, column: 38, scope: !692)
!2227 = !DILocation(line: 1155, column: 24, scope: !692)
!2228 = !DILocation(line: 1156, column: 13, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !692, file: !430, line: 1156, column: 13)
!2230 = !DILocation(line: 1156, column: 21, scope: !2229)
!2231 = !DILocation(line: 1156, column: 25, scope: !2229)
!2232 = !DILocation(line: 1156, column: 28, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2229, file: !430, discriminator: 1)
!2234 = !DILocation(line: 1156, column: 36, scope: !2229)
!2235 = !DILocation(line: 1156, column: 13, scope: !692)
!2236 = !DILocation(line: 1157, column: 13, scope: !2229)
!2237 = !DILocation(line: 1158, column: 30, scope: !692)
!2238 = !DILocation(line: 1158, column: 24, scope: !692)
!2239 = !DILocation(line: 1158, column: 18, scope: !692)
!2240 = !DILocation(line: 1158, column: 22, scope: !692)
!2241 = !DILocation(line: 1159, column: 55, scope: !692)
!2242 = !DILocation(line: 1159, column: 60, scope: !692)
!2243 = !DILocation(line: 1160, column: 5, scope: !693)
!2244 = !DILocation(line: 1153, column: 76, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !693, file: !430, discriminator: 1)
!2246 = !DILocation(line: 1162, column: 18, scope: !686)
!2247 = !DILocation(line: 1162, column: 5, scope: !686)
!2248 = !DILocation(line: 1164, column: 5, scope: !686)
!2249 = !DILocation(line: 1165, column: 1, scope: !686)
!2250 = !DILocation(line: 1169, column: 13, scope: !694)
!2251 = !DILocation(line: 1169, column: 29, scope: !694)
!2252 = !DILocation(line: 1171, column: 46, scope: !694)
!2253 = !DILocation(line: 1171, column: 12, scope: !694)
!2254 = !DILocation(line: 1171, column: 5, scope: !694)
!2255 = !DILocation(line: 1012, column: 13, scope: !698)
!2256 = !DILocation(line: 1012, column: 28, scope: !698)
!2257 = !DILocation(line: 1012, column: 46, scope: !698)
!2258 = !DILocation(line: 1014, column: 5, scope: !698)
!2259 = !DILocation(line: 1014, column: 12, scope: !698)
!2260 = !DILocation(line: 1016, column: 26, scope: !698)
!2261 = !DILocation(line: 1016, column: 9, scope: !698)
!2262 = !DILocation(line: 1016, column: 7, scope: !698)
!2263 = !{!2264, !2264, i64 0}
!2264 = !{!"double", !1084, i64 0}
!2265 = !DILocation(line: 1017, column: 9, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !698, file: !430, line: 1017, column: 9)
!2267 = !DILocation(line: 1017, column: 11, scope: !2266)
!2268 = !DILocation(line: 1017, column: 17, scope: !2266)
!2269 = !DILocation(line: 1017, column: 20, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2266, file: !430, discriminator: 1)
!2271 = !DILocation(line: 1017, column: 9, scope: !698)
!2272 = !DILocation(line: 1018, column: 9, scope: !2266)
!2273 = !DILocation(line: 1019, column: 12, scope: !698)
!2274 = !DILocation(line: 1019, column: 5, scope: !698)
!2275 = !DILocation(line: 1020, column: 51, scope: !698)
!2276 = !DILocation(line: 1020, column: 56, scope: !698)
!2277 = !DILocation(line: 1021, column: 1, scope: !698)
!2278 = !DILocation(line: 1024, column: 13, scope: !704)
!2279 = !DILocation(line: 1024, column: 29, scope: !704)
!2280 = !DILocation(line: 1026, column: 5, scope: !704)
!2281 = !DILocation(line: 1026, column: 12, scope: !704)
!2282 = !DILocation(line: 1027, column: 5, scope: !704)
!2283 = !DILocation(line: 1027, column: 18, scope: !704)
!2284 = !DILocation(line: 1028, column: 31, scope: !704)
!2285 = !DILocation(line: 1028, column: 12, scope: !704)
!2286 = !DILocation(line: 1029, column: 1, scope: !704)
!2287 = !DILocation(line: 1028, column: 5, scope: !704)
!2288 = !DILocation(line: 1032, column: 16, scope: !709)
!2289 = !DILocation(line: 1032, column: 31, scope: !709)
!2290 = !DILocation(line: 1032, column: 49, scope: !709)
!2291 = !DILocation(line: 1034, column: 5, scope: !709)
!2292 = !DILocation(line: 1034, column: 12, scope: !709)
!2293 = !DILocation(line: 1036, column: 26, scope: !709)
!2294 = !DILocation(line: 1036, column: 9, scope: !709)
!2295 = !DILocation(line: 1036, column: 7, scope: !709)
!2296 = !DILocation(line: 1037, column: 9, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !709, file: !430, line: 1037, column: 9)
!2298 = !DILocation(line: 1037, column: 11, scope: !2297)
!2299 = !DILocation(line: 1037, column: 17, scope: !2297)
!2300 = !DILocation(line: 1037, column: 20, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2297, file: !430, discriminator: 1)
!2302 = !DILocation(line: 1037, column: 9, scope: !709)
!2303 = !DILocation(line: 1038, column: 9, scope: !2297)
!2304 = !DILocation(line: 1043, column: 24, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !709, file: !430, line: 1043, column: 9)
!2306 = !DILocation(line: 1043, column: 44, scope: !2305)
!2307 = !DILocation(line: 1043, column: 9, scope: !2305)
!2308 = !DILocation(line: 1043, column: 9, scope: !709)
!2309 = !DILocation(line: 1044, column: 9, scope: !2305)
!2310 = !DILocation(line: 1046, column: 51, scope: !709)
!2311 = !DILocation(line: 1046, column: 56, scope: !709)
!2312 = !DILocation(line: 1047, column: 1, scope: !709)
!2313 = !DILocation(line: 1050, column: 16, scope: !715)
!2314 = !DILocation(line: 1050, column: 32, scope: !715)
!2315 = !DILocation(line: 1055, column: 48, scope: !715)
!2316 = !DILocation(line: 1055, column: 31, scope: !715)
!2317 = !DILocation(line: 1055, column: 12, scope: !715)
!2318 = !DILocation(line: 1055, column: 5, scope: !715)
!2319 = !DILocation(line: 992, column: 13, scope: !719)
!2320 = !DILocation(line: 992, column: 28, scope: !719)
!2321 = !DILocation(line: 992, column: 46, scope: !719)
!2322 = !DILocation(line: 994, column: 5, scope: !719)
!2323 = !DILocation(line: 994, column: 17, scope: !719)
!2324 = !DILocation(line: 996, column: 26, scope: !719)
!2325 = !DILocation(line: 996, column: 9, scope: !719)
!2326 = !DILocation(line: 996, column: 7, scope: !719)
!2327 = !{!2328, !2328, i64 0}
!2328 = !{!"long double", !1084, i64 0}
!2329 = !DILocation(line: 997, column: 9, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !719, file: !430, line: 997, column: 9)
!2331 = !DILocation(line: 997, column: 11, scope: !2330)
!2332 = !DILocation(line: 997, column: 17, scope: !2330)
!2333 = !DILocation(line: 997, column: 20, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2330, file: !430, discriminator: 1)
!2335 = !DILocation(line: 997, column: 9, scope: !719)
!2336 = !DILocation(line: 998, column: 9, scope: !2330)
!2337 = !DILocation(line: 999, column: 12, scope: !719)
!2338 = !DILocation(line: 999, column: 5, scope: !719)
!2339 = !DILocation(line: 1000, column: 51, scope: !719)
!2340 = !DILocation(line: 1000, column: 56, scope: !719)
!2341 = !DILocation(line: 1001, column: 1, scope: !719)
!2342 = !DILocation(line: 1004, column: 13, scope: !725)
!2343 = !DILocation(line: 1004, column: 29, scope: !725)
!2344 = !DILocation(line: 1006, column: 5, scope: !725)
!2345 = !DILocation(line: 1006, column: 17, scope: !725)
!2346 = !DILocation(line: 1007, column: 5, scope: !725)
!2347 = !DILocation(line: 1007, column: 18, scope: !725)
!2348 = !DILocation(line: 1008, column: 31, scope: !725)
!2349 = !DILocation(line: 1008, column: 12, scope: !725)
!2350 = !DILocation(line: 1009, column: 1, scope: !725)
!2351 = !DILocation(line: 1008, column: 5, scope: !725)
!2352 = !DILocation(line: 1060, column: 13, scope: !730)
!2353 = !DILocation(line: 1060, column: 28, scope: !730)
!2354 = !DILocation(line: 1060, column: 46, scope: !730)
!2355 = !DILocation(line: 1062, column: 5, scope: !730)
!2356 = !DILocation(line: 1062, column: 11, scope: !730)
!2357 = !DILocation(line: 1064, column: 33, scope: !730)
!2358 = !DILocation(line: 1064, column: 16, scope: !730)
!2359 = !DILocation(line: 1064, column: 9, scope: !730)
!2360 = !DILocation(line: 1064, column: 7, scope: !730)
!2361 = !{!2362, !2362, i64 0}
!2362 = !{!"float", !1084, i64 0}
!2363 = !DILocation(line: 1065, column: 9, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !730, file: !430, line: 1065, column: 9)
!2365 = !DILocation(line: 1065, column: 11, scope: !2364)
!2366 = !DILocation(line: 1065, column: 17, scope: !2364)
!2367 = !DILocation(line: 1065, column: 20, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2364, file: !430, discriminator: 1)
!2369 = !DILocation(line: 1065, column: 9, scope: !730)
!2370 = !DILocation(line: 1066, column: 9, scope: !2364)
!2371 = !DILocation(line: 1067, column: 12, scope: !730)
!2372 = !DILocation(line: 1067, column: 5, scope: !730)
!2373 = !DILocation(line: 1068, column: 51, scope: !730)
!2374 = !DILocation(line: 1068, column: 56, scope: !730)
!2375 = !DILocation(line: 1069, column: 1, scope: !730)
!2376 = !DILocation(line: 1072, column: 13, scope: !736)
!2377 = !DILocation(line: 1072, column: 29, scope: !736)
!2378 = !DILocation(line: 1074, column: 5, scope: !736)
!2379 = !DILocation(line: 1074, column: 11, scope: !736)
!2380 = !DILocation(line: 1075, column: 5, scope: !736)
!2381 = !DILocation(line: 1075, column: 18, scope: !736)
!2382 = !DILocation(line: 1076, column: 31, scope: !736)
!2383 = !DILocation(line: 1076, column: 12, scope: !736)
!2384 = !DILocation(line: 1077, column: 1, scope: !736)
!2385 = !DILocation(line: 1076, column: 5, scope: !736)
!2386 = !DILocation(line: 1080, column: 16, scope: !741)
!2387 = !DILocation(line: 1080, column: 31, scope: !741)
!2388 = !DILocation(line: 1080, column: 49, scope: !741)
!2389 = !DILocation(line: 1082, column: 5, scope: !741)
!2390 = !DILocation(line: 1082, column: 11, scope: !741)
!2391 = !DILocation(line: 1084, column: 33, scope: !741)
!2392 = !DILocation(line: 1084, column: 16, scope: !741)
!2393 = !DILocation(line: 1084, column: 9, scope: !741)
!2394 = !DILocation(line: 1084, column: 7, scope: !741)
!2395 = !DILocation(line: 1085, column: 9, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !741, file: !430, line: 1085, column: 9)
!2397 = !DILocation(line: 1085, column: 11, scope: !2396)
!2398 = !DILocation(line: 1085, column: 17, scope: !2396)
!2399 = !DILocation(line: 1085, column: 20, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2396, file: !430, discriminator: 1)
!2401 = !DILocation(line: 1085, column: 9, scope: !741)
!2402 = !DILocation(line: 1086, column: 9, scope: !2396)
!2403 = !DILocation(line: 1091, column: 24, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !741, file: !430, line: 1091, column: 9)
!2405 = !DILocation(line: 1091, column: 44, scope: !2404)
!2406 = !DILocation(line: 1091, column: 9, scope: !2404)
!2407 = !DILocation(line: 1091, column: 9, scope: !741)
!2408 = !DILocation(line: 1092, column: 9, scope: !2404)
!2409 = !DILocation(line: 1094, column: 51, scope: !741)
!2410 = !DILocation(line: 1094, column: 56, scope: !741)
!2411 = !DILocation(line: 1095, column: 1, scope: !741)
!2412 = !DILocation(line: 1098, column: 16, scope: !747)
!2413 = !DILocation(line: 1098, column: 32, scope: !747)
!2414 = !DILocation(line: 1103, column: 48, scope: !747)
!2415 = !DILocation(line: 1103, column: 31, scope: !747)
!2416 = !DILocation(line: 1103, column: 12, scope: !747)
!2417 = !DILocation(line: 1103, column: 5, scope: !747)
!2418 = !DILocation(line: 551, column: 13, scope: !751)
!2419 = !DILocation(line: 551, column: 28, scope: !751)
!2420 = !DILocation(line: 551, column: 46, scope: !751)
!2421 = !DILocation(line: 553, column: 5, scope: !751)
!2422 = !DILocation(line: 553, column: 10, scope: !751)
!2423 = !DILocation(line: 554, column: 5, scope: !751)
!2424 = !DILocation(line: 554, column: 11, scope: !751)
!2425 = !DILocation(line: 555, column: 18, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !751, file: !430, line: 555, column: 9)
!2427 = !DILocation(line: 555, column: 9, scope: !2426)
!2428 = !DILocation(line: 555, column: 31, scope: !2426)
!2429 = !DILocation(line: 555, column: 9, scope: !751)
!2430 = !DILocation(line: 556, column: 9, scope: !2426)
!2431 = !DILocation(line: 557, column: 5, scope: !751)
!2432 = !DILocation(line: 557, column: 16, scope: !751)
!2433 = !DILocation(line: 558, column: 12, scope: !751)
!2434 = !DILocation(line: 558, column: 18, scope: !751)
!2435 = !DILocation(line: 558, column: 10, scope: !751)
!2436 = !DILocation(line: 558, column: 38, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !751, file: !430, discriminator: 1)
!2438 = !{!1176, !1176, i64 0}
!2439 = !DILocation(line: 558, column: 31, scope: !751)
!2440 = !DILocation(line: 558, column: 63, scope: !751)
!2441 = !DILocation(line: 558, column: 69, scope: !751)
!2442 = !DILocation(line: 558, column: 76, scope: !751)
!2443 = !DILocation(line: 558, column: 57, scope: !751)
!2444 = !DILocation(line: 558, column: 82, scope: !751)
!2445 = !DILocation(line: 558, column: 87, scope: !751)
!2446 = !DILocation(line: 558, column: 93, scope: !751)
!2447 = !DILocation(line: 558, column: 103, scope: !751)
!2448 = !DILocation(line: 558, column: 109, scope: !751)
!2449 = !DILocation(line: 558, column: 98, scope: !751)
!2450 = !DILocation(line: 558, column: 42, scope: !751)
!2451 = !DILocation(line: 558, column: 40, scope: !751)
!2452 = !DILocation(line: 558, column: 134, scope: !751)
!2453 = !DILocation(line: 558, column: 127, scope: !751)
!2454 = !DILocation(line: 558, column: 159, scope: !751)
!2455 = !DILocation(line: 558, column: 165, scope: !751)
!2456 = !DILocation(line: 558, column: 172, scope: !751)
!2457 = !DILocation(line: 558, column: 153, scope: !751)
!2458 = !DILocation(line: 558, column: 178, scope: !751)
!2459 = !DILocation(line: 558, column: 183, scope: !751)
!2460 = !DILocation(line: 558, column: 189, scope: !751)
!2461 = !DILocation(line: 558, column: 138, scope: !751)
!2462 = !DILocation(line: 558, column: 200, scope: !751)
!2463 = !DILocation(line: 558, column: 206, scope: !751)
!2464 = !DILocation(line: 558, column: 195, scope: !751)
!2465 = !DILocation(line: 558, column: 122, scope: !751)
!2466 = !DILocation(line: 558, column: 229, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !751, file: !430, discriminator: 2)
!2468 = !DILocation(line: 558, column: 222, scope: !751)
!2469 = !DILocation(line: 558, column: 9, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2471, file: !430, discriminator: 4)
!2471 = !DILexicalBlockFile(scope: !751, file: !430, discriminator: 3)
!2472 = !DILocation(line: 558, column: 7, scope: !751)
!2473 = !DILocation(line: 559, column: 12, scope: !751)
!2474 = !DILocation(line: 559, column: 5, scope: !751)
!2475 = !DILocation(line: 560, column: 51, scope: !751)
!2476 = !DILocation(line: 560, column: 56, scope: !751)
!2477 = !DILocation(line: 561, column: 1, scope: !751)
!2478 = !DILocation(line: 580, column: 13, scope: !758)
!2479 = !DILocation(line: 580, column: 29, scope: !758)
!2480 = !DILocation(line: 582, column: 5, scope: !758)
!2481 = !DILocation(line: 582, column: 11, scope: !758)
!2482 = !DILocation(line: 583, column: 5, scope: !758)
!2483 = !DILocation(line: 583, column: 18, scope: !758)
!2484 = !DILocation(line: 584, column: 11, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !758, file: !430, line: 584, column: 9)
!2486 = !DILocation(line: 584, column: 17, scope: !2485)
!2487 = !DILocation(line: 584, column: 9, scope: !758)
!2488 = !DILocation(line: 584, column: 54, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2490, file: !430, discriminator: 1)
!2490 = distinct !DILexicalBlock(scope: !2485, file: !430, line: 584, column: 25)
!2491 = !DILocation(line: 584, column: 60, scope: !2490)
!2492 = !DILocation(line: 584, column: 50, scope: !2490)
!2493 = !DILocation(line: 584, column: 74, scope: !2490)
!2494 = !DILocation(line: 584, column: 80, scope: !2490)
!2495 = !DILocation(line: 584, column: 70, scope: !2490)
!2496 = !DILocation(line: 584, column: 31, scope: !2490)
!2497 = !DILocation(line: 584, column: 116, scope: !2490)
!2498 = !DILocation(line: 584, column: 122, scope: !2490)
!2499 = !DILocation(line: 584, column: 112, scope: !2490)
!2500 = !DILocation(line: 584, column: 93, scope: !2490)
!2501 = !DILocation(line: 584, column: 131, scope: !2490)
!2502 = !DILocation(line: 585, column: 34, scope: !758)
!2503 = !DILocation(line: 585, column: 28, scope: !758)
!2504 = !DILocation(line: 585, column: 12, scope: !758)
!2505 = !DILocation(line: 586, column: 1, scope: !758)
!2506 = !DILocation(line: 585, column: 5, scope: !758)
!2507 = !DILocation(line: 565, column: 16, scope: !763)
!2508 = !DILocation(line: 565, column: 31, scope: !763)
!2509 = !DILocation(line: 565, column: 49, scope: !763)
!2510 = !DILocation(line: 567, column: 5, scope: !763)
!2511 = !DILocation(line: 567, column: 10, scope: !763)
!2512 = !DILocation(line: 568, column: 5, scope: !763)
!2513 = !DILocation(line: 568, column: 11, scope: !763)
!2514 = !DILocation(line: 569, column: 18, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !763, file: !430, line: 569, column: 9)
!2516 = !DILocation(line: 569, column: 9, scope: !2515)
!2517 = !DILocation(line: 569, column: 31, scope: !2515)
!2518 = !DILocation(line: 569, column: 9, scope: !763)
!2519 = !DILocation(line: 570, column: 9, scope: !2515)
!2520 = !DILocation(line: 571, column: 5, scope: !763)
!2521 = !DILocation(line: 571, column: 20, scope: !763)
!2522 = !DILocation(line: 572, column: 18, scope: !763)
!2523 = !DILocation(line: 572, column: 24, scope: !763)
!2524 = !DILocation(line: 572, column: 30, scope: !763)
!2525 = !DILocation(line: 572, column: 45, scope: !763)
!2526 = !DILocation(line: 572, column: 51, scope: !763)
!2527 = !DILocation(line: 572, column: 57, scope: !763)
!2528 = !DILocation(line: 572, column: 40, scope: !763)
!2529 = !DILocation(line: 572, column: 13, scope: !763)
!2530 = !DILocation(line: 572, column: 11, scope: !763)
!2531 = !DILocation(line: 573, column: 16, scope: !763)
!2532 = !DILocation(line: 573, column: 22, scope: !763)
!2533 = !DILocation(line: 573, column: 14, scope: !763)
!2534 = !DILocation(line: 573, column: 42, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !763, file: !430, discriminator: 1)
!2536 = !DILocation(line: 573, column: 35, scope: !763)
!2537 = !DILocation(line: 573, column: 71, scope: !763)
!2538 = !DILocation(line: 573, column: 77, scope: !763)
!2539 = !DILocation(line: 573, column: 84, scope: !763)
!2540 = !DILocation(line: 573, column: 65, scope: !763)
!2541 = !DILocation(line: 573, column: 90, scope: !763)
!2542 = !DILocation(line: 573, column: 95, scope: !763)
!2543 = !DILocation(line: 573, column: 101, scope: !763)
!2544 = !DILocation(line: 573, column: 111, scope: !763)
!2545 = !DILocation(line: 573, column: 117, scope: !763)
!2546 = !DILocation(line: 573, column: 106, scope: !763)
!2547 = !DILocation(line: 573, column: 50, scope: !763)
!2548 = !DILocation(line: 573, column: 48, scope: !763)
!2549 = !DILocation(line: 573, column: 142, scope: !763)
!2550 = !DILocation(line: 573, column: 135, scope: !763)
!2551 = !DILocation(line: 573, column: 167, scope: !763)
!2552 = !DILocation(line: 573, column: 173, scope: !763)
!2553 = !DILocation(line: 573, column: 180, scope: !763)
!2554 = !DILocation(line: 573, column: 161, scope: !763)
!2555 = !DILocation(line: 573, column: 186, scope: !763)
!2556 = !DILocation(line: 573, column: 191, scope: !763)
!2557 = !DILocation(line: 573, column: 197, scope: !763)
!2558 = !DILocation(line: 573, column: 146, scope: !763)
!2559 = !DILocation(line: 573, column: 208, scope: !763)
!2560 = !DILocation(line: 573, column: 214, scope: !763)
!2561 = !DILocation(line: 573, column: 203, scope: !763)
!2562 = !DILocation(line: 573, column: 130, scope: !763)
!2563 = !DILocation(line: 573, column: 237, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !763, file: !430, discriminator: 2)
!2565 = !DILocation(line: 573, column: 230, scope: !763)
!2566 = !DILocation(line: 573, column: 13, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2568, file: !430, discriminator: 4)
!2568 = !DILexicalBlockFile(scope: !763, file: !430, discriminator: 3)
!2569 = !DILocation(line: 573, column: 11, scope: !763)
!2570 = !DILocation(line: 574, column: 18, scope: !763)
!2571 = !DILocation(line: 574, column: 24, scope: !763)
!2572 = !DILocation(line: 574, column: 30, scope: !763)
!2573 = !DILocation(line: 574, column: 45, scope: !763)
!2574 = !DILocation(line: 574, column: 51, scope: !763)
!2575 = !DILocation(line: 574, column: 57, scope: !763)
!2576 = !DILocation(line: 574, column: 40, scope: !763)
!2577 = !DILocation(line: 574, column: 13, scope: !763)
!2578 = !DILocation(line: 574, column: 11, scope: !763)
!2579 = !DILocation(line: 575, column: 12, scope: !763)
!2580 = !DILocation(line: 575, column: 5, scope: !763)
!2581 = !DILocation(line: 576, column: 51, scope: !763)
!2582 = !DILocation(line: 576, column: 56, scope: !763)
!2583 = !DILocation(line: 577, column: 1, scope: !763)
!2584 = !DILocation(line: 589, column: 16, scope: !770)
!2585 = !DILocation(line: 589, column: 32, scope: !770)
!2586 = !DILocation(line: 591, column: 5, scope: !770)
!2587 = !DILocation(line: 591, column: 11, scope: !770)
!2588 = !DILocation(line: 592, column: 5, scope: !770)
!2589 = !DILocation(line: 592, column: 18, scope: !770)
!2590 = !DILocation(line: 593, column: 16, scope: !770)
!2591 = !DILocation(line: 593, column: 20, scope: !770)
!2592 = !DILocation(line: 593, column: 26, scope: !770)
!2593 = !DILocation(line: 593, column: 41, scope: !770)
!2594 = !DILocation(line: 593, column: 45, scope: !770)
!2595 = !DILocation(line: 593, column: 51, scope: !770)
!2596 = !DILocation(line: 593, column: 36, scope: !770)
!2597 = !DILocation(line: 593, column: 11, scope: !770)
!2598 = !DILocation(line: 593, column: 9, scope: !770)
!2599 = !DILocation(line: 594, column: 11, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !770, file: !430, line: 594, column: 9)
!2601 = !DILocation(line: 594, column: 17, scope: !2600)
!2602 = !DILocation(line: 594, column: 9, scope: !770)
!2603 = !DILocation(line: 594, column: 54, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2605, file: !430, discriminator: 1)
!2605 = distinct !DILexicalBlock(scope: !2600, file: !430, line: 594, column: 25)
!2606 = !DILocation(line: 594, column: 60, scope: !2605)
!2607 = !DILocation(line: 594, column: 50, scope: !2605)
!2608 = !DILocation(line: 594, column: 74, scope: !2605)
!2609 = !DILocation(line: 594, column: 80, scope: !2605)
!2610 = !DILocation(line: 594, column: 70, scope: !2605)
!2611 = !DILocation(line: 594, column: 31, scope: !2605)
!2612 = !DILocation(line: 594, column: 116, scope: !2605)
!2613 = !DILocation(line: 594, column: 122, scope: !2605)
!2614 = !DILocation(line: 594, column: 112, scope: !2605)
!2615 = !DILocation(line: 594, column: 93, scope: !2605)
!2616 = !DILocation(line: 594, column: 131, scope: !2605)
!2617 = !DILocation(line: 595, column: 28, scope: !770)
!2618 = !DILocation(line: 595, column: 12, scope: !770)
!2619 = !DILocation(line: 596, column: 1, scope: !770)
!2620 = !DILocation(line: 595, column: 5, scope: !770)
!2621 = !DILocation(line: 599, column: 13, scope: !775)
!2622 = !DILocation(line: 599, column: 28, scope: !775)
!2623 = !DILocation(line: 599, column: 46, scope: !775)
!2624 = !DILocation(line: 601, column: 5, scope: !775)
!2625 = !DILocation(line: 601, column: 19, scope: !775)
!2626 = !DILocation(line: 602, column: 5, scope: !775)
!2627 = !DILocation(line: 602, column: 20, scope: !775)
!2628 = !DILocation(line: 603, column: 19, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !775, file: !430, line: 603, column: 9)
!2630 = !DILocation(line: 603, column: 9, scope: !2629)
!2631 = !DILocation(line: 603, column: 32, scope: !2629)
!2632 = !DILocation(line: 603, column: 9, scope: !775)
!2633 = !DILocation(line: 604, column: 9, scope: !2629)
!2634 = !DILocation(line: 605, column: 5, scope: !775)
!2635 = !DILocation(line: 605, column: 16, scope: !775)
!2636 = !DILocation(line: 606, column: 12, scope: !775)
!2637 = !DILocation(line: 606, column: 18, scope: !775)
!2638 = !DILocation(line: 606, column: 10, scope: !775)
!2639 = !DILocation(line: 606, column: 47, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !775, file: !430, discriminator: 1)
!2641 = !DILocation(line: 606, column: 31, scope: !775)
!2642 = !DILocation(line: 606, column: 81, scope: !775)
!2643 = !DILocation(line: 606, column: 87, scope: !775)
!2644 = !DILocation(line: 606, column: 94, scope: !775)
!2645 = !DILocation(line: 606, column: 75, scope: !775)
!2646 = !DILocation(line: 606, column: 100, scope: !775)
!2647 = !DILocation(line: 606, column: 105, scope: !775)
!2648 = !DILocation(line: 606, column: 111, scope: !775)
!2649 = !DILocation(line: 606, column: 121, scope: !775)
!2650 = !DILocation(line: 606, column: 127, scope: !775)
!2651 = !DILocation(line: 606, column: 116, scope: !775)
!2652 = !DILocation(line: 606, column: 51, scope: !775)
!2653 = !DILocation(line: 606, column: 49, scope: !775)
!2654 = !DILocation(line: 606, column: 161, scope: !775)
!2655 = !DILocation(line: 606, column: 145, scope: !775)
!2656 = !DILocation(line: 606, column: 195, scope: !775)
!2657 = !DILocation(line: 606, column: 201, scope: !775)
!2658 = !DILocation(line: 606, column: 208, scope: !775)
!2659 = !DILocation(line: 606, column: 189, scope: !775)
!2660 = !DILocation(line: 606, column: 214, scope: !775)
!2661 = !DILocation(line: 606, column: 219, scope: !775)
!2662 = !DILocation(line: 606, column: 225, scope: !775)
!2663 = !DILocation(line: 606, column: 165, scope: !775)
!2664 = !DILocation(line: 606, column: 236, scope: !775)
!2665 = !DILocation(line: 606, column: 242, scope: !775)
!2666 = !DILocation(line: 606, column: 231, scope: !775)
!2667 = !DILocation(line: 606, column: 140, scope: !775)
!2668 = !DILocation(line: 606, column: 274, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !775, file: !430, discriminator: 2)
!2670 = !DILocation(line: 606, column: 258, scope: !775)
!2671 = !DILocation(line: 606, column: 9, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2673, file: !430, discriminator: 4)
!2673 = !DILexicalBlockFile(scope: !775, file: !430, discriminator: 3)
!2674 = !DILocation(line: 606, column: 7, scope: !775)
!2675 = !DILocation(line: 607, column: 12, scope: !775)
!2676 = !DILocation(line: 607, column: 5, scope: !775)
!2677 = !DILocation(line: 608, column: 51, scope: !775)
!2678 = !DILocation(line: 608, column: 56, scope: !775)
!2679 = !DILocation(line: 609, column: 1, scope: !775)
!2680 = !DILocation(line: 628, column: 13, scope: !782)
!2681 = !DILocation(line: 628, column: 29, scope: !782)
!2682 = !DILocation(line: 630, column: 5, scope: !782)
!2683 = !DILocation(line: 630, column: 20, scope: !782)
!2684 = !DILocation(line: 631, column: 5, scope: !782)
!2685 = !DILocation(line: 631, column: 18, scope: !782)
!2686 = !DILocation(line: 632, column: 11, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !782, file: !430, line: 632, column: 9)
!2688 = !DILocation(line: 632, column: 17, scope: !2687)
!2689 = !DILocation(line: 632, column: 9, scope: !782)
!2690 = !DILocation(line: 632, column: 54, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2692, file: !430, discriminator: 1)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !430, line: 632, column: 25)
!2693 = !DILocation(line: 632, column: 60, scope: !2692)
!2694 = !DILocation(line: 632, column: 50, scope: !2692)
!2695 = !DILocation(line: 632, column: 74, scope: !2692)
!2696 = !DILocation(line: 632, column: 80, scope: !2692)
!2697 = !DILocation(line: 632, column: 70, scope: !2692)
!2698 = !DILocation(line: 632, column: 31, scope: !2692)
!2699 = !DILocation(line: 632, column: 116, scope: !2692)
!2700 = !DILocation(line: 632, column: 122, scope: !2692)
!2701 = !DILocation(line: 632, column: 112, scope: !2692)
!2702 = !DILocation(line: 632, column: 93, scope: !2692)
!2703 = !DILocation(line: 632, column: 131, scope: !2692)
!2704 = !DILocation(line: 633, column: 28, scope: !782)
!2705 = !DILocation(line: 633, column: 12, scope: !782)
!2706 = !DILocation(line: 634, column: 1, scope: !782)
!2707 = !DILocation(line: 633, column: 5, scope: !782)
!2708 = !DILocation(line: 612, column: 16, scope: !787)
!2709 = !DILocation(line: 612, column: 31, scope: !787)
!2710 = !DILocation(line: 612, column: 49, scope: !787)
!2711 = !DILocation(line: 614, column: 5, scope: !787)
!2712 = !DILocation(line: 614, column: 19, scope: !787)
!2713 = !DILocation(line: 615, column: 5, scope: !787)
!2714 = !DILocation(line: 615, column: 20, scope: !787)
!2715 = !DILocation(line: 616, column: 19, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !787, file: !430, line: 616, column: 9)
!2717 = !DILocation(line: 616, column: 9, scope: !2716)
!2718 = !DILocation(line: 616, column: 32, scope: !2716)
!2719 = !DILocation(line: 616, column: 9, scope: !787)
!2720 = !DILocation(line: 617, column: 9, scope: !2716)
!2721 = !DILocation(line: 618, column: 5, scope: !787)
!2722 = !DILocation(line: 618, column: 20, scope: !787)
!2723 = !DILocation(line: 619, column: 18, scope: !787)
!2724 = !DILocation(line: 619, column: 24, scope: !787)
!2725 = !DILocation(line: 619, column: 30, scope: !787)
!2726 = !DILocation(line: 619, column: 45, scope: !787)
!2727 = !DILocation(line: 619, column: 51, scope: !787)
!2728 = !DILocation(line: 619, column: 57, scope: !787)
!2729 = !DILocation(line: 619, column: 40, scope: !787)
!2730 = !DILocation(line: 619, column: 13, scope: !787)
!2731 = !DILocation(line: 619, column: 11, scope: !787)
!2732 = !DILocation(line: 620, column: 16, scope: !787)
!2733 = !DILocation(line: 620, column: 22, scope: !787)
!2734 = !DILocation(line: 620, column: 14, scope: !787)
!2735 = !DILocation(line: 620, column: 51, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !787, file: !430, discriminator: 1)
!2737 = !DILocation(line: 620, column: 35, scope: !787)
!2738 = !DILocation(line: 620, column: 89, scope: !787)
!2739 = !DILocation(line: 620, column: 95, scope: !787)
!2740 = !DILocation(line: 620, column: 102, scope: !787)
!2741 = !DILocation(line: 620, column: 83, scope: !787)
!2742 = !DILocation(line: 620, column: 108, scope: !787)
!2743 = !DILocation(line: 620, column: 113, scope: !787)
!2744 = !DILocation(line: 620, column: 119, scope: !787)
!2745 = !DILocation(line: 620, column: 129, scope: !787)
!2746 = !DILocation(line: 620, column: 135, scope: !787)
!2747 = !DILocation(line: 620, column: 124, scope: !787)
!2748 = !DILocation(line: 620, column: 59, scope: !787)
!2749 = !DILocation(line: 620, column: 57, scope: !787)
!2750 = !DILocation(line: 620, column: 169, scope: !787)
!2751 = !DILocation(line: 620, column: 153, scope: !787)
!2752 = !DILocation(line: 620, column: 203, scope: !787)
!2753 = !DILocation(line: 620, column: 209, scope: !787)
!2754 = !DILocation(line: 620, column: 216, scope: !787)
!2755 = !DILocation(line: 620, column: 197, scope: !787)
!2756 = !DILocation(line: 620, column: 222, scope: !787)
!2757 = !DILocation(line: 620, column: 227, scope: !787)
!2758 = !DILocation(line: 620, column: 233, scope: !787)
!2759 = !DILocation(line: 620, column: 173, scope: !787)
!2760 = !DILocation(line: 620, column: 244, scope: !787)
!2761 = !DILocation(line: 620, column: 250, scope: !787)
!2762 = !DILocation(line: 620, column: 239, scope: !787)
!2763 = !DILocation(line: 620, column: 148, scope: !787)
!2764 = !DILocation(line: 620, column: 282, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !787, file: !430, discriminator: 2)
!2766 = !DILocation(line: 620, column: 266, scope: !787)
!2767 = !DILocation(line: 620, column: 13, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !2769, file: !430, discriminator: 4)
!2769 = !DILexicalBlockFile(scope: !787, file: !430, discriminator: 3)
!2770 = !DILocation(line: 620, column: 11, scope: !787)
!2771 = !DILocation(line: 621, column: 18, scope: !787)
!2772 = !DILocation(line: 621, column: 24, scope: !787)
!2773 = !DILocation(line: 621, column: 30, scope: !787)
!2774 = !DILocation(line: 621, column: 45, scope: !787)
!2775 = !DILocation(line: 621, column: 51, scope: !787)
!2776 = !DILocation(line: 621, column: 57, scope: !787)
!2777 = !DILocation(line: 621, column: 40, scope: !787)
!2778 = !DILocation(line: 621, column: 13, scope: !787)
!2779 = !DILocation(line: 621, column: 11, scope: !787)
!2780 = !DILocation(line: 622, column: 12, scope: !787)
!2781 = !DILocation(line: 622, column: 5, scope: !787)
!2782 = !DILocation(line: 623, column: 51, scope: !787)
!2783 = !DILocation(line: 623, column: 56, scope: !787)
!2784 = !DILocation(line: 624, column: 1, scope: !787)
!2785 = !DILocation(line: 637, column: 16, scope: !794)
!2786 = !DILocation(line: 637, column: 32, scope: !794)
!2787 = !DILocation(line: 639, column: 5, scope: !794)
!2788 = !DILocation(line: 639, column: 20, scope: !794)
!2789 = !DILocation(line: 640, column: 5, scope: !794)
!2790 = !DILocation(line: 640, column: 18, scope: !794)
!2791 = !DILocation(line: 641, column: 16, scope: !794)
!2792 = !DILocation(line: 641, column: 20, scope: !794)
!2793 = !DILocation(line: 641, column: 26, scope: !794)
!2794 = !DILocation(line: 641, column: 41, scope: !794)
!2795 = !DILocation(line: 641, column: 45, scope: !794)
!2796 = !DILocation(line: 641, column: 51, scope: !794)
!2797 = !DILocation(line: 641, column: 36, scope: !794)
!2798 = !DILocation(line: 641, column: 11, scope: !794)
!2799 = !DILocation(line: 641, column: 9, scope: !794)
!2800 = !DILocation(line: 642, column: 11, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !794, file: !430, line: 642, column: 9)
!2802 = !DILocation(line: 642, column: 17, scope: !2801)
!2803 = !DILocation(line: 642, column: 9, scope: !794)
!2804 = !DILocation(line: 642, column: 54, scope: !2805)
!2805 = !DILexicalBlockFile(scope: !2806, file: !430, discriminator: 1)
!2806 = distinct !DILexicalBlock(scope: !2801, file: !430, line: 642, column: 25)
!2807 = !DILocation(line: 642, column: 60, scope: !2806)
!2808 = !DILocation(line: 642, column: 50, scope: !2806)
!2809 = !DILocation(line: 642, column: 74, scope: !2806)
!2810 = !DILocation(line: 642, column: 80, scope: !2806)
!2811 = !DILocation(line: 642, column: 70, scope: !2806)
!2812 = !DILocation(line: 642, column: 31, scope: !2806)
!2813 = !DILocation(line: 642, column: 116, scope: !2806)
!2814 = !DILocation(line: 642, column: 122, scope: !2806)
!2815 = !DILocation(line: 642, column: 112, scope: !2806)
!2816 = !DILocation(line: 642, column: 93, scope: !2806)
!2817 = !DILocation(line: 642, column: 131, scope: !2806)
!2818 = !DILocation(line: 643, column: 28, scope: !794)
!2819 = !DILocation(line: 643, column: 12, scope: !794)
!2820 = !DILocation(line: 644, column: 1, scope: !794)
!2821 = !DILocation(line: 643, column: 5, scope: !794)
!2822 = !DILocation(line: 647, column: 13, scope: !799)
!2823 = !DILocation(line: 647, column: 28, scope: !799)
!2824 = !DILocation(line: 647, column: 46, scope: !799)
!2825 = !DILocation(line: 649, column: 5, scope: !799)
!2826 = !DILocation(line: 649, column: 10, scope: !799)
!2827 = !DILocation(line: 650, column: 5, scope: !799)
!2828 = !DILocation(line: 650, column: 9, scope: !799)
!2829 = !DILocation(line: 651, column: 18, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !799, file: !430, line: 651, column: 9)
!2831 = !DILocation(line: 651, column: 9, scope: !2830)
!2832 = !DILocation(line: 651, column: 31, scope: !2830)
!2833 = !DILocation(line: 651, column: 9, scope: !799)
!2834 = !DILocation(line: 652, column: 9, scope: !2830)
!2835 = !DILocation(line: 653, column: 5, scope: !799)
!2836 = !DILocation(line: 653, column: 16, scope: !799)
!2837 = !DILocation(line: 654, column: 12, scope: !799)
!2838 = !DILocation(line: 654, column: 18, scope: !799)
!2839 = !DILocation(line: 654, column: 10, scope: !799)
!2840 = !DILocation(line: 654, column: 36, scope: !2841)
!2841 = !DILexicalBlockFile(scope: !799, file: !430, discriminator: 1)
!2842 = !DILocation(line: 654, column: 59, scope: !799)
!2843 = !DILocation(line: 654, column: 65, scope: !799)
!2844 = !DILocation(line: 654, column: 72, scope: !799)
!2845 = !DILocation(line: 654, column: 53, scope: !799)
!2846 = !DILocation(line: 654, column: 78, scope: !799)
!2847 = !DILocation(line: 654, column: 83, scope: !799)
!2848 = !DILocation(line: 654, column: 89, scope: !799)
!2849 = !DILocation(line: 654, column: 99, scope: !799)
!2850 = !DILocation(line: 654, column: 105, scope: !799)
!2851 = !DILocation(line: 654, column: 94, scope: !799)
!2852 = !DILocation(line: 654, column: 40, scope: !799)
!2853 = !DILocation(line: 654, column: 38, scope: !799)
!2854 = !DILocation(line: 654, column: 128, scope: !799)
!2855 = !DILocation(line: 654, column: 123, scope: !799)
!2856 = !DILocation(line: 654, column: 151, scope: !799)
!2857 = !DILocation(line: 654, column: 157, scope: !799)
!2858 = !DILocation(line: 654, column: 164, scope: !799)
!2859 = !DILocation(line: 654, column: 145, scope: !799)
!2860 = !DILocation(line: 654, column: 170, scope: !799)
!2861 = !DILocation(line: 654, column: 175, scope: !799)
!2862 = !DILocation(line: 654, column: 181, scope: !799)
!2863 = !DILocation(line: 654, column: 132, scope: !799)
!2864 = !DILocation(line: 654, column: 192, scope: !799)
!2865 = !DILocation(line: 654, column: 198, scope: !799)
!2866 = !DILocation(line: 654, column: 187, scope: !799)
!2867 = !DILocation(line: 654, column: 118, scope: !799)
!2868 = !DILocation(line: 654, column: 219, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !799, file: !430, discriminator: 2)
!2870 = !DILocation(line: 654, column: 214, scope: !799)
!2871 = !DILocation(line: 654, column: 7, scope: !2872)
!2872 = !DILexicalBlockFile(scope: !2873, file: !430, discriminator: 4)
!2873 = !DILexicalBlockFile(scope: !799, file: !430, discriminator: 3)
!2874 = !DILocation(line: 655, column: 12, scope: !799)
!2875 = !DILocation(line: 655, column: 5, scope: !799)
!2876 = !DILocation(line: 656, column: 51, scope: !799)
!2877 = !DILocation(line: 656, column: 56, scope: !799)
!2878 = !DILocation(line: 657, column: 1, scope: !799)
!2879 = !DILocation(line: 676, column: 13, scope: !806)
!2880 = !DILocation(line: 676, column: 29, scope: !806)
!2881 = !DILocation(line: 678, column: 5, scope: !806)
!2882 = !DILocation(line: 678, column: 9, scope: !806)
!2883 = !DILocation(line: 679, column: 5, scope: !806)
!2884 = !DILocation(line: 679, column: 18, scope: !806)
!2885 = !DILocation(line: 680, column: 11, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !806, file: !430, line: 680, column: 9)
!2887 = !DILocation(line: 680, column: 17, scope: !2886)
!2888 = !DILocation(line: 680, column: 9, scope: !806)
!2889 = !DILocation(line: 680, column: 54, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !2891, file: !430, discriminator: 1)
!2891 = distinct !DILexicalBlock(scope: !2886, file: !430, line: 680, column: 25)
!2892 = !DILocation(line: 680, column: 60, scope: !2891)
!2893 = !DILocation(line: 680, column: 50, scope: !2891)
!2894 = !DILocation(line: 680, column: 74, scope: !2891)
!2895 = !DILocation(line: 680, column: 80, scope: !2891)
!2896 = !DILocation(line: 680, column: 70, scope: !2891)
!2897 = !DILocation(line: 680, column: 31, scope: !2891)
!2898 = !DILocation(line: 680, column: 116, scope: !2891)
!2899 = !DILocation(line: 680, column: 122, scope: !2891)
!2900 = !DILocation(line: 680, column: 112, scope: !2891)
!2901 = !DILocation(line: 680, column: 93, scope: !2891)
!2902 = !DILocation(line: 680, column: 131, scope: !2891)
!2903 = !DILocation(line: 681, column: 28, scope: !806)
!2904 = !DILocation(line: 681, column: 12, scope: !806)
!2905 = !DILocation(line: 682, column: 1, scope: !806)
!2906 = !DILocation(line: 681, column: 5, scope: !806)
!2907 = !DILocation(line: 660, column: 16, scope: !811)
!2908 = !DILocation(line: 660, column: 31, scope: !811)
!2909 = !DILocation(line: 660, column: 49, scope: !811)
!2910 = !DILocation(line: 662, column: 5, scope: !811)
!2911 = !DILocation(line: 662, column: 10, scope: !811)
!2912 = !DILocation(line: 663, column: 5, scope: !811)
!2913 = !DILocation(line: 663, column: 9, scope: !811)
!2914 = !DILocation(line: 664, column: 18, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !811, file: !430, line: 664, column: 9)
!2916 = !DILocation(line: 664, column: 9, scope: !2915)
!2917 = !DILocation(line: 664, column: 31, scope: !2915)
!2918 = !DILocation(line: 664, column: 9, scope: !811)
!2919 = !DILocation(line: 665, column: 9, scope: !2915)
!2920 = !DILocation(line: 666, column: 5, scope: !811)
!2921 = !DILocation(line: 666, column: 20, scope: !811)
!2922 = !DILocation(line: 667, column: 18, scope: !811)
!2923 = !DILocation(line: 667, column: 24, scope: !811)
!2924 = !DILocation(line: 667, column: 38, scope: !811)
!2925 = !DILocation(line: 667, column: 51, scope: !811)
!2926 = !DILocation(line: 667, column: 57, scope: !811)
!2927 = !DILocation(line: 667, column: 71, scope: !811)
!2928 = !DILocation(line: 667, column: 46, scope: !811)
!2929 = !DILocation(line: 667, column: 83, scope: !811)
!2930 = !DILocation(line: 667, column: 89, scope: !811)
!2931 = !DILocation(line: 667, column: 103, scope: !811)
!2932 = !DILocation(line: 667, column: 78, scope: !811)
!2933 = !DILocation(line: 667, column: 116, scope: !811)
!2934 = !DILocation(line: 667, column: 122, scope: !811)
!2935 = !DILocation(line: 667, column: 129, scope: !811)
!2936 = !DILocation(line: 667, column: 110, scope: !811)
!2937 = !DILocation(line: 667, column: 11, scope: !811)
!2938 = !DILocation(line: 668, column: 16, scope: !811)
!2939 = !DILocation(line: 668, column: 22, scope: !811)
!2940 = !DILocation(line: 668, column: 14, scope: !811)
!2941 = !DILocation(line: 668, column: 40, scope: !2942)
!2942 = !DILexicalBlockFile(scope: !811, file: !430, discriminator: 1)
!2943 = !DILocation(line: 668, column: 67, scope: !811)
!2944 = !DILocation(line: 668, column: 73, scope: !811)
!2945 = !DILocation(line: 668, column: 80, scope: !811)
!2946 = !DILocation(line: 668, column: 61, scope: !811)
!2947 = !DILocation(line: 668, column: 86, scope: !811)
!2948 = !DILocation(line: 668, column: 91, scope: !811)
!2949 = !DILocation(line: 668, column: 97, scope: !811)
!2950 = !DILocation(line: 668, column: 107, scope: !811)
!2951 = !DILocation(line: 668, column: 113, scope: !811)
!2952 = !DILocation(line: 668, column: 102, scope: !811)
!2953 = !DILocation(line: 668, column: 48, scope: !811)
!2954 = !DILocation(line: 668, column: 46, scope: !811)
!2955 = !DILocation(line: 668, column: 136, scope: !811)
!2956 = !DILocation(line: 668, column: 131, scope: !811)
!2957 = !DILocation(line: 668, column: 159, scope: !811)
!2958 = !DILocation(line: 668, column: 165, scope: !811)
!2959 = !DILocation(line: 668, column: 172, scope: !811)
!2960 = !DILocation(line: 668, column: 153, scope: !811)
!2961 = !DILocation(line: 668, column: 178, scope: !811)
!2962 = !DILocation(line: 668, column: 183, scope: !811)
!2963 = !DILocation(line: 668, column: 189, scope: !811)
!2964 = !DILocation(line: 668, column: 140, scope: !811)
!2965 = !DILocation(line: 668, column: 200, scope: !811)
!2966 = !DILocation(line: 668, column: 206, scope: !811)
!2967 = !DILocation(line: 668, column: 195, scope: !811)
!2968 = !DILocation(line: 668, column: 126, scope: !811)
!2969 = !DILocation(line: 668, column: 227, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !811, file: !430, discriminator: 2)
!2971 = !DILocation(line: 668, column: 222, scope: !811)
!2972 = !DILocation(line: 668, column: 11, scope: !2973)
!2973 = !DILexicalBlockFile(scope: !2974, file: !430, discriminator: 4)
!2974 = !DILexicalBlockFile(scope: !811, file: !430, discriminator: 3)
!2975 = !DILocation(line: 669, column: 18, scope: !811)
!2976 = !DILocation(line: 669, column: 24, scope: !811)
!2977 = !DILocation(line: 669, column: 38, scope: !811)
!2978 = !DILocation(line: 669, column: 51, scope: !811)
!2979 = !DILocation(line: 669, column: 57, scope: !811)
!2980 = !DILocation(line: 669, column: 71, scope: !811)
!2981 = !DILocation(line: 669, column: 46, scope: !811)
!2982 = !DILocation(line: 669, column: 83, scope: !811)
!2983 = !DILocation(line: 669, column: 89, scope: !811)
!2984 = !DILocation(line: 669, column: 103, scope: !811)
!2985 = !DILocation(line: 669, column: 78, scope: !811)
!2986 = !DILocation(line: 669, column: 116, scope: !811)
!2987 = !DILocation(line: 669, column: 122, scope: !811)
!2988 = !DILocation(line: 669, column: 129, scope: !811)
!2989 = !DILocation(line: 669, column: 110, scope: !811)
!2990 = !DILocation(line: 669, column: 11, scope: !811)
!2991 = !DILocation(line: 670, column: 12, scope: !811)
!2992 = !DILocation(line: 670, column: 5, scope: !811)
!2993 = !DILocation(line: 671, column: 51, scope: !811)
!2994 = !DILocation(line: 671, column: 56, scope: !811)
!2995 = !DILocation(line: 672, column: 1, scope: !811)
!2996 = !DILocation(line: 685, column: 16, scope: !818)
!2997 = !DILocation(line: 685, column: 32, scope: !818)
!2998 = !DILocation(line: 687, column: 5, scope: !818)
!2999 = !DILocation(line: 687, column: 9, scope: !818)
!3000 = !DILocation(line: 688, column: 5, scope: !818)
!3001 = !DILocation(line: 688, column: 18, scope: !818)
!3002 = !DILocation(line: 689, column: 16, scope: !818)
!3003 = !DILocation(line: 689, column: 20, scope: !818)
!3004 = !DILocation(line: 689, column: 34, scope: !818)
!3005 = !DILocation(line: 689, column: 47, scope: !818)
!3006 = !DILocation(line: 689, column: 51, scope: !818)
!3007 = !DILocation(line: 689, column: 65, scope: !818)
!3008 = !DILocation(line: 689, column: 42, scope: !818)
!3009 = !DILocation(line: 689, column: 77, scope: !818)
!3010 = !DILocation(line: 689, column: 81, scope: !818)
!3011 = !DILocation(line: 689, column: 95, scope: !818)
!3012 = !DILocation(line: 689, column: 72, scope: !818)
!3013 = !DILocation(line: 689, column: 108, scope: !818)
!3014 = !DILocation(line: 689, column: 112, scope: !818)
!3015 = !DILocation(line: 689, column: 119, scope: !818)
!3016 = !DILocation(line: 689, column: 102, scope: !818)
!3017 = !DILocation(line: 689, column: 9, scope: !818)
!3018 = !DILocation(line: 690, column: 11, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !818, file: !430, line: 690, column: 9)
!3020 = !DILocation(line: 690, column: 17, scope: !3019)
!3021 = !DILocation(line: 690, column: 9, scope: !818)
!3022 = !DILocation(line: 690, column: 54, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !3024, file: !430, discriminator: 1)
!3024 = distinct !DILexicalBlock(scope: !3019, file: !430, line: 690, column: 25)
!3025 = !DILocation(line: 690, column: 60, scope: !3024)
!3026 = !DILocation(line: 690, column: 50, scope: !3024)
!3027 = !DILocation(line: 690, column: 74, scope: !3024)
!3028 = !DILocation(line: 690, column: 80, scope: !3024)
!3029 = !DILocation(line: 690, column: 70, scope: !3024)
!3030 = !DILocation(line: 690, column: 31, scope: !3024)
!3031 = !DILocation(line: 690, column: 116, scope: !3024)
!3032 = !DILocation(line: 690, column: 122, scope: !3024)
!3033 = !DILocation(line: 690, column: 112, scope: !3024)
!3034 = !DILocation(line: 690, column: 93, scope: !3024)
!3035 = !DILocation(line: 690, column: 131, scope: !3024)
!3036 = !DILocation(line: 691, column: 28, scope: !818)
!3037 = !DILocation(line: 691, column: 12, scope: !818)
!3038 = !DILocation(line: 692, column: 1, scope: !818)
!3039 = !DILocation(line: 691, column: 5, scope: !818)
!3040 = !DILocation(line: 748, column: 13, scope: !823)
!3041 = !DILocation(line: 748, column: 28, scope: !823)
!3042 = !DILocation(line: 748, column: 46, scope: !823)
!3043 = !DILocation(line: 750, column: 5, scope: !823)
!3044 = !DILocation(line: 750, column: 19, scope: !823)
!3045 = !DILocation(line: 751, column: 5, scope: !823)
!3046 = !DILocation(line: 751, column: 18, scope: !823)
!3047 = !DILocation(line: 752, column: 19, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !823, file: !430, line: 752, column: 9)
!3049 = !DILocation(line: 752, column: 9, scope: !3048)
!3050 = !DILocation(line: 752, column: 32, scope: !3048)
!3051 = !DILocation(line: 752, column: 9, scope: !823)
!3052 = !DILocation(line: 753, column: 9, scope: !3048)
!3053 = !DILocation(line: 754, column: 5, scope: !823)
!3054 = !DILocation(line: 754, column: 16, scope: !823)
!3055 = !DILocation(line: 755, column: 12, scope: !823)
!3056 = !DILocation(line: 755, column: 18, scope: !823)
!3057 = !DILocation(line: 755, column: 10, scope: !823)
!3058 = !DILocation(line: 755, column: 45, scope: !3059)
!3059 = !DILexicalBlockFile(scope: !823, file: !430, discriminator: 1)
!3060 = !DILocation(line: 755, column: 77, scope: !823)
!3061 = !DILocation(line: 755, column: 83, scope: !823)
!3062 = !DILocation(line: 755, column: 90, scope: !823)
!3063 = !DILocation(line: 755, column: 71, scope: !823)
!3064 = !DILocation(line: 755, column: 96, scope: !823)
!3065 = !DILocation(line: 755, column: 101, scope: !823)
!3066 = !DILocation(line: 755, column: 107, scope: !823)
!3067 = !DILocation(line: 755, column: 117, scope: !823)
!3068 = !DILocation(line: 755, column: 123, scope: !823)
!3069 = !DILocation(line: 755, column: 112, scope: !823)
!3070 = !DILocation(line: 755, column: 49, scope: !823)
!3071 = !DILocation(line: 755, column: 47, scope: !823)
!3072 = !DILocation(line: 755, column: 155, scope: !823)
!3073 = !DILocation(line: 755, column: 141, scope: !823)
!3074 = !DILocation(line: 755, column: 187, scope: !823)
!3075 = !DILocation(line: 755, column: 193, scope: !823)
!3076 = !DILocation(line: 755, column: 200, scope: !823)
!3077 = !DILocation(line: 755, column: 181, scope: !823)
!3078 = !DILocation(line: 755, column: 206, scope: !823)
!3079 = !DILocation(line: 755, column: 211, scope: !823)
!3080 = !DILocation(line: 755, column: 217, scope: !823)
!3081 = !DILocation(line: 755, column: 159, scope: !823)
!3082 = !DILocation(line: 755, column: 228, scope: !823)
!3083 = !DILocation(line: 755, column: 234, scope: !823)
!3084 = !DILocation(line: 755, column: 223, scope: !823)
!3085 = !DILocation(line: 755, column: 136, scope: !823)
!3086 = !DILocation(line: 755, column: 264, scope: !3087)
!3087 = !DILexicalBlockFile(scope: !823, file: !430, discriminator: 2)
!3088 = !DILocation(line: 755, column: 250, scope: !823)
!3089 = !DILocation(line: 755, column: 7, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !3091, file: !430, discriminator: 4)
!3091 = !DILexicalBlockFile(scope: !823, file: !430, discriminator: 3)
!3092 = !DILocation(line: 756, column: 12, scope: !823)
!3093 = !DILocation(line: 756, column: 5, scope: !823)
!3094 = !DILocation(line: 757, column: 51, scope: !823)
!3095 = !DILocation(line: 757, column: 56, scope: !823)
!3096 = !DILocation(line: 758, column: 1, scope: !823)
!3097 = !DILocation(line: 776, column: 13, scope: !830)
!3098 = !DILocation(line: 776, column: 29, scope: !830)
!3099 = !DILocation(line: 778, column: 5, scope: !830)
!3100 = !DILocation(line: 778, column: 18, scope: !830)
!3101 = !DILocation(line: 779, column: 5, scope: !830)
!3102 = !DILocation(line: 779, column: 18, scope: !830)
!3103 = !DILocation(line: 780, column: 11, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !830, file: !430, line: 780, column: 9)
!3105 = !DILocation(line: 780, column: 17, scope: !3104)
!3106 = !DILocation(line: 780, column: 9, scope: !830)
!3107 = !DILocation(line: 780, column: 54, scope: !3108)
!3108 = !DILexicalBlockFile(scope: !3109, file: !430, discriminator: 1)
!3109 = distinct !DILexicalBlock(scope: !3104, file: !430, line: 780, column: 25)
!3110 = !DILocation(line: 780, column: 60, scope: !3109)
!3111 = !DILocation(line: 780, column: 50, scope: !3109)
!3112 = !DILocation(line: 780, column: 74, scope: !3109)
!3113 = !DILocation(line: 780, column: 80, scope: !3109)
!3114 = !DILocation(line: 780, column: 70, scope: !3109)
!3115 = !DILocation(line: 780, column: 31, scope: !3109)
!3116 = !DILocation(line: 780, column: 116, scope: !3109)
!3117 = !DILocation(line: 780, column: 122, scope: !3109)
!3118 = !DILocation(line: 780, column: 112, scope: !3109)
!3119 = !DILocation(line: 780, column: 93, scope: !3109)
!3120 = !DILocation(line: 780, column: 131, scope: !3109)
!3121 = !DILocation(line: 781, column: 36, scope: !830)
!3122 = !DILocation(line: 781, column: 12, scope: !830)
!3123 = !DILocation(line: 782, column: 1, scope: !830)
!3124 = !DILocation(line: 781, column: 5, scope: !830)
!3125 = !DILocation(line: 761, column: 16, scope: !835)
!3126 = !DILocation(line: 761, column: 31, scope: !835)
!3127 = !DILocation(line: 761, column: 49, scope: !835)
!3128 = !DILocation(line: 763, column: 5, scope: !835)
!3129 = !DILocation(line: 763, column: 19, scope: !835)
!3130 = !DILocation(line: 764, column: 5, scope: !835)
!3131 = !DILocation(line: 764, column: 18, scope: !835)
!3132 = !DILocation(line: 765, column: 19, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !835, file: !430, line: 765, column: 9)
!3134 = !DILocation(line: 765, column: 9, scope: !3133)
!3135 = !DILocation(line: 765, column: 32, scope: !3133)
!3136 = !DILocation(line: 765, column: 9, scope: !835)
!3137 = !DILocation(line: 766, column: 9, scope: !3133)
!3138 = !DILocation(line: 767, column: 5, scope: !835)
!3139 = !DILocation(line: 767, column: 20, scope: !835)
!3140 = !DILocation(line: 768, column: 16, scope: !835)
!3141 = !DILocation(line: 768, column: 22, scope: !835)
!3142 = !DILocation(line: 768, column: 14, scope: !835)
!3143 = !DILocation(line: 768, column: 49, scope: !3144)
!3144 = !DILexicalBlockFile(scope: !835, file: !430, discriminator: 1)
!3145 = !DILocation(line: 768, column: 85, scope: !835)
!3146 = !DILocation(line: 768, column: 91, scope: !835)
!3147 = !DILocation(line: 768, column: 98, scope: !835)
!3148 = !DILocation(line: 768, column: 79, scope: !835)
!3149 = !DILocation(line: 768, column: 104, scope: !835)
!3150 = !DILocation(line: 768, column: 109, scope: !835)
!3151 = !DILocation(line: 768, column: 115, scope: !835)
!3152 = !DILocation(line: 768, column: 125, scope: !835)
!3153 = !DILocation(line: 768, column: 131, scope: !835)
!3154 = !DILocation(line: 768, column: 120, scope: !835)
!3155 = !DILocation(line: 768, column: 57, scope: !835)
!3156 = !DILocation(line: 768, column: 55, scope: !835)
!3157 = !DILocation(line: 768, column: 177, scope: !835)
!3158 = !DILocation(line: 768, column: 163, scope: !835)
!3159 = !DILocation(line: 768, column: 209, scope: !835)
!3160 = !DILocation(line: 768, column: 215, scope: !835)
!3161 = !DILocation(line: 768, column: 222, scope: !835)
!3162 = !DILocation(line: 768, column: 203, scope: !835)
!3163 = !DILocation(line: 768, column: 228, scope: !835)
!3164 = !DILocation(line: 768, column: 233, scope: !835)
!3165 = !DILocation(line: 768, column: 239, scope: !835)
!3166 = !DILocation(line: 768, column: 181, scope: !835)
!3167 = !DILocation(line: 768, column: 250, scope: !835)
!3168 = !DILocation(line: 768, column: 256, scope: !835)
!3169 = !DILocation(line: 768, column: 245, scope: !835)
!3170 = !DILocation(line: 768, column: 144, scope: !835)
!3171 = !DILocation(line: 768, column: 300, scope: !3172)
!3172 = !DILexicalBlockFile(scope: !835, file: !430, discriminator: 2)
!3173 = !DILocation(line: 768, column: 286, scope: !835)
!3174 = !DILocation(line: 768, column: 11, scope: !3175)
!3175 = !DILexicalBlockFile(scope: !3176, file: !430, discriminator: 4)
!3176 = !DILexicalBlockFile(scope: !835, file: !430, discriminator: 3)
!3177 = !DILocation(line: 769, column: 18, scope: !835)
!3178 = !DILocation(line: 769, column: 24, scope: !835)
!3179 = !DILocation(line: 769, column: 38, scope: !835)
!3180 = !DILocation(line: 769, column: 51, scope: !835)
!3181 = !DILocation(line: 769, column: 57, scope: !835)
!3182 = !DILocation(line: 769, column: 71, scope: !835)
!3183 = !DILocation(line: 769, column: 46, scope: !835)
!3184 = !DILocation(line: 769, column: 83, scope: !835)
!3185 = !DILocation(line: 769, column: 89, scope: !835)
!3186 = !DILocation(line: 769, column: 103, scope: !835)
!3187 = !DILocation(line: 769, column: 78, scope: !835)
!3188 = !DILocation(line: 769, column: 116, scope: !835)
!3189 = !DILocation(line: 769, column: 122, scope: !835)
!3190 = !DILocation(line: 769, column: 129, scope: !835)
!3191 = !DILocation(line: 769, column: 110, scope: !835)
!3192 = !DILocation(line: 769, column: 11, scope: !835)
!3193 = !DILocation(line: 770, column: 12, scope: !835)
!3194 = !DILocation(line: 770, column: 5, scope: !835)
!3195 = !DILocation(line: 771, column: 51, scope: !835)
!3196 = !DILocation(line: 771, column: 56, scope: !835)
!3197 = !DILocation(line: 772, column: 1, scope: !835)
!3198 = !DILocation(line: 785, column: 16, scope: !842)
!3199 = !DILocation(line: 785, column: 32, scope: !842)
!3200 = !DILocation(line: 787, column: 5, scope: !842)
!3201 = !DILocation(line: 787, column: 18, scope: !842)
!3202 = !DILocation(line: 788, column: 5, scope: !842)
!3203 = !DILocation(line: 788, column: 18, scope: !842)
!3204 = !DILocation(line: 789, column: 16, scope: !842)
!3205 = !DILocation(line: 789, column: 20, scope: !842)
!3206 = !DILocation(line: 789, column: 34, scope: !842)
!3207 = !DILocation(line: 789, column: 47, scope: !842)
!3208 = !DILocation(line: 789, column: 51, scope: !842)
!3209 = !DILocation(line: 789, column: 65, scope: !842)
!3210 = !DILocation(line: 789, column: 42, scope: !842)
!3211 = !DILocation(line: 789, column: 77, scope: !842)
!3212 = !DILocation(line: 789, column: 81, scope: !842)
!3213 = !DILocation(line: 789, column: 95, scope: !842)
!3214 = !DILocation(line: 789, column: 72, scope: !842)
!3215 = !DILocation(line: 789, column: 108, scope: !842)
!3216 = !DILocation(line: 789, column: 112, scope: !842)
!3217 = !DILocation(line: 789, column: 119, scope: !842)
!3218 = !DILocation(line: 789, column: 102, scope: !842)
!3219 = !DILocation(line: 789, column: 9, scope: !842)
!3220 = !DILocation(line: 790, column: 11, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !842, file: !430, line: 790, column: 9)
!3222 = !DILocation(line: 790, column: 17, scope: !3221)
!3223 = !DILocation(line: 790, column: 9, scope: !842)
!3224 = !DILocation(line: 790, column: 54, scope: !3225)
!3225 = !DILexicalBlockFile(scope: !3226, file: !430, discriminator: 1)
!3226 = distinct !DILexicalBlock(scope: !3221, file: !430, line: 790, column: 25)
!3227 = !DILocation(line: 790, column: 60, scope: !3226)
!3228 = !DILocation(line: 790, column: 50, scope: !3226)
!3229 = !DILocation(line: 790, column: 74, scope: !3226)
!3230 = !DILocation(line: 790, column: 80, scope: !3226)
!3231 = !DILocation(line: 790, column: 70, scope: !3226)
!3232 = !DILocation(line: 790, column: 31, scope: !3226)
!3233 = !DILocation(line: 790, column: 116, scope: !3226)
!3234 = !DILocation(line: 790, column: 122, scope: !3226)
!3235 = !DILocation(line: 790, column: 112, scope: !3226)
!3236 = !DILocation(line: 790, column: 93, scope: !3226)
!3237 = !DILocation(line: 790, column: 131, scope: !3226)
!3238 = !DILocation(line: 791, column: 36, scope: !842)
!3239 = !DILocation(line: 791, column: 12, scope: !842)
!3240 = !DILocation(line: 792, column: 1, scope: !842)
!3241 = !DILocation(line: 791, column: 5, scope: !842)
!3242 = !DILocation(line: 795, column: 13, scope: !847)
!3243 = !DILocation(line: 795, column: 28, scope: !847)
!3244 = !DILocation(line: 795, column: 46, scope: !847)
!3245 = !DILocation(line: 797, column: 5, scope: !847)
!3246 = !DILocation(line: 797, column: 10, scope: !847)
!3247 = !DILocation(line: 798, column: 5, scope: !847)
!3248 = !DILocation(line: 798, column: 10, scope: !847)
!3249 = !DILocation(line: 799, column: 18, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !847, file: !430, line: 799, column: 9)
!3251 = !DILocation(line: 799, column: 9, scope: !3250)
!3252 = !DILocation(line: 799, column: 31, scope: !3250)
!3253 = !DILocation(line: 799, column: 9, scope: !847)
!3254 = !DILocation(line: 800, column: 9, scope: !3250)
!3255 = !DILocation(line: 801, column: 5, scope: !847)
!3256 = !DILocation(line: 801, column: 16, scope: !847)
!3257 = !DILocation(line: 802, column: 12, scope: !847)
!3258 = !DILocation(line: 802, column: 18, scope: !847)
!3259 = !DILocation(line: 802, column: 10, scope: !847)
!3260 = !DILocation(line: 802, column: 37, scope: !3261)
!3261 = !DILexicalBlockFile(scope: !847, file: !430, discriminator: 1)
!3262 = !DILocation(line: 802, column: 61, scope: !847)
!3263 = !DILocation(line: 802, column: 67, scope: !847)
!3264 = !DILocation(line: 802, column: 74, scope: !847)
!3265 = !DILocation(line: 802, column: 55, scope: !847)
!3266 = !DILocation(line: 802, column: 80, scope: !847)
!3267 = !DILocation(line: 802, column: 85, scope: !847)
!3268 = !DILocation(line: 802, column: 91, scope: !847)
!3269 = !DILocation(line: 802, column: 101, scope: !847)
!3270 = !DILocation(line: 802, column: 107, scope: !847)
!3271 = !DILocation(line: 802, column: 96, scope: !847)
!3272 = !DILocation(line: 802, column: 41, scope: !847)
!3273 = !DILocation(line: 802, column: 39, scope: !847)
!3274 = !DILocation(line: 802, column: 131, scope: !847)
!3275 = !DILocation(line: 802, column: 155, scope: !847)
!3276 = !DILocation(line: 802, column: 161, scope: !847)
!3277 = !DILocation(line: 802, column: 168, scope: !847)
!3278 = !DILocation(line: 802, column: 149, scope: !847)
!3279 = !DILocation(line: 802, column: 174, scope: !847)
!3280 = !DILocation(line: 802, column: 179, scope: !847)
!3281 = !DILocation(line: 802, column: 185, scope: !847)
!3282 = !DILocation(line: 802, column: 135, scope: !847)
!3283 = !DILocation(line: 802, column: 196, scope: !847)
!3284 = !DILocation(line: 802, column: 202, scope: !847)
!3285 = !DILocation(line: 802, column: 191, scope: !847)
!3286 = !DILocation(line: 802, column: 120, scope: !847)
!3287 = !DILocation(line: 802, column: 224, scope: !3288)
!3288 = !DILexicalBlockFile(scope: !847, file: !430, discriminator: 2)
!3289 = !DILocation(line: 802, column: 7, scope: !3290)
!3290 = !DILexicalBlockFile(scope: !3291, file: !430, discriminator: 4)
!3291 = !DILexicalBlockFile(scope: !847, file: !430, discriminator: 3)
!3292 = !DILocation(line: 803, column: 12, scope: !847)
!3293 = !DILocation(line: 803, column: 5, scope: !847)
!3294 = !DILocation(line: 804, column: 51, scope: !847)
!3295 = !DILocation(line: 804, column: 56, scope: !847)
!3296 = !DILocation(line: 805, column: 1, scope: !847)
!3297 = !DILocation(line: 824, column: 13, scope: !854)
!3298 = !DILocation(line: 824, column: 29, scope: !854)
!3299 = !DILocation(line: 826, column: 5, scope: !854)
!3300 = !DILocation(line: 826, column: 10, scope: !854)
!3301 = !DILocation(line: 827, column: 5, scope: !854)
!3302 = !DILocation(line: 827, column: 18, scope: !854)
!3303 = !DILocation(line: 828, column: 11, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !854, file: !430, line: 828, column: 9)
!3305 = !DILocation(line: 828, column: 17, scope: !3304)
!3306 = !DILocation(line: 828, column: 9, scope: !854)
!3307 = !DILocation(line: 828, column: 54, scope: !3308)
!3308 = !DILexicalBlockFile(scope: !3309, file: !430, discriminator: 1)
!3309 = distinct !DILexicalBlock(scope: !3304, file: !430, line: 828, column: 25)
!3310 = !DILocation(line: 828, column: 60, scope: !3309)
!3311 = !DILocation(line: 828, column: 50, scope: !3309)
!3312 = !DILocation(line: 828, column: 74, scope: !3309)
!3313 = !DILocation(line: 828, column: 80, scope: !3309)
!3314 = !DILocation(line: 828, column: 70, scope: !3309)
!3315 = !DILocation(line: 828, column: 31, scope: !3309)
!3316 = !DILocation(line: 828, column: 116, scope: !3309)
!3317 = !DILocation(line: 828, column: 122, scope: !3309)
!3318 = !DILocation(line: 828, column: 112, scope: !3309)
!3319 = !DILocation(line: 828, column: 93, scope: !3309)
!3320 = !DILocation(line: 828, column: 131, scope: !3309)
!3321 = !DILocation(line: 829, column: 28, scope: !854)
!3322 = !DILocation(line: 829, column: 12, scope: !854)
!3323 = !DILocation(line: 830, column: 1, scope: !854)
!3324 = !DILocation(line: 829, column: 5, scope: !854)
!3325 = !DILocation(line: 808, column: 16, scope: !859)
!3326 = !DILocation(line: 808, column: 31, scope: !859)
!3327 = !DILocation(line: 808, column: 49, scope: !859)
!3328 = !DILocation(line: 810, column: 5, scope: !859)
!3329 = !DILocation(line: 810, column: 10, scope: !859)
!3330 = !DILocation(line: 811, column: 5, scope: !859)
!3331 = !DILocation(line: 811, column: 10, scope: !859)
!3332 = !DILocation(line: 812, column: 18, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !859, file: !430, line: 812, column: 9)
!3334 = !DILocation(line: 812, column: 9, scope: !3333)
!3335 = !DILocation(line: 812, column: 31, scope: !3333)
!3336 = !DILocation(line: 812, column: 9, scope: !859)
!3337 = !DILocation(line: 813, column: 9, scope: !3333)
!3338 = !DILocation(line: 814, column: 5, scope: !859)
!3339 = !DILocation(line: 814, column: 20, scope: !859)
!3340 = !DILocation(line: 815, column: 18, scope: !859)
!3341 = !DILocation(line: 815, column: 24, scope: !859)
!3342 = !DILocation(line: 815, column: 48, scope: !859)
!3343 = !DILocation(line: 815, column: 61, scope: !859)
!3344 = !DILocation(line: 815, column: 67, scope: !859)
!3345 = !DILocation(line: 815, column: 91, scope: !859)
!3346 = !DILocation(line: 815, column: 56, scope: !859)
!3347 = !DILocation(line: 815, column: 104, scope: !859)
!3348 = !DILocation(line: 815, column: 110, scope: !859)
!3349 = !DILocation(line: 815, column: 134, scope: !859)
!3350 = !DILocation(line: 815, column: 99, scope: !859)
!3351 = !DILocation(line: 815, column: 147, scope: !859)
!3352 = !DILocation(line: 815, column: 153, scope: !859)
!3353 = !DILocation(line: 815, column: 177, scope: !859)
!3354 = !DILocation(line: 815, column: 142, scope: !859)
!3355 = !DILocation(line: 815, column: 189, scope: !859)
!3356 = !DILocation(line: 815, column: 195, scope: !859)
!3357 = !DILocation(line: 815, column: 219, scope: !859)
!3358 = !DILocation(line: 815, column: 184, scope: !859)
!3359 = !DILocation(line: 815, column: 231, scope: !859)
!3360 = !DILocation(line: 815, column: 237, scope: !859)
!3361 = !DILocation(line: 815, column: 261, scope: !859)
!3362 = !DILocation(line: 815, column: 226, scope: !859)
!3363 = !DILocation(line: 815, column: 274, scope: !859)
!3364 = !DILocation(line: 815, column: 280, scope: !859)
!3365 = !DILocation(line: 815, column: 304, scope: !859)
!3366 = !DILocation(line: 815, column: 269, scope: !859)
!3367 = !DILocation(line: 815, column: 318, scope: !859)
!3368 = !DILocation(line: 815, column: 324, scope: !859)
!3369 = !DILocation(line: 815, column: 331, scope: !859)
!3370 = !DILocation(line: 815, column: 312, scope: !859)
!3371 = !DILocation(line: 815, column: 11, scope: !859)
!3372 = !DILocation(line: 816, column: 16, scope: !859)
!3373 = !DILocation(line: 816, column: 22, scope: !859)
!3374 = !DILocation(line: 816, column: 14, scope: !859)
!3375 = !DILocation(line: 816, column: 41, scope: !3376)
!3376 = !DILexicalBlockFile(scope: !859, file: !430, discriminator: 1)
!3377 = !DILocation(line: 816, column: 69, scope: !859)
!3378 = !DILocation(line: 816, column: 75, scope: !859)
!3379 = !DILocation(line: 816, column: 82, scope: !859)
!3380 = !DILocation(line: 816, column: 63, scope: !859)
!3381 = !DILocation(line: 816, column: 88, scope: !859)
!3382 = !DILocation(line: 816, column: 93, scope: !859)
!3383 = !DILocation(line: 816, column: 99, scope: !859)
!3384 = !DILocation(line: 816, column: 109, scope: !859)
!3385 = !DILocation(line: 816, column: 115, scope: !859)
!3386 = !DILocation(line: 816, column: 104, scope: !859)
!3387 = !DILocation(line: 816, column: 49, scope: !859)
!3388 = !DILocation(line: 816, column: 47, scope: !859)
!3389 = !DILocation(line: 816, column: 139, scope: !859)
!3390 = !DILocation(line: 816, column: 163, scope: !859)
!3391 = !DILocation(line: 816, column: 169, scope: !859)
!3392 = !DILocation(line: 816, column: 176, scope: !859)
!3393 = !DILocation(line: 816, column: 157, scope: !859)
!3394 = !DILocation(line: 816, column: 182, scope: !859)
!3395 = !DILocation(line: 816, column: 187, scope: !859)
!3396 = !DILocation(line: 816, column: 193, scope: !859)
!3397 = !DILocation(line: 816, column: 143, scope: !859)
!3398 = !DILocation(line: 816, column: 204, scope: !859)
!3399 = !DILocation(line: 816, column: 210, scope: !859)
!3400 = !DILocation(line: 816, column: 199, scope: !859)
!3401 = !DILocation(line: 816, column: 128, scope: !859)
!3402 = !DILocation(line: 816, column: 232, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !859, file: !430, discriminator: 2)
!3404 = !DILocation(line: 816, column: 11, scope: !3405)
!3405 = !DILexicalBlockFile(scope: !3406, file: !430, discriminator: 4)
!3406 = !DILexicalBlockFile(scope: !859, file: !430, discriminator: 3)
!3407 = !DILocation(line: 817, column: 18, scope: !859)
!3408 = !DILocation(line: 817, column: 24, scope: !859)
!3409 = !DILocation(line: 817, column: 48, scope: !859)
!3410 = !DILocation(line: 817, column: 61, scope: !859)
!3411 = !DILocation(line: 817, column: 67, scope: !859)
!3412 = !DILocation(line: 817, column: 91, scope: !859)
!3413 = !DILocation(line: 817, column: 56, scope: !859)
!3414 = !DILocation(line: 817, column: 104, scope: !859)
!3415 = !DILocation(line: 817, column: 110, scope: !859)
!3416 = !DILocation(line: 817, column: 134, scope: !859)
!3417 = !DILocation(line: 817, column: 99, scope: !859)
!3418 = !DILocation(line: 817, column: 147, scope: !859)
!3419 = !DILocation(line: 817, column: 153, scope: !859)
!3420 = !DILocation(line: 817, column: 177, scope: !859)
!3421 = !DILocation(line: 817, column: 142, scope: !859)
!3422 = !DILocation(line: 817, column: 189, scope: !859)
!3423 = !DILocation(line: 817, column: 195, scope: !859)
!3424 = !DILocation(line: 817, column: 219, scope: !859)
!3425 = !DILocation(line: 817, column: 184, scope: !859)
!3426 = !DILocation(line: 817, column: 231, scope: !859)
!3427 = !DILocation(line: 817, column: 237, scope: !859)
!3428 = !DILocation(line: 817, column: 261, scope: !859)
!3429 = !DILocation(line: 817, column: 226, scope: !859)
!3430 = !DILocation(line: 817, column: 274, scope: !859)
!3431 = !DILocation(line: 817, column: 280, scope: !859)
!3432 = !DILocation(line: 817, column: 304, scope: !859)
!3433 = !DILocation(line: 817, column: 269, scope: !859)
!3434 = !DILocation(line: 817, column: 318, scope: !859)
!3435 = !DILocation(line: 817, column: 324, scope: !859)
!3436 = !DILocation(line: 817, column: 331, scope: !859)
!3437 = !DILocation(line: 817, column: 312, scope: !859)
!3438 = !DILocation(line: 817, column: 11, scope: !859)
!3439 = !DILocation(line: 818, column: 12, scope: !859)
!3440 = !DILocation(line: 818, column: 5, scope: !859)
!3441 = !DILocation(line: 819, column: 51, scope: !859)
!3442 = !DILocation(line: 819, column: 56, scope: !859)
!3443 = !DILocation(line: 820, column: 1, scope: !859)
!3444 = !DILocation(line: 833, column: 16, scope: !866)
!3445 = !DILocation(line: 833, column: 32, scope: !866)
!3446 = !DILocation(line: 835, column: 5, scope: !866)
!3447 = !DILocation(line: 835, column: 10, scope: !866)
!3448 = !DILocation(line: 836, column: 5, scope: !866)
!3449 = !DILocation(line: 836, column: 18, scope: !866)
!3450 = !DILocation(line: 837, column: 16, scope: !866)
!3451 = !DILocation(line: 837, column: 20, scope: !866)
!3452 = !DILocation(line: 837, column: 44, scope: !866)
!3453 = !DILocation(line: 837, column: 57, scope: !866)
!3454 = !DILocation(line: 837, column: 61, scope: !866)
!3455 = !DILocation(line: 837, column: 85, scope: !866)
!3456 = !DILocation(line: 837, column: 52, scope: !866)
!3457 = !DILocation(line: 837, column: 98, scope: !866)
!3458 = !DILocation(line: 837, column: 102, scope: !866)
!3459 = !DILocation(line: 837, column: 126, scope: !866)
!3460 = !DILocation(line: 837, column: 93, scope: !866)
!3461 = !DILocation(line: 837, column: 139, scope: !866)
!3462 = !DILocation(line: 837, column: 143, scope: !866)
!3463 = !DILocation(line: 837, column: 167, scope: !866)
!3464 = !DILocation(line: 837, column: 134, scope: !866)
!3465 = !DILocation(line: 837, column: 179, scope: !866)
!3466 = !DILocation(line: 837, column: 183, scope: !866)
!3467 = !DILocation(line: 837, column: 207, scope: !866)
!3468 = !DILocation(line: 837, column: 174, scope: !866)
!3469 = !DILocation(line: 837, column: 219, scope: !866)
!3470 = !DILocation(line: 837, column: 223, scope: !866)
!3471 = !DILocation(line: 837, column: 247, scope: !866)
!3472 = !DILocation(line: 837, column: 214, scope: !866)
!3473 = !DILocation(line: 837, column: 260, scope: !866)
!3474 = !DILocation(line: 837, column: 264, scope: !866)
!3475 = !DILocation(line: 837, column: 288, scope: !866)
!3476 = !DILocation(line: 837, column: 255, scope: !866)
!3477 = !DILocation(line: 837, column: 302, scope: !866)
!3478 = !DILocation(line: 837, column: 306, scope: !866)
!3479 = !DILocation(line: 837, column: 313, scope: !866)
!3480 = !DILocation(line: 837, column: 296, scope: !866)
!3481 = !DILocation(line: 837, column: 9, scope: !866)
!3482 = !DILocation(line: 838, column: 11, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !866, file: !430, line: 838, column: 9)
!3484 = !DILocation(line: 838, column: 17, scope: !3483)
!3485 = !DILocation(line: 838, column: 9, scope: !866)
!3486 = !DILocation(line: 838, column: 54, scope: !3487)
!3487 = !DILexicalBlockFile(scope: !3488, file: !430, discriminator: 1)
!3488 = distinct !DILexicalBlock(scope: !3483, file: !430, line: 838, column: 25)
!3489 = !DILocation(line: 838, column: 60, scope: !3488)
!3490 = !DILocation(line: 838, column: 50, scope: !3488)
!3491 = !DILocation(line: 838, column: 74, scope: !3488)
!3492 = !DILocation(line: 838, column: 80, scope: !3488)
!3493 = !DILocation(line: 838, column: 70, scope: !3488)
!3494 = !DILocation(line: 838, column: 31, scope: !3488)
!3495 = !DILocation(line: 838, column: 116, scope: !3488)
!3496 = !DILocation(line: 838, column: 122, scope: !3488)
!3497 = !DILocation(line: 838, column: 112, scope: !3488)
!3498 = !DILocation(line: 838, column: 93, scope: !3488)
!3499 = !DILocation(line: 838, column: 131, scope: !3488)
!3500 = !DILocation(line: 839, column: 28, scope: !866)
!3501 = !DILocation(line: 839, column: 12, scope: !866)
!3502 = !DILocation(line: 840, column: 1, scope: !866)
!3503 = !DILocation(line: 839, column: 5, scope: !866)
!3504 = !DILocation(line: 843, column: 13, scope: !871)
!3505 = !DILocation(line: 843, column: 28, scope: !871)
!3506 = !DILocation(line: 843, column: 46, scope: !871)
!3507 = !DILocation(line: 845, column: 5, scope: !871)
!3508 = !DILocation(line: 845, column: 19, scope: !871)
!3509 = !DILocation(line: 846, column: 5, scope: !871)
!3510 = !DILocation(line: 846, column: 19, scope: !871)
!3511 = !DILocation(line: 847, column: 19, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !871, file: !430, line: 847, column: 9)
!3513 = !DILocation(line: 847, column: 9, scope: !3512)
!3514 = !DILocation(line: 847, column: 32, scope: !3512)
!3515 = !DILocation(line: 847, column: 9, scope: !871)
!3516 = !DILocation(line: 848, column: 9, scope: !3512)
!3517 = !DILocation(line: 849, column: 5, scope: !871)
!3518 = !DILocation(line: 849, column: 16, scope: !871)
!3519 = !DILocation(line: 850, column: 12, scope: !871)
!3520 = !DILocation(line: 850, column: 18, scope: !871)
!3521 = !DILocation(line: 850, column: 10, scope: !871)
!3522 = !DILocation(line: 850, column: 46, scope: !3523)
!3523 = !DILexicalBlockFile(scope: !871, file: !430, discriminator: 1)
!3524 = !DILocation(line: 850, column: 79, scope: !871)
!3525 = !DILocation(line: 850, column: 85, scope: !871)
!3526 = !DILocation(line: 850, column: 92, scope: !871)
!3527 = !DILocation(line: 850, column: 73, scope: !871)
!3528 = !DILocation(line: 850, column: 98, scope: !871)
!3529 = !DILocation(line: 850, column: 103, scope: !871)
!3530 = !DILocation(line: 850, column: 109, scope: !871)
!3531 = !DILocation(line: 850, column: 119, scope: !871)
!3532 = !DILocation(line: 850, column: 125, scope: !871)
!3533 = !DILocation(line: 850, column: 114, scope: !871)
!3534 = !DILocation(line: 850, column: 50, scope: !871)
!3535 = !DILocation(line: 850, column: 48, scope: !871)
!3536 = !DILocation(line: 850, column: 158, scope: !871)
!3537 = !DILocation(line: 850, column: 191, scope: !871)
!3538 = !DILocation(line: 850, column: 197, scope: !871)
!3539 = !DILocation(line: 850, column: 204, scope: !871)
!3540 = !DILocation(line: 850, column: 185, scope: !871)
!3541 = !DILocation(line: 850, column: 210, scope: !871)
!3542 = !DILocation(line: 850, column: 215, scope: !871)
!3543 = !DILocation(line: 850, column: 221, scope: !871)
!3544 = !DILocation(line: 850, column: 162, scope: !871)
!3545 = !DILocation(line: 850, column: 232, scope: !871)
!3546 = !DILocation(line: 850, column: 238, scope: !871)
!3547 = !DILocation(line: 850, column: 227, scope: !871)
!3548 = !DILocation(line: 850, column: 138, scope: !871)
!3549 = !DILocation(line: 850, column: 269, scope: !3550)
!3550 = !DILexicalBlockFile(scope: !871, file: !430, discriminator: 2)
!3551 = !DILocation(line: 850, column: 7, scope: !3552)
!3552 = !DILexicalBlockFile(scope: !3553, file: !430, discriminator: 4)
!3553 = !DILexicalBlockFile(scope: !871, file: !430, discriminator: 3)
!3554 = !DILocation(line: 851, column: 12, scope: !871)
!3555 = !DILocation(line: 851, column: 5, scope: !871)
!3556 = !DILocation(line: 852, column: 51, scope: !871)
!3557 = !DILocation(line: 852, column: 56, scope: !871)
!3558 = !DILocation(line: 853, column: 1, scope: !871)
!3559 = !DILocation(line: 872, column: 13, scope: !878)
!3560 = !DILocation(line: 872, column: 29, scope: !878)
!3561 = !DILocation(line: 874, column: 5, scope: !878)
!3562 = !DILocation(line: 874, column: 19, scope: !878)
!3563 = !DILocation(line: 875, column: 5, scope: !878)
!3564 = !DILocation(line: 875, column: 18, scope: !878)
!3565 = !DILocation(line: 876, column: 11, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !878, file: !430, line: 876, column: 9)
!3567 = !DILocation(line: 876, column: 17, scope: !3566)
!3568 = !DILocation(line: 876, column: 9, scope: !878)
!3569 = !DILocation(line: 876, column: 54, scope: !3570)
!3570 = !DILexicalBlockFile(scope: !3571, file: !430, discriminator: 1)
!3571 = distinct !DILexicalBlock(scope: !3566, file: !430, line: 876, column: 25)
!3572 = !DILocation(line: 876, column: 60, scope: !3571)
!3573 = !DILocation(line: 876, column: 50, scope: !3571)
!3574 = !DILocation(line: 876, column: 74, scope: !3571)
!3575 = !DILocation(line: 876, column: 80, scope: !3571)
!3576 = !DILocation(line: 876, column: 70, scope: !3571)
!3577 = !DILocation(line: 876, column: 31, scope: !3571)
!3578 = !DILocation(line: 876, column: 116, scope: !3571)
!3579 = !DILocation(line: 876, column: 122, scope: !3571)
!3580 = !DILocation(line: 876, column: 112, scope: !3571)
!3581 = !DILocation(line: 876, column: 93, scope: !3571)
!3582 = !DILocation(line: 876, column: 131, scope: !3571)
!3583 = !DILocation(line: 877, column: 36, scope: !878)
!3584 = !DILocation(line: 877, column: 12, scope: !878)
!3585 = !DILocation(line: 878, column: 1, scope: !878)
!3586 = !DILocation(line: 877, column: 5, scope: !878)
!3587 = !DILocation(line: 856, column: 16, scope: !883)
!3588 = !DILocation(line: 856, column: 31, scope: !883)
!3589 = !DILocation(line: 856, column: 49, scope: !883)
!3590 = !DILocation(line: 858, column: 5, scope: !883)
!3591 = !DILocation(line: 858, column: 19, scope: !883)
!3592 = !DILocation(line: 859, column: 5, scope: !883)
!3593 = !DILocation(line: 859, column: 19, scope: !883)
!3594 = !DILocation(line: 860, column: 19, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !883, file: !430, line: 860, column: 9)
!3596 = !DILocation(line: 860, column: 9, scope: !3595)
!3597 = !DILocation(line: 860, column: 32, scope: !3595)
!3598 = !DILocation(line: 860, column: 9, scope: !883)
!3599 = !DILocation(line: 861, column: 9, scope: !3595)
!3600 = !DILocation(line: 862, column: 5, scope: !883)
!3601 = !DILocation(line: 862, column: 20, scope: !883)
!3602 = !DILocation(line: 863, column: 18, scope: !883)
!3603 = !DILocation(line: 863, column: 24, scope: !883)
!3604 = !DILocation(line: 863, column: 48, scope: !883)
!3605 = !DILocation(line: 863, column: 61, scope: !883)
!3606 = !DILocation(line: 863, column: 67, scope: !883)
!3607 = !DILocation(line: 863, column: 91, scope: !883)
!3608 = !DILocation(line: 863, column: 56, scope: !883)
!3609 = !DILocation(line: 863, column: 104, scope: !883)
!3610 = !DILocation(line: 863, column: 110, scope: !883)
!3611 = !DILocation(line: 863, column: 134, scope: !883)
!3612 = !DILocation(line: 863, column: 99, scope: !883)
!3613 = !DILocation(line: 863, column: 147, scope: !883)
!3614 = !DILocation(line: 863, column: 153, scope: !883)
!3615 = !DILocation(line: 863, column: 177, scope: !883)
!3616 = !DILocation(line: 863, column: 142, scope: !883)
!3617 = !DILocation(line: 863, column: 189, scope: !883)
!3618 = !DILocation(line: 863, column: 195, scope: !883)
!3619 = !DILocation(line: 863, column: 219, scope: !883)
!3620 = !DILocation(line: 863, column: 184, scope: !883)
!3621 = !DILocation(line: 863, column: 231, scope: !883)
!3622 = !DILocation(line: 863, column: 237, scope: !883)
!3623 = !DILocation(line: 863, column: 261, scope: !883)
!3624 = !DILocation(line: 863, column: 226, scope: !883)
!3625 = !DILocation(line: 863, column: 274, scope: !883)
!3626 = !DILocation(line: 863, column: 280, scope: !883)
!3627 = !DILocation(line: 863, column: 304, scope: !883)
!3628 = !DILocation(line: 863, column: 269, scope: !883)
!3629 = !DILocation(line: 863, column: 318, scope: !883)
!3630 = !DILocation(line: 863, column: 324, scope: !883)
!3631 = !DILocation(line: 863, column: 331, scope: !883)
!3632 = !DILocation(line: 863, column: 312, scope: !883)
!3633 = !DILocation(line: 863, column: 11, scope: !883)
!3634 = !DILocation(line: 864, column: 16, scope: !883)
!3635 = !DILocation(line: 864, column: 22, scope: !883)
!3636 = !DILocation(line: 864, column: 14, scope: !883)
!3637 = !DILocation(line: 864, column: 50, scope: !3638)
!3638 = !DILexicalBlockFile(scope: !883, file: !430, discriminator: 1)
!3639 = !DILocation(line: 864, column: 87, scope: !883)
!3640 = !DILocation(line: 864, column: 93, scope: !883)
!3641 = !DILocation(line: 864, column: 100, scope: !883)
!3642 = !DILocation(line: 864, column: 81, scope: !883)
!3643 = !DILocation(line: 864, column: 106, scope: !883)
!3644 = !DILocation(line: 864, column: 111, scope: !883)
!3645 = !DILocation(line: 864, column: 117, scope: !883)
!3646 = !DILocation(line: 864, column: 127, scope: !883)
!3647 = !DILocation(line: 864, column: 133, scope: !883)
!3648 = !DILocation(line: 864, column: 122, scope: !883)
!3649 = !DILocation(line: 864, column: 58, scope: !883)
!3650 = !DILocation(line: 864, column: 56, scope: !883)
!3651 = !DILocation(line: 864, column: 166, scope: !883)
!3652 = !DILocation(line: 864, column: 199, scope: !883)
!3653 = !DILocation(line: 864, column: 205, scope: !883)
!3654 = !DILocation(line: 864, column: 212, scope: !883)
!3655 = !DILocation(line: 864, column: 193, scope: !883)
!3656 = !DILocation(line: 864, column: 218, scope: !883)
!3657 = !DILocation(line: 864, column: 223, scope: !883)
!3658 = !DILocation(line: 864, column: 229, scope: !883)
!3659 = !DILocation(line: 864, column: 170, scope: !883)
!3660 = !DILocation(line: 864, column: 240, scope: !883)
!3661 = !DILocation(line: 864, column: 246, scope: !883)
!3662 = !DILocation(line: 864, column: 235, scope: !883)
!3663 = !DILocation(line: 864, column: 146, scope: !883)
!3664 = !DILocation(line: 864, column: 277, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !883, file: !430, discriminator: 2)
!3666 = !DILocation(line: 864, column: 11, scope: !3667)
!3667 = !DILexicalBlockFile(scope: !3668, file: !430, discriminator: 4)
!3668 = !DILexicalBlockFile(scope: !883, file: !430, discriminator: 3)
!3669 = !DILocation(line: 865, column: 18, scope: !883)
!3670 = !DILocation(line: 865, column: 24, scope: !883)
!3671 = !DILocation(line: 865, column: 48, scope: !883)
!3672 = !DILocation(line: 865, column: 61, scope: !883)
!3673 = !DILocation(line: 865, column: 67, scope: !883)
!3674 = !DILocation(line: 865, column: 91, scope: !883)
!3675 = !DILocation(line: 865, column: 56, scope: !883)
!3676 = !DILocation(line: 865, column: 104, scope: !883)
!3677 = !DILocation(line: 865, column: 110, scope: !883)
!3678 = !DILocation(line: 865, column: 134, scope: !883)
!3679 = !DILocation(line: 865, column: 99, scope: !883)
!3680 = !DILocation(line: 865, column: 147, scope: !883)
!3681 = !DILocation(line: 865, column: 153, scope: !883)
!3682 = !DILocation(line: 865, column: 177, scope: !883)
!3683 = !DILocation(line: 865, column: 142, scope: !883)
!3684 = !DILocation(line: 865, column: 189, scope: !883)
!3685 = !DILocation(line: 865, column: 195, scope: !883)
!3686 = !DILocation(line: 865, column: 219, scope: !883)
!3687 = !DILocation(line: 865, column: 184, scope: !883)
!3688 = !DILocation(line: 865, column: 231, scope: !883)
!3689 = !DILocation(line: 865, column: 237, scope: !883)
!3690 = !DILocation(line: 865, column: 261, scope: !883)
!3691 = !DILocation(line: 865, column: 226, scope: !883)
!3692 = !DILocation(line: 865, column: 274, scope: !883)
!3693 = !DILocation(line: 865, column: 280, scope: !883)
!3694 = !DILocation(line: 865, column: 304, scope: !883)
!3695 = !DILocation(line: 865, column: 269, scope: !883)
!3696 = !DILocation(line: 865, column: 318, scope: !883)
!3697 = !DILocation(line: 865, column: 324, scope: !883)
!3698 = !DILocation(line: 865, column: 331, scope: !883)
!3699 = !DILocation(line: 865, column: 312, scope: !883)
!3700 = !DILocation(line: 865, column: 11, scope: !883)
!3701 = !DILocation(line: 866, column: 12, scope: !883)
!3702 = !DILocation(line: 866, column: 5, scope: !883)
!3703 = !DILocation(line: 867, column: 51, scope: !883)
!3704 = !DILocation(line: 867, column: 56, scope: !883)
!3705 = !DILocation(line: 868, column: 1, scope: !883)
!3706 = !DILocation(line: 881, column: 16, scope: !890)
!3707 = !DILocation(line: 881, column: 32, scope: !890)
!3708 = !DILocation(line: 883, column: 5, scope: !890)
!3709 = !DILocation(line: 883, column: 19, scope: !890)
!3710 = !DILocation(line: 884, column: 5, scope: !890)
!3711 = !DILocation(line: 884, column: 18, scope: !890)
!3712 = !DILocation(line: 885, column: 16, scope: !890)
!3713 = !DILocation(line: 885, column: 20, scope: !890)
!3714 = !DILocation(line: 885, column: 44, scope: !890)
!3715 = !DILocation(line: 885, column: 57, scope: !890)
!3716 = !DILocation(line: 885, column: 61, scope: !890)
!3717 = !DILocation(line: 885, column: 85, scope: !890)
!3718 = !DILocation(line: 885, column: 52, scope: !890)
!3719 = !DILocation(line: 885, column: 98, scope: !890)
!3720 = !DILocation(line: 885, column: 102, scope: !890)
!3721 = !DILocation(line: 885, column: 126, scope: !890)
!3722 = !DILocation(line: 885, column: 93, scope: !890)
!3723 = !DILocation(line: 885, column: 139, scope: !890)
!3724 = !DILocation(line: 885, column: 143, scope: !890)
!3725 = !DILocation(line: 885, column: 167, scope: !890)
!3726 = !DILocation(line: 885, column: 134, scope: !890)
!3727 = !DILocation(line: 885, column: 179, scope: !890)
!3728 = !DILocation(line: 885, column: 183, scope: !890)
!3729 = !DILocation(line: 885, column: 207, scope: !890)
!3730 = !DILocation(line: 885, column: 174, scope: !890)
!3731 = !DILocation(line: 885, column: 219, scope: !890)
!3732 = !DILocation(line: 885, column: 223, scope: !890)
!3733 = !DILocation(line: 885, column: 247, scope: !890)
!3734 = !DILocation(line: 885, column: 214, scope: !890)
!3735 = !DILocation(line: 885, column: 260, scope: !890)
!3736 = !DILocation(line: 885, column: 264, scope: !890)
!3737 = !DILocation(line: 885, column: 288, scope: !890)
!3738 = !DILocation(line: 885, column: 255, scope: !890)
!3739 = !DILocation(line: 885, column: 302, scope: !890)
!3740 = !DILocation(line: 885, column: 306, scope: !890)
!3741 = !DILocation(line: 885, column: 313, scope: !890)
!3742 = !DILocation(line: 885, column: 296, scope: !890)
!3743 = !DILocation(line: 885, column: 9, scope: !890)
!3744 = !DILocation(line: 886, column: 11, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !890, file: !430, line: 886, column: 9)
!3746 = !DILocation(line: 886, column: 17, scope: !3745)
!3747 = !DILocation(line: 886, column: 9, scope: !890)
!3748 = !DILocation(line: 886, column: 54, scope: !3749)
!3749 = !DILexicalBlockFile(scope: !3750, file: !430, discriminator: 1)
!3750 = distinct !DILexicalBlock(scope: !3745, file: !430, line: 886, column: 25)
!3751 = !DILocation(line: 886, column: 60, scope: !3750)
!3752 = !DILocation(line: 886, column: 50, scope: !3750)
!3753 = !DILocation(line: 886, column: 74, scope: !3750)
!3754 = !DILocation(line: 886, column: 80, scope: !3750)
!3755 = !DILocation(line: 886, column: 70, scope: !3750)
!3756 = !DILocation(line: 886, column: 31, scope: !3750)
!3757 = !DILocation(line: 886, column: 116, scope: !3750)
!3758 = !DILocation(line: 886, column: 122, scope: !3750)
!3759 = !DILocation(line: 886, column: 112, scope: !3750)
!3760 = !DILocation(line: 886, column: 93, scope: !3750)
!3761 = !DILocation(line: 886, column: 131, scope: !3750)
!3762 = !DILocation(line: 887, column: 36, scope: !890)
!3763 = !DILocation(line: 887, column: 12, scope: !890)
!3764 = !DILocation(line: 888, column: 1, scope: !890)
!3765 = !DILocation(line: 887, column: 5, scope: !890)
!3766 = !DILocation(line: 892, column: 13, scope: !895)
!3767 = !DILocation(line: 892, column: 28, scope: !895)
!3768 = !DILocation(line: 892, column: 46, scope: !895)
!3769 = !DILocation(line: 894, column: 5, scope: !895)
!3770 = !DILocation(line: 894, column: 15, scope: !895)
!3771 = !DILocation(line: 895, column: 5, scope: !895)
!3772 = !DILocation(line: 895, column: 15, scope: !895)
!3773 = !DILocation(line: 896, column: 22, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !895, file: !430, line: 896, column: 9)
!3775 = !DILocation(line: 896, column: 9, scope: !3774)
!3776 = !DILocation(line: 896, column: 35, scope: !3774)
!3777 = !DILocation(line: 896, column: 9, scope: !895)
!3778 = !DILocation(line: 897, column: 9, scope: !3774)
!3779 = !DILocation(line: 898, column: 5, scope: !895)
!3780 = !DILocation(line: 898, column: 16, scope: !895)
!3781 = !DILocation(line: 899, column: 12, scope: !895)
!3782 = !DILocation(line: 899, column: 18, scope: !895)
!3783 = !DILocation(line: 899, column: 10, scope: !895)
!3784 = !DILocation(line: 899, column: 42, scope: !3785)
!3785 = !DILexicalBlockFile(scope: !895, file: !430, discriminator: 1)
!3786 = !{!3787, !3787, i64 0}
!3787 = !{!"long long", !1084, i64 0}
!3788 = !DILocation(line: 899, column: 71, scope: !895)
!3789 = !DILocation(line: 899, column: 77, scope: !895)
!3790 = !DILocation(line: 899, column: 84, scope: !895)
!3791 = !DILocation(line: 899, column: 65, scope: !895)
!3792 = !DILocation(line: 899, column: 90, scope: !895)
!3793 = !DILocation(line: 899, column: 95, scope: !895)
!3794 = !DILocation(line: 899, column: 101, scope: !895)
!3795 = !DILocation(line: 899, column: 111, scope: !895)
!3796 = !DILocation(line: 899, column: 117, scope: !895)
!3797 = !DILocation(line: 899, column: 106, scope: !895)
!3798 = !DILocation(line: 899, column: 46, scope: !895)
!3799 = !DILocation(line: 899, column: 44, scope: !895)
!3800 = !DILocation(line: 899, column: 146, scope: !895)
!3801 = !DILocation(line: 899, column: 175, scope: !895)
!3802 = !DILocation(line: 899, column: 181, scope: !895)
!3803 = !DILocation(line: 899, column: 188, scope: !895)
!3804 = !DILocation(line: 899, column: 169, scope: !895)
!3805 = !DILocation(line: 899, column: 194, scope: !895)
!3806 = !DILocation(line: 899, column: 199, scope: !895)
!3807 = !DILocation(line: 899, column: 205, scope: !895)
!3808 = !DILocation(line: 899, column: 150, scope: !895)
!3809 = !DILocation(line: 899, column: 216, scope: !895)
!3810 = !DILocation(line: 899, column: 222, scope: !895)
!3811 = !DILocation(line: 899, column: 211, scope: !895)
!3812 = !DILocation(line: 899, column: 130, scope: !895)
!3813 = !DILocation(line: 899, column: 249, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !895, file: !430, discriminator: 2)
!3815 = !DILocation(line: 899, column: 7, scope: !3816)
!3816 = !DILexicalBlockFile(scope: !3817, file: !430, discriminator: 4)
!3817 = !DILexicalBlockFile(scope: !895, file: !430, discriminator: 3)
!3818 = !DILocation(line: 900, column: 12, scope: !895)
!3819 = !DILocation(line: 900, column: 5, scope: !895)
!3820 = !DILocation(line: 901, column: 51, scope: !895)
!3821 = !DILocation(line: 901, column: 56, scope: !895)
!3822 = !DILocation(line: 902, column: 1, scope: !895)
!3823 = !DILocation(line: 920, column: 13, scope: !910)
!3824 = !DILocation(line: 920, column: 29, scope: !910)
!3825 = !DILocation(line: 922, column: 5, scope: !910)
!3826 = !DILocation(line: 922, column: 15, scope: !910)
!3827 = !DILocation(line: 923, column: 5, scope: !910)
!3828 = !DILocation(line: 923, column: 18, scope: !910)
!3829 = !DILocation(line: 924, column: 11, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !910, file: !430, line: 924, column: 9)
!3831 = !DILocation(line: 924, column: 17, scope: !3830)
!3832 = !DILocation(line: 924, column: 9, scope: !910)
!3833 = !DILocation(line: 924, column: 54, scope: !3834)
!3834 = !DILexicalBlockFile(scope: !3835, file: !430, discriminator: 1)
!3835 = distinct !DILexicalBlock(scope: !3830, file: !430, line: 924, column: 25)
!3836 = !DILocation(line: 924, column: 60, scope: !3835)
!3837 = !DILocation(line: 924, column: 50, scope: !3835)
!3838 = !DILocation(line: 924, column: 74, scope: !3835)
!3839 = !DILocation(line: 924, column: 80, scope: !3835)
!3840 = !DILocation(line: 924, column: 70, scope: !3835)
!3841 = !DILocation(line: 924, column: 31, scope: !3835)
!3842 = !DILocation(line: 924, column: 116, scope: !3835)
!3843 = !DILocation(line: 924, column: 122, scope: !3835)
!3844 = !DILocation(line: 924, column: 112, scope: !3835)
!3845 = !DILocation(line: 924, column: 93, scope: !3835)
!3846 = !DILocation(line: 924, column: 131, scope: !3835)
!3847 = !DILocation(line: 925, column: 32, scope: !910)
!3848 = !DILocation(line: 925, column: 12, scope: !910)
!3849 = !DILocation(line: 926, column: 1, scope: !910)
!3850 = !DILocation(line: 925, column: 5, scope: !910)
!3851 = !DILocation(line: 905, column: 16, scope: !915)
!3852 = !DILocation(line: 905, column: 31, scope: !915)
!3853 = !DILocation(line: 905, column: 49, scope: !915)
!3854 = !DILocation(line: 907, column: 5, scope: !915)
!3855 = !DILocation(line: 907, column: 15, scope: !915)
!3856 = !DILocation(line: 908, column: 5, scope: !915)
!3857 = !DILocation(line: 908, column: 15, scope: !915)
!3858 = !DILocation(line: 909, column: 22, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !915, file: !430, line: 909, column: 9)
!3860 = !DILocation(line: 909, column: 9, scope: !3859)
!3861 = !DILocation(line: 909, column: 35, scope: !3859)
!3862 = !DILocation(line: 909, column: 9, scope: !915)
!3863 = !DILocation(line: 910, column: 9, scope: !3859)
!3864 = !DILocation(line: 911, column: 5, scope: !915)
!3865 = !DILocation(line: 911, column: 20, scope: !915)
!3866 = !DILocation(line: 912, column: 18, scope: !915)
!3867 = !DILocation(line: 912, column: 24, scope: !915)
!3868 = !DILocation(line: 912, column: 48, scope: !915)
!3869 = !DILocation(line: 912, column: 61, scope: !915)
!3870 = !DILocation(line: 912, column: 67, scope: !915)
!3871 = !DILocation(line: 912, column: 91, scope: !915)
!3872 = !DILocation(line: 912, column: 56, scope: !915)
!3873 = !DILocation(line: 912, column: 104, scope: !915)
!3874 = !DILocation(line: 912, column: 110, scope: !915)
!3875 = !DILocation(line: 912, column: 134, scope: !915)
!3876 = !DILocation(line: 912, column: 99, scope: !915)
!3877 = !DILocation(line: 912, column: 147, scope: !915)
!3878 = !DILocation(line: 912, column: 153, scope: !915)
!3879 = !DILocation(line: 912, column: 177, scope: !915)
!3880 = !DILocation(line: 912, column: 142, scope: !915)
!3881 = !DILocation(line: 912, column: 189, scope: !915)
!3882 = !DILocation(line: 912, column: 195, scope: !915)
!3883 = !DILocation(line: 912, column: 219, scope: !915)
!3884 = !DILocation(line: 912, column: 184, scope: !915)
!3885 = !DILocation(line: 912, column: 231, scope: !915)
!3886 = !DILocation(line: 912, column: 237, scope: !915)
!3887 = !DILocation(line: 912, column: 261, scope: !915)
!3888 = !DILocation(line: 912, column: 226, scope: !915)
!3889 = !DILocation(line: 912, column: 274, scope: !915)
!3890 = !DILocation(line: 912, column: 280, scope: !915)
!3891 = !DILocation(line: 912, column: 304, scope: !915)
!3892 = !DILocation(line: 912, column: 269, scope: !915)
!3893 = !DILocation(line: 912, column: 318, scope: !915)
!3894 = !DILocation(line: 912, column: 324, scope: !915)
!3895 = !DILocation(line: 912, column: 331, scope: !915)
!3896 = !DILocation(line: 912, column: 312, scope: !915)
!3897 = !DILocation(line: 912, column: 11, scope: !915)
!3898 = !DILocation(line: 913, column: 16, scope: !915)
!3899 = !DILocation(line: 913, column: 22, scope: !915)
!3900 = !DILocation(line: 913, column: 14, scope: !915)
!3901 = !DILocation(line: 913, column: 46, scope: !3902)
!3902 = !DILexicalBlockFile(scope: !915, file: !430, discriminator: 1)
!3903 = !DILocation(line: 913, column: 79, scope: !915)
!3904 = !DILocation(line: 913, column: 85, scope: !915)
!3905 = !DILocation(line: 913, column: 92, scope: !915)
!3906 = !DILocation(line: 913, column: 73, scope: !915)
!3907 = !DILocation(line: 913, column: 98, scope: !915)
!3908 = !DILocation(line: 913, column: 103, scope: !915)
!3909 = !DILocation(line: 913, column: 109, scope: !915)
!3910 = !DILocation(line: 913, column: 119, scope: !915)
!3911 = !DILocation(line: 913, column: 125, scope: !915)
!3912 = !DILocation(line: 913, column: 114, scope: !915)
!3913 = !DILocation(line: 913, column: 54, scope: !915)
!3914 = !DILocation(line: 913, column: 52, scope: !915)
!3915 = !DILocation(line: 913, column: 154, scope: !915)
!3916 = !DILocation(line: 913, column: 183, scope: !915)
!3917 = !DILocation(line: 913, column: 189, scope: !915)
!3918 = !DILocation(line: 913, column: 196, scope: !915)
!3919 = !DILocation(line: 913, column: 177, scope: !915)
!3920 = !DILocation(line: 913, column: 202, scope: !915)
!3921 = !DILocation(line: 913, column: 207, scope: !915)
!3922 = !DILocation(line: 913, column: 213, scope: !915)
!3923 = !DILocation(line: 913, column: 158, scope: !915)
!3924 = !DILocation(line: 913, column: 224, scope: !915)
!3925 = !DILocation(line: 913, column: 230, scope: !915)
!3926 = !DILocation(line: 913, column: 219, scope: !915)
!3927 = !DILocation(line: 913, column: 138, scope: !915)
!3928 = !DILocation(line: 913, column: 257, scope: !3929)
!3929 = !DILexicalBlockFile(scope: !915, file: !430, discriminator: 2)
!3930 = !DILocation(line: 913, column: 11, scope: !3931)
!3931 = !DILexicalBlockFile(scope: !3932, file: !430, discriminator: 4)
!3932 = !DILexicalBlockFile(scope: !915, file: !430, discriminator: 3)
!3933 = !DILocation(line: 914, column: 18, scope: !915)
!3934 = !DILocation(line: 914, column: 24, scope: !915)
!3935 = !DILocation(line: 914, column: 48, scope: !915)
!3936 = !DILocation(line: 914, column: 61, scope: !915)
!3937 = !DILocation(line: 914, column: 67, scope: !915)
!3938 = !DILocation(line: 914, column: 91, scope: !915)
!3939 = !DILocation(line: 914, column: 56, scope: !915)
!3940 = !DILocation(line: 914, column: 104, scope: !915)
!3941 = !DILocation(line: 914, column: 110, scope: !915)
!3942 = !DILocation(line: 914, column: 134, scope: !915)
!3943 = !DILocation(line: 914, column: 99, scope: !915)
!3944 = !DILocation(line: 914, column: 147, scope: !915)
!3945 = !DILocation(line: 914, column: 153, scope: !915)
!3946 = !DILocation(line: 914, column: 177, scope: !915)
!3947 = !DILocation(line: 914, column: 142, scope: !915)
!3948 = !DILocation(line: 914, column: 189, scope: !915)
!3949 = !DILocation(line: 914, column: 195, scope: !915)
!3950 = !DILocation(line: 914, column: 219, scope: !915)
!3951 = !DILocation(line: 914, column: 184, scope: !915)
!3952 = !DILocation(line: 914, column: 231, scope: !915)
!3953 = !DILocation(line: 914, column: 237, scope: !915)
!3954 = !DILocation(line: 914, column: 261, scope: !915)
!3955 = !DILocation(line: 914, column: 226, scope: !915)
!3956 = !DILocation(line: 914, column: 274, scope: !915)
!3957 = !DILocation(line: 914, column: 280, scope: !915)
!3958 = !DILocation(line: 914, column: 304, scope: !915)
!3959 = !DILocation(line: 914, column: 269, scope: !915)
!3960 = !DILocation(line: 914, column: 318, scope: !915)
!3961 = !DILocation(line: 914, column: 324, scope: !915)
!3962 = !DILocation(line: 914, column: 331, scope: !915)
!3963 = !DILocation(line: 914, column: 312, scope: !915)
!3964 = !DILocation(line: 914, column: 11, scope: !915)
!3965 = !DILocation(line: 915, column: 12, scope: !915)
!3966 = !DILocation(line: 915, column: 5, scope: !915)
!3967 = !DILocation(line: 916, column: 51, scope: !915)
!3968 = !DILocation(line: 916, column: 56, scope: !915)
!3969 = !DILocation(line: 917, column: 1, scope: !915)
!3970 = !DILocation(line: 929, column: 16, scope: !922)
!3971 = !DILocation(line: 929, column: 32, scope: !922)
!3972 = !DILocation(line: 931, column: 5, scope: !922)
!3973 = !DILocation(line: 931, column: 15, scope: !922)
!3974 = !DILocation(line: 932, column: 5, scope: !922)
!3975 = !DILocation(line: 932, column: 18, scope: !922)
!3976 = !DILocation(line: 933, column: 16, scope: !922)
!3977 = !DILocation(line: 933, column: 20, scope: !922)
!3978 = !DILocation(line: 933, column: 44, scope: !922)
!3979 = !DILocation(line: 933, column: 57, scope: !922)
!3980 = !DILocation(line: 933, column: 61, scope: !922)
!3981 = !DILocation(line: 933, column: 85, scope: !922)
!3982 = !DILocation(line: 933, column: 52, scope: !922)
!3983 = !DILocation(line: 933, column: 98, scope: !922)
!3984 = !DILocation(line: 933, column: 102, scope: !922)
!3985 = !DILocation(line: 933, column: 126, scope: !922)
!3986 = !DILocation(line: 933, column: 93, scope: !922)
!3987 = !DILocation(line: 933, column: 139, scope: !922)
!3988 = !DILocation(line: 933, column: 143, scope: !922)
!3989 = !DILocation(line: 933, column: 167, scope: !922)
!3990 = !DILocation(line: 933, column: 134, scope: !922)
!3991 = !DILocation(line: 933, column: 179, scope: !922)
!3992 = !DILocation(line: 933, column: 183, scope: !922)
!3993 = !DILocation(line: 933, column: 207, scope: !922)
!3994 = !DILocation(line: 933, column: 174, scope: !922)
!3995 = !DILocation(line: 933, column: 219, scope: !922)
!3996 = !DILocation(line: 933, column: 223, scope: !922)
!3997 = !DILocation(line: 933, column: 247, scope: !922)
!3998 = !DILocation(line: 933, column: 214, scope: !922)
!3999 = !DILocation(line: 933, column: 260, scope: !922)
!4000 = !DILocation(line: 933, column: 264, scope: !922)
!4001 = !DILocation(line: 933, column: 288, scope: !922)
!4002 = !DILocation(line: 933, column: 255, scope: !922)
!4003 = !DILocation(line: 933, column: 302, scope: !922)
!4004 = !DILocation(line: 933, column: 306, scope: !922)
!4005 = !DILocation(line: 933, column: 313, scope: !922)
!4006 = !DILocation(line: 933, column: 296, scope: !922)
!4007 = !DILocation(line: 933, column: 9, scope: !922)
!4008 = !DILocation(line: 934, column: 11, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !922, file: !430, line: 934, column: 9)
!4010 = !DILocation(line: 934, column: 17, scope: !4009)
!4011 = !DILocation(line: 934, column: 9, scope: !922)
!4012 = !DILocation(line: 934, column: 54, scope: !4013)
!4013 = !DILexicalBlockFile(scope: !4014, file: !430, discriminator: 1)
!4014 = distinct !DILexicalBlock(scope: !4009, file: !430, line: 934, column: 25)
!4015 = !DILocation(line: 934, column: 60, scope: !4014)
!4016 = !DILocation(line: 934, column: 50, scope: !4014)
!4017 = !DILocation(line: 934, column: 74, scope: !4014)
!4018 = !DILocation(line: 934, column: 80, scope: !4014)
!4019 = !DILocation(line: 934, column: 70, scope: !4014)
!4020 = !DILocation(line: 934, column: 31, scope: !4014)
!4021 = !DILocation(line: 934, column: 116, scope: !4014)
!4022 = !DILocation(line: 934, column: 122, scope: !4014)
!4023 = !DILocation(line: 934, column: 112, scope: !4014)
!4024 = !DILocation(line: 934, column: 93, scope: !4014)
!4025 = !DILocation(line: 934, column: 131, scope: !4014)
!4026 = !DILocation(line: 935, column: 32, scope: !922)
!4027 = !DILocation(line: 935, column: 12, scope: !922)
!4028 = !DILocation(line: 936, column: 1, scope: !922)
!4029 = !DILocation(line: 935, column: 5, scope: !922)
!4030 = !DILocation(line: 939, column: 13, scope: !927)
!4031 = !DILocation(line: 939, column: 28, scope: !927)
!4032 = !DILocation(line: 939, column: 46, scope: !927)
!4033 = !DILocation(line: 941, column: 5, scope: !927)
!4034 = !DILocation(line: 941, column: 24, scope: !927)
!4035 = !DILocation(line: 942, column: 5, scope: !927)
!4036 = !DILocation(line: 942, column: 24, scope: !927)
!4037 = !DILocation(line: 943, column: 23, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !927, file: !430, line: 943, column: 9)
!4039 = !DILocation(line: 943, column: 9, scope: !4038)
!4040 = !DILocation(line: 943, column: 36, scope: !4038)
!4041 = !DILocation(line: 943, column: 9, scope: !927)
!4042 = !DILocation(line: 944, column: 9, scope: !4038)
!4043 = !DILocation(line: 945, column: 5, scope: !927)
!4044 = !DILocation(line: 945, column: 16, scope: !927)
!4045 = !DILocation(line: 946, column: 12, scope: !927)
!4046 = !DILocation(line: 946, column: 18, scope: !927)
!4047 = !DILocation(line: 946, column: 10, scope: !927)
!4048 = !DILocation(line: 946, column: 42, scope: !4049)
!4049 = !DILexicalBlockFile(scope: !927, file: !430, discriminator: 1)
!4050 = !DILocation(line: 946, column: 71, scope: !927)
!4051 = !DILocation(line: 946, column: 77, scope: !927)
!4052 = !DILocation(line: 946, column: 84, scope: !927)
!4053 = !DILocation(line: 946, column: 65, scope: !927)
!4054 = !DILocation(line: 946, column: 90, scope: !927)
!4055 = !DILocation(line: 946, column: 95, scope: !927)
!4056 = !DILocation(line: 946, column: 101, scope: !927)
!4057 = !DILocation(line: 946, column: 111, scope: !927)
!4058 = !DILocation(line: 946, column: 117, scope: !927)
!4059 = !DILocation(line: 946, column: 106, scope: !927)
!4060 = !DILocation(line: 946, column: 46, scope: !927)
!4061 = !DILocation(line: 946, column: 44, scope: !927)
!4062 = !DILocation(line: 946, column: 146, scope: !927)
!4063 = !DILocation(line: 946, column: 175, scope: !927)
!4064 = !DILocation(line: 946, column: 181, scope: !927)
!4065 = !DILocation(line: 946, column: 188, scope: !927)
!4066 = !DILocation(line: 946, column: 169, scope: !927)
!4067 = !DILocation(line: 946, column: 194, scope: !927)
!4068 = !DILocation(line: 946, column: 199, scope: !927)
!4069 = !DILocation(line: 946, column: 205, scope: !927)
!4070 = !DILocation(line: 946, column: 150, scope: !927)
!4071 = !DILocation(line: 946, column: 216, scope: !927)
!4072 = !DILocation(line: 946, column: 222, scope: !927)
!4073 = !DILocation(line: 946, column: 211, scope: !927)
!4074 = !DILocation(line: 946, column: 130, scope: !927)
!4075 = !DILocation(line: 946, column: 249, scope: !4076)
!4076 = !DILexicalBlockFile(scope: !927, file: !430, discriminator: 2)
!4077 = !DILocation(line: 946, column: 7, scope: !4078)
!4078 = !DILexicalBlockFile(scope: !4079, file: !430, discriminator: 4)
!4079 = !DILexicalBlockFile(scope: !927, file: !430, discriminator: 3)
!4080 = !DILocation(line: 947, column: 12, scope: !927)
!4081 = !DILocation(line: 947, column: 5, scope: !927)
!4082 = !DILocation(line: 948, column: 51, scope: !927)
!4083 = !DILocation(line: 948, column: 56, scope: !927)
!4084 = !DILocation(line: 949, column: 1, scope: !927)
!4085 = !DILocation(line: 967, column: 13, scope: !942)
!4086 = !DILocation(line: 967, column: 29, scope: !942)
!4087 = !DILocation(line: 969, column: 5, scope: !942)
!4088 = !DILocation(line: 969, column: 24, scope: !942)
!4089 = !DILocation(line: 970, column: 5, scope: !942)
!4090 = !DILocation(line: 970, column: 18, scope: !942)
!4091 = !DILocation(line: 971, column: 11, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !942, file: !430, line: 971, column: 9)
!4093 = !DILocation(line: 971, column: 17, scope: !4092)
!4094 = !DILocation(line: 971, column: 9, scope: !942)
!4095 = !DILocation(line: 971, column: 54, scope: !4096)
!4096 = !DILexicalBlockFile(scope: !4097, file: !430, discriminator: 1)
!4097 = distinct !DILexicalBlock(scope: !4092, file: !430, line: 971, column: 25)
!4098 = !DILocation(line: 971, column: 60, scope: !4097)
!4099 = !DILocation(line: 971, column: 50, scope: !4097)
!4100 = !DILocation(line: 971, column: 74, scope: !4097)
!4101 = !DILocation(line: 971, column: 80, scope: !4097)
!4102 = !DILocation(line: 971, column: 70, scope: !4097)
!4103 = !DILocation(line: 971, column: 31, scope: !4097)
!4104 = !DILocation(line: 971, column: 116, scope: !4097)
!4105 = !DILocation(line: 971, column: 122, scope: !4097)
!4106 = !DILocation(line: 971, column: 112, scope: !4097)
!4107 = !DILocation(line: 971, column: 93, scope: !4097)
!4108 = !DILocation(line: 971, column: 131, scope: !4097)
!4109 = !DILocation(line: 972, column: 40, scope: !942)
!4110 = !DILocation(line: 972, column: 12, scope: !942)
!4111 = !DILocation(line: 973, column: 1, scope: !942)
!4112 = !DILocation(line: 972, column: 5, scope: !942)
!4113 = !DILocation(line: 952, column: 16, scope: !947)
!4114 = !DILocation(line: 952, column: 31, scope: !947)
!4115 = !DILocation(line: 952, column: 49, scope: !947)
!4116 = !DILocation(line: 954, column: 5, scope: !947)
!4117 = !DILocation(line: 954, column: 24, scope: !947)
!4118 = !DILocation(line: 955, column: 5, scope: !947)
!4119 = !DILocation(line: 955, column: 24, scope: !947)
!4120 = !DILocation(line: 956, column: 23, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !947, file: !430, line: 956, column: 9)
!4122 = !DILocation(line: 956, column: 9, scope: !4121)
!4123 = !DILocation(line: 956, column: 36, scope: !4121)
!4124 = !DILocation(line: 956, column: 9, scope: !947)
!4125 = !DILocation(line: 957, column: 9, scope: !4121)
!4126 = !DILocation(line: 958, column: 5, scope: !947)
!4127 = !DILocation(line: 958, column: 20, scope: !947)
!4128 = !DILocation(line: 959, column: 18, scope: !947)
!4129 = !DILocation(line: 959, column: 24, scope: !947)
!4130 = !DILocation(line: 959, column: 48, scope: !947)
!4131 = !DILocation(line: 959, column: 61, scope: !947)
!4132 = !DILocation(line: 959, column: 67, scope: !947)
!4133 = !DILocation(line: 959, column: 91, scope: !947)
!4134 = !DILocation(line: 959, column: 56, scope: !947)
!4135 = !DILocation(line: 959, column: 104, scope: !947)
!4136 = !DILocation(line: 959, column: 110, scope: !947)
!4137 = !DILocation(line: 959, column: 134, scope: !947)
!4138 = !DILocation(line: 959, column: 99, scope: !947)
!4139 = !DILocation(line: 959, column: 147, scope: !947)
!4140 = !DILocation(line: 959, column: 153, scope: !947)
!4141 = !DILocation(line: 959, column: 177, scope: !947)
!4142 = !DILocation(line: 959, column: 142, scope: !947)
!4143 = !DILocation(line: 959, column: 189, scope: !947)
!4144 = !DILocation(line: 959, column: 195, scope: !947)
!4145 = !DILocation(line: 959, column: 219, scope: !947)
!4146 = !DILocation(line: 959, column: 184, scope: !947)
!4147 = !DILocation(line: 959, column: 231, scope: !947)
!4148 = !DILocation(line: 959, column: 237, scope: !947)
!4149 = !DILocation(line: 959, column: 261, scope: !947)
!4150 = !DILocation(line: 959, column: 226, scope: !947)
!4151 = !DILocation(line: 959, column: 274, scope: !947)
!4152 = !DILocation(line: 959, column: 280, scope: !947)
!4153 = !DILocation(line: 959, column: 304, scope: !947)
!4154 = !DILocation(line: 959, column: 269, scope: !947)
!4155 = !DILocation(line: 959, column: 318, scope: !947)
!4156 = !DILocation(line: 959, column: 324, scope: !947)
!4157 = !DILocation(line: 959, column: 331, scope: !947)
!4158 = !DILocation(line: 959, column: 312, scope: !947)
!4159 = !DILocation(line: 959, column: 11, scope: !947)
!4160 = !DILocation(line: 960, column: 16, scope: !947)
!4161 = !DILocation(line: 960, column: 22, scope: !947)
!4162 = !DILocation(line: 960, column: 14, scope: !947)
!4163 = !DILocation(line: 960, column: 55, scope: !4164)
!4164 = !DILexicalBlockFile(scope: !947, file: !430, discriminator: 1)
!4165 = !DILocation(line: 960, column: 97, scope: !947)
!4166 = !DILocation(line: 960, column: 103, scope: !947)
!4167 = !DILocation(line: 960, column: 110, scope: !947)
!4168 = !DILocation(line: 960, column: 91, scope: !947)
!4169 = !DILocation(line: 960, column: 116, scope: !947)
!4170 = !DILocation(line: 960, column: 121, scope: !947)
!4171 = !DILocation(line: 960, column: 127, scope: !947)
!4172 = !DILocation(line: 960, column: 137, scope: !947)
!4173 = !DILocation(line: 960, column: 143, scope: !947)
!4174 = !DILocation(line: 960, column: 132, scope: !947)
!4175 = !DILocation(line: 960, column: 63, scope: !947)
!4176 = !DILocation(line: 960, column: 61, scope: !947)
!4177 = !DILocation(line: 960, column: 181, scope: !947)
!4178 = !DILocation(line: 960, column: 219, scope: !947)
!4179 = !DILocation(line: 960, column: 225, scope: !947)
!4180 = !DILocation(line: 960, column: 232, scope: !947)
!4181 = !DILocation(line: 960, column: 213, scope: !947)
!4182 = !DILocation(line: 960, column: 238, scope: !947)
!4183 = !DILocation(line: 960, column: 243, scope: !947)
!4184 = !DILocation(line: 960, column: 249, scope: !947)
!4185 = !DILocation(line: 960, column: 185, scope: !947)
!4186 = !DILocation(line: 960, column: 260, scope: !947)
!4187 = !DILocation(line: 960, column: 266, scope: !947)
!4188 = !DILocation(line: 960, column: 255, scope: !947)
!4189 = !DILocation(line: 960, column: 156, scope: !947)
!4190 = !DILocation(line: 960, column: 302, scope: !4191)
!4191 = !DILexicalBlockFile(scope: !947, file: !430, discriminator: 2)
!4192 = !DILocation(line: 960, column: 11, scope: !4193)
!4193 = !DILexicalBlockFile(scope: !4194, file: !430, discriminator: 4)
!4194 = !DILexicalBlockFile(scope: !947, file: !430, discriminator: 3)
!4195 = !DILocation(line: 961, column: 18, scope: !947)
!4196 = !DILocation(line: 961, column: 24, scope: !947)
!4197 = !DILocation(line: 961, column: 48, scope: !947)
!4198 = !DILocation(line: 961, column: 61, scope: !947)
!4199 = !DILocation(line: 961, column: 67, scope: !947)
!4200 = !DILocation(line: 961, column: 91, scope: !947)
!4201 = !DILocation(line: 961, column: 56, scope: !947)
!4202 = !DILocation(line: 961, column: 104, scope: !947)
!4203 = !DILocation(line: 961, column: 110, scope: !947)
!4204 = !DILocation(line: 961, column: 134, scope: !947)
!4205 = !DILocation(line: 961, column: 99, scope: !947)
!4206 = !DILocation(line: 961, column: 147, scope: !947)
!4207 = !DILocation(line: 961, column: 153, scope: !947)
!4208 = !DILocation(line: 961, column: 177, scope: !947)
!4209 = !DILocation(line: 961, column: 142, scope: !947)
!4210 = !DILocation(line: 961, column: 189, scope: !947)
!4211 = !DILocation(line: 961, column: 195, scope: !947)
!4212 = !DILocation(line: 961, column: 219, scope: !947)
!4213 = !DILocation(line: 961, column: 184, scope: !947)
!4214 = !DILocation(line: 961, column: 231, scope: !947)
!4215 = !DILocation(line: 961, column: 237, scope: !947)
!4216 = !DILocation(line: 961, column: 261, scope: !947)
!4217 = !DILocation(line: 961, column: 226, scope: !947)
!4218 = !DILocation(line: 961, column: 274, scope: !947)
!4219 = !DILocation(line: 961, column: 280, scope: !947)
!4220 = !DILocation(line: 961, column: 304, scope: !947)
!4221 = !DILocation(line: 961, column: 269, scope: !947)
!4222 = !DILocation(line: 961, column: 318, scope: !947)
!4223 = !DILocation(line: 961, column: 324, scope: !947)
!4224 = !DILocation(line: 961, column: 331, scope: !947)
!4225 = !DILocation(line: 961, column: 312, scope: !947)
!4226 = !DILocation(line: 961, column: 11, scope: !947)
!4227 = !DILocation(line: 962, column: 12, scope: !947)
!4228 = !DILocation(line: 962, column: 5, scope: !947)
!4229 = !DILocation(line: 963, column: 51, scope: !947)
!4230 = !DILocation(line: 963, column: 56, scope: !947)
!4231 = !DILocation(line: 964, column: 1, scope: !947)
!4232 = !DILocation(line: 976, column: 16, scope: !954)
!4233 = !DILocation(line: 976, column: 32, scope: !954)
!4234 = !DILocation(line: 978, column: 5, scope: !954)
!4235 = !DILocation(line: 978, column: 24, scope: !954)
!4236 = !DILocation(line: 979, column: 5, scope: !954)
!4237 = !DILocation(line: 979, column: 18, scope: !954)
!4238 = !DILocation(line: 980, column: 16, scope: !954)
!4239 = !DILocation(line: 980, column: 20, scope: !954)
!4240 = !DILocation(line: 980, column: 44, scope: !954)
!4241 = !DILocation(line: 980, column: 57, scope: !954)
!4242 = !DILocation(line: 980, column: 61, scope: !954)
!4243 = !DILocation(line: 980, column: 85, scope: !954)
!4244 = !DILocation(line: 980, column: 52, scope: !954)
!4245 = !DILocation(line: 980, column: 98, scope: !954)
!4246 = !DILocation(line: 980, column: 102, scope: !954)
!4247 = !DILocation(line: 980, column: 126, scope: !954)
!4248 = !DILocation(line: 980, column: 93, scope: !954)
!4249 = !DILocation(line: 980, column: 139, scope: !954)
!4250 = !DILocation(line: 980, column: 143, scope: !954)
!4251 = !DILocation(line: 980, column: 167, scope: !954)
!4252 = !DILocation(line: 980, column: 134, scope: !954)
!4253 = !DILocation(line: 980, column: 179, scope: !954)
!4254 = !DILocation(line: 980, column: 183, scope: !954)
!4255 = !DILocation(line: 980, column: 207, scope: !954)
!4256 = !DILocation(line: 980, column: 174, scope: !954)
!4257 = !DILocation(line: 980, column: 219, scope: !954)
!4258 = !DILocation(line: 980, column: 223, scope: !954)
!4259 = !DILocation(line: 980, column: 247, scope: !954)
!4260 = !DILocation(line: 980, column: 214, scope: !954)
!4261 = !DILocation(line: 980, column: 260, scope: !954)
!4262 = !DILocation(line: 980, column: 264, scope: !954)
!4263 = !DILocation(line: 980, column: 288, scope: !954)
!4264 = !DILocation(line: 980, column: 255, scope: !954)
!4265 = !DILocation(line: 980, column: 302, scope: !954)
!4266 = !DILocation(line: 980, column: 306, scope: !954)
!4267 = !DILocation(line: 980, column: 313, scope: !954)
!4268 = !DILocation(line: 980, column: 296, scope: !954)
!4269 = !DILocation(line: 980, column: 9, scope: !954)
!4270 = !DILocation(line: 981, column: 11, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !954, file: !430, line: 981, column: 9)
!4272 = !DILocation(line: 981, column: 17, scope: !4271)
!4273 = !DILocation(line: 981, column: 9, scope: !954)
!4274 = !DILocation(line: 981, column: 54, scope: !4275)
!4275 = !DILexicalBlockFile(scope: !4276, file: !430, discriminator: 1)
!4276 = distinct !DILexicalBlock(scope: !4271, file: !430, line: 981, column: 25)
!4277 = !DILocation(line: 981, column: 60, scope: !4276)
!4278 = !DILocation(line: 981, column: 50, scope: !4276)
!4279 = !DILocation(line: 981, column: 74, scope: !4276)
!4280 = !DILocation(line: 981, column: 80, scope: !4276)
!4281 = !DILocation(line: 981, column: 70, scope: !4276)
!4282 = !DILocation(line: 981, column: 31, scope: !4276)
!4283 = !DILocation(line: 981, column: 116, scope: !4276)
!4284 = !DILocation(line: 981, column: 122, scope: !4276)
!4285 = !DILocation(line: 981, column: 112, scope: !4276)
!4286 = !DILocation(line: 981, column: 93, scope: !4276)
!4287 = !DILocation(line: 981, column: 131, scope: !4276)
!4288 = !DILocation(line: 982, column: 40, scope: !954)
!4289 = !DILocation(line: 982, column: 12, scope: !954)
!4290 = !DILocation(line: 983, column: 1, scope: !954)
!4291 = !DILocation(line: 982, column: 5, scope: !954)
!4292 = !DILocation(line: 1501, column: 13, scope: !959)
!4293 = !DILocation(line: 1501, column: 28, scope: !959)
!4294 = !DILocation(line: 1501, column: 46, scope: !959)
!4295 = !DILocation(line: 1503, column: 5, scope: !959)
!4296 = !DILocation(line: 1503, column: 11, scope: !959)
!4297 = !DILocation(line: 1504, column: 9, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !959, file: !430, line: 1504, column: 9)
!4299 = !DILocation(line: 1504, column: 15, scope: !4298)
!4300 = !DILocation(line: 1504, column: 9, scope: !959)
!4301 = !DILocation(line: 1505, column: 19, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4298, file: !430, line: 1504, column: 37)
!4303 = !DILocation(line: 1505, column: 10, scope: !4302)
!4304 = !DILocation(line: 1505, column: 23, scope: !4302)
!4305 = !DILocation(line: 1506, column: 55, scope: !4302)
!4306 = !DILocation(line: 1506, column: 60, scope: !4302)
!4307 = !DILocation(line: 1509, column: 27, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !959, file: !430, line: 1509, column: 9)
!4309 = !DILocation(line: 1509, column: 36, scope: !4308)
!4310 = !DILocation(line: 1509, column: 47, scope: !4308)
!4311 = !DILocation(line: 1509, column: 56, scope: !4308)
!4312 = !DILocation(line: 1509, column: 73, scope: !4308)
!4313 = !DILocation(line: 1509, column: 79, scope: !4308)
!4314 = !DILocation(line: 1509, column: 100, scope: !4315)
!4315 = !DILexicalBlockFile(scope: !4308, file: !430, discriminator: 1)
!4316 = !DILocation(line: 1509, column: 109, scope: !4308)
!4317 = !DILocation(line: 1509, column: 120, scope: !4308)
!4318 = !DILocation(line: 1509, column: 129, scope: !4308)
!4319 = !DILocation(line: 1509, column: 146, scope: !4308)
!4320 = !DILocation(line: 1509, column: 9, scope: !959)
!4321 = !DILocation(line: 1510, column: 25, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4308, file: !430, line: 1509, column: 153)
!4323 = !DILocation(line: 1510, column: 9, scope: !4322)
!4324 = !DILocation(line: 1512, column: 9, scope: !4322)
!4325 = !DILocation(line: 1516, column: 43, scope: !959)
!4326 = !DILocation(line: 1516, column: 17, scope: !959)
!4327 = !DILocation(line: 1516, column: 9, scope: !959)
!4328 = !DILocation(line: 1516, column: 7, scope: !959)
!4329 = !DILocation(line: 1526, column: 9, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !959, file: !430, line: 1526, column: 9)
!4331 = !DILocation(line: 1526, column: 9, scope: !959)
!4332 = !DILocation(line: 1527, column: 9, scope: !4330)
!4333 = !DILocation(line: 1529, column: 21, scope: !959)
!4334 = !DILocation(line: 1529, column: 15, scope: !959)
!4335 = !DILocation(line: 1529, column: 6, scope: !959)
!4336 = !DILocation(line: 1529, column: 19, scope: !959)
!4337 = !DILocation(line: 1530, column: 51, scope: !959)
!4338 = !DILocation(line: 1530, column: 56, scope: !959)
!4339 = !DILocation(line: 1531, column: 1, scope: !959)
!4340 = !DILocation(line: 1534, column: 13, scope: !965)
!4341 = !DILocation(line: 1534, column: 29, scope: !965)
!4342 = !DILocation(line: 1536, column: 19, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !965, file: !430, line: 1536, column: 9)
!4344 = !DILocation(line: 1536, column: 10, scope: !4343)
!4345 = !DILocation(line: 1536, column: 9, scope: !4343)
!4346 = !DILocation(line: 1536, column: 23, scope: !4343)
!4347 = !DILocation(line: 1536, column: 9, scope: !965)
!4348 = !DILocation(line: 1537, column: 55, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4343, file: !430, line: 1536, column: 38)
!4350 = !DILocation(line: 1538, column: 9, scope: !4349)
!4351 = !DILocation(line: 1540, column: 41, scope: !965)
!4352 = !DILocation(line: 1540, column: 32, scope: !965)
!4353 = !DILocation(line: 1540, column: 31, scope: !965)
!4354 = !DILocation(line: 1540, column: 12, scope: !965)
!4355 = !DILocation(line: 1540, column: 5, scope: !965)
!4356 = !DILocation(line: 1541, column: 1, scope: !965)
!4357 = !DILocation(line: 1327, column: 13, scope: !969)
!4358 = !DILocation(line: 1327, column: 28, scope: !969)
!4359 = !DILocation(line: 1327, column: 46, scope: !969)
!4360 = !DILocation(line: 1329, column: 9, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !969, file: !430, line: 1329, column: 9)
!4362 = !DILocation(line: 1329, column: 15, scope: !4361)
!4363 = !DILocation(line: 1329, column: 9, scope: !969)
!4364 = !DILocation(line: 1330, column: 19, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4361, file: !430, line: 1329, column: 37)
!4366 = !DILocation(line: 1330, column: 10, scope: !4365)
!4367 = !DILocation(line: 1330, column: 23, scope: !4365)
!4368 = !DILocation(line: 1331, column: 25, scope: !4365)
!4369 = !DILocation(line: 1331, column: 34, scope: !4365)
!4370 = !DILocation(line: 1331, column: 43, scope: !4365)
!4371 = !DILocation(line: 1332, column: 16, scope: !4365)
!4372 = !DILocation(line: 1332, column: 9, scope: !4365)
!4373 = !DILocation(line: 1334, column: 26, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !969, file: !430, line: 1334, column: 9)
!4375 = !DILocation(line: 1334, column: 35, scope: !4374)
!4376 = !DILocation(line: 1334, column: 46, scope: !4374)
!4377 = !DILocation(line: 1334, column: 55, scope: !4374)
!4378 = !DILocation(line: 1334, column: 72, scope: !4374)
!4379 = !DILocation(line: 1334, column: 9, scope: !969)
!4380 = !DILocation(line: 1335, column: 42, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4374, file: !430, line: 1334, column: 79)
!4382 = !DILocation(line: 1335, column: 25, scope: !4381)
!4383 = !DILocation(line: 1335, column: 19, scope: !4381)
!4384 = !DILocation(line: 1335, column: 10, scope: !4381)
!4385 = !DILocation(line: 1335, column: 23, scope: !4381)
!4386 = !DILocation(line: 1336, column: 25, scope: !4381)
!4387 = !DILocation(line: 1336, column: 34, scope: !4381)
!4388 = !DILocation(line: 1336, column: 43, scope: !4381)
!4389 = !DILocation(line: 1337, column: 16, scope: !4381)
!4390 = !DILocation(line: 1337, column: 9, scope: !4381)
!4391 = !DILocation(line: 1338, column: 33, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4374, file: !430, line: 1338, column: 16)
!4393 = !DILocation(line: 1338, column: 42, scope: !4392)
!4394 = !DILocation(line: 1338, column: 53, scope: !4392)
!4395 = !DILocation(line: 1338, column: 62, scope: !4392)
!4396 = !DILocation(line: 1338, column: 79, scope: !4392)
!4397 = !DILocation(line: 1338, column: 16, scope: !4374)
!4398 = !DILocation(line: 1340, column: 63, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4392, file: !430, line: 1338, column: 86)
!4400 = !DILocation(line: 1340, column: 33, scope: !4399)
!4401 = !DILocation(line: 1340, column: 25, scope: !4399)
!4402 = !DILocation(line: 1340, column: 19, scope: !4399)
!4403 = !DILocation(line: 1340, column: 10, scope: !4399)
!4404 = !DILocation(line: 1340, column: 23, scope: !4399)
!4405 = !DILocation(line: 1344, column: 55, scope: !4399)
!4406 = !DILocation(line: 1344, column: 60, scope: !4399)
!4407 = !DILocation(line: 1346, column: 18, scope: !969)
!4408 = !DILocation(line: 1348, column: 18, scope: !969)
!4409 = !DILocation(line: 1348, column: 25, scope: !969)
!4410 = !DILocation(line: 1348, column: 34, scope: !969)
!4411 = !DILocation(line: 1346, column: 5, scope: !969)
!4412 = !DILocation(line: 1349, column: 5, scope: !969)
!4413 = !DILocation(line: 1350, column: 1, scope: !969)
!4414 = !DILocation(line: 1353, column: 13, scope: !974)
!4415 = !DILocation(line: 1353, column: 29, scope: !974)
!4416 = !DILocation(line: 1356, column: 19, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !974, file: !430, line: 1356, column: 9)
!4418 = !DILocation(line: 1356, column: 10, scope: !4417)
!4419 = !DILocation(line: 1356, column: 9, scope: !4417)
!4420 = !DILocation(line: 1356, column: 9, scope: !974)
!4421 = !DILocation(line: 1365, column: 52, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4417, file: !430, line: 1356, column: 24)
!4423 = !DILocation(line: 1365, column: 43, scope: !4422)
!4424 = !DILocation(line: 1365, column: 42, scope: !4422)
!4425 = !DILocation(line: 1366, column: 59, scope: !4422)
!4426 = !DILocation(line: 1366, column: 50, scope: !4422)
!4427 = !DILocation(line: 1366, column: 49, scope: !4422)
!4428 = !DILocation(line: 1366, column: 42, scope: !4422)
!4429 = !DILocation(line: 1365, column: 16, scope: !4422)
!4430 = !DILocation(line: 1365, column: 9, scope: !4422)
!4431 = !DILocation(line: 1368, column: 55, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4417, file: !430, line: 1367, column: 12)
!4433 = !DILocation(line: 1369, column: 9, scope: !4432)
!4434 = !DILocation(line: 1371, column: 1, scope: !974)
!4435 = !DILocation(line: 1177, column: 13, scope: !978)
!4436 = !DILocation(line: 1177, column: 28, scope: !978)
!4437 = !DILocation(line: 1177, column: 46, scope: !978)
!4438 = !DILocation(line: 1179, column: 5, scope: !978)
!4439 = !DILocation(line: 1179, column: 16, scope: !978)
!4440 = !DILocation(line: 1180, column: 5, scope: !978)
!4441 = !DILocation(line: 1180, column: 13, scope: !978)
!4442 = !DILocation(line: 1181, column: 27, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !978, file: !430, line: 1181, column: 9)
!4444 = !DILocation(line: 1181, column: 36, scope: !4443)
!4445 = !DILocation(line: 1181, column: 47, scope: !4443)
!4446 = !DILocation(line: 1181, column: 56, scope: !4443)
!4447 = !DILocation(line: 1181, column: 73, scope: !4443)
!4448 = !DILocation(line: 1181, column: 9, scope: !978)
!4449 = !DILocation(line: 1182, column: 22, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4443, file: !430, line: 1181, column: 80)
!4451 = !DILocation(line: 1184, column: 25, scope: !4450)
!4452 = !DILocation(line: 1184, column: 32, scope: !4450)
!4453 = !DILocation(line: 1184, column: 41, scope: !4450)
!4454 = !DILocation(line: 1182, column: 9, scope: !4450)
!4455 = !DILocation(line: 1185, column: 9, scope: !4450)
!4456 = !DILocation(line: 1187, column: 25, scope: !4443)
!4457 = !DILocation(line: 1187, column: 34, scope: !4443)
!4458 = !DILocation(line: 1187, column: 43, scope: !4443)
!4459 = !DILocation(line: 1189, column: 32, scope: !978)
!4460 = !DILocation(line: 1189, column: 39, scope: !978)
!4461 = !DILocation(line: 1189, column: 11, scope: !978)
!4462 = !DILocation(line: 1189, column: 9, scope: !978)
!4463 = !DILocation(line: 1190, column: 9, scope: !991)
!4464 = !DILocation(line: 1190, column: 13, scope: !991)
!4465 = !DILocation(line: 1190, column: 9, scope: !978)
!4466 = !DILocation(line: 1191, column: 9, scope: !990)
!4467 = !DILocation(line: 1191, column: 14, scope: !4468)
!4468 = !DILexicalBlockFile(scope: !989, file: !430, discriminator: 1)
!4469 = !DILocation(line: 1191, column: 24, scope: !989)
!4470 = !DILocation(line: 1191, column: 54, scope: !989)
!4471 = !DILocation(line: 1191, column: 70, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !989, file: !430, line: 1191, column: 67)
!4473 = !DILocation(line: 1191, column: 87, scope: !4472)
!4474 = !DILocation(line: 1191, column: 67, scope: !4472)
!4475 = !DILocation(line: 1191, column: 97, scope: !4472)
!4476 = !DILocation(line: 1191, column: 67, scope: !989)
!4477 = !DILocation(line: 1191, column: 67, scope: !4478)
!4478 = !DILexicalBlockFile(scope: !989, file: !430, discriminator: 2)
!4479 = !DILocation(line: 1191, column: 128, scope: !4480)
!4480 = !DILexicalBlockFile(scope: !4472, file: !430, discriminator: 3)
!4481 = !DILocation(line: 1191, column: 146, scope: !4472)
!4482 = !DILocation(line: 1191, column: 156, scope: !4472)
!4483 = !DILocation(line: 1191, column: 181, scope: !4472)
!4484 = !DILocation(line: 1191, column: 112, scope: !4472)
!4485 = !DILocation(line: 1191, column: 200, scope: !4486)
!4486 = !DILexicalBlockFile(scope: !990, file: !430, discriminator: 4)
!4487 = !DILocation(line: 1191, column: 200, scope: !989)
!4488 = !DILocation(line: 1191, column: 200, scope: !4489)
!4489 = !DILexicalBlockFile(scope: !989, file: !430, discriminator: 5)
!4490 = !DILocation(line: 1192, column: 25, scope: !990)
!4491 = !DILocation(line: 1192, column: 9, scope: !990)
!4492 = !DILocation(line: 1194, column: 9, scope: !990)
!4493 = !DILocation(line: 1197, column: 23, scope: !978)
!4494 = !DILocation(line: 1197, column: 17, scope: !978)
!4495 = !DILocation(line: 1197, column: 6, scope: !978)
!4496 = !DILocation(line: 1197, column: 21, scope: !978)
!4497 = !DILocation(line: 1198, column: 5, scope: !978)
!4498 = !DILocation(line: 1198, column: 10, scope: !4499)
!4499 = !DILexicalBlockFile(scope: !993, file: !430, discriminator: 1)
!4500 = !DILocation(line: 1198, column: 20, scope: !993)
!4501 = !DILocation(line: 1198, column: 50, scope: !993)
!4502 = !DILocation(line: 1198, column: 66, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !993, file: !430, line: 1198, column: 63)
!4504 = !DILocation(line: 1198, column: 83, scope: !4503)
!4505 = !DILocation(line: 1198, column: 63, scope: !4503)
!4506 = !DILocation(line: 1198, column: 93, scope: !4503)
!4507 = !DILocation(line: 1198, column: 63, scope: !993)
!4508 = !DILocation(line: 1198, column: 63, scope: !4509)
!4509 = !DILexicalBlockFile(scope: !993, file: !430, discriminator: 2)
!4510 = !DILocation(line: 1198, column: 124, scope: !4511)
!4511 = !DILexicalBlockFile(scope: !4503, file: !430, discriminator: 3)
!4512 = !DILocation(line: 1198, column: 142, scope: !4503)
!4513 = !DILocation(line: 1198, column: 152, scope: !4503)
!4514 = !DILocation(line: 1198, column: 177, scope: !4503)
!4515 = !DILocation(line: 1198, column: 108, scope: !4503)
!4516 = !DILocation(line: 1198, column: 196, scope: !4517)
!4517 = !DILexicalBlockFile(scope: !978, file: !430, discriminator: 4)
!4518 = !DILocation(line: 1198, column: 196, scope: !993)
!4519 = !DILocation(line: 1198, column: 196, scope: !4520)
!4520 = !DILexicalBlockFile(scope: !993, file: !430, discriminator: 5)
!4521 = !DILocation(line: 1200, column: 51, scope: !978)
!4522 = !DILocation(line: 1200, column: 56, scope: !978)
!4523 = !DILocation(line: 1201, column: 1, scope: !978)
!4524 = !DILocation(line: 1205, column: 13, scope: !994)
!4525 = !DILocation(line: 1205, column: 29, scope: !994)
!4526 = !DILocation(line: 1207, column: 46, scope: !994)
!4527 = !DILocation(line: 1207, column: 35, scope: !994)
!4528 = !DILocation(line: 1207, column: 12, scope: !994)
!4529 = !DILocation(line: 1207, column: 5, scope: !994)
!4530 = !DILocation(line: 1235, column: 13, scope: !998)
!4531 = !DILocation(line: 1235, column: 28, scope: !998)
!4532 = !DILocation(line: 1235, column: 46, scope: !998)
!4533 = !DILocation(line: 1237, column: 5, scope: !998)
!4534 = !DILocation(line: 1237, column: 17, scope: !998)
!4535 = !DILocation(line: 1238, column: 5, scope: !998)
!4536 = !DILocation(line: 1238, column: 16, scope: !998)
!4537 = !DILocation(line: 1241, column: 12, scope: !998)
!4538 = !DILocation(line: 1243, column: 27, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !998, file: !430, line: 1243, column: 9)
!4540 = !DILocation(line: 1243, column: 36, scope: !4539)
!4541 = !DILocation(line: 1243, column: 47, scope: !4539)
!4542 = !DILocation(line: 1243, column: 56, scope: !4539)
!4543 = !DILocation(line: 1243, column: 73, scope: !4539)
!4544 = !DILocation(line: 1243, column: 9, scope: !998)
!4545 = !DILocation(line: 1244, column: 22, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4539, file: !430, line: 1243, column: 80)
!4547 = !DILocation(line: 1246, column: 25, scope: !4546)
!4548 = !DILocation(line: 1246, column: 32, scope: !4546)
!4549 = !DILocation(line: 1246, column: 41, scope: !4546)
!4550 = !DILocation(line: 1244, column: 9, scope: !4546)
!4551 = !DILocation(line: 1247, column: 9, scope: !4546)
!4552 = !DILocation(line: 1249, column: 25, scope: !4539)
!4553 = !DILocation(line: 1249, column: 34, scope: !4539)
!4554 = !DILocation(line: 1249, column: 43, scope: !4539)
!4555 = !DILocation(line: 1251, column: 39, scope: !998)
!4556 = !DILocation(line: 1251, column: 12, scope: !998)
!4557 = !DILocation(line: 1251, column: 10, scope: !998)
!4558 = !DILocation(line: 1252, column: 9, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !998, file: !430, line: 1252, column: 9)
!4560 = !DILocation(line: 1252, column: 14, scope: !4559)
!4561 = !DILocation(line: 1252, column: 9, scope: !998)
!4562 = !DILocation(line: 1253, column: 9, scope: !4559)
!4563 = !DILocation(line: 1254, column: 9, scope: !1011)
!4564 = !DILocation(line: 1254, column: 16, scope: !1011)
!4565 = !DILocation(line: 1254, column: 14, scope: !1011)
!4566 = !DILocation(line: 1254, column: 9, scope: !998)
!4567 = !DILocation(line: 1255, column: 22, scope: !1010)
!4568 = !DILocation(line: 1257, column: 22, scope: !1010)
!4569 = !DILocation(line: 1257, column: 28, scope: !1010)
!4570 = !DILocation(line: 1255, column: 9, scope: !1010)
!4571 = !DILocation(line: 1258, column: 9, scope: !1010)
!4572 = !DILocation(line: 1258, column: 14, scope: !4573)
!4573 = !DILexicalBlockFile(scope: !1009, file: !430, discriminator: 1)
!4574 = !DILocation(line: 1258, column: 24, scope: !1009)
!4575 = !DILocation(line: 1258, column: 54, scope: !1009)
!4576 = !DILocation(line: 1258, column: 70, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !1009, file: !430, line: 1258, column: 67)
!4578 = !DILocation(line: 1258, column: 87, scope: !4577)
!4579 = !DILocation(line: 1258, column: 67, scope: !4577)
!4580 = !DILocation(line: 1258, column: 97, scope: !4577)
!4581 = !DILocation(line: 1258, column: 67, scope: !1009)
!4582 = !DILocation(line: 1258, column: 67, scope: !4583)
!4583 = !DILexicalBlockFile(scope: !1009, file: !430, discriminator: 2)
!4584 = !DILocation(line: 1258, column: 128, scope: !4585)
!4585 = !DILexicalBlockFile(scope: !4577, file: !430, discriminator: 3)
!4586 = !DILocation(line: 1258, column: 146, scope: !4577)
!4587 = !DILocation(line: 1258, column: 156, scope: !4577)
!4588 = !DILocation(line: 1258, column: 181, scope: !4577)
!4589 = !DILocation(line: 1258, column: 112, scope: !4577)
!4590 = !DILocation(line: 1258, column: 200, scope: !4591)
!4591 = !DILexicalBlockFile(scope: !1010, file: !430, discriminator: 4)
!4592 = !DILocation(line: 1258, column: 200, scope: !1009)
!4593 = !DILocation(line: 1258, column: 200, scope: !4594)
!4594 = !DILexicalBlockFile(scope: !1009, file: !430, discriminator: 5)
!4595 = !DILocation(line: 1259, column: 9, scope: !1010)
!4596 = !DILocation(line: 1260, column: 16, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !1011, file: !430, line: 1260, column: 16)
!4598 = !DILocation(line: 1260, column: 23, scope: !4597)
!4599 = !DILocation(line: 1260, column: 29, scope: !4597)
!4600 = !DILocation(line: 1260, column: 21, scope: !4597)
!4601 = !DILocation(line: 1260, column: 16, scope: !1011)
!4602 = !DILocation(line: 1262, column: 14, scope: !4597)
!4603 = !DILocation(line: 1262, column: 9, scope: !4597)
!4604 = !DILocation(line: 1264, column: 30, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !998, file: !430, line: 1264, column: 9)
!4606 = !DILocation(line: 1264, column: 48, scope: !4605)
!4607 = !DILocation(line: 1264, column: 37, scope: !4605)
!4608 = !DILocation(line: 1264, column: 53, scope: !4605)
!4609 = !DILocation(line: 1264, column: 9, scope: !4605)
!4610 = !DILocation(line: 1264, column: 59, scope: !4605)
!4611 = !DILocation(line: 1264, column: 9, scope: !998)
!4612 = !DILocation(line: 1265, column: 9, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4605, file: !430, line: 1264, column: 66)
!4614 = !DILocation(line: 1268, column: 12, scope: !998)
!4615 = !DILocation(line: 1268, column: 5, scope: !998)
!4616 = !DILocation(line: 1269, column: 1, scope: !998)
!4617 = !DILocation(line: 1212, column: 13, scope: !1012)
!4618 = !DILocation(line: 1212, column: 29, scope: !1012)
!4619 = !DILocation(line: 1214, column: 5, scope: !1012)
!4620 = !DILocation(line: 1214, column: 16, scope: !1012)
!4621 = !DILocation(line: 1215, column: 5, scope: !1012)
!4622 = !DILocation(line: 1215, column: 14, scope: !1012)
!4623 = !DILocation(line: 1217, column: 10, scope: !1012)
!4624 = !DILocation(line: 1225, column: 19, scope: !1012)
!4625 = !DILocation(line: 1225, column: 9, scope: !1012)
!4626 = !DILocation(line: 1225, column: 7, scope: !1012)
!4627 = !DILocation(line: 1226, column: 14, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !1012, file: !430, line: 1226, column: 5)
!4629 = !DILocation(line: 1226, column: 10, scope: !4628)
!4630 = !DILocation(line: 1226, column: 19, scope: !4631)
!4631 = !DILexicalBlockFile(scope: !4632, file: !430, discriminator: 2)
!4632 = !DILexicalBlockFile(scope: !4633, file: !430, discriminator: 1)
!4633 = distinct !DILexicalBlock(scope: !4628, file: !430, line: 1226, column: 5)
!4634 = !DILocation(line: 1226, column: 25, scope: !4633)
!4635 = !DILocation(line: 1226, column: 23, scope: !4633)
!4636 = !DILocation(line: 1226, column: 5, scope: !4628)
!4637 = !DILocation(line: 1227, column: 16, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4639, file: !430, line: 1227, column: 13)
!4639 = distinct !DILexicalBlock(scope: !4633, file: !430, line: 1226, column: 38)
!4640 = !DILocation(line: 1227, column: 14, scope: !4638)
!4641 = !DILocation(line: 1227, column: 13, scope: !4639)
!4642 = !DILocation(line: 1228, column: 13, scope: !4638)
!4643 = !DILocation(line: 1229, column: 5, scope: !4639)
!4644 = !DILocation(line: 1226, column: 31, scope: !4633)
!4645 = !DILocation(line: 1226, column: 5, scope: !4633)
!4646 = !DILocation(line: 1231, column: 46, scope: !1012)
!4647 = !DILocation(line: 1231, column: 35, scope: !1012)
!4648 = !DILocation(line: 1231, column: 51, scope: !1012)
!4649 = !DILocation(line: 1231, column: 12, scope: !1012)
!4650 = !DILocation(line: 1232, column: 1, scope: !1012)
!4651 = !DILocation(line: 1231, column: 5, scope: !1012)
!4652 = !DILocation(line: 1375, column: 13, scope: !1018)
!4653 = !DILocation(line: 1375, column: 28, scope: !1018)
!4654 = !DILocation(line: 1375, column: 46, scope: !1018)
!4655 = !DILocation(line: 1377, column: 5, scope: !1018)
!4656 = !DILocation(line: 1377, column: 15, scope: !1018)
!4657 = !DILocation(line: 1378, column: 5, scope: !1018)
!4658 = !DILocation(line: 1378, column: 14, scope: !1018)
!4659 = !DILocation(line: 1380, column: 9, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !1018, file: !430, line: 1380, column: 9)
!4661 = !DILocation(line: 1380, column: 15, scope: !4660)
!4662 = !DILocation(line: 1380, column: 9, scope: !1018)
!4663 = !DILocation(line: 1381, column: 22, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4660, file: !430, line: 1380, column: 37)
!4665 = !DILocation(line: 1381, column: 10, scope: !4664)
!4666 = !DILocation(line: 1381, column: 26, scope: !4664)
!4667 = !DILocation(line: 1382, column: 25, scope: !4664)
!4668 = !DILocation(line: 1382, column: 34, scope: !4664)
!4669 = !DILocation(line: 1382, column: 43, scope: !4664)
!4670 = !DILocation(line: 1383, column: 16, scope: !4664)
!4671 = !DILocation(line: 1383, column: 9, scope: !4664)
!4672 = !DILocation(line: 1385, column: 26, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !1018, file: !430, line: 1385, column: 9)
!4674 = !DILocation(line: 1385, column: 35, scope: !4673)
!4675 = !DILocation(line: 1385, column: 46, scope: !4673)
!4676 = !DILocation(line: 1385, column: 55, scope: !4673)
!4677 = !DILocation(line: 1385, column: 72, scope: !4673)
!4678 = !DILocation(line: 1385, column: 78, scope: !4673)
!4679 = !DILocation(line: 1385, column: 98, scope: !4680)
!4680 = !DILexicalBlockFile(scope: !4673, file: !430, discriminator: 1)
!4681 = !DILocation(line: 1385, column: 107, scope: !4673)
!4682 = !DILocation(line: 1385, column: 118, scope: !4673)
!4683 = !DILocation(line: 1385, column: 127, scope: !4673)
!4684 = !DILocation(line: 1385, column: 144, scope: !4673)
!4685 = !DILocation(line: 1385, column: 9, scope: !1018)
!4686 = !DILocation(line: 1387, column: 69, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4673, file: !430, line: 1385, column: 151)
!4688 = !DILocation(line: 1387, column: 39, scope: !4687)
!4689 = !DILocation(line: 1387, column: 28, scope: !4687)
!4690 = !DILocation(line: 1387, column: 22, scope: !4687)
!4691 = !DILocation(line: 1387, column: 10, scope: !4687)
!4692 = !DILocation(line: 1387, column: 26, scope: !4687)
!4693 = !DILocation(line: 1391, column: 55, scope: !4687)
!4694 = !DILocation(line: 1392, column: 9, scope: !4687)
!4695 = !DILocation(line: 1394, column: 27, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !1018, file: !430, line: 1394, column: 9)
!4697 = !DILocation(line: 1394, column: 36, scope: !4696)
!4698 = !DILocation(line: 1394, column: 47, scope: !4696)
!4699 = !DILocation(line: 1394, column: 56, scope: !4696)
!4700 = !DILocation(line: 1394, column: 73, scope: !4696)
!4701 = !DILocation(line: 1394, column: 9, scope: !1018)
!4702 = !DILocation(line: 1395, column: 22, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4696, file: !430, line: 1394, column: 80)
!4704 = !DILocation(line: 1397, column: 22, scope: !4703)
!4705 = !DILocation(line: 1397, column: 29, scope: !4703)
!4706 = !DILocation(line: 1397, column: 38, scope: !4703)
!4707 = !DILocation(line: 1395, column: 9, scope: !4703)
!4708 = !DILocation(line: 1398, column: 9, scope: !4703)
!4709 = !DILocation(line: 1403, column: 41, scope: !1018)
!4710 = !DILocation(line: 1403, column: 14, scope: !1018)
!4711 = !DILocation(line: 1403, column: 12, scope: !1018)
!4712 = !DILocation(line: 1404, column: 10, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !1018, file: !430, line: 1404, column: 9)
!4714 = !DILocation(line: 1404, column: 9, scope: !1018)
!4715 = !DILocation(line: 1405, column: 9, scope: !4713)
!4716 = !DILocation(line: 1406, column: 26, scope: !1018)
!4717 = !DILocation(line: 1406, column: 12, scope: !1018)
!4718 = !DILocation(line: 1406, column: 10, scope: !1018)
!4719 = !DILocation(line: 1407, column: 10, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !1018, file: !430, line: 1407, column: 9)
!4721 = !DILocation(line: 1407, column: 9, scope: !1018)
!4722 = !DILocation(line: 1408, column: 20, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4720, file: !430, line: 1407, column: 16)
!4724 = !DILocation(line: 1408, column: 9, scope: !4723)
!4725 = !DILocation(line: 1409, column: 9, scope: !4723)
!4726 = !DILocation(line: 1411, column: 24, scope: !1018)
!4727 = !DILocation(line: 1411, column: 18, scope: !1018)
!4728 = !DILocation(line: 1411, column: 6, scope: !1018)
!4729 = !DILocation(line: 1411, column: 22, scope: !1018)
!4730 = !DILocation(line: 1412, column: 12, scope: !1018)
!4731 = !DILocation(line: 1412, column: 5, scope: !1018)
!4732 = !DILocation(line: 1413, column: 1, scope: !1018)
!4733 = !DILocation(line: 1416, column: 13, scope: !1029)
!4734 = !DILocation(line: 1416, column: 29, scope: !1029)
!4735 = !DILocation(line: 1418, column: 5, scope: !1029)
!4736 = !DILocation(line: 1418, column: 14, scope: !1029)
!4737 = !DILocation(line: 1419, column: 22, scope: !1029)
!4738 = !DILocation(line: 1419, column: 10, scope: !1029)
!4739 = !DILocation(line: 1419, column: 9, scope: !1029)
!4740 = !DILocation(line: 1419, column: 7, scope: !1029)
!4741 = !DILocation(line: 1420, column: 9, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !1029, file: !430, line: 1420, column: 9)
!4743 = !DILocation(line: 1420, column: 9, scope: !1029)
!4744 = !DILocation(line: 1429, column: 39, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4742, file: !430, line: 1420, column: 12)
!4746 = !DILocation(line: 1429, column: 49, scope: !4745)
!4747 = !DILocation(line: 1429, column: 42, scope: !4745)
!4748 = !DILocation(line: 1429, column: 16, scope: !4745)
!4749 = !DILocation(line: 1429, column: 9, scope: !4745)
!4750 = !DILocation(line: 1431, column: 55, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4742, file: !430, line: 1430, column: 12)
!4752 = !DILocation(line: 1432, column: 9, scope: !4751)
!4753 = !DILocation(line: 1434, column: 1, scope: !1029)
!4754 = !DILocation(line: 727, column: 16, scope: !1034)
!4755 = !DILocation(line: 727, column: 31, scope: !1034)
!4756 = !DILocation(line: 727, column: 49, scope: !1034)
!4757 = !DILocation(line: 729, column: 29, scope: !1034)
!4758 = !DILocation(line: 729, column: 13, scope: !1034)
!4759 = !DILocation(line: 729, column: 5, scope: !1034)
!4760 = !DILocation(line: 731, column: 9, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !1034, file: !430, line: 729, column: 37)
!4762 = !DILocation(line: 733, column: 19, scope: !4761)
!4763 = !DILocation(line: 733, column: 23, scope: !4761)
!4764 = !{!4765, !4765, i64 0}
!4765 = !{!"_Bool", !1084, i64 0}
!4766 = !DILocation(line: 734, column: 55, scope: !4761)
!4767 = !DILocation(line: 734, column: 60, scope: !4761)
!4768 = !DILocation(line: 736, column: 19, scope: !4761)
!4769 = !DILocation(line: 736, column: 23, scope: !4761)
!4770 = !DILocation(line: 737, column: 55, scope: !4761)
!4771 = !DILocation(line: 737, column: 60, scope: !4761)
!4772 = !DILocation(line: 739, column: 1, scope: !1034)
!4773 = !DILocation(line: 742, column: 16, scope: !1039)
!4774 = !DILocation(line: 742, column: 32, scope: !1039)
!4775 = !DILocation(line: 744, column: 44, scope: !1039)
!4776 = !DILocation(line: 744, column: 34, scope: !1039)
!4777 = !{i8 0, i8 2}
!4778 = !DILocation(line: 744, column: 28, scope: !1039)
!4779 = !DILocation(line: 744, column: 12, scope: !1039)
!4780 = !DILocation(line: 744, column: 5, scope: !1039)
!4781 = !DILocation(line: 1133, column: 13, scope: !1043)
!4782 = !DILocation(line: 1133, column: 28, scope: !1043)
!4783 = !DILocation(line: 1133, column: 46, scope: !1043)
!4784 = !DILocation(line: 1136, column: 25, scope: !1043)
!4785 = !DILocation(line: 1136, column: 19, scope: !1043)
!4786 = !DILocation(line: 1136, column: 6, scope: !1043)
!4787 = !DILocation(line: 1136, column: 23, scope: !1043)
!4788 = !DILocation(line: 1137, column: 21, scope: !1043)
!4789 = !DILocation(line: 1137, column: 30, scope: !1043)
!4790 = !DILocation(line: 1137, column: 39, scope: !1043)
!4791 = !DILocation(line: 1138, column: 12, scope: !1043)
!4792 = !DILocation(line: 1138, column: 5, scope: !1043)
!4793 = !DILocation(line: 1118, column: 13, scope: !1048)
!4794 = !DILocation(line: 1118, column: 29, scope: !1048)
!4795 = !DILocation(line: 1120, column: 5, scope: !1048)
!4796 = !DILocation(line: 1120, column: 15, scope: !1048)
!4797 = !DILocation(line: 1120, column: 34, scope: !1048)
!4798 = !DILocation(line: 1120, column: 21, scope: !1048)
!4799 = !DILocation(line: 1120, column: 20, scope: !1048)
!4800 = !DILocation(line: 1121, column: 9, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !1048, file: !430, line: 1121, column: 9)
!4802 = !DILocation(line: 1121, column: 12, scope: !4801)
!4803 = !DILocation(line: 1121, column: 9, scope: !1048)
!4804 = !DILocation(line: 1122, column: 14, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4806, file: !430, line: 1122, column: 13)
!4806 = distinct !DILexicalBlock(scope: !4801, file: !430, line: 1121, column: 27)
!4807 = !DILocation(line: 1122, column: 13, scope: !4806)
!4808 = !DILocation(line: 1124, column: 29, scope: !4805)
!4809 = !DILocation(line: 1124, column: 13, scope: !4805)
!4810 = !DILocation(line: 1126, column: 9, scope: !4806)
!4811 = !DILocation(line: 1128, column: 21, scope: !1048)
!4812 = !DILocation(line: 1128, column: 27, scope: !1048)
!4813 = !DILocation(line: 1128, column: 36, scope: !1048)
!4814 = !DILocation(line: 1129, column: 12, scope: !1048)
!4815 = !DILocation(line: 1129, column: 5, scope: !1048)
!4816 = !DILocation(line: 1130, column: 1, scope: !1048)
!4817 = !DILocation(line: 347, column: 20, scope: !654)
!4818 = !DILocation(line: 347, column: 29, scope: !654)
!4819 = !DILocation(line: 349, column: 5, scope: !654)
!4820 = !DILocation(line: 349, column: 10, scope: !654)
!4821 = !DILocation(line: 351, column: 24, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !654, file: !430, line: 351, column: 9)
!4823 = !DILocation(line: 351, column: 29, scope: !4822)
!4824 = !DILocation(line: 351, column: 38, scope: !4822)
!4825 = !DILocation(line: 351, column: 57, scope: !4822)
!4826 = !DILocation(line: 351, column: 91, scope: !4827)
!4827 = !DILexicalBlockFile(scope: !4822, file: !430, discriminator: 1)
!4828 = !DILocation(line: 351, column: 96, scope: !4822)
!4829 = !DILocation(line: 351, column: 60, scope: !4822)
!4830 = !DILocation(line: 351, column: 9, scope: !654)
!4831 = !DILocation(line: 352, column: 25, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4822, file: !430, line: 351, column: 125)
!4833 = !DILocation(line: 352, column: 9, scope: !4832)
!4834 = !DILocation(line: 354, column: 9, scope: !4832)
!4835 = !DILocation(line: 356, column: 35, scope: !654)
!4836 = !DILocation(line: 356, column: 9, scope: !654)
!4837 = !DILocation(line: 356, column: 7, scope: !654)
!4838 = !DILocation(line: 357, column: 9, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !654, file: !430, line: 357, column: 9)
!4840 = !DILocation(line: 357, column: 11, scope: !4839)
!4841 = !DILocation(line: 357, column: 17, scope: !4839)
!4842 = !DILocation(line: 357, column: 20, scope: !4843)
!4843 = !DILexicalBlockFile(scope: !4839, file: !430, discriminator: 1)
!4844 = !DILocation(line: 357, column: 9, scope: !654)
!4845 = !DILocation(line: 358, column: 9, scope: !4839)
!4846 = !DILocation(line: 359, column: 10, scope: !654)
!4847 = !DILocation(line: 359, column: 6, scope: !654)
!4848 = !DILocation(line: 359, column: 8, scope: !654)
!4849 = !DILocation(line: 360, column: 5, scope: !654)
!4850 = !DILocation(line: 361, column: 1, scope: !654)
!4851 = !DILocation(line: 366, column: 21, scope: !673)
!4852 = !DILocation(line: 366, column: 39, scope: !673)
!4853 = !DILocation(line: 368, column: 5, scope: !673)
!4854 = !DILocation(line: 368, column: 19, scope: !673)
!4855 = !DILocation(line: 370, column: 24, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !673, file: !430, line: 370, column: 9)
!4857 = !DILocation(line: 370, column: 29, scope: !4856)
!4858 = !DILocation(line: 370, column: 38, scope: !4856)
!4859 = !DILocation(line: 370, column: 57, scope: !4856)
!4860 = !DILocation(line: 370, column: 91, scope: !4861)
!4861 = !DILexicalBlockFile(scope: !4856, file: !430, discriminator: 1)
!4862 = !DILocation(line: 370, column: 96, scope: !4856)
!4863 = !DILocation(line: 370, column: 60, scope: !4856)
!4864 = !DILocation(line: 370, column: 9, scope: !673)
!4865 = !DILocation(line: 371, column: 25, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4856, file: !430, line: 370, column: 125)
!4867 = !DILocation(line: 371, column: 9, scope: !4866)
!4868 = !DILocation(line: 373, column: 9, scope: !4866)
!4869 = !DILocation(line: 375, column: 35, scope: !673)
!4870 = !DILocation(line: 375, column: 9, scope: !673)
!4871 = !DILocation(line: 375, column: 7, scope: !673)
!4872 = !DILocation(line: 376, column: 9, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !673, file: !430, line: 376, column: 9)
!4874 = !DILocation(line: 376, column: 11, scope: !4873)
!4875 = !DILocation(line: 376, column: 32, scope: !4873)
!4876 = !DILocation(line: 376, column: 35, scope: !4877)
!4877 = !DILexicalBlockFile(scope: !4873, file: !430, discriminator: 1)
!4878 = !DILocation(line: 376, column: 9, scope: !673)
!4879 = !DILocation(line: 377, column: 9, scope: !4873)
!4880 = !DILocation(line: 378, column: 10, scope: !673)
!4881 = !DILocation(line: 378, column: 6, scope: !673)
!4882 = !DILocation(line: 378, column: 8, scope: !673)
!4883 = !DILocation(line: 379, column: 5, scope: !673)
!4884 = !DILocation(line: 380, column: 1, scope: !673)
!4885 = !DILocation(line: 387, column: 24, scope: !902)
!4886 = !DILocation(line: 387, column: 38, scope: !902)
!4887 = !DILocation(line: 389, column: 5, scope: !902)
!4888 = !DILocation(line: 389, column: 15, scope: !902)
!4889 = !DILocation(line: 390, column: 24, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !902, file: !430, line: 390, column: 9)
!4891 = !DILocation(line: 390, column: 29, scope: !4890)
!4892 = !DILocation(line: 390, column: 38, scope: !4890)
!4893 = !DILocation(line: 390, column: 57, scope: !4890)
!4894 = !DILocation(line: 390, column: 91, scope: !4895)
!4895 = !DILexicalBlockFile(scope: !4890, file: !430, discriminator: 1)
!4896 = !DILocation(line: 390, column: 96, scope: !4890)
!4897 = !DILocation(line: 390, column: 60, scope: !4890)
!4898 = !DILocation(line: 390, column: 9, scope: !902)
!4899 = !DILocation(line: 391, column: 25, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4890, file: !430, line: 390, column: 125)
!4901 = !DILocation(line: 391, column: 9, scope: !4900)
!4902 = !DILocation(line: 393, column: 9, scope: !4900)
!4903 = !DILocation(line: 395, column: 39, scope: !902)
!4904 = !DILocation(line: 395, column: 9, scope: !902)
!4905 = !DILocation(line: 395, column: 7, scope: !902)
!4906 = !DILocation(line: 396, column: 9, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !902, file: !430, line: 396, column: 9)
!4908 = !DILocation(line: 396, column: 11, scope: !4907)
!4909 = !DILocation(line: 396, column: 17, scope: !4907)
!4910 = !DILocation(line: 396, column: 20, scope: !4911)
!4911 = !DILexicalBlockFile(scope: !4907, file: !430, discriminator: 1)
!4912 = !DILocation(line: 396, column: 9, scope: !902)
!4913 = !DILocation(line: 397, column: 9, scope: !4907)
!4914 = !DILocation(line: 398, column: 10, scope: !902)
!4915 = !DILocation(line: 398, column: 6, scope: !902)
!4916 = !DILocation(line: 398, column: 8, scope: !902)
!4917 = !DILocation(line: 399, column: 5, scope: !902)
!4918 = !DILocation(line: 400, column: 1, scope: !902)
!4919 = !DILocation(line: 405, column: 25, scope: !934)
!4920 = !DILocation(line: 405, column: 48, scope: !934)
!4921 = !DILocation(line: 407, column: 5, scope: !934)
!4922 = !DILocation(line: 407, column: 24, scope: !934)
!4923 = !DILocation(line: 408, column: 24, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !934, file: !430, line: 408, column: 9)
!4925 = !DILocation(line: 408, column: 29, scope: !4924)
!4926 = !DILocation(line: 408, column: 38, scope: !4924)
!4927 = !DILocation(line: 408, column: 57, scope: !4924)
!4928 = !DILocation(line: 408, column: 91, scope: !4929)
!4929 = !DILexicalBlockFile(scope: !4924, file: !430, discriminator: 1)
!4930 = !DILocation(line: 408, column: 96, scope: !4924)
!4931 = !DILocation(line: 408, column: 60, scope: !4924)
!4932 = !DILocation(line: 408, column: 9, scope: !934)
!4933 = !DILocation(line: 409, column: 25, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4924, file: !430, line: 408, column: 125)
!4935 = !DILocation(line: 409, column: 9, scope: !4934)
!4936 = !DILocation(line: 411, column: 9, scope: !4934)
!4937 = !DILocation(line: 413, column: 39, scope: !934)
!4938 = !DILocation(line: 413, column: 9, scope: !934)
!4939 = !DILocation(line: 413, column: 7, scope: !934)
!4940 = !DILocation(line: 414, column: 9, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !934, file: !430, line: 414, column: 9)
!4942 = !DILocation(line: 414, column: 11, scope: !4941)
!4943 = !DILocation(line: 414, column: 37, scope: !4941)
!4944 = !DILocation(line: 414, column: 40, scope: !4945)
!4945 = !DILexicalBlockFile(scope: !4941, file: !430, discriminator: 1)
!4946 = !DILocation(line: 414, column: 9, scope: !934)
!4947 = !DILocation(line: 415, column: 9, scope: !4941)
!4948 = !DILocation(line: 416, column: 10, scope: !934)
!4949 = !DILocation(line: 416, column: 6, scope: !934)
!4950 = !DILocation(line: 416, column: 8, scope: !934)
!4951 = !DILocation(line: 417, column: 5, scope: !934)
!4952 = !DILocation(line: 418, column: 1, scope: !934)
!4953 = !DILocation(line: 12, column: 40, scope: !1025)
!4954 = !DILocation(line: 14, column: 5, scope: !1025)
!4955 = !DILocation(line: 14, column: 11, scope: !1025)
!4956 = !DILocation(line: 14, column: 36, scope: !1025)
!4957 = !DILocation(line: 14, column: 15, scope: !1025)
!4958 = !DILocation(line: 15, column: 9, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !1025, file: !430, line: 15, column: 9)
!4960 = !DILocation(line: 15, column: 9, scope: !1025)
!4961 = !DILocation(line: 16, column: 20, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4959, file: !430, line: 15, column: 12)
!4963 = !DILocation(line: 16, column: 9, scope: !4962)
!4964 = !DILocation(line: 17, column: 5, scope: !4962)
!4965 = !DILocation(line: 18, column: 1, scope: !1025)