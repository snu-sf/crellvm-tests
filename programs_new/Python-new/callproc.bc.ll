; ModuleID = 'programs_new/Python-new/callproc.bc.ll'
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._ffi_type = type { i64, i16, i16, %struct._ffi_type** }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.tagPyCArgObject = type { %struct._object, %struct._ffi_type*, i8, %union.anon, %struct._object*, i64 }
%union.anon = type { x86_fp80 }
%struct.StgDictObject = type { %struct.PyDictObject, i64, i64, i64, %struct._ffi_type, %struct._object*, %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, i64)*, %struct.tagPyCArgObject* (%struct.tagCDataObject*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i8*, i32, i64* }
%struct.PyDictObject = type { %struct._object, i64, %struct._dictkeysobject*, %struct._object** }
%struct._dictkeysobject = type opaque
%struct.tagCDataObject = type { %struct._object, i8*, i32, %struct.tagCDataObject*, i64, i64, i64, %struct._object*, %union.value }
%union.value = type { x86_fp80 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.argument = type { %struct._ffi_type*, %struct._object*, %union.result }
%union.result = type { x86_fp80 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.ffi_cif = type { i32, i32, %struct._ffi_type**, %struct._ffi_type*, i32, i32 }
%struct.fielddesc = type { i8, %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, i64)*, %struct._ffi_type*, %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, i64)* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyByteArrayObject = type { %struct.PyVarObject, i64, i8*, i8*, i32 }

@_ctypes_get_errobj.error_object_name = internal global %struct._object* null, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [24 x i8] c"cannot get thread state\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ctypes.error_object\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"_ctypes pymem\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"ctypes.error_object is an invalid capsule\00", align 1
@PyCArg_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.tagPyCArgObject*)* @PyCArg_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.tagPyCArgObject*)* @PyCArg_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @PyCArgType_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"CArgObject\00", align 1
@PyCArgType_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 6, i64 48, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@ffi_type_sint32 = external global %struct._ffi_type, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@PyExc_ArgError = external global %struct._object*, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"argument %d: \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"get_errno\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"set_errno\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"POINTER\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"_unpickle\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"buffer_info\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Return buffer interface information\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Resize the memory buffer of a ctypes instance\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"dlopen\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"dlopen(name, flag={RTLD_GLOBAL|RTLD_LOCAL}) open a shared library\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"dlclose\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"dlclose a library\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"dlsym\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"find symbol in shared library\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"alignment\00", align 1
@alignment_doc = internal global [112 x i8] c"alignment(C type) -> integer\0Aalignment(C instance) -> integer\0AReturn the alignment requirements of a C instance\00", align 16
@.str.24 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@sizeof_doc = internal global [97 x i8] c"sizeof(C type) -> integer\0Asizeof(C instance) -> integer\0AReturn the size in bytes of a C instance\00", align 16
@.str.25 = private unnamed_addr constant [6 x i8] c"byref\00", align 1
@byref_doc = internal global [123 x i8] c"byref(C instance[, offset=0]) -> byref-object\0AReturn a pointer lookalike to a C instance, only usable\0Aas function argument\00", align 16
@.str.26 = private unnamed_addr constant [10 x i8] c"addressof\00", align 1
@addressof_doc = internal global [86 x i8] c"addressof(C instance) -> integer\0AReturn the address of the C instance internal buffer\00", align 16
@.str.27 = private unnamed_addr constant [14 x i8] c"call_function\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"call_cdeclfunction\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"PyObj_FromPtr\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"Py_INCREF\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Py_DECREF\00", align 1
@_ctypes_module_methods = global [20 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @get_errno, i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @set_errno, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @POINTER, i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @pointer, i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @unpickle, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @buffer_info, i32 8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @resize, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_dl_open, i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_dl_close, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_dl_sym, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @align_func, i32 8, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @alignment_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sizeof_func, i32 8, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @sizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @byref, i32 1, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @byref_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @addressof, i32 8, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @addressof_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @call_function, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @call_cdeclfunction, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @My_PyObj_FromPtr, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @My_Py_INCREF, i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @My_Py_DECREF, i32 8, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.32 = private unnamed_addr constant [19 x i8] c"<cparam '%c' (%d)>\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"<cparam '%c' (%ld)>\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"<cparam '%c' (%qd)>\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"<cparam '%c' (%f)>\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"<cparam '%c' (%c)>\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"<cparam '%c' (%p)>\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"<cparam '%c' at %p>\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"_obj\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"the wrapped object\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@ffi_type_pointer = external global %struct._ffi_type, align 8
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.41 = private unnamed_addr constant [24 x i8] c"int too long to convert\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"_as_parameter_\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.43 = private unnamed_addr constant [39 x i8] c"Don't know how to convert parameter %d\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"No ffi_type for result\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"ffi_prep_cif failed\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"GetResult\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"_ctypes/callproc.c\00", align 1
@_ctypes_ptrtype_cache = external global %struct._object*, align 8
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.50 = private unnamed_addr constant [6 x i8] c"LP_%s\00", align 1
@PyCPointer_Type = external global %struct._typeobject, align 8
@.str.51 = private unnamed_addr constant [7 x i8] c"s(O){}\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"s(O){sO}\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"_type_\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"must be a ctypes type\00", align 1
@unpickle.PyId___new__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), %struct._object* null }, align 8
@.str.55 = private unnamed_addr constant [8 x i8] c"__new__\00", align 1
@unpickle.PyId___setstate__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), %struct._object* null }, align 8
@.str.56 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"not a ctypes type or object\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"siN\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"On:resize\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"excepted ctypes instance\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.62 = private unnamed_addr constant [20 x i8] c"minimum size is %zd\00", align 1
@.str.63 = private unnamed_addr constant [60 x i8] c"Memory cannot be resized because this object doesn't own it\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"O|i:dlopen\00", align 1
@_PyByteArray_empty_string = external global [0 x i8], align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"dlopen() error\00", align 1
@PyExc_OSError = external global %struct._object*, align 8
@.str.66 = private unnamed_addr constant [11 x i8] c"O&:dlclose\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"O&s:dlsym\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"no alignment info\00", align 1
@PyCData_Type = external global %struct._typeobject, align 8
@.str.69 = private unnamed_addr constant [22 x i8] c"this type has no size\00", align 1
@.str.70 = private unnamed_addr constant [53 x i8] c"byref() argument must be a ctypes instance, not '%s'\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"invalid type\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"O&O!\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.73 = private unnamed_addr constant [17 x i8] c"O&:PyObj_FromPtr\00", align 1

; Function Attrs: uwtable
define %struct._object* @_ctypes_get_errobj(i32** %pspace) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pspace.addr = alloca i32**, align 8
  %dict = alloca %struct._object*, align 8
  %errobj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %space = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32** %pspace, i32*** %pspace.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata i32*** %pspace.addr, metadata !489, metadata !1023), !dbg !1024
  %0 = bitcast %struct._object** %dict to i8*, !dbg !1025
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1025
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !490, metadata !1023), !dbg !1026
  %call = call %struct._object* @PyThreadState_GetDict(), !dbg !1027
  store %struct._object* %call, %struct._object** %dict, align 8, !dbg !1026, !tbaa !1019
  %1 = bitcast %struct._object** %errobj to i8*, !dbg !1028
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1028
  call void @llvm.dbg.declare(metadata %struct._object** %errobj, metadata !491, metadata !1023), !dbg !1029
  %2 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1030, !tbaa !1019
  %cmp = icmp eq %struct._object* %2, null, !dbg !1032
  br i1 %cmp, label %if.then, label %if.end, !dbg !1033

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1034, !tbaa !1019
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)), !dbg !1036
  store %struct._object* null, %struct._object** %retval, !dbg !1037
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33, !dbg !1037

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** @_ctypes_get_errobj.error_object_name, align 8, !dbg !1038, !tbaa !1019
  %cmp1 = icmp eq %struct._object* %4, null, !dbg !1040
  br i1 %cmp1, label %if.then.2, label %if.end.7, !dbg !1041

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)), !dbg !1042
  store %struct._object* %call3, %struct._object** @_ctypes_get_errobj.error_object_name, align 8, !dbg !1044, !tbaa !1019
  %5 = load %struct._object*, %struct._object** @_ctypes_get_errobj.error_object_name, align 8, !dbg !1045, !tbaa !1019
  %cmp4 = icmp eq %struct._object* %5, null, !dbg !1047
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1048

if.then.5:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval, !dbg !1049
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33, !dbg !1049

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7, !dbg !1050

if.end.7:                                         ; preds = %if.end.6, %if.end
  %6 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1051, !tbaa !1019
  %7 = load %struct._object*, %struct._object** @_ctypes_get_errobj.error_object_name, align 8, !dbg !1052, !tbaa !1019
  %call8 = call %struct._object* @PyDict_GetItem(%struct._object* %6, %struct._object* %7), !dbg !1053
  store %struct._object* %call8, %struct._object** %errobj, align 8, !dbg !1054, !tbaa !1019
  %8 = load %struct._object*, %struct._object** %errobj, align 8, !dbg !1055, !tbaa !1019
  %tobool = icmp ne %struct._object* %8, null, !dbg !1055
  br i1 %tobool, label %if.then.9, label %if.else, !dbg !1056

if.then.9:                                        ; preds = %if.end.7
  %9 = load %struct._object*, %struct._object** %errobj, align 8, !dbg !1057, !tbaa !1019
  %call10 = call i32 @PyCapsule_IsValid(%struct._object* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)), !dbg !1060
  %tobool11 = icmp ne i32 %call10, 0, !dbg !1060
  br i1 %tobool11, label %if.end.13, label %if.then.12, !dbg !1061

if.then.12:                                       ; preds = %if.then.9
  %10 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1062, !tbaa !1019
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0)), !dbg !1064
  store %struct._object* null, %struct._object** %retval, !dbg !1065
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33, !dbg !1065

if.end.13:                                        ; preds = %if.then.9
  %11 = load %struct._object*, %struct._object** %errobj, align 8, !dbg !1066, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !1067
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1068, !tbaa !1069
  %inc = add i64 %12, 1, !dbg !1068
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1068, !tbaa !1069
  br label %if.end.31, !dbg !1072

if.else:                                          ; preds = %if.end.7
  %13 = bitcast i8** %space to i8*, !dbg !1073
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !1073
  call void @llvm.dbg.declare(metadata i8** %space, metadata !492, metadata !1023), !dbg !1074
  %call14 = call i8* @PyMem_Malloc(i64 8), !dbg !1075
  store i8* %call14, i8** %space, align 8, !dbg !1074, !tbaa !1019
  %14 = load i8*, i8** %space, align 8, !dbg !1076, !tbaa !1019
  %cmp15 = icmp eq i8* %14, null, !dbg !1078
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !1079

if.then.16:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !1080
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1080

if.end.17:                                        ; preds = %if.else
  %15 = load i8*, i8** %space, align 8, !dbg !1081, !tbaa !1019
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 8, i32 1, i1 false), !dbg !1082
  %16 = load i8*, i8** %space, align 8, !dbg !1083, !tbaa !1019
  %call18 = call %struct._object* @PyCapsule_New(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (%struct._object*)* @pymem_destructor), !dbg !1084
  store %struct._object* %call18, %struct._object** %errobj, align 8, !dbg !1085, !tbaa !1019
  %17 = load %struct._object*, %struct._object** %errobj, align 8, !dbg !1086, !tbaa !1019
  %cmp19 = icmp eq %struct._object* %17, null, !dbg !1088
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !1089

if.then.20:                                       ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval, !dbg !1090
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1090

if.end.21:                                        ; preds = %if.end.17
  %18 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1091, !tbaa !1019
  %19 = load %struct._object*, %struct._object** @_ctypes_get_errobj.error_object_name, align 8, !dbg !1092, !tbaa !1019
  %20 = load %struct._object*, %struct._object** %errobj, align 8, !dbg !1093, !tbaa !1019
  %call22 = call i32 @PyDict_SetItem(%struct._object* %18, %struct._object* %19, %struct._object* %20), !dbg !1094
  %cmp23 = icmp eq i32 -1, %call22, !dbg !1095
  br i1 %cmp23, label %if.then.24, label %if.end.30, !dbg !1096

if.then.24:                                       ; preds = %if.end.21
  br label %do.body, !dbg !1097

do.body:                                          ; preds = %if.then.24
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1098
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !1098
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !495, metadata !1023), !dbg !1100
  %22 = load %struct._object*, %struct._object** %errobj, align 8, !dbg !1101, !tbaa !1019
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8, !dbg !1100, !tbaa !1019
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1102, !tbaa !1019
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !1104
  %24 = load i64, i64* %ob_refcnt25, align 8, !dbg !1105, !tbaa !1069
  %dec = add i64 %24, -1, !dbg !1105
  store i64 %dec, i64* %ob_refcnt25, align 8, !dbg !1105, !tbaa !1069
  %cmp26 = icmp ne i64 %dec, 0, !dbg !1106
  br i1 %cmp26, label %if.then.27, label %if.else.28, !dbg !1107

if.then.27:                                       ; preds = %do.body
  br label %if.end.29, !dbg !1108

if.else.28:                                       ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1110, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !1112
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1112, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !1114
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1114, !tbaa !1115
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1119, !tbaa !1019
  call void %27(%struct._object* %28), !dbg !1120
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1121
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !1121
  br label %do.cond, !dbg !1123

do.cond:                                          ; preds = %if.end.29
  br label %do.end, !dbg !1124

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1126
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1126

if.end.30:                                        ; preds = %if.end.21
  store i32 0, i32* %cleanup.dest.slot, !dbg !1127
  br label %cleanup, !dbg !1127

cleanup:                                          ; preds = %if.end.30, %do.end, %if.then.20, %if.then.16
  %30 = bitcast i8** %space to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1128
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %if.end.13
  %31 = load %struct._object*, %struct._object** %errobj, align 8, !dbg !1130, !tbaa !1019
  %call32 = call i8* @PyCapsule_GetPointer(%struct._object* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)), !dbg !1131
  %32 = bitcast i8* %call32 to i32*, !dbg !1132
  %33 = load i32**, i32*** %pspace.addr, align 8, !dbg !1133, !tbaa !1019
  store i32* %32, i32** %33, align 8, !dbg !1134, !tbaa !1019
  %34 = load %struct._object*, %struct._object** %errobj, align 8, !dbg !1135, !tbaa !1019
  store %struct._object* %34, %struct._object** %retval, !dbg !1136
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33, !dbg !1136

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.33

cleanup.33:                                       ; preds = %NewDefault, %if.end.31, %if.then.12, %if.then.5, %if.then
  %35 = bitcast %struct._object** %errobj to i8*, !dbg !1137
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !1137
  %36 = bitcast %struct._object** %dict to i8*, !dbg !1137
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !1137
  %37 = load %struct._object*, %struct._object** %retval, !dbg !1137
  ret %struct._object* %37, !dbg !1137
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._object* @PyThreadState_GetDict() #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyUnicode_InternFromString(i8*) #3

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

declare i32 @PyCapsule_IsValid(%struct._object*, i8*) #3

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct._object* @PyCapsule_New(i8*, i8*, void (%struct._object*)*) #3

; Function Attrs: uwtable
define internal void @pymem_destructor(%struct._object* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  store %struct._object* %ptr, %struct._object** %ptr.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %ptr.addr, metadata !641, metadata !1023), !dbg !1138
  %0 = bitcast i8** %p to i8*, !dbg !1139
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1139
  call void @llvm.dbg.declare(metadata i8** %p, metadata !642, metadata !1023), !dbg !1140
  %1 = load %struct._object*, %struct._object** %ptr.addr, align 8, !dbg !1141, !tbaa !1019
  %call = call i8* @PyCapsule_GetPointer(%struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)), !dbg !1142
  store i8* %call, i8** %p, align 8, !dbg !1140, !tbaa !1019
  %2 = load i8*, i8** %p, align 8, !dbg !1143, !tbaa !1019
  %tobool = icmp ne i8* %2, null, !dbg !1143
  br i1 %tobool, label %if.then, label %if.end, !dbg !1145

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %p, align 8, !dbg !1146, !tbaa !1019
  call void @PyMem_Free(i8* %3), !dbg !1148
  br label %if.end, !dbg !1149

if.end:                                           ; preds = %if.then, %entry
  %4 = bitcast i8** %p to i8*, !dbg !1150
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !1150
  ret void, !dbg !1150
}

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i8* @PyCapsule_GetPointer(%struct._object*, i8*) #3

; Function Attrs: uwtable
define %struct.tagPyCArgObject* @PyCArgObject_new() #0 {
entry:
  %retval = alloca %struct.tagPyCArgObject*, align 8
  %p = alloca %struct.tagPyCArgObject*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.tagPyCArgObject** %p to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1151
  call void @llvm.dbg.declare(metadata %struct.tagPyCArgObject** %p, metadata !503, metadata !1023), !dbg !1152
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @PyCArg_Type), !dbg !1153
  %1 = bitcast %struct._object* %call to %struct.tagPyCArgObject*, !dbg !1154
  store %struct.tagPyCArgObject* %1, %struct.tagPyCArgObject** %p, align 8, !dbg !1155, !tbaa !1019
  %2 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %p, align 8, !dbg !1156, !tbaa !1019
  %cmp = icmp eq %struct.tagPyCArgObject* %2, null, !dbg !1158
  br i1 %cmp, label %if.then, label %if.end, !dbg !1159

if.then:                                          ; preds = %entry
  store %struct.tagPyCArgObject* null, %struct.tagPyCArgObject** %retval, !dbg !1160
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1160

if.end:                                           ; preds = %entry
  %3 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %p, align 8, !dbg !1161, !tbaa !1019
  %pffi_type = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %3, i32 0, i32 1, !dbg !1162
  store %struct._ffi_type* null, %struct._ffi_type** %pffi_type, align 8, !dbg !1163, !tbaa !1164
  %4 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %p, align 8, !dbg !1166, !tbaa !1019
  %tag = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %4, i32 0, i32 2, !dbg !1167
  store i8 0, i8* %tag, align 1, !dbg !1168, !tbaa !1169
  %5 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %p, align 8, !dbg !1170, !tbaa !1019
  %obj = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %5, i32 0, i32 4, !dbg !1171
  store %struct._object* null, %struct._object** %obj, align 8, !dbg !1172, !tbaa !1173
  %6 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %p, align 8, !dbg !1174, !tbaa !1019
  %value = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %6, i32 0, i32 3, !dbg !1175
  %7 = bitcast %union.anon* %value to i8*, !dbg !1176
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 16, i32 16, i1 false), !dbg !1176
  %8 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %p, align 8, !dbg !1177, !tbaa !1019
  store %struct.tagPyCArgObject* %8, %struct.tagPyCArgObject** %retval, !dbg !1178
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1178

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct.tagPyCArgObject** %p to i8*, !dbg !1179
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !1179
  %10 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %retval, !dbg !1179
  ret %struct.tagPyCArgObject* %10, !dbg !1179
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #3

; Function Attrs: uwtable
define internal void @PyCArg_dealloc(%struct.tagPyCArgObject* %self) #0 {
entry:
  %self.addr = alloca %struct.tagPyCArgObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.tagPyCArgObject* %self, %struct.tagPyCArgObject** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct.tagPyCArgObject** %self.addr, metadata !647, metadata !1023), !dbg !1180
  br label %do.body, !dbg !1181

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1182
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1182
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !648, metadata !1023), !dbg !1184
  %1 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1185, !tbaa !1019
  %obj = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %1, i32 0, i32 4, !dbg !1186
  %2 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1186, !tbaa !1173
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1184, !tbaa !1019
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1187, !tbaa !1019
  %cmp = icmp ne %struct._object* %3, null, !dbg !1188
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1189

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !1190

do.body.1:                                        ; preds = %if.then
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1192
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1192
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !650, metadata !1023), !dbg !1194
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1195, !tbaa !1019
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !1194, !tbaa !1019
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1196, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !1198
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1199, !tbaa !1069
  %dec = add i64 %7, -1, !dbg !1199
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1199, !tbaa !1069
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1200
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1201

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !1202

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1204, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1206
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1206, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !1207
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1207, !tbaa !1115
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1208, !tbaa !1019
  call void %10(%struct._object* %11), !dbg !1209
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1210
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !1210
  br label %do.cond, !dbg !1212

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1213

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !1215

if.end.4:                                         ; preds = %do.end, %do.body
  %13 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !1217
  br label %do.end.6, !dbg !1220

do.end.6:                                         ; preds = %if.end.4
  %14 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1221, !tbaa !1019
  %15 = bitcast %struct.tagPyCArgObject* %14 to i8*, !dbg !1221
  call void @PyObject_Free(i8* %15), !dbg !1222
  ret void, !dbg !1223
}

; Function Attrs: uwtable
define internal %struct._object* @PyCArg_repr(%struct.tagPyCArgObject* %self) #0 {
entry:
  %self.addr = alloca %struct.tagPyCArgObject*, align 8
  %buffer = alloca [256 x i8], align 16
  store %struct.tagPyCArgObject* %self, %struct.tagPyCArgObject** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct.tagPyCArgObject** %self.addr, metadata !657, metadata !1023), !dbg !1224
  %0 = bitcast [256 x i8]* %buffer to i8*, !dbg !1225
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !1225
  call void @llvm.dbg.declare(metadata [256 x i8]* %buffer, metadata !658, metadata !1023), !dbg !1226
  %1 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1227, !tbaa !1019
  %tag = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %1, i32 0, i32 2, !dbg !1228
  %2 = load i8, i8* %tag, align 1, !dbg !1228, !tbaa !1169
  %conv = sext i8 %2 to i32, !dbg !1227
  br label %NodeBlock.47

NodeBlock.47:                                     ; preds = %entry
  %Pivot.48 = icmp slt i32 %conv, 99
  br i1 %Pivot.48, label %NodeBlock.19, label %NodeBlock.45

NodeBlock.45:                                     ; preds = %NodeBlock.47
  %Pivot.46 = icmp slt i32 %conv, 105
  br i1 %Pivot.46, label %NodeBlock.29, label %NodeBlock.43

NodeBlock.43:                                     ; preds = %NodeBlock.45
  %Pivot.44 = icmp slt i32 %conv, 113
  br i1 %Pivot.44, label %NodeBlock.35, label %NodeBlock.41

NodeBlock.41:                                     ; preds = %NodeBlock.43
  %Pivot.42 = icmp slt i32 %conv, 122
  br i1 %Pivot.42, label %LeafBlock.37, label %LeafBlock.39

LeafBlock.39:                                     ; preds = %NodeBlock.41
  %SwitchLeaf40 = icmp eq i32 %conv, 122
  br i1 %SwitchLeaf40, label %sw.bb.49, label %NewDefault

LeafBlock.37:                                     ; preds = %NodeBlock.41
  %SwitchLeaf38 = icmp eq i32 %conv, 113
  br i1 %SwitchLeaf38, label %sw.bb.23, label %NewDefault

NodeBlock.35:                                     ; preds = %NodeBlock.43
  %Pivot.36 = icmp slt i32 %conv, 108
  br i1 %Pivot.36, label %LeafBlock.31, label %LeafBlock.33

LeafBlock.33:                                     ; preds = %NodeBlock.35
  %SwitchLeaf34 = icmp eq i32 %conv, 108
  br i1 %SwitchLeaf34, label %sw.bb.17, label %NewDefault

LeafBlock.31:                                     ; preds = %NodeBlock.35
  %SwitchLeaf32 = icmp eq i32 %conv, 105
  br i1 %SwitchLeaf32, label %sw.bb.11, label %NewDefault

NodeBlock.29:                                     ; preds = %NodeBlock.45
  %Pivot.30 = icmp slt i32 %conv, 102
  br i1 %Pivot.30, label %NodeBlock.23, label %NodeBlock.27

NodeBlock.27:                                     ; preds = %NodeBlock.29
  %Pivot.28 = icmp slt i32 %conv, 104
  br i1 %Pivot.28, label %LeafBlock.25, label %sw.bb.4

LeafBlock.25:                                     ; preds = %NodeBlock.27
  %SwitchLeaf26 = icmp eq i32 %conv, 102
  br i1 %SwitchLeaf26, label %sw.bb.35, label %NewDefault

NodeBlock.23:                                     ; preds = %NodeBlock.29
  %Pivot.24 = icmp slt i32 %conv, 100
  br i1 %Pivot.24, label %sw.bb.42, label %LeafBlock.21

LeafBlock.21:                                     ; preds = %NodeBlock.23
  %SwitchLeaf22 = icmp eq i32 %conv, 100
  br i1 %SwitchLeaf22, label %sw.bb.29, label %NewDefault

NodeBlock.19:                                     ; preds = %NodeBlock.47
  %Pivot.20 = icmp slt i32 %conv, 80
  br i1 %Pivot.20, label %NodeBlock.7, label %NodeBlock.17

NodeBlock.17:                                     ; preds = %NodeBlock.19
  %Pivot.18 = icmp slt i32 %conv, 90
  br i1 %Pivot.18, label %NodeBlock.11, label %NodeBlock.15

NodeBlock.15:                                     ; preds = %NodeBlock.17
  %Pivot.16 = icmp slt i32 %conv, 98
  br i1 %Pivot.16, label %LeafBlock.13, label %sw.bb

LeafBlock.13:                                     ; preds = %NodeBlock.15
  %SwitchLeaf14 = icmp eq i32 %conv, 90
  br i1 %SwitchLeaf14, label %sw.bb.49, label %NewDefault

NodeBlock.11:                                     ; preds = %NodeBlock.17
  %Pivot.12 = icmp slt i32 %conv, 81
  br i1 %Pivot.12, label %sw.bb.49, label %LeafBlock.9

LeafBlock.9:                                      ; preds = %NodeBlock.11
  %SwitchLeaf10 = icmp eq i32 %conv, 81
  br i1 %SwitchLeaf10, label %sw.bb.23, label %NewDefault

NodeBlock.7:                                      ; preds = %NodeBlock.19
  %Pivot.8 = icmp slt i32 %conv, 73
  br i1 %Pivot.8, label %NodeBlock, label %NodeBlock.5

NodeBlock.5:                                      ; preds = %NodeBlock.7
  %Pivot.6 = icmp slt i32 %conv, 76
  br i1 %Pivot.6, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock.5
  %SwitchLeaf4 = icmp eq i32 %conv, 76
  br i1 %SwitchLeaf4, label %sw.bb.17, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock.5
  %SwitchLeaf2 = icmp eq i32 %conv, 73
  br i1 %SwitchLeaf2, label %sw.bb.11, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.7
  %Pivot = icmp slt i32 %conv, 72
  br i1 %Pivot, label %LeafBlock, label %sw.bb.4

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %conv, 66
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock.15, %LeafBlock
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0, !dbg !1229
  %3 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1231, !tbaa !1019
  %tag1 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %3, i32 0, i32 2, !dbg !1232
  %4 = load i8, i8* %tag1, align 1, !dbg !1232, !tbaa !1169
  %conv2 = sext i8 %4 to i32, !dbg !1231
  %5 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1233, !tbaa !1019
  %value = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %5, i32 0, i32 3, !dbg !1234
  %b = bitcast %union.anon* %value to i8*, !dbg !1235
  %6 = load i8, i8* %b, align 1, !dbg !1235, !tbaa !1236
  %conv3 = sext i8 %6 to i32, !dbg !1233
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i32 %conv2, i32 %conv3) #2, !dbg !1237
  br label %sw.epilog, !dbg !1238

sw.bb.4:                                          ; preds = %NodeBlock.27, %NodeBlock
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0, !dbg !1239
  %7 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1240, !tbaa !1019
  %tag6 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %7, i32 0, i32 2, !dbg !1241
  %8 = load i8, i8* %tag6, align 1, !dbg !1241, !tbaa !1169
  %conv7 = sext i8 %8 to i32, !dbg !1240
  %9 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1242, !tbaa !1019
  %value8 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %9, i32 0, i32 3, !dbg !1243
  %h = bitcast %union.anon* %value8 to i16*, !dbg !1244
  %10 = load i16, i16* %h, align 2, !dbg !1244, !tbaa !1245
  %conv9 = sext i16 %10 to i32, !dbg !1242
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i32 %conv7, i32 %conv9) #2, !dbg !1247
  br label %sw.epilog, !dbg !1248

sw.bb.11:                                         ; preds = %LeafBlock.31, %LeafBlock.1
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0, !dbg !1249
  %11 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1250, !tbaa !1019
  %tag13 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %11, i32 0, i32 2, !dbg !1251
  %12 = load i8, i8* %tag13, align 1, !dbg !1251, !tbaa !1169
  %conv14 = sext i8 %12 to i32, !dbg !1250
  %13 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1252, !tbaa !1019
  %value15 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %13, i32 0, i32 3, !dbg !1253
  %i = bitcast %union.anon* %value15 to i32*, !dbg !1254
  %14 = load i32, i32* %i, align 4, !dbg !1254, !tbaa !1255
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i32 %conv14, i32 %14) #2, !dbg !1256
  br label %sw.epilog, !dbg !1257

sw.bb.17:                                         ; preds = %LeafBlock.33, %LeafBlock.3
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0, !dbg !1258
  %15 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1259, !tbaa !1019
  %tag19 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %15, i32 0, i32 2, !dbg !1260
  %16 = load i8, i8* %tag19, align 1, !dbg !1260, !tbaa !1169
  %conv20 = sext i8 %16 to i32, !dbg !1259
  %17 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1261, !tbaa !1019
  %value21 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %17, i32 0, i32 3, !dbg !1262
  %l = bitcast %union.anon* %value21 to i64*, !dbg !1263
  %18 = load i64, i64* %l, align 8, !dbg !1263, !tbaa !1264
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i32 %conv20, i64 %18) #2, !dbg !1265
  br label %sw.epilog, !dbg !1266

sw.bb.23:                                         ; preds = %LeafBlock.37, %LeafBlock.9
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0, !dbg !1267
  %19 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1268, !tbaa !1019
  %tag25 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %19, i32 0, i32 2, !dbg !1269
  %20 = load i8, i8* %tag25, align 1, !dbg !1269, !tbaa !1169
  %conv26 = sext i8 %20 to i32, !dbg !1268
  %21 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1270, !tbaa !1019
  %value27 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %21, i32 0, i32 3, !dbg !1271
  %q = bitcast %union.anon* %value27 to i64*, !dbg !1272
  %22 = load i64, i64* %q, align 8, !dbg !1272, !tbaa !1273
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i32 %conv26, i64 %22) #2, !dbg !1275
  br label %sw.epilog, !dbg !1276

sw.bb.29:                                         ; preds = %LeafBlock.21
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0, !dbg !1277
  %23 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1278, !tbaa !1019
  %tag31 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %23, i32 0, i32 2, !dbg !1279
  %24 = load i8, i8* %tag31, align 1, !dbg !1279, !tbaa !1169
  %conv32 = sext i8 %24 to i32, !dbg !1278
  %25 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1280, !tbaa !1019
  %value33 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %25, i32 0, i32 3, !dbg !1281
  %d = bitcast %union.anon* %value33 to double*, !dbg !1282
  %26 = load double, double* %d, align 8, !dbg !1282, !tbaa !1283
  %call34 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i32 %conv32, double %26) #2, !dbg !1285
  br label %sw.epilog, !dbg !1286

sw.bb.35:                                         ; preds = %LeafBlock.25
  %arraydecay36 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0, !dbg !1287
  %27 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1288, !tbaa !1019
  %tag37 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %27, i32 0, i32 2, !dbg !1289
  %28 = load i8, i8* %tag37, align 1, !dbg !1289, !tbaa !1169
  %conv38 = sext i8 %28 to i32, !dbg !1288
  %29 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1290, !tbaa !1019
  %value39 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %29, i32 0, i32 3, !dbg !1291
  %f = bitcast %union.anon* %value39 to float*, !dbg !1292
  %30 = load float, float* %f, align 4, !dbg !1292, !tbaa !1293
  %conv40 = fpext float %30 to double, !dbg !1290
  %call41 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i32 %conv38, double %conv40) #2, !dbg !1295
  br label %sw.epilog, !dbg !1296

sw.bb.42:                                         ; preds = %NodeBlock.23
  %arraydecay43 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0, !dbg !1297
  %31 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1298, !tbaa !1019
  %tag44 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %31, i32 0, i32 2, !dbg !1299
  %32 = load i8, i8* %tag44, align 1, !dbg !1299, !tbaa !1169
  %conv45 = sext i8 %32 to i32, !dbg !1298
  %33 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1300, !tbaa !1019
  %value46 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %33, i32 0, i32 3, !dbg !1301
  %c = bitcast %union.anon* %value46 to i8*, !dbg !1302
  %34 = load i8, i8* %c, align 1, !dbg !1302, !tbaa !1236
  %conv47 = sext i8 %34 to i32, !dbg !1300
  %call48 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0), i32 %conv45, i32 %conv47) #2, !dbg !1303
  br label %sw.epilog, !dbg !1304

sw.bb.49:                                         ; preds = %LeafBlock.39, %LeafBlock.13, %NodeBlock.11
  %arraydecay50 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0, !dbg !1305
  %35 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1306, !tbaa !1019
  %tag51 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %35, i32 0, i32 2, !dbg !1307
  %36 = load i8, i8* %tag51, align 1, !dbg !1307, !tbaa !1169
  %conv52 = sext i8 %36 to i32, !dbg !1306
  %37 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1308, !tbaa !1019
  %value53 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %37, i32 0, i32 3, !dbg !1309
  %p = bitcast %union.anon* %value53 to i8**, !dbg !1310
  %38 = load i8*, i8** %p, align 8, !dbg !1310, !tbaa !1019
  %call54 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i32 %conv52, i8* %38) #2, !dbg !1311
  br label %sw.epilog, !dbg !1312

NewDefault:                                       ; preds = %LeafBlock.39, %LeafBlock.37, %LeafBlock.33, %LeafBlock.31, %LeafBlock.25, %LeafBlock.21, %LeafBlock.13, %LeafBlock.9, %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %arraydecay55 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0, !dbg !1313
  %39 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1314, !tbaa !1019
  %tag56 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %39, i32 0, i32 2, !dbg !1315
  %40 = load i8, i8* %tag56, align 1, !dbg !1315, !tbaa !1169
  %conv57 = sext i8 %40 to i32, !dbg !1314
  %41 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8, !dbg !1316, !tbaa !1019
  %call58 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i32 %conv57, %struct.tagPyCArgObject* %41) #2, !dbg !1317
  br label %sw.epilog, !dbg !1318

sw.epilog:                                        ; preds = %sw.default, %sw.bb.49, %sw.bb.42, %sw.bb.35, %sw.bb.29, %sw.bb.23, %sw.bb.17, %sw.bb.11, %sw.bb.4, %sw.bb
  %arraydecay59 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0, !dbg !1319
  %call60 = call %struct._object* @PyUnicode_FromString(i8* %arraydecay59), !dbg !1320
  %42 = bitcast [256 x i8]* %buffer to i8*, !dbg !1321
  call void @llvm.lifetime.end(i64 256, i8* %42) #2, !dbg !1321
  ret %struct._object* %call60, !dbg !1322
}

; Function Attrs: uwtable
define %struct._ffi_type* @_ctypes_get_ffi_type(%struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._ffi_type*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !508, metadata !1023), !dbg !1323
  %0 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !1324
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1324
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %dict, metadata !509, metadata !1023), !dbg !1325
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1326, !tbaa !1019
  %cmp = icmp eq %struct._object* %1, null, !dbg !1328
  br i1 %cmp, label %if.then, label %if.end, !dbg !1329

if.then:                                          ; preds = %entry
  store %struct._ffi_type* @ffi_type_sint32, %struct._ffi_type** %retval, !dbg !1330
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1330

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1331, !tbaa !1019
  %call = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %2), !dbg !1332
  store %struct.StgDictObject* %call, %struct.StgDictObject** %dict, align 8, !dbg !1333, !tbaa !1019
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1334, !tbaa !1019
  %cmp1 = icmp eq %struct.StgDictObject* %3, null, !dbg !1336
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1337

if.then.2:                                        ; preds = %if.end
  store %struct._ffi_type* @ffi_type_sint32, %struct._ffi_type** %retval, !dbg !1338
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1338

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1339, !tbaa !1019
  %ffi_type_pointer = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %4, i32 0, i32 4, !dbg !1340
  store %struct._ffi_type* %ffi_type_pointer, %struct._ffi_type** %retval, !dbg !1341
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1341

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %5 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !1342
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !1342
  %6 = load %struct._ffi_type*, %struct._ffi_type** %retval, !dbg !1342
  ret %struct._ffi_type* %6, !dbg !1342
}

declare %struct.StgDictObject* @PyType_stgdict(%struct._object*) #3

; Function Attrs: uwtable
define void @_ctypes_extend_error(%struct._object* %exc_class, i8* %fmt, ...) #0 {
entry:
  %exc_class.addr = alloca %struct._object*, align 8
  %fmt.addr = alloca i8*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %tp = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %s = alloca %struct._object*, align 8
  %cls_str = alloca %struct._object*, align 8
  %msg_str = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp32 = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  %_py_xdecref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  %_py_xdecref_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store %struct._object* %exc_class, %struct._object** %exc_class.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %exc_class.addr, metadata !559, metadata !1023), !dbg !1343
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !560, metadata !1023), !dbg !1344
  %0 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !1345
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1345
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !561, metadata !1023), !dbg !1346
  %1 = bitcast %struct._object** %tp to i8*, !dbg !1347
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1347
  call void @llvm.dbg.declare(metadata %struct._object** %tp, metadata !574, metadata !1023), !dbg !1348
  %2 = bitcast %struct._object** %v to i8*, !dbg !1347
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1347
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !575, metadata !1023), !dbg !1349
  %3 = bitcast %struct._object** %tb to i8*, !dbg !1347
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1347
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !576, metadata !1023), !dbg !1350
  %4 = bitcast %struct._object** %s to i8*, !dbg !1347
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1347
  call void @llvm.dbg.declare(metadata %struct._object** %s, metadata !577, metadata !1023), !dbg !1351
  %5 = bitcast %struct._object** %cls_str to i8*, !dbg !1347
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1347
  call void @llvm.dbg.declare(metadata %struct._object** %cls_str, metadata !578, metadata !1023), !dbg !1352
  %6 = bitcast %struct._object** %msg_str to i8*, !dbg !1347
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1347
  call void @llvm.dbg.declare(metadata %struct._object** %msg_str, metadata !579, metadata !1023), !dbg !1353
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1354
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1355
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1355
  %7 = load i8*, i8** %fmt.addr, align 8, !dbg !1356, !tbaa !1019
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1357
  %call = call %struct._object* @PyUnicode_FromFormatV(i8* %7, %struct.__va_list_tag* %arraydecay2), !dbg !1358
  store %struct._object* %call, %struct._object** %s, align 8, !dbg !1359, !tbaa !1019
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1360
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !1361
  call void @llvm.va_end(i8* %arraydecay34), !dbg !1361
  %8 = load %struct._object*, %struct._object** %s, align 8, !dbg !1362, !tbaa !1019
  %tobool = icmp ne %struct._object* %8, null, !dbg !1362
  br i1 %tobool, label %if.end, label %if.then, !dbg !1364

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1365

if.end:                                           ; preds = %entry
  call void @PyErr_Fetch(%struct._object** %tp, %struct._object** %v, %struct._object** %tb), !dbg !1366
  call void @PyErr_NormalizeException(%struct._object** %tp, %struct._object** %v, %struct._object** %tb), !dbg !1367
  %9 = load %struct._object*, %struct._object** %tp, align 8, !dbg !1368, !tbaa !1019
  %call5 = call %struct._object* @PyObject_Str(%struct._object* %9), !dbg !1369
  store %struct._object* %call5, %struct._object** %cls_str, align 8, !dbg !1370, !tbaa !1019
  %10 = load %struct._object*, %struct._object** %cls_str, align 8, !dbg !1371, !tbaa !1019
  %tobool6 = icmp ne %struct._object* %10, null, !dbg !1371
  br i1 %tobool6, label %if.then.7, label %if.else, !dbg !1373

if.then.7:                                        ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %cls_str, align 8, !dbg !1374, !tbaa !1019
  call void @PyUnicode_AppendAndDel(%struct._object** %s, %struct._object* %11), !dbg !1376
  %call8 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)), !dbg !1377
  call void @PyUnicode_AppendAndDel(%struct._object** %s, %struct._object* %call8), !dbg !1378
  %12 = load %struct._object*, %struct._object** %s, align 8, !dbg !1379, !tbaa !1019
  %cmp = icmp eq %struct._object* %12, null, !dbg !1381
  br i1 %cmp, label %if.then.9, label %if.end.10, !dbg !1382

if.then.9:                                        ; preds = %if.then.7
  br label %error, !dbg !1383

if.end.10:                                        ; preds = %if.then.7
  br label %if.end.11, !dbg !1384

if.else:                                          ; preds = %if.end
  call void @PyErr_Clear(), !dbg !1385
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end.10
  %13 = load %struct._object*, %struct._object** %v, align 8, !dbg !1386, !tbaa !1019
  %call12 = call %struct._object* @PyObject_Str(%struct._object* %13), !dbg !1387
  store %struct._object* %call12, %struct._object** %msg_str, align 8, !dbg !1388, !tbaa !1019
  %14 = load %struct._object*, %struct._object** %msg_str, align 8, !dbg !1389, !tbaa !1019
  %tobool13 = icmp ne %struct._object* %14, null, !dbg !1389
  br i1 %tobool13, label %if.then.14, label %if.else.15, !dbg !1391

if.then.14:                                       ; preds = %if.end.11
  %15 = load %struct._object*, %struct._object** %msg_str, align 8, !dbg !1392, !tbaa !1019
  call void @PyUnicode_AppendAndDel(%struct._object** %s, %struct._object* %15), !dbg !1393
  br label %if.end.17, !dbg !1393

if.else.15:                                       ; preds = %if.end.11
  call void @PyErr_Clear(), !dbg !1394
  %call16 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)), !dbg !1396
  call void @PyUnicode_AppendAndDel(%struct._object** %s, %struct._object* %call16), !dbg !1397
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  %16 = load %struct._object*, %struct._object** %s, align 8, !dbg !1398, !tbaa !1019
  %cmp18 = icmp eq %struct._object* %16, null, !dbg !1400
  br i1 %cmp18, label %if.then.19, label %if.end.20, !dbg !1401

if.then.19:                                       ; preds = %if.end.17
  br label %error, !dbg !1402

if.end.20:                                        ; preds = %if.end.17
  %17 = load %struct._object*, %struct._object** %exc_class.addr, align 8, !dbg !1403, !tbaa !1019
  %18 = load %struct._object*, %struct._object** %s, align 8, !dbg !1404, !tbaa !1019
  call void @PyErr_SetObject(%struct._object* %17, %struct._object* %18), !dbg !1405
  br label %error, !dbg !1405

error:                                            ; preds = %if.end.20, %if.then.19, %if.then.9
  br label %do.body, !dbg !1406

do.body:                                          ; preds = %error
  %19 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1407
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !1407
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !580, metadata !1023), !dbg !1409
  %20 = load %struct._object*, %struct._object** %tp, align 8, !dbg !1410, !tbaa !1019
  store %struct._object* %20, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1409, !tbaa !1019
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1411, !tbaa !1019
  %cmp21 = icmp ne %struct._object* %21, null, !dbg !1412
  br i1 %cmp21, label %if.then.22, label %if.end.28, !dbg !1413

if.then.22:                                       ; preds = %do.body
  br label %do.body.23, !dbg !1414

do.body.23:                                       ; preds = %if.then.22
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1416
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !1416
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !582, metadata !1023), !dbg !1418
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1419, !tbaa !1019
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !1418, !tbaa !1019
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1420, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !1422
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !1423, !tbaa !1069
  %dec = add i64 %25, -1, !dbg !1423
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1423, !tbaa !1069
  %cmp24 = icmp ne i64 %dec, 0, !dbg !1424
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !1425

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27, !dbg !1426

if.else.26:                                       ; preds = %do.body.23
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1428, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !1430
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1430, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !1431
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1431, !tbaa !1115
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1432, !tbaa !1019
  call void %28(%struct._object* %29), !dbg !1433
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1434
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1434
  br label %do.cond, !dbg !1436

do.cond:                                          ; preds = %if.end.27
  br label %do.end, !dbg !1437

do.end:                                           ; preds = %do.cond
  br label %if.end.28, !dbg !1439

if.end.28:                                        ; preds = %do.end, %do.body
  %31 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1441
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !1441
  br label %do.cond.29, !dbg !1444

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30, !dbg !1445

do.end.30:                                        ; preds = %do.cond.29
  br label %do.body.31, !dbg !1447

do.body.31:                                       ; preds = %do.end.30
  %32 = bitcast %struct._object** %_py_xdecref_tmp32 to i8*, !dbg !1448
  call void @llvm.lifetime.start(i64 8, i8* %32) #2, !dbg !1448
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp32, metadata !585, metadata !1023), !dbg !1450
  %33 = load %struct._object*, %struct._object** %v, align 8, !dbg !1451, !tbaa !1019
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp32, align 8, !dbg !1450, !tbaa !1019
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp32, align 8, !dbg !1452, !tbaa !1019
  %cmp33 = icmp ne %struct._object* %34, null, !dbg !1453
  br i1 %cmp33, label %if.then.34, label %if.end.47, !dbg !1454

if.then.34:                                       ; preds = %do.body.31
  br label %do.body.35, !dbg !1455

do.body.35:                                       ; preds = %if.then.34
  %35 = bitcast %struct._object** %_py_decref_tmp36 to i8*, !dbg !1457
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !1457
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp36, metadata !587, metadata !1023), !dbg !1459
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp32, align 8, !dbg !1460, !tbaa !1019
  store %struct._object* %36, %struct._object** %_py_decref_tmp36, align 8, !dbg !1459, !tbaa !1019
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8, !dbg !1461, !tbaa !1019
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !1463
  %38 = load i64, i64* %ob_refcnt37, align 8, !dbg !1464, !tbaa !1069
  %dec38 = add i64 %38, -1, !dbg !1464
  store i64 %dec38, i64* %ob_refcnt37, align 8, !dbg !1464, !tbaa !1069
  %cmp39 = icmp ne i64 %dec38, 0, !dbg !1465
  br i1 %cmp39, label %if.then.40, label %if.else.41, !dbg !1466

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44, !dbg !1467

if.else.41:                                       ; preds = %do.body.35
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8, !dbg !1469, !tbaa !1019
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !1471
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8, !dbg !1471, !tbaa !1113
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !1472
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8, !dbg !1472, !tbaa !1115
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8, !dbg !1473, !tbaa !1019
  call void %41(%struct._object* %42), !dbg !1474
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  %43 = bitcast %struct._object** %_py_decref_tmp36 to i8*, !dbg !1475
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !1475
  br label %do.cond.45, !dbg !1477

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46, !dbg !1478

do.end.46:                                        ; preds = %do.cond.45
  br label %if.end.47, !dbg !1480

if.end.47:                                        ; preds = %do.end.46, %do.body.31
  %44 = bitcast %struct._object** %_py_xdecref_tmp32 to i8*, !dbg !1482
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !1482
  br label %do.cond.48, !dbg !1483

do.cond.48:                                       ; preds = %if.end.47
  br label %do.end.49, !dbg !1484

do.end.49:                                        ; preds = %do.cond.48
  br label %do.body.50, !dbg !1486

do.body.50:                                       ; preds = %do.end.49
  %45 = bitcast %struct._object** %_py_xdecref_tmp51 to i8*, !dbg !1487
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !1487
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp51, metadata !590, metadata !1023), !dbg !1489
  %46 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1490, !tbaa !1019
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp51, align 8, !dbg !1489, !tbaa !1019
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp51, align 8, !dbg !1491, !tbaa !1019
  %cmp52 = icmp ne %struct._object* %47, null, !dbg !1492
  br i1 %cmp52, label %if.then.53, label %if.end.66, !dbg !1493

if.then.53:                                       ; preds = %do.body.50
  br label %do.body.54, !dbg !1494

do.body.54:                                       ; preds = %if.then.53
  %48 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !1496
  call void @llvm.lifetime.start(i64 8, i8* %48) #2, !dbg !1496
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp55, metadata !592, metadata !1023), !dbg !1498
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp51, align 8, !dbg !1499, !tbaa !1019
  store %struct._object* %49, %struct._object** %_py_decref_tmp55, align 8, !dbg !1498, !tbaa !1019
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !1500, !tbaa !1019
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0, !dbg !1502
  %51 = load i64, i64* %ob_refcnt56, align 8, !dbg !1503, !tbaa !1069
  %dec57 = add i64 %51, -1, !dbg !1503
  store i64 %dec57, i64* %ob_refcnt56, align 8, !dbg !1503, !tbaa !1069
  %cmp58 = icmp ne i64 %dec57, 0, !dbg !1504
  br i1 %cmp58, label %if.then.59, label %if.else.60, !dbg !1505

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63, !dbg !1506

if.else.60:                                       ; preds = %do.body.54
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !1508, !tbaa !1019
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !1510
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !1510, !tbaa !1113
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4, !dbg !1511
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8, !dbg !1511, !tbaa !1115
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !1512, !tbaa !1019
  call void %54(%struct._object* %55), !dbg !1513
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  %56 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !1514
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !1514
  br label %do.cond.64, !dbg !1516

do.cond.64:                                       ; preds = %if.end.63
  br label %do.end.65, !dbg !1517

do.end.65:                                        ; preds = %do.cond.64
  br label %if.end.66, !dbg !1519

if.end.66:                                        ; preds = %do.end.65, %do.body.50
  %57 = bitcast %struct._object** %_py_xdecref_tmp51 to i8*, !dbg !1521
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !1521
  br label %do.cond.67, !dbg !1522

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68, !dbg !1523

do.end.68:                                        ; preds = %do.cond.67
  br label %do.body.69, !dbg !1525

do.body.69:                                       ; preds = %do.end.68
  %58 = bitcast %struct._object** %_py_xdecref_tmp70 to i8*, !dbg !1526
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !1526
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp70, metadata !595, metadata !1023), !dbg !1528
  %59 = load %struct._object*, %struct._object** %s, align 8, !dbg !1529, !tbaa !1019
  store %struct._object* %59, %struct._object** %_py_xdecref_tmp70, align 8, !dbg !1528, !tbaa !1019
  %60 = load %struct._object*, %struct._object** %_py_xdecref_tmp70, align 8, !dbg !1530, !tbaa !1019
  %cmp71 = icmp ne %struct._object* %60, null, !dbg !1531
  br i1 %cmp71, label %if.then.72, label %if.end.85, !dbg !1532

if.then.72:                                       ; preds = %do.body.69
  br label %do.body.73, !dbg !1533

do.body.73:                                       ; preds = %if.then.72
  %61 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1535
  call void @llvm.lifetime.start(i64 8, i8* %61) #2, !dbg !1535
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp74, metadata !597, metadata !1023), !dbg !1537
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp70, align 8, !dbg !1538, !tbaa !1019
  store %struct._object* %62, %struct._object** %_py_decref_tmp74, align 8, !dbg !1537, !tbaa !1019
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1539, !tbaa !1019
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0, !dbg !1541
  %64 = load i64, i64* %ob_refcnt75, align 8, !dbg !1542, !tbaa !1069
  %dec76 = add i64 %64, -1, !dbg !1542
  store i64 %dec76, i64* %ob_refcnt75, align 8, !dbg !1542, !tbaa !1069
  %cmp77 = icmp ne i64 %dec76, 0, !dbg !1543
  br i1 %cmp77, label %if.then.78, label %if.else.79, !dbg !1544

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82, !dbg !1545

if.else.79:                                       ; preds = %do.body.73
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1547, !tbaa !1019
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1, !dbg !1549
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8, !dbg !1549, !tbaa !1113
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4, !dbg !1550
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8, !dbg !1550, !tbaa !1115
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1551, !tbaa !1019
  call void %67(%struct._object* %68), !dbg !1552
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  %69 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1553
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !1553
  br label %do.cond.83, !dbg !1555

do.cond.83:                                       ; preds = %if.end.82
  br label %do.end.84, !dbg !1556

do.end.84:                                        ; preds = %do.cond.83
  br label %if.end.85, !dbg !1558

if.end.85:                                        ; preds = %do.end.84, %do.body.69
  %70 = bitcast %struct._object** %_py_xdecref_tmp70 to i8*, !dbg !1560
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !1560
  br label %do.cond.86, !dbg !1561

do.cond.86:                                       ; preds = %if.end.85
  br label %do.end.87, !dbg !1562

do.end.87:                                        ; preds = %do.cond.86
  store i32 0, i32* %cleanup.dest.slot, !dbg !1564
  br label %cleanup, !dbg !1564

cleanup:                                          ; preds = %do.end.87, %if.then
  %71 = bitcast %struct._object** %msg_str to i8*, !dbg !1565
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !1565
  %72 = bitcast %struct._object** %cls_str to i8*, !dbg !1565
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !1565
  %73 = bitcast %struct._object** %s to i8*, !dbg !1565
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !1565
  %74 = bitcast %struct._object** %tb to i8*, !dbg !1565
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !1565
  %75 = bitcast %struct._object** %v to i8*, !dbg !1565
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !1565
  %76 = bitcast %struct._object** %tp to i8*, !dbg !1565
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !1565
  %77 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !1565
  call void @llvm.lifetime.end(i64 24, i8* %77) #2, !dbg !1565
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %cleanup
  ret void, !dbg !1564

unreachable:                                      ; No predecessors!
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare %struct._object* @PyUnicode_FromFormatV(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #3

declare void @PyErr_NormalizeException(%struct._object**, %struct._object**, %struct._object**) #3

declare %struct._object* @PyObject_Str(%struct._object*) #3

declare void @PyUnicode_AppendAndDel(%struct._object**, %struct._object*) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare void @PyErr_Clear() #3

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #3

; Function Attrs: uwtable
define %struct._object* @_ctypes_callproc(i32 ()* %pProc, %struct._object* %argtuple, i32 %flags, %struct._object* %argtypes, %struct._object* %restype, %struct._object* %checker) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pProc.addr = alloca i32 ()*, align 8
  %argtuple.addr = alloca %struct._object*, align 8
  %flags.addr = alloca i32, align 4
  %argtypes.addr = alloca %struct._object*, align 8
  %restype.addr = alloca %struct._object*, align 8
  %checker.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %argcount = alloca i64, align 8
  %argtype_count = alloca i64, align 8
  %resbuf = alloca i8*, align 8
  %args = alloca %struct.argument*, align 8
  %pa = alloca %struct.argument*, align 8
  %atypes = alloca %struct._ffi_type**, align 8
  %rtype = alloca %struct._ffi_type*, align 8
  %avalues = alloca i8**, align 8
  %retval1 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %converter = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp90 = alloca %struct._object*, align 8
  store i32 ()* %pProc, i32 ()** %pProc.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata i32 ()** %pProc.addr, metadata !604, metadata !1023), !dbg !1567
  store %struct._object* %argtuple, %struct._object** %argtuple.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %argtuple.addr, metadata !605, metadata !1023), !dbg !1568
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !1255
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !606, metadata !1023), !dbg !1569
  store %struct._object* %argtypes, %struct._object** %argtypes.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %argtypes.addr, metadata !607, metadata !1023), !dbg !1570
  store %struct._object* %restype, %struct._object** %restype.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %restype.addr, metadata !608, metadata !1023), !dbg !1571
  store %struct._object* %checker, %struct._object** %checker.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %checker.addr, metadata !609, metadata !1023), !dbg !1572
  %0 = bitcast i64* %i to i8*, !dbg !1573
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1573
  call void @llvm.dbg.declare(metadata i64* %i, metadata !610, metadata !1023), !dbg !1574
  %1 = bitcast i64* %n to i8*, !dbg !1573
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1573
  call void @llvm.dbg.declare(metadata i64* %n, metadata !611, metadata !1023), !dbg !1575
  %2 = bitcast i64* %argcount to i8*, !dbg !1573
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1573
  call void @llvm.dbg.declare(metadata i64* %argcount, metadata !612, metadata !1023), !dbg !1576
  %3 = bitcast i64* %argtype_count to i8*, !dbg !1573
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1573
  call void @llvm.dbg.declare(metadata i64* %argtype_count, metadata !613, metadata !1023), !dbg !1577
  %4 = bitcast i8** %resbuf to i8*, !dbg !1578
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1578
  call void @llvm.dbg.declare(metadata i8** %resbuf, metadata !614, metadata !1023), !dbg !1579
  %5 = bitcast %struct.argument** %args to i8*, !dbg !1580
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1580
  call void @llvm.dbg.declare(metadata %struct.argument** %args, metadata !615, metadata !1023), !dbg !1581
  %6 = bitcast %struct.argument** %pa to i8*, !dbg !1580
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1580
  call void @llvm.dbg.declare(metadata %struct.argument** %pa, metadata !616, metadata !1023), !dbg !1582
  %7 = bitcast %struct._ffi_type*** %atypes to i8*, !dbg !1583
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1583
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %atypes, metadata !617, metadata !1023), !dbg !1584
  %8 = bitcast %struct._ffi_type** %rtype to i8*, !dbg !1585
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1585
  call void @llvm.dbg.declare(metadata %struct._ffi_type** %rtype, metadata !618, metadata !1023), !dbg !1586
  %9 = bitcast i8*** %avalues to i8*, !dbg !1587
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1587
  call void @llvm.dbg.declare(metadata i8*** %avalues, metadata !619, metadata !1023), !dbg !1588
  %10 = bitcast %struct._object** %retval1 to i8*, !dbg !1589
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1589
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !620, metadata !1023), !dbg !1590
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !1590, !tbaa !1019
  %11 = load %struct._object*, %struct._object** %argtuple.addr, align 8, !dbg !1591, !tbaa !1019
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*, !dbg !1592
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1, !dbg !1593
  %13 = load i64, i64* %ob_size, align 8, !dbg !1593, !tbaa !1594
  store i64 %13, i64* %argcount, align 8, !dbg !1595, !tbaa !1264
  store i64 %13, i64* %n, align 8, !dbg !1596, !tbaa !1264
  %14 = load i64, i64* %argcount, align 8, !dbg !1597, !tbaa !1264
  %mul = mul i64 32, %14, !dbg !1598
  %15 = alloca i8, i64 %mul, !dbg !1599
  %16 = bitcast i8* %15 to %struct.argument*, !dbg !1600
  store %struct.argument* %16, %struct.argument** %args, align 8, !dbg !1601, !tbaa !1019
  %17 = load %struct.argument*, %struct.argument** %args, align 8, !dbg !1602, !tbaa !1019
  %tobool = icmp ne %struct.argument* %17, null, !dbg !1602
  br i1 %tobool, label %if.end, label %if.then, !dbg !1604

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !1605
  store %struct._object* null, %struct._object** %retval, !dbg !1607
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108, !dbg !1607

if.end:                                           ; preds = %entry
  %18 = load %struct.argument*, %struct.argument** %args, align 8, !dbg !1608, !tbaa !1019
  %19 = bitcast %struct.argument* %18 to i8*, !dbg !1609
  %20 = load i64, i64* %argcount, align 8, !dbg !1610, !tbaa !1264
  %mul2 = mul i64 32, %20, !dbg !1611
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 %mul2, i32 16, i1 false), !dbg !1609
  %21 = load %struct._object*, %struct._object** %argtypes.addr, align 8, !dbg !1612, !tbaa !1019
  %tobool3 = icmp ne %struct._object* %21, null, !dbg !1612
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !1612

cond.true:                                        ; preds = %if.end
  %22 = load %struct._object*, %struct._object** %argtypes.addr, align 8, !dbg !1613, !tbaa !1019
  %23 = bitcast %struct._object* %22 to %struct.PyVarObject*, !dbg !1615
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1, !dbg !1616
  %24 = load i64, i64* %ob_size4, align 8, !dbg !1616, !tbaa !1594
  br label %cond.end, !dbg !1612

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1617

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %24, %cond.true ], [ 0, %cond.false ], !dbg !1612
  store i64 %cond, i64* %argtype_count, align 8, !dbg !1619, !tbaa !1264
  %25 = load %struct.argument*, %struct.argument** %args, align 8, !dbg !1622, !tbaa !1019
  %arrayidx = getelementptr %struct.argument, %struct.argument* %25, i64 0, !dbg !1622
  store %struct.argument* %arrayidx, %struct.argument** %pa, align 8, !dbg !1623, !tbaa !1019
  store i64 0, i64* %i, align 8, !dbg !1624, !tbaa !1264
  br label %for.cond, !dbg !1625

for.cond:                                         ; preds = %for.inc, %cond.end
  %26 = load i64, i64* %i, align 8, !dbg !1626, !tbaa !1264
  %27 = load i64, i64* %n, align 8, !dbg !1629, !tbaa !1264
  %cmp = icmp slt i64 %26, %27, !dbg !1630
  br i1 %cmp, label %for.body, label %for.end, !dbg !1631

for.body:                                         ; preds = %for.cond
  %28 = bitcast %struct._object** %converter to i8*, !dbg !1632
  call void @llvm.lifetime.start(i64 8, i8* %28) #2, !dbg !1632
  call void @llvm.dbg.declare(metadata %struct._object** %converter, metadata !621, metadata !1023), !dbg !1633
  %29 = bitcast %struct._object** %arg to i8*, !dbg !1634
  call void @llvm.lifetime.start(i64 8, i8* %29) #2, !dbg !1634
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !625, metadata !1023), !dbg !1635
  %30 = bitcast i32* %err to i8*, !dbg !1636
  call void @llvm.lifetime.start(i64 4, i8* %30) #2, !dbg !1636
  call void @llvm.dbg.declare(metadata i32* %err, metadata !626, metadata !1023), !dbg !1637
  %31 = load i64, i64* %i, align 8, !dbg !1638, !tbaa !1264
  %32 = load %struct._object*, %struct._object** %argtuple.addr, align 8, !dbg !1639, !tbaa !1019
  %33 = bitcast %struct._object* %32 to %struct.PyTupleObject*, !dbg !1640
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %33, i32 0, i32 1, !dbg !1641
  %arrayidx5 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %31, !dbg !1642
  %34 = load %struct._object*, %struct._object** %arrayidx5, align 8, !dbg !1642, !tbaa !1019
  store %struct._object* %34, %struct._object** %arg, align 8, !dbg !1643, !tbaa !1019
  %35 = load %struct._object*, %struct._object** %argtypes.addr, align 8, !dbg !1644, !tbaa !1019
  %tobool6 = icmp ne %struct._object* %35, null, !dbg !1644
  br i1 %tobool6, label %land.lhs.true, label %if.else.24, !dbg !1645

land.lhs.true:                                    ; preds = %for.body
  %36 = load i64, i64* %argtype_count, align 8, !dbg !1646, !tbaa !1264
  %37 = load i64, i64* %i, align 8, !dbg !1648, !tbaa !1264
  %cmp7 = icmp sgt i64 %36, %37, !dbg !1649
  br i1 %cmp7, label %if.then.8, label %if.else.24, !dbg !1650

if.then.8:                                        ; preds = %land.lhs.true
  %38 = bitcast %struct._object** %v to i8*, !dbg !1651
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !1651
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !627, metadata !1023), !dbg !1652
  %39 = load i64, i64* %i, align 8, !dbg !1653, !tbaa !1264
  %40 = load %struct._object*, %struct._object** %argtypes.addr, align 8, !dbg !1654, !tbaa !1019
  %41 = bitcast %struct._object* %40 to %struct.PyTupleObject*, !dbg !1655
  %ob_item9 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %41, i32 0, i32 1, !dbg !1656
  %arrayidx10 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item9, i32 0, i64 %39, !dbg !1657
  %42 = load %struct._object*, %struct._object** %arrayidx10, align 8, !dbg !1657, !tbaa !1019
  store %struct._object* %42, %struct._object** %converter, align 8, !dbg !1658, !tbaa !1019
  %43 = load %struct._object*, %struct._object** %converter, align 8, !dbg !1659, !tbaa !1019
  %44 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1660, !tbaa !1019
  %call11 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %43, %struct._object* %44, i8* null), !dbg !1661
  store %struct._object* %call11, %struct._object** %v, align 8, !dbg !1662, !tbaa !1019
  %45 = load %struct._object*, %struct._object** %v, align 8, !dbg !1663, !tbaa !1019
  %cmp12 = icmp eq %struct._object* %45, null, !dbg !1665
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1666

if.then.13:                                       ; preds = %if.then.8
  %46 = load %struct._object*, %struct._object** @PyExc_ArgError, align 8, !dbg !1667, !tbaa !1019
  %47 = load i64, i64* %i, align 8, !dbg !1669, !tbaa !1264
  %add = add i64 %47, 1, !dbg !1670
  call void (%struct._object*, i8*, ...) @_ctypes_extend_error(%struct._object* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 %add), !dbg !1671
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1672

if.end.14:                                        ; preds = %if.then.8
  %48 = load %struct._object*, %struct._object** %v, align 8, !dbg !1673, !tbaa !1019
  %49 = load i64, i64* %i, align 8, !dbg !1674, !tbaa !1264
  %add15 = add i64 %49, 1, !dbg !1675
  %50 = load %struct.argument*, %struct.argument** %pa, align 8, !dbg !1676, !tbaa !1019
  %call16 = call i32 @ConvParam(%struct._object* %48, i64 %add15, %struct.argument* %50), !dbg !1677
  store i32 %call16, i32* %err, align 4, !dbg !1678, !tbaa !1255
  br label %do.body, !dbg !1679

do.body:                                          ; preds = %if.end.14
  %51 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1680
  call void @llvm.lifetime.start(i64 8, i8* %51) #2, !dbg !1680
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !630, metadata !1023), !dbg !1682
  %52 = load %struct._object*, %struct._object** %v, align 8, !dbg !1683, !tbaa !1019
  store %struct._object* %52, %struct._object** %_py_decref_tmp, align 8, !dbg !1682, !tbaa !1019
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1684, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !1686
  %54 = load i64, i64* %ob_refcnt, align 8, !dbg !1687, !tbaa !1069
  %dec = add i64 %54, -1, !dbg !1687
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1687, !tbaa !1069
  %cmp17 = icmp ne i64 %dec, 0, !dbg !1688
  br i1 %cmp17, label %if.then.18, label %if.else, !dbg !1689

if.then.18:                                       ; preds = %do.body
  br label %if.end.19, !dbg !1690

if.else:                                          ; preds = %do.body
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1692, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1, !dbg !1694
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1694, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4, !dbg !1695
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1695, !tbaa !1115
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1696, !tbaa !1019
  call void %57(%struct._object* %58), !dbg !1697
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  %59 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1698
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !1698
  br label %do.cond, !dbg !1700

do.cond:                                          ; preds = %if.end.19
  br label %do.end, !dbg !1701

do.end:                                           ; preds = %do.cond
  %60 = load i32, i32* %err, align 4, !dbg !1703, !tbaa !1255
  %cmp20 = icmp eq i32 -1, %60, !dbg !1705
  br i1 %cmp20, label %if.then.21, label %if.end.23, !dbg !1706

if.then.21:                                       ; preds = %do.end
  %61 = load %struct._object*, %struct._object** @PyExc_ArgError, align 8, !dbg !1707, !tbaa !1019
  %62 = load i64, i64* %i, align 8, !dbg !1709, !tbaa !1264
  %add22 = add i64 %62, 1, !dbg !1710
  call void (%struct._object*, i8*, ...) @_ctypes_extend_error(%struct._object* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 %add22), !dbg !1711
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1712

if.end.23:                                        ; preds = %do.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !1713
  br label %cleanup, !dbg !1713

cleanup:                                          ; preds = %if.end.23, %if.then.21, %if.then.13
  %63 = bitcast %struct._object** %v to i8*, !dbg !1714
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !1714
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.31, !dbg !1715

if.else.24:                                       ; preds = %land.lhs.true, %for.body
  %64 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1716, !tbaa !1019
  %65 = load i64, i64* %i, align 8, !dbg !1718, !tbaa !1264
  %add25 = add i64 %65, 1, !dbg !1719
  %66 = load %struct.argument*, %struct.argument** %pa, align 8, !dbg !1720, !tbaa !1019
  %call26 = call i32 @ConvParam(%struct._object* %64, i64 %add25, %struct.argument* %66), !dbg !1721
  store i32 %call26, i32* %err, align 4, !dbg !1722, !tbaa !1255
  %67 = load i32, i32* %err, align 4, !dbg !1723, !tbaa !1255
  %cmp27 = icmp eq i32 -1, %67, !dbg !1725
  br i1 %cmp27, label %if.then.28, label %if.end.30, !dbg !1726

if.then.28:                                       ; preds = %if.else.24
  %68 = load %struct._object*, %struct._object** @PyExc_ArgError, align 8, !dbg !1727, !tbaa !1019
  %69 = load i64, i64* %i, align 8, !dbg !1729, !tbaa !1264
  %add29 = add i64 %69, 1, !dbg !1730
  call void (%struct._object*, i8*, ...) @_ctypes_extend_error(%struct._object* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 %add29), !dbg !1731
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.32, !dbg !1732

if.end.30:                                        ; preds = %if.else.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot, !dbg !1733
  br label %cleanup.32, !dbg !1733

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.32

cleanup.32:                                       ; preds = %NewDefault, %if.end.31, %if.then.28
  %70 = bitcast i32* %err to i8*, !dbg !1734
  call void @llvm.lifetime.end(i64 4, i8* %70) #2, !dbg !1734
  %71 = bitcast %struct._object** %arg to i8*, !dbg !1734
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !1734
  %72 = bitcast %struct._object** %converter to i8*, !dbg !1734
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !1734
  %cleanup.dest.35 = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup.32
  %Pivot = icmp slt i32 %cleanup.dest.35, 5
  br i1 %Pivot, label %LeafBlock.2, label %LeafBlock.4

LeafBlock.4:                                      ; preds = %NodeBlock
  %SwitchLeaf5 = icmp eq i32 %cleanup.dest.35, 5
  br i1 %SwitchLeaf5, label %cleanup.79, label %NewDefault.1

LeafBlock.2:                                      ; preds = %NodeBlock
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.35, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.36, label %NewDefault.1

cleanup.cont.36:                                  ; preds = %LeafBlock.2
  br label %for.inc, !dbg !1735

for.inc:                                          ; preds = %cleanup.cont.36
  %73 = load i64, i64* %i, align 8, !dbg !1736, !tbaa !1264
  %inc = add i64 %73, 1, !dbg !1736
  store i64 %inc, i64* %i, align 8, !dbg !1736, !tbaa !1264
  %74 = load %struct.argument*, %struct.argument** %pa, align 8, !dbg !1737, !tbaa !1019
  %incdec.ptr = getelementptr %struct.argument, %struct.argument* %74, i32 1, !dbg !1737
  store %struct.argument* %incdec.ptr, %struct.argument** %pa, align 8, !dbg !1737, !tbaa !1019
  br label %for.cond, !dbg !1738

for.end:                                          ; preds = %for.cond
  %75 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !1739, !tbaa !1019
  %call37 = call %struct._ffi_type* @_ctypes_get_ffi_type(%struct._object* %75), !dbg !1740
  store %struct._ffi_type* %call37, %struct._ffi_type** %rtype, align 8, !dbg !1741, !tbaa !1019
  %76 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8, !dbg !1742, !tbaa !1019
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %76, i32 0, i32 0, !dbg !1743
  %77 = load i64, i64* %size, align 8, !dbg !1743, !tbaa !1744
  %cmp38 = icmp ugt i64 %77, 8, !dbg !1746
  br i1 %cmp38, label %cond.true.39, label %cond.false.41, !dbg !1747

cond.true.39:                                     ; preds = %for.end
  %78 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8, !dbg !1748, !tbaa !1019
  %size40 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %78, i32 0, i32 0, !dbg !1749
  %79 = load i64, i64* %size40, align 8, !dbg !1749, !tbaa !1744
  br label %cond.end.42, !dbg !1747

cond.false.41:                                    ; preds = %for.end
  br label %cond.end.42, !dbg !1750

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.39
  %cond43 = phi i64 [ %79, %cond.true.39 ], [ 8, %cond.false.41 ], !dbg !1747
  %80 = alloca i8, i64 %cond43, !dbg !1751
  store i8* %80, i8** %resbuf, align 8, !dbg !1752, !tbaa !1019
  %81 = load i64, i64* %argcount, align 8, !dbg !1753, !tbaa !1264
  %mul44 = mul i64 8, %81, !dbg !1754
  %82 = alloca i8, i64 %mul44, !dbg !1755
  %83 = bitcast i8* %82 to i8**, !dbg !1756
  store i8** %83, i8*** %avalues, align 8, !dbg !1757, !tbaa !1019
  %84 = load i64, i64* %argcount, align 8, !dbg !1758, !tbaa !1264
  %mul45 = mul i64 8, %84, !dbg !1759
  %85 = alloca i8, i64 %mul45, !dbg !1760
  %86 = bitcast i8* %85 to %struct._ffi_type**, !dbg !1761
  store %struct._ffi_type** %86, %struct._ffi_type*** %atypes, align 8, !dbg !1762, !tbaa !1019
  %87 = load i8*, i8** %resbuf, align 8, !dbg !1763, !tbaa !1019
  %tobool46 = icmp ne i8* %87, null, !dbg !1763
  br i1 %tobool46, label %lor.lhs.false, label %if.then.50, !dbg !1765

lor.lhs.false:                                    ; preds = %cond.end.42
  %88 = load i8**, i8*** %avalues, align 8, !dbg !1766, !tbaa !1019
  %tobool47 = icmp ne i8** %88, null, !dbg !1766
  br i1 %tobool47, label %lor.lhs.false.48, label %if.then.50, !dbg !1768

lor.lhs.false.48:                                 ; preds = %lor.lhs.false
  %89 = load %struct._ffi_type**, %struct._ffi_type*** %atypes, align 8, !dbg !1769, !tbaa !1019
  %tobool49 = icmp ne %struct._ffi_type** %89, null, !dbg !1769
  br i1 %tobool49, label %if.end.52, label %if.then.50, !dbg !1771

if.then.50:                                       ; preds = %lor.lhs.false.48, %lor.lhs.false, %cond.end.42
  %call51 = call %struct._object* @PyErr_NoMemory(), !dbg !1772
  br label %cleanup.79, !dbg !1774

if.end.52:                                        ; preds = %lor.lhs.false.48
  store i64 0, i64* %i, align 8, !dbg !1775, !tbaa !1264
  br label %for.cond.53, !dbg !1777

for.cond.53:                                      ; preds = %for.inc.69, %if.end.52
  %90 = load i64, i64* %i, align 8, !dbg !1778, !tbaa !1264
  %91 = load i64, i64* %argcount, align 8, !dbg !1782, !tbaa !1264
  %cmp54 = icmp slt i64 %90, %91, !dbg !1783
  br i1 %cmp54, label %for.body.55, label %for.end.71, !dbg !1784

for.body.55:                                      ; preds = %for.cond.53
  %92 = load i64, i64* %i, align 8, !dbg !1785, !tbaa !1264
  %93 = load %struct.argument*, %struct.argument** %args, align 8, !dbg !1787, !tbaa !1019
  %arrayidx56 = getelementptr %struct.argument, %struct.argument* %93, i64 %92, !dbg !1787
  %ffi_type = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx56, i32 0, i32 0, !dbg !1788
  %94 = load %struct._ffi_type*, %struct._ffi_type** %ffi_type, align 8, !dbg !1788, !tbaa !1789
  %95 = load i64, i64* %i, align 8, !dbg !1791, !tbaa !1264
  %96 = load %struct._ffi_type**, %struct._ffi_type*** %atypes, align 8, !dbg !1792, !tbaa !1019
  %arrayidx57 = getelementptr %struct._ffi_type*, %struct._ffi_type** %96, i64 %95, !dbg !1792
  store %struct._ffi_type* %94, %struct._ffi_type** %arrayidx57, align 8, !dbg !1793, !tbaa !1019
  %97 = load i64, i64* %i, align 8, !dbg !1794, !tbaa !1264
  %98 = load %struct._ffi_type**, %struct._ffi_type*** %atypes, align 8, !dbg !1796, !tbaa !1019
  %arrayidx58 = getelementptr %struct._ffi_type*, %struct._ffi_type** %98, i64 %97, !dbg !1796
  %99 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx58, align 8, !dbg !1796, !tbaa !1019
  %type = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %99, i32 0, i32 2, !dbg !1797
  %100 = load i16, i16* %type, align 2, !dbg !1797, !tbaa !1798
  %conv = zext i16 %100 to i32, !dbg !1796
  %cmp59 = icmp eq i32 %conv, 13, !dbg !1799
  br i1 %cmp59, label %if.then.61, label %if.else.64, !dbg !1800

if.then.61:                                       ; preds = %for.body.55
  %101 = load i64, i64* %i, align 8, !dbg !1801, !tbaa !1264
  %102 = load %struct.argument*, %struct.argument** %args, align 8, !dbg !1802, !tbaa !1019
  %arrayidx62 = getelementptr %struct.argument, %struct.argument* %102, i64 %101, !dbg !1802
  %value = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx62, i32 0, i32 2, !dbg !1803
  %p = bitcast %union.result* %value to i8**, !dbg !1804
  %103 = load i8*, i8** %p, align 8, !dbg !1804, !tbaa !1019
  %104 = load i64, i64* %i, align 8, !dbg !1805, !tbaa !1264
  %105 = load i8**, i8*** %avalues, align 8, !dbg !1806, !tbaa !1019
  %arrayidx63 = getelementptr i8*, i8** %105, i64 %104, !dbg !1806
  store i8* %103, i8** %arrayidx63, align 8, !dbg !1807, !tbaa !1019
  br label %if.end.68, !dbg !1806

if.else.64:                                       ; preds = %for.body.55
  %106 = load i64, i64* %i, align 8, !dbg !1808, !tbaa !1264
  %107 = load %struct.argument*, %struct.argument** %args, align 8, !dbg !1809, !tbaa !1019
  %arrayidx65 = getelementptr %struct.argument, %struct.argument* %107, i64 %106, !dbg !1809
  %value66 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx65, i32 0, i32 2, !dbg !1810
  %108 = bitcast %union.result* %value66 to i8*, !dbg !1811
  %109 = load i64, i64* %i, align 8, !dbg !1812, !tbaa !1264
  %110 = load i8**, i8*** %avalues, align 8, !dbg !1813, !tbaa !1019
  %arrayidx67 = getelementptr i8*, i8** %110, i64 %109, !dbg !1813
  store i8* %108, i8** %arrayidx67, align 8, !dbg !1814, !tbaa !1019
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.64, %if.then.61
  br label %for.inc.69, !dbg !1815

for.inc.69:                                       ; preds = %if.end.68
  %111 = load i64, i64* %i, align 8, !dbg !1816, !tbaa !1264
  %inc70 = add i64 %111, 1, !dbg !1816
  store i64 %inc70, i64* %i, align 8, !dbg !1816, !tbaa !1264
  br label %for.cond.53, !dbg !1817

for.end.71:                                       ; preds = %for.cond.53
  %112 = load i32, i32* %flags.addr, align 4, !dbg !1818, !tbaa !1255
  %113 = load i32 ()*, i32 ()** %pProc.addr, align 8, !dbg !1820, !tbaa !1019
  %114 = load i8**, i8*** %avalues, align 8, !dbg !1821, !tbaa !1019
  %115 = load %struct._ffi_type**, %struct._ffi_type*** %atypes, align 8, !dbg !1822, !tbaa !1019
  %116 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8, !dbg !1823, !tbaa !1019
  %117 = load i8*, i8** %resbuf, align 8, !dbg !1824, !tbaa !1019
  %118 = load i64, i64* %argcount, align 8, !dbg !1825, !tbaa !1264
  %conv72 = trunc i64 %118 to i32, !dbg !1826
  %call73 = call i32 @_call_function_pointer(i32 %112, i32 ()* %113, i8** %114, %struct._ffi_type** %115, %struct._ffi_type* %116, i8* %117, i32 %conv72), !dbg !1827
  %cmp74 = icmp eq i32 -1, %call73, !dbg !1828
  br i1 %cmp74, label %if.then.76, label %if.end.77, !dbg !1829

if.then.76:                                       ; preds = %for.end.71
  br label %cleanup.79, !dbg !1830

if.end.77:                                        ; preds = %for.end.71
  %119 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !1831, !tbaa !1019
  %120 = load i8*, i8** %resbuf, align 8, !dbg !1832, !tbaa !1019
  %121 = load %struct._object*, %struct._object** %checker.addr, align 8, !dbg !1833, !tbaa !1019
  %call78 = call %struct._object* @GetResult(%struct._object* %119, i8* %120, %struct._object* %121), !dbg !1834
  store %struct._object* %call78, %struct._object** %retval1, align 8, !dbg !1835, !tbaa !1019
  br label %cleanup.79, !dbg !1836

cleanup.79:                                       ; preds = %LeafBlock.4, %if.end.77, %if.then.76, %if.then.50
  store i64 0, i64* %i, align 8, !dbg !1837, !tbaa !1264
  br label %for.cond.80, !dbg !1838

for.cond.80:                                      ; preds = %for.inc.105, %cleanup.79
  %122 = load i64, i64* %i, align 8, !dbg !1839, !tbaa !1264
  %123 = load i64, i64* %argcount, align 8, !dbg !1842, !tbaa !1264
  %cmp81 = icmp slt i64 %122, %123, !dbg !1843
  br i1 %cmp81, label %for.body.83, label %for.end.107, !dbg !1844

for.body.83:                                      ; preds = %for.cond.80
  br label %do.body.84, !dbg !1845

do.body.84:                                       ; preds = %for.body.83
  %124 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1846
  call void @llvm.lifetime.start(i64 8, i8* %124) #2, !dbg !1846
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !632, metadata !1023), !dbg !1848
  %125 = load i64, i64* %i, align 8, !dbg !1849, !tbaa !1264
  %126 = load %struct.argument*, %struct.argument** %args, align 8, !dbg !1850, !tbaa !1019
  %arrayidx85 = getelementptr %struct.argument, %struct.argument* %126, i64 %125, !dbg !1850
  %keep = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx85, i32 0, i32 1, !dbg !1851
  %127 = load %struct._object*, %struct._object** %keep, align 8, !dbg !1851, !tbaa !1852
  store %struct._object* %127, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1848, !tbaa !1019
  %128 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1853, !tbaa !1019
  %cmp86 = icmp ne %struct._object* %128, null, !dbg !1854
  br i1 %cmp86, label %if.then.88, label %if.end.102, !dbg !1855

if.then.88:                                       ; preds = %do.body.84
  br label %do.body.89, !dbg !1856

do.body.89:                                       ; preds = %if.then.88
  %129 = bitcast %struct._object** %_py_decref_tmp90 to i8*, !dbg !1858
  call void @llvm.lifetime.start(i64 8, i8* %129) #2, !dbg !1858
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp90, metadata !636, metadata !1023), !dbg !1860
  %130 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1861, !tbaa !1019
  store %struct._object* %130, %struct._object** %_py_decref_tmp90, align 8, !dbg !1860, !tbaa !1019
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !1862, !tbaa !1019
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0, !dbg !1864
  %132 = load i64, i64* %ob_refcnt91, align 8, !dbg !1865, !tbaa !1069
  %dec92 = add i64 %132, -1, !dbg !1865
  store i64 %dec92, i64* %ob_refcnt91, align 8, !dbg !1865, !tbaa !1069
  %cmp93 = icmp ne i64 %dec92, 0, !dbg !1866
  br i1 %cmp93, label %if.then.95, label %if.else.96, !dbg !1867

if.then.95:                                       ; preds = %do.body.89
  br label %if.end.99, !dbg !1868

if.else.96:                                       ; preds = %do.body.89
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !1870, !tbaa !1019
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 1, !dbg !1872
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8, !dbg !1872, !tbaa !1113
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i32 0, i32 4, !dbg !1873
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8, !dbg !1873, !tbaa !1115
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8, !dbg !1874, !tbaa !1019
  call void %135(%struct._object* %136), !dbg !1875
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  %137 = bitcast %struct._object** %_py_decref_tmp90 to i8*, !dbg !1876
  call void @llvm.lifetime.end(i64 8, i8* %137) #2, !dbg !1876
  br label %do.cond.100, !dbg !1878

do.cond.100:                                      ; preds = %if.end.99
  br label %do.end.101, !dbg !1879

do.end.101:                                       ; preds = %do.cond.100
  br label %if.end.102, !dbg !1881

if.end.102:                                       ; preds = %do.end.101, %do.body.84
  %138 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !1883
  br label %do.cond.103, !dbg !1886

do.cond.103:                                      ; preds = %if.end.102
  br label %do.end.104, !dbg !1887

do.end.104:                                       ; preds = %do.cond.103
  br label %for.inc.105, !dbg !1889

for.inc.105:                                      ; preds = %do.end.104
  %139 = load i64, i64* %i, align 8, !dbg !1891, !tbaa !1264
  %inc106 = add i64 %139, 1, !dbg !1891
  store i64 %inc106, i64* %i, align 8, !dbg !1891, !tbaa !1264
  br label %for.cond.80, !dbg !1892

for.end.107:                                      ; preds = %for.cond.80
  %140 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !1893, !tbaa !1019
  store %struct._object* %140, %struct._object** %retval, !dbg !1894
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108, !dbg !1894

NewDefault.1:                                     ; preds = %LeafBlock.4, %LeafBlock.2
  br label %cleanup.108

cleanup.108:                                      ; preds = %NewDefault.1, %for.end.107, %if.then
  %141 = bitcast %struct._object** %retval1 to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %141) #2, !dbg !1895
  %142 = bitcast i8*** %avalues to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %142) #2, !dbg !1895
  %143 = bitcast %struct._ffi_type** %rtype to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %143) #2, !dbg !1895
  %144 = bitcast %struct._ffi_type*** %atypes to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %144) #2, !dbg !1895
  %145 = bitcast %struct.argument** %pa to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %145) #2, !dbg !1895
  %146 = bitcast %struct.argument** %args to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %146) #2, !dbg !1895
  %147 = bitcast i8** %resbuf to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %147) #2, !dbg !1895
  %148 = bitcast i64* %argtype_count to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %148) #2, !dbg !1895
  %149 = bitcast i64* %argcount to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %149) #2, !dbg !1895
  %150 = bitcast i64* %n to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %150) #2, !dbg !1895
  %151 = bitcast i64* %i to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %151) #2, !dbg !1895
  %152 = load %struct._object*, %struct._object** %retval, !dbg !1895
  ret %struct._object* %152, !dbg !1895
}

declare %struct._object* @PyErr_NoMemory() #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

; Function Attrs: uwtable
define internal i32 @ConvParam(%struct._object* %obj, i64 %index, %struct.argument* %pa) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %index.addr = alloca i64, align 8
  %pa.addr = alloca %struct.argument*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %carg = alloca %struct.tagPyCArgObject*, align 8
  %cleanup.dest.slot = alloca i32
  %carg8 = alloca %struct.tagPyCArgObject*, align 8
  %arg = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !666, metadata !1023), !dbg !1896
  store i64 %index, i64* %index.addr, align 8, !tbaa !1264
  call void @llvm.dbg.declare(metadata i64* %index.addr, metadata !667, metadata !1023), !dbg !1897
  store %struct.argument* %pa, %struct.argument** %pa.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct.argument** %pa.addr, metadata !668, metadata !1023), !dbg !1898
  %0 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !1899
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1899
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %dict, metadata !669, metadata !1023), !dbg !1900
  %1 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !1901, !tbaa !1019
  %keep = getelementptr inbounds %struct.argument, %struct.argument* %1, i32 0, i32 1, !dbg !1902
  store %struct._object* null, %struct._object** %keep, align 8, !dbg !1903, !tbaa !1852
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1904, !tbaa !1019
  %call = call %struct.StgDictObject* @PyObject_stgdict(%struct._object* %2), !dbg !1905
  store %struct.StgDictObject* %call, %struct.StgDictObject** %dict, align 8, !dbg !1906, !tbaa !1019
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1907, !tbaa !1019
  %tobool = icmp ne %struct.StgDictObject* %3, null, !dbg !1907
  br i1 %tobool, label %if.then, label %if.end.5, !dbg !1908

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.tagPyCArgObject** %carg to i8*, !dbg !1909
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1909
  call void @llvm.dbg.declare(metadata %struct.tagPyCArgObject** %carg, metadata !670, metadata !1023), !dbg !1910
  %5 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1911, !tbaa !1019
  %paramfunc = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %5, i32 0, i32 8, !dbg !1912
  %6 = load %struct.tagPyCArgObject* (%struct.tagCDataObject*)*, %struct.tagPyCArgObject* (%struct.tagCDataObject*)** %paramfunc, align 8, !dbg !1912, !tbaa !1913
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1916, !tbaa !1019
  %8 = bitcast %struct._object* %7 to %struct.tagCDataObject*, !dbg !1917
  %call1 = call %struct.tagPyCArgObject* %6(%struct.tagCDataObject* %8), !dbg !1911
  store %struct.tagPyCArgObject* %call1, %struct.tagPyCArgObject** %carg, align 8, !dbg !1918, !tbaa !1019
  %9 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %carg, align 8, !dbg !1919, !tbaa !1019
  %cmp = icmp eq %struct.tagPyCArgObject* %9, null, !dbg !1921
  br i1 %cmp, label %if.then.2, label %if.end, !dbg !1922

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval, !dbg !1923
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1923

if.end:                                           ; preds = %if.then
  %10 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %carg, align 8, !dbg !1924, !tbaa !1019
  %pffi_type = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %10, i32 0, i32 1, !dbg !1925
  %11 = load %struct._ffi_type*, %struct._ffi_type** %pffi_type, align 8, !dbg !1925, !tbaa !1164
  %12 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !1926, !tbaa !1019
  %ffi_type = getelementptr inbounds %struct.argument, %struct.argument* %12, i32 0, i32 0, !dbg !1927
  store %struct._ffi_type* %11, %struct._ffi_type** %ffi_type, align 8, !dbg !1928, !tbaa !1789
  %13 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !1929, !tbaa !1019
  %value = getelementptr inbounds %struct.argument, %struct.argument* %13, i32 0, i32 2, !dbg !1930
  %14 = bitcast %union.result* %value to i8*, !dbg !1931
  %15 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %carg, align 8, !dbg !1932, !tbaa !1019
  %value3 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %15, i32 0, i32 3, !dbg !1933
  %16 = bitcast %union.anon* %value3 to i8*, !dbg !1931
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %16, i64 16, i32 16, i1 false), !dbg !1931
  %17 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %carg, align 8, !dbg !1934, !tbaa !1019
  %18 = bitcast %struct.tagPyCArgObject* %17 to %struct._object*, !dbg !1935
  %19 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !1936, !tbaa !1019
  %keep4 = getelementptr inbounds %struct.argument, %struct.argument* %19, i32 0, i32 1, !dbg !1937
  store %struct._object* %18, %struct._object** %keep4, align 8, !dbg !1938, !tbaa !1852
  store i32 0, i32* %retval, !dbg !1939
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1939

cleanup:                                          ; preds = %if.end, %if.then.2
  %20 = bitcast %struct.tagPyCArgObject** %carg to i8*, !dbg !1940
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !1940
  br label %cleanup.105

if.end.5:                                         ; preds = %entry
  %21 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1941, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !1942
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1942, !tbaa !1113
  %cmp6 = icmp eq %struct._typeobject* %22, @PyCArg_Type, !dbg !1943
  br i1 %cmp6, label %if.then.7, label %if.end.15, !dbg !1944

if.then.7:                                        ; preds = %if.end.5
  %23 = bitcast %struct.tagPyCArgObject** %carg8 to i8*, !dbg !1945
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !1945
  call void @llvm.dbg.declare(metadata %struct.tagPyCArgObject** %carg8, metadata !673, metadata !1023), !dbg !1946
  %24 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1947, !tbaa !1019
  %25 = bitcast %struct._object* %24 to %struct.tagPyCArgObject*, !dbg !1948
  store %struct.tagPyCArgObject* %25, %struct.tagPyCArgObject** %carg8, align 8, !dbg !1946, !tbaa !1019
  %26 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %carg8, align 8, !dbg !1949, !tbaa !1019
  %pffi_type9 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %26, i32 0, i32 1, !dbg !1950
  %27 = load %struct._ffi_type*, %struct._ffi_type** %pffi_type9, align 8, !dbg !1950, !tbaa !1164
  %28 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !1951, !tbaa !1019
  %ffi_type10 = getelementptr inbounds %struct.argument, %struct.argument* %28, i32 0, i32 0, !dbg !1952
  store %struct._ffi_type* %27, %struct._ffi_type** %ffi_type10, align 8, !dbg !1953, !tbaa !1789
  %29 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1954, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !1955
  %30 = load i64, i64* %ob_refcnt, align 8, !dbg !1956, !tbaa !1069
  %inc = add i64 %30, 1, !dbg !1956
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1956, !tbaa !1069
  %31 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1957, !tbaa !1019
  %32 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !1958, !tbaa !1019
  %keep11 = getelementptr inbounds %struct.argument, %struct.argument* %32, i32 0, i32 1, !dbg !1959
  store %struct._object* %31, %struct._object** %keep11, align 8, !dbg !1960, !tbaa !1852
  %33 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !1961, !tbaa !1019
  %value12 = getelementptr inbounds %struct.argument, %struct.argument* %33, i32 0, i32 2, !dbg !1962
  %34 = bitcast %union.result* %value12 to i8*, !dbg !1963
  %35 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %carg8, align 8, !dbg !1964, !tbaa !1019
  %value13 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %35, i32 0, i32 3, !dbg !1965
  %36 = bitcast %union.anon* %value13 to i8*, !dbg !1963
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %36, i64 16, i32 16, i1 false), !dbg !1963
  store i32 0, i32* %retval, !dbg !1966
  store i32 1, i32* %cleanup.dest.slot
  %37 = bitcast %struct.tagPyCArgObject** %carg8 to i8*, !dbg !1967
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !1967
  br label %cleanup.105

if.end.15:                                        ; preds = %if.end.5
  %38 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1968, !tbaa !1019
  %cmp16 = icmp eq %struct._object* %38, @_Py_NoneStruct, !dbg !1970
  br i1 %cmp16, label %if.then.17, label %if.end.20, !dbg !1971

if.then.17:                                       ; preds = %if.end.15
  %39 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !1972, !tbaa !1019
  %ffi_type18 = getelementptr inbounds %struct.argument, %struct.argument* %39, i32 0, i32 0, !dbg !1974
  store %struct._ffi_type* @ffi_type_pointer, %struct._ffi_type** %ffi_type18, align 8, !dbg !1975, !tbaa !1789
  %40 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !1976, !tbaa !1019
  %value19 = getelementptr inbounds %struct.argument, %struct.argument* %40, i32 0, i32 2, !dbg !1977
  %p = bitcast %union.result* %value19 to i8**, !dbg !1978
  store i8* null, i8** %p, align 8, !dbg !1979, !tbaa !1019
  store i32 0, i32* %retval, !dbg !1980
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105, !dbg !1980

if.end.20:                                        ; preds = %if.end.15
  %41 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1981, !tbaa !1019
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !1983
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !1983, !tbaa !1113
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 19, !dbg !1984
  %43 = load i64, i64* %tp_flags, align 8, !dbg !1984, !tbaa !1985
  %and = and i64 %43, 16777216, !dbg !1986
  %cmp22 = icmp ne i64 %and, 0, !dbg !1987
  br i1 %cmp22, label %if.then.23, label %if.end.48, !dbg !1988

if.then.23:                                       ; preds = %if.end.20
  %44 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !1989, !tbaa !1019
  %ffi_type24 = getelementptr inbounds %struct.argument, %struct.argument* %44, i32 0, i32 0, !dbg !1991
  store %struct._ffi_type* @ffi_type_sint32, %struct._ffi_type** %ffi_type24, align 8, !dbg !1992, !tbaa !1789
  %45 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1993, !tbaa !1019
  %call25 = call i64 @PyLong_AsUnsignedLong(%struct._object* %45), !dbg !1994
  %conv = trunc i64 %call25 to i32, !dbg !1995
  %46 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !1996, !tbaa !1019
  %value26 = getelementptr inbounds %struct.argument, %struct.argument* %46, i32 0, i32 2, !dbg !1997
  %i = bitcast %union.result* %value26 to i32*, !dbg !1998
  store i32 %conv, i32* %i, align 4, !dbg !1999, !tbaa !1255
  %47 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2000, !tbaa !1019
  %value27 = getelementptr inbounds %struct.argument, %struct.argument* %47, i32 0, i32 2, !dbg !2002
  %i28 = bitcast %union.result* %value27 to i32*, !dbg !2003
  %48 = load i32, i32* %i28, align 4, !dbg !2003, !tbaa !1255
  %cmp29 = icmp eq i32 %48, -1, !dbg !2004
  br i1 %cmp29, label %land.lhs.true, label %if.end.47, !dbg !2005

land.lhs.true:                                    ; preds = %if.then.23
  %call31 = call %struct._object* @PyErr_Occurred(), !dbg !2006
  %tobool32 = icmp ne %struct._object* %call31, null, !dbg !2006
  br i1 %tobool32, label %if.then.33, label %if.end.47, !dbg !2008

if.then.33:                                       ; preds = %land.lhs.true
  call void @PyErr_Clear(), !dbg !2009
  %49 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2011, !tbaa !1019
  %call34 = call i64 @PyLong_AsLong(%struct._object* %49), !dbg !2012
  %conv35 = trunc i64 %call34 to i32, !dbg !2012
  %50 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2013, !tbaa !1019
  %value36 = getelementptr inbounds %struct.argument, %struct.argument* %50, i32 0, i32 2, !dbg !2014
  %i37 = bitcast %union.result* %value36 to i32*, !dbg !2015
  store i32 %conv35, i32* %i37, align 4, !dbg !2016, !tbaa !1255
  %51 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2017, !tbaa !1019
  %value38 = getelementptr inbounds %struct.argument, %struct.argument* %51, i32 0, i32 2, !dbg !2019
  %i39 = bitcast %union.result* %value38 to i32*, !dbg !2020
  %52 = load i32, i32* %i39, align 4, !dbg !2020, !tbaa !1255
  %cmp40 = icmp eq i32 %52, -1, !dbg !2021
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.46, !dbg !2022

land.lhs.true.42:                                 ; preds = %if.then.33
  %call43 = call %struct._object* @PyErr_Occurred(), !dbg !2023
  %tobool44 = icmp ne %struct._object* %call43, null, !dbg !2023
  br i1 %tobool44, label %if.then.45, label %if.end.46, !dbg !2025

if.then.45:                                       ; preds = %land.lhs.true.42
  %53 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2026, !tbaa !1019
  call void @PyErr_SetString(%struct._object* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0)), !dbg !2028
  store i32 -1, i32* %retval, !dbg !2029
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105, !dbg !2029

if.end.46:                                        ; preds = %land.lhs.true.42, %if.then.33
  br label %if.end.47, !dbg !2030

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true, %if.then.23
  store i32 0, i32* %retval, !dbg !2031
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105, !dbg !2031

if.end.48:                                        ; preds = %if.end.20
  %54 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2032, !tbaa !1019
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1, !dbg !2034
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !2034, !tbaa !1113
  %tp_flags50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 19, !dbg !2035
  %56 = load i64, i64* %tp_flags50, align 8, !dbg !2035, !tbaa !1985
  %and51 = and i64 %56, 134217728, !dbg !2036
  %cmp52 = icmp ne i64 %and51, 0, !dbg !2037
  br i1 %cmp52, label %if.then.54, label %if.end.62, !dbg !2038

if.then.54:                                       ; preds = %if.end.48
  %57 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2039, !tbaa !1019
  %ffi_type55 = getelementptr inbounds %struct.argument, %struct.argument* %57, i32 0, i32 0, !dbg !2041
  store %struct._ffi_type* @ffi_type_pointer, %struct._ffi_type** %ffi_type55, align 8, !dbg !2042, !tbaa !1789
  %58 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2043, !tbaa !1019
  %call56 = call i8* @PyBytes_AsString(%struct._object* %58), !dbg !2044
  %59 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2045, !tbaa !1019
  %value57 = getelementptr inbounds %struct.argument, %struct.argument* %59, i32 0, i32 2, !dbg !2046
  %p58 = bitcast %union.result* %value57 to i8**, !dbg !2047
  store i8* %call56, i8** %p58, align 8, !dbg !2048, !tbaa !1019
  %60 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2049, !tbaa !1019
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !2050
  %61 = load i64, i64* %ob_refcnt59, align 8, !dbg !2051, !tbaa !1069
  %inc60 = add i64 %61, 1, !dbg !2051
  store i64 %inc60, i64* %ob_refcnt59, align 8, !dbg !2051, !tbaa !1069
  %62 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2052, !tbaa !1019
  %63 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2053, !tbaa !1019
  %keep61 = getelementptr inbounds %struct.argument, %struct.argument* %63, i32 0, i32 1, !dbg !2054
  store %struct._object* %62, %struct._object** %keep61, align 8, !dbg !2055, !tbaa !1852
  store i32 0, i32* %retval, !dbg !2056
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105, !dbg !2056

if.end.62:                                        ; preds = %if.end.48
  %64 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2057, !tbaa !1019
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !2059
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !2059, !tbaa !1113
  %tp_flags64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 19, !dbg !2060
  %66 = load i64, i64* %tp_flags64, align 8, !dbg !2060, !tbaa !1985
  %and65 = and i64 %66, 268435456, !dbg !2061
  %cmp66 = icmp ne i64 %and65, 0, !dbg !2062
  br i1 %cmp66, label %if.then.68, label %if.end.89, !dbg !2063

if.then.68:                                       ; preds = %if.end.62
  %67 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2064, !tbaa !1019
  %ffi_type69 = getelementptr inbounds %struct.argument, %struct.argument* %67, i32 0, i32 0, !dbg !2066
  store %struct._ffi_type* @ffi_type_pointer, %struct._ffi_type** %ffi_type69, align 8, !dbg !2067, !tbaa !1789
  %68 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2068, !tbaa !1019
  %call70 = call i32* @PyUnicode_AsWideCharString(%struct._object* %68, i64* null), !dbg !2069
  %69 = bitcast i32* %call70 to i8*, !dbg !2069
  %70 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2070, !tbaa !1019
  %value71 = getelementptr inbounds %struct.argument, %struct.argument* %70, i32 0, i32 2, !dbg !2071
  %p72 = bitcast %union.result* %value71 to i8**, !dbg !2072
  store i8* %69, i8** %p72, align 8, !dbg !2073, !tbaa !1019
  %71 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2074, !tbaa !1019
  %value73 = getelementptr inbounds %struct.argument, %struct.argument* %71, i32 0, i32 2, !dbg !2076
  %p74 = bitcast %union.result* %value73 to i8**, !dbg !2077
  %72 = load i8*, i8** %p74, align 8, !dbg !2077, !tbaa !1019
  %cmp75 = icmp eq i8* %72, null, !dbg !2078
  br i1 %cmp75, label %if.then.77, label %if.end.78, !dbg !2079

if.then.77:                                       ; preds = %if.then.68
  store i32 -1, i32* %retval, !dbg !2080
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105, !dbg !2080

if.end.78:                                        ; preds = %if.then.68
  %73 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2081, !tbaa !1019
  %value79 = getelementptr inbounds %struct.argument, %struct.argument* %73, i32 0, i32 2, !dbg !2082
  %p80 = bitcast %union.result* %value79 to i8**, !dbg !2083
  %74 = load i8*, i8** %p80, align 8, !dbg !2083, !tbaa !1019
  %call81 = call %struct._object* @PyCapsule_New(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (%struct._object*)* @pymem_destructor), !dbg !2084
  %75 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2085, !tbaa !1019
  %keep82 = getelementptr inbounds %struct.argument, %struct.argument* %75, i32 0, i32 1, !dbg !2086
  store %struct._object* %call81, %struct._object** %keep82, align 8, !dbg !2087, !tbaa !1852
  %76 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2088, !tbaa !1019
  %keep83 = getelementptr inbounds %struct.argument, %struct.argument* %76, i32 0, i32 1, !dbg !2090
  %77 = load %struct._object*, %struct._object** %keep83, align 8, !dbg !2090, !tbaa !1852
  %tobool84 = icmp ne %struct._object* %77, null, !dbg !2088
  br i1 %tobool84, label %if.end.88, label %if.then.85, !dbg !2091

if.then.85:                                       ; preds = %if.end.78
  %78 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2092, !tbaa !1019
  %value86 = getelementptr inbounds %struct.argument, %struct.argument* %78, i32 0, i32 2, !dbg !2094
  %p87 = bitcast %union.result* %value86 to i8**, !dbg !2095
  %79 = load i8*, i8** %p87, align 8, !dbg !2095, !tbaa !1019
  call void @PyMem_Free(i8* %79), !dbg !2096
  store i32 -1, i32* %retval, !dbg !2097
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105, !dbg !2097

if.end.88:                                        ; preds = %if.end.78
  store i32 0, i32* %retval, !dbg !2098
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105, !dbg !2098

if.end.89:                                        ; preds = %if.end.62
  %80 = bitcast %struct._object** %arg to i8*, !dbg !2099
  call void @llvm.lifetime.start(i64 8, i8* %80) #2, !dbg !2099
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !676, metadata !1023), !dbg !2100
  %81 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2101, !tbaa !1019
  %call90 = call %struct._object* @PyObject_GetAttrString(%struct._object* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0)), !dbg !2102
  store %struct._object* %call90, %struct._object** %arg, align 8, !dbg !2103, !tbaa !1019
  %82 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2104, !tbaa !1019
  %tobool91 = icmp ne %struct._object* %82, null, !dbg !2104
  br i1 %tobool91, label %if.then.92, label %if.end.101, !dbg !2105

if.then.92:                                       ; preds = %if.end.89
  %83 = bitcast i32* %result to i8*, !dbg !2106
  call void @llvm.lifetime.start(i64 4, i8* %83) #2, !dbg !2106
  call void @llvm.dbg.declare(metadata i32* %result, metadata !678, metadata !1023), !dbg !2107
  %84 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2108, !tbaa !1019
  %85 = load i64, i64* %index.addr, align 8, !dbg !2109, !tbaa !1264
  %86 = load %struct.argument*, %struct.argument** %pa.addr, align 8, !dbg !2110, !tbaa !1019
  %call93 = call i32 @ConvParam(%struct._object* %84, i64 %85, %struct.argument* %86), !dbg !2111
  store i32 %call93, i32* %result, align 4, !dbg !2112, !tbaa !1255
  br label %do.body, !dbg !2113

do.body:                                          ; preds = %if.then.92
  %87 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2114
  call void @llvm.lifetime.start(i64 8, i8* %87) #2, !dbg !2114
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !681, metadata !1023), !dbg !2116
  %88 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2117, !tbaa !1019
  store %struct._object* %88, %struct._object** %_py_decref_tmp, align 8, !dbg !2116, !tbaa !1019
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2118, !tbaa !1019
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0, !dbg !2120
  %90 = load i64, i64* %ob_refcnt94, align 8, !dbg !2121, !tbaa !1069
  %dec = add i64 %90, -1, !dbg !2121
  store i64 %dec, i64* %ob_refcnt94, align 8, !dbg !2121, !tbaa !1069
  %cmp95 = icmp ne i64 %dec, 0, !dbg !2122
  br i1 %cmp95, label %if.then.97, label %if.else, !dbg !2123

if.then.97:                                       ; preds = %do.body
  br label %if.end.99, !dbg !2124

if.else:                                          ; preds = %do.body
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2126, !tbaa !1019
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1, !dbg !2128
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8, !dbg !2128, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4, !dbg !2129
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2129, !tbaa !1115
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2130, !tbaa !1019
  call void %93(%struct._object* %94), !dbg !2131
  br label %if.end.99

if.end.99:                                        ; preds = %if.else, %if.then.97
  %95 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2132
  call void @llvm.lifetime.end(i64 8, i8* %95) #2, !dbg !2132
  br label %do.cond, !dbg !2134

do.cond:                                          ; preds = %if.end.99
  br label %do.end, !dbg !2135

do.end:                                           ; preds = %do.cond
  %96 = load i32, i32* %result, align 4, !dbg !2137, !tbaa !1255
  store i32 %96, i32* %retval, !dbg !2138
  store i32 1, i32* %cleanup.dest.slot
  %97 = bitcast i32* %result to i8*, !dbg !2139
  call void @llvm.lifetime.end(i64 4, i8* %97) #2, !dbg !2139
  br label %cleanup.104

if.end.101:                                       ; preds = %if.end.89
  %98 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2140, !tbaa !1019
  %99 = load i64, i64* %index.addr, align 8, !dbg !2141, !tbaa !1264
  %conv102 = trunc i64 %99 to i32, !dbg !2142
  %call103 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0), i32 %conv102), !dbg !2143
  store i32 -1, i32* %retval, !dbg !2144
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.104, !dbg !2144

cleanup.104:                                      ; preds = %if.end.101, %do.end
  %100 = bitcast %struct._object** %arg to i8*, !dbg !2145
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !2145
  br label %cleanup.105

cleanup.105:                                      ; preds = %cleanup.104, %if.end.88, %if.then.85, %if.then.77, %if.then.54, %if.end.47, %if.then.45, %if.then.17, %if.then.7, %cleanup
  %101 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !2146
  call void @llvm.lifetime.end(i64 8, i8* %101) #2, !dbg !2146
  %102 = load i32, i32* %retval, !dbg !2146
  ret i32 %102, !dbg !2146
}

; Function Attrs: uwtable
define internal i32 @_call_function_pointer(i32 %flags, i32 ()* %pProc, i8** %avalues, %struct._ffi_type** %atypes, %struct._ffi_type* %restype, i8* %resmem, i32 %argcount) #0 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pProc.addr = alloca i32 ()*, align 8
  %avalues.addr = alloca i8**, align 8
  %atypes.addr = alloca %struct._ffi_type**, align 8
  %restype.addr = alloca %struct._ffi_type*, align 8
  %resmem.addr = alloca i8*, align 8
  %argcount.addr = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %error_object = alloca %struct._object*, align 8
  %space = alloca i32*, align 8
  %cif = alloca %struct.ffi_cif, align 8
  %cc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %temp = alloca i32, align 4
  %temp25 = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !1255
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !687, metadata !1023), !dbg !2147
  store i32 ()* %pProc, i32 ()** %pProc.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata i32 ()** %pProc.addr, metadata !688, metadata !1023), !dbg !2148
  store i8** %avalues, i8*** %avalues.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata i8*** %avalues.addr, metadata !689, metadata !1023), !dbg !2149
  store %struct._ffi_type** %atypes, %struct._ffi_type*** %atypes.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._ffi_type*** %atypes.addr, metadata !690, metadata !1023), !dbg !2150
  store %struct._ffi_type* %restype, %struct._ffi_type** %restype.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._ffi_type** %restype.addr, metadata !691, metadata !1023), !dbg !2151
  store i8* %resmem, i8** %resmem.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata i8** %resmem.addr, metadata !692, metadata !1023), !dbg !2152
  store i32 %argcount, i32* %argcount.addr, align 4, !tbaa !1255
  call void @llvm.dbg.declare(metadata i32* %argcount.addr, metadata !693, metadata !1023), !dbg !2153
  %0 = bitcast %struct._ts** %_save to i8*, !dbg !2154
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2154
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !694, metadata !1023), !dbg !2155
  store %struct._ts* null, %struct._ts** %_save, align 8, !dbg !2155, !tbaa !1019
  %1 = bitcast %struct._object** %error_object to i8*, !dbg !2156
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2156
  call void @llvm.dbg.declare(metadata %struct._object** %error_object, metadata !753, metadata !1023), !dbg !2157
  store %struct._object* null, %struct._object** %error_object, align 8, !dbg !2157, !tbaa !1019
  %2 = bitcast i32** %space to i8*, !dbg !2158
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2158
  call void @llvm.dbg.declare(metadata i32** %space, metadata !754, metadata !1023), !dbg !2159
  %3 = bitcast %struct.ffi_cif* %cif to i8*, !dbg !2160
  call void @llvm.lifetime.start(i64 32, i8* %3) #2, !dbg !2160
  call void @llvm.dbg.declare(metadata %struct.ffi_cif* %cif, metadata !755, metadata !1023), !dbg !2161
  %4 = bitcast i32* %cc to i8*, !dbg !2162
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !2162
  call void @llvm.dbg.declare(metadata i32* %cc, metadata !766, metadata !1023), !dbg !2163
  %5 = load %struct._ffi_type*, %struct._ffi_type** %restype.addr, align 8, !dbg !2164, !tbaa !1019
  %cmp = icmp eq %struct._ffi_type* %5, null, !dbg !2166
  br i1 %cmp, label %if.then, label %if.end, !dbg !2167

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2168, !tbaa !1019
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0)), !dbg !2170
  store i32 -1, i32* %retval, !dbg !2171
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2171

if.end:                                           ; preds = %entry
  store i32 2, i32* %cc, align 4, !dbg !2172, !tbaa !1255
  %7 = load i32, i32* %cc, align 4, !dbg !2173, !tbaa !1255
  %8 = load i32, i32* %argcount.addr, align 4, !dbg !2175, !tbaa !1255
  %9 = load %struct._ffi_type*, %struct._ffi_type** %restype.addr, align 8, !dbg !2176, !tbaa !1019
  %10 = load %struct._ffi_type**, %struct._ffi_type*** %atypes.addr, align 8, !dbg !2177, !tbaa !1019
  %call = call i32 @ffi_prep_cif(%struct.ffi_cif* %cif, i32 %7, i32 %8, %struct._ffi_type* %9, %struct._ffi_type** %10), !dbg !2178
  %cmp1 = icmp ne i32 0, %call, !dbg !2179
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !2180

if.then.2:                                        ; preds = %if.end
  %11 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2181, !tbaa !1019
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0)), !dbg !2183
  store i32 -1, i32* %retval, !dbg !2184
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2184

if.end.3:                                         ; preds = %if.end
  %12 = load i32, i32* %flags.addr, align 4, !dbg !2185, !tbaa !1255
  %and = and i32 %12, 24, !dbg !2187
  %tobool = icmp ne i32 %and, 0, !dbg !2187
  br i1 %tobool, label %if.then.4, label %if.end.9, !dbg !2188

if.then.4:                                        ; preds = %if.end.3
  %call5 = call %struct._object* @_ctypes_get_errobj(i32** %space), !dbg !2189
  store %struct._object* %call5, %struct._object** %error_object, align 8, !dbg !2191, !tbaa !1019
  %13 = load %struct._object*, %struct._object** %error_object, align 8, !dbg !2192, !tbaa !1019
  %cmp6 = icmp eq %struct._object* %13, null, !dbg !2194
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !2195

if.then.7:                                        ; preds = %if.then.4
  store i32 -1, i32* %retval, !dbg !2196
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2196

if.end.8:                                         ; preds = %if.then.4
  br label %if.end.9, !dbg !2197

if.end.9:                                         ; preds = %if.end.8, %if.end.3
  %14 = load i32, i32* %flags.addr, align 4, !dbg !2198, !tbaa !1255
  %and10 = and i32 %14, 4, !dbg !2200
  %cmp11 = icmp eq i32 %and10, 0, !dbg !2201
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !2202

if.then.12:                                       ; preds = %if.end.9
  %call13 = call %struct._ts* @PyEval_SaveThread(), !dbg !2203
  store %struct._ts* %call13, %struct._ts** %_save, align 8, !dbg !2204, !tbaa !1019
  br label %if.end.14, !dbg !2205

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %15 = load i32, i32* %flags.addr, align 4, !dbg !2206, !tbaa !1255
  %and15 = and i32 %15, 8, !dbg !2207
  %tobool16 = icmp ne i32 %and15, 0, !dbg !2207
  br i1 %tobool16, label %if.then.17, label %if.end.21, !dbg !2208

if.then.17:                                       ; preds = %if.end.14
  %16 = bitcast i32* %temp to i8*, !dbg !2209
  call void @llvm.lifetime.start(i64 4, i8* %16) #2, !dbg !2209
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !767, metadata !1023), !dbg !2210
  %17 = load i32*, i32** %space, align 8, !dbg !2211, !tbaa !1019
  %arrayidx = getelementptr i32, i32* %17, i64 0, !dbg !2211
  %18 = load i32, i32* %arrayidx, align 4, !dbg !2211, !tbaa !1255
  store i32 %18, i32* %temp, align 4, !dbg !2210, !tbaa !1255
  %call18 = call i32* @__errno_location() #1, !dbg !2212
  %19 = load i32, i32* %call18, align 4, !dbg !2213, !tbaa !1255
  %20 = load i32*, i32** %space, align 8, !dbg !2214, !tbaa !1019
  %arrayidx19 = getelementptr i32, i32* %20, i64 0, !dbg !2214
  store i32 %19, i32* %arrayidx19, align 4, !dbg !2215, !tbaa !1255
  %21 = load i32, i32* %temp, align 4, !dbg !2216, !tbaa !1255
  %call20 = call i32* @__errno_location() #1, !dbg !2217
  store i32 %21, i32* %call20, align 4, !dbg !2218, !tbaa !1255
  %22 = bitcast i32* %temp to i8*, !dbg !2219
  call void @llvm.lifetime.end(i64 4, i8* %22) #2, !dbg !2219
  br label %if.end.21, !dbg !2220

if.end.21:                                        ; preds = %if.then.17, %if.end.14
  %23 = load i32 ()*, i32 ()** %pProc.addr, align 8, !dbg !2221, !tbaa !1019
  %24 = bitcast i32 ()* %23 to i8*, !dbg !2222
  %25 = bitcast i8* %24 to void ()*, !dbg !2222
  %26 = load i8*, i8** %resmem.addr, align 8, !dbg !2223, !tbaa !1019
  %27 = load i8**, i8*** %avalues.addr, align 8, !dbg !2224, !tbaa !1019
  call void @ffi_call(%struct.ffi_cif* %cif, void ()* %25, i8* %26, i8** %27), !dbg !2225
  %28 = load i32, i32* %flags.addr, align 4, !dbg !2226, !tbaa !1255
  %and22 = and i32 %28, 8, !dbg !2227
  %tobool23 = icmp ne i32 %and22, 0, !dbg !2227
  br i1 %tobool23, label %if.then.24, label %if.end.30, !dbg !2228

if.then.24:                                       ; preds = %if.end.21
  %29 = bitcast i32* %temp25 to i8*, !dbg !2229
  call void @llvm.lifetime.start(i64 4, i8* %29) #2, !dbg !2229
  call void @llvm.dbg.declare(metadata i32* %temp25, metadata !770, metadata !1023), !dbg !2230
  %30 = load i32*, i32** %space, align 8, !dbg !2231, !tbaa !1019
  %arrayidx26 = getelementptr i32, i32* %30, i64 0, !dbg !2231
  %31 = load i32, i32* %arrayidx26, align 4, !dbg !2231, !tbaa !1255
  store i32 %31, i32* %temp25, align 4, !dbg !2230, !tbaa !1255
  %call27 = call i32* @__errno_location() #1, !dbg !2232
  %32 = load i32, i32* %call27, align 4, !dbg !2233, !tbaa !1255
  %33 = load i32*, i32** %space, align 8, !dbg !2234, !tbaa !1019
  %arrayidx28 = getelementptr i32, i32* %33, i64 0, !dbg !2234
  store i32 %32, i32* %arrayidx28, align 4, !dbg !2235, !tbaa !1255
  %34 = load i32, i32* %temp25, align 4, !dbg !2236, !tbaa !1255
  %call29 = call i32* @__errno_location() #1, !dbg !2237
  store i32 %34, i32* %call29, align 4, !dbg !2238, !tbaa !1255
  %35 = bitcast i32* %temp25 to i8*, !dbg !2239
  call void @llvm.lifetime.end(i64 4, i8* %35) #2, !dbg !2239
  br label %if.end.30, !dbg !2240

if.end.30:                                        ; preds = %if.then.24, %if.end.21
  %36 = load i32, i32* %flags.addr, align 4, !dbg !2241, !tbaa !1255
  %and31 = and i32 %36, 4, !dbg !2243
  %cmp32 = icmp eq i32 %and31, 0, !dbg !2244
  br i1 %cmp32, label %if.then.33, label %if.end.34, !dbg !2245

if.then.33:                                       ; preds = %if.end.30
  %37 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2246, !tbaa !1019
  call void @PyEval_RestoreThread(%struct._ts* %37), !dbg !2247
  br label %if.end.34, !dbg !2247

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  br label %do.body, !dbg !2248

do.body:                                          ; preds = %if.end.34
  %38 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2249
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !2249
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !773, metadata !1023), !dbg !2251
  %39 = load %struct._object*, %struct._object** %error_object, align 8, !dbg !2252, !tbaa !1019
  store %struct._object* %39, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2251, !tbaa !1019
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2253, !tbaa !1019
  %cmp35 = icmp ne %struct._object* %40, null, !dbg !2254
  br i1 %cmp35, label %if.then.36, label %if.end.41, !dbg !2255

if.then.36:                                       ; preds = %do.body
  br label %do.body.37, !dbg !2256

do.body.37:                                       ; preds = %if.then.36
  %41 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2258
  call void @llvm.lifetime.start(i64 8, i8* %41) #2, !dbg !2258
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !775, metadata !1023), !dbg !2260
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2261, !tbaa !1019
  store %struct._object* %42, %struct._object** %_py_decref_tmp, align 8, !dbg !2260, !tbaa !1019
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2262, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0, !dbg !2264
  %44 = load i64, i64* %ob_refcnt, align 8, !dbg !2265, !tbaa !1069
  %dec = add i64 %44, -1, !dbg !2265
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2265, !tbaa !1069
  %cmp38 = icmp ne i64 %dec, 0, !dbg !2266
  br i1 %cmp38, label %if.then.39, label %if.else, !dbg !2267

if.then.39:                                       ; preds = %do.body.37
  br label %if.end.40, !dbg !2268

if.else:                                          ; preds = %do.body.37
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2270, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !2272
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2272, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4, !dbg !2273
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2273, !tbaa !1115
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2274, !tbaa !1019
  call void %47(%struct._object* %48), !dbg !2275
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.then.39
  %49 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2276
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !2276
  br label %do.cond, !dbg !2278

do.cond:                                          ; preds = %if.end.40
  br label %do.end, !dbg !2279

do.end:                                           ; preds = %do.cond
  br label %if.end.41, !dbg !2281

if.end.41:                                        ; preds = %do.end, %do.body
  %50 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2283
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !2283
  br label %do.cond.42, !dbg !2286

do.cond.42:                                       ; preds = %if.end.41
  br label %do.end.43, !dbg !2287

do.end.43:                                        ; preds = %do.cond.42
  %51 = load i32, i32* %flags.addr, align 4, !dbg !2289, !tbaa !1255
  %and44 = and i32 %51, 4, !dbg !2291
  %tobool45 = icmp ne i32 %and44, 0, !dbg !2291
  br i1 %tobool45, label %land.lhs.true, label %if.end.49, !dbg !2292

land.lhs.true:                                    ; preds = %do.end.43
  %call46 = call %struct._object* @PyErr_Occurred(), !dbg !2293
  %tobool47 = icmp ne %struct._object* %call46, null, !dbg !2293
  br i1 %tobool47, label %if.then.48, label %if.end.49, !dbg !2295

if.then.48:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !2296
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2296

if.end.49:                                        ; preds = %land.lhs.true, %do.end.43
  store i32 0, i32* %retval, !dbg !2297
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2297

cleanup:                                          ; preds = %if.end.49, %if.then.48, %if.then.7, %if.then.2, %if.then
  %52 = bitcast i32* %cc to i8*, !dbg !2298
  call void @llvm.lifetime.end(i64 4, i8* %52) #2, !dbg !2298
  %53 = bitcast %struct.ffi_cif* %cif to i8*, !dbg !2298
  call void @llvm.lifetime.end(i64 32, i8* %53) #2, !dbg !2298
  %54 = bitcast i32** %space to i8*, !dbg !2298
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !2298
  %55 = bitcast %struct._object** %error_object to i8*, !dbg !2298
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !2298
  %56 = bitcast %struct._ts** %_save to i8*, !dbg !2298
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !2298
  %57 = load i32, i32* %retval, !dbg !2298
  ret i32 %57, !dbg !2298
}

; Function Attrs: uwtable
define internal %struct._object* @GetResult(%struct._object* %restype, i8* %result, %struct._object* %checker) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %restype.addr = alloca %struct._object*, align 8
  %result.addr = alloca i8*, align 8
  %checker.addr = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %retval1 = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  store %struct._object* %restype, %struct._object** %restype.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %restype.addr, metadata !782, metadata !1023), !dbg !2299
  store i8* %result, i8** %result.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata i8** %result.addr, metadata !783, metadata !1023), !dbg !2300
  store %struct._object* %checker, %struct._object** %checker.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %checker.addr, metadata !784, metadata !1023), !dbg !2301
  %0 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !2302
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2302
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %dict, metadata !785, metadata !1023), !dbg !2303
  %1 = bitcast %struct._object** %retval1 to i8*, !dbg !2304
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2304
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !786, metadata !1023), !dbg !2305
  %2 = bitcast %struct._object** %v to i8*, !dbg !2304
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2304
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !787, metadata !1023), !dbg !2306
  %3 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !2307, !tbaa !1019
  %cmp = icmp eq %struct._object* %3, null, !dbg !2309
  br i1 %cmp, label %if.then, label %if.end, !dbg !2310

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %result.addr, align 8, !dbg !2311, !tbaa !1019
  %5 = bitcast i8* %4 to i32*, !dbg !2312
  %6 = load i32, i32* %5, align 4, !dbg !2313, !tbaa !1255
  %conv = sext i32 %6 to i64, !dbg !2313
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2314
  store %struct._object* %call, %struct._object** %retval, !dbg !2315
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2315

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !2316, !tbaa !1019
  %cmp2 = icmp eq %struct._object* %7, @_Py_NoneStruct, !dbg !2318
  br i1 %cmp2, label %if.then.4, label %if.end.5, !dbg !2319

if.then.4:                                        ; preds = %if.end
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2320, !tbaa !1069
  %inc = add i64 %8, 1, !dbg !2320
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2320, !tbaa !1069
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2322
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2322

if.end.5:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !2323, !tbaa !1019
  %call6 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %9), !dbg !2324
  store %struct.StgDictObject* %call6, %struct.StgDictObject** %dict, align 8, !dbg !2325, !tbaa !1019
  %10 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2326, !tbaa !1019
  %cmp7 = icmp eq %struct.StgDictObject* %10, null, !dbg !2328
  br i1 %cmp7, label %if.then.9, label %if.end.11, !dbg !2329

if.then.9:                                        ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !2330, !tbaa !1019
  %12 = load i8*, i8** %result.addr, align 8, !dbg !2331, !tbaa !1019
  %13 = bitcast i8* %12 to i32*, !dbg !2332
  %14 = load i32, i32* %13, align 4, !dbg !2333, !tbaa !1255
  %call10 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i32 %14), !dbg !2334
  store %struct._object* %call10, %struct._object** %retval, !dbg !2335
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2335

if.end.11:                                        ; preds = %if.end.5
  %15 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2336, !tbaa !1019
  %getfunc = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %15, i32 0, i32 7, !dbg !2337
  %16 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc, align 8, !dbg !2337, !tbaa !2338
  %tobool = icmp ne %struct._object* (i8*, i64)* %16, null, !dbg !2336
  br i1 %tobool, label %land.lhs.true, label %if.else.28, !dbg !2339

land.lhs.true:                                    ; preds = %if.end.11
  %17 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !2340, !tbaa !1019
  %call12 = call i32 @_ctypes_simple_instance(%struct._object* %17), !dbg !2342
  %tobool13 = icmp ne i32 %call12, 0, !dbg !2342
  br i1 %tobool13, label %if.else.28, label %if.then.14, !dbg !2343

if.then.14:                                       ; preds = %land.lhs.true
  %18 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2344, !tbaa !1019
  %getfunc15 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %18, i32 0, i32 7, !dbg !2345
  %19 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc15, align 8, !dbg !2345, !tbaa !2338
  %20 = load i8*, i8** %result.addr, align 8, !dbg !2346, !tbaa !1019
  %21 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2347, !tbaa !1019
  %size = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %21, i32 0, i32 1, !dbg !2348
  %22 = load i64, i64* %size, align 8, !dbg !2348, !tbaa !2349
  %call16 = call %struct._object* %19(i8* %20, i64 %22), !dbg !2344
  store %struct._object* %call16, %struct._object** %retval1, align 8, !dbg !2350, !tbaa !1019
  %23 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2351, !tbaa !1019
  %getfunc17 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %23, i32 0, i32 7, !dbg !2352
  %24 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc17, align 8, !dbg !2352, !tbaa !2338
  %call18 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0)), !dbg !2353
  %getfunc19 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call18, i32 0, i32 2, !dbg !2354
  %25 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc19, align 8, !dbg !2354, !tbaa !2355
  %cmp20 = icmp eq %struct._object* (i8*, i64)* %24, %25, !dbg !2357
  br i1 %cmp20, label %if.then.22, label %if.end.27, !dbg !2358

if.then.22:                                       ; preds = %if.then.14
  br label %do.body, !dbg !2359

do.body:                                          ; preds = %if.then.22
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2360
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !2360
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !788, metadata !1023), !dbg !2362
  %27 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !2363, !tbaa !1019
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8, !dbg !2362, !tbaa !1019
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2364, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !2366
  %29 = load i64, i64* %ob_refcnt, align 8, !dbg !2367, !tbaa !1069
  %dec = add i64 %29, -1, !dbg !2367
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2367, !tbaa !1069
  %cmp23 = icmp ne i64 %dec, 0, !dbg !2368
  br i1 %cmp23, label %if.then.25, label %if.else, !dbg !2369

if.then.25:                                       ; preds = %do.body
  br label %if.end.26, !dbg !2370

if.else:                                          ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2372, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !2374
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2374, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !2375
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2375, !tbaa !1115
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2376, !tbaa !1019
  call void %32(%struct._object* %33), !dbg !2377
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2378
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !2378
  br label %do.cond, !dbg !2380

do.cond:                                          ; preds = %if.end.26
  br label %do.end, !dbg !2381

do.end:                                           ; preds = %do.cond
  br label %if.end.27, !dbg !2383

if.end.27:                                        ; preds = %do.end, %if.then.14
  br label %if.end.30, !dbg !2384

if.else.28:                                       ; preds = %land.lhs.true, %if.end.11
  %35 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !2385, !tbaa !1019
  %36 = load i8*, i8** %result.addr, align 8, !dbg !2386, !tbaa !1019
  %call29 = call %struct._object* @PyCData_FromBaseObj(%struct._object* %35, %struct._object* null, i64 0, i8* %36), !dbg !2387
  store %struct._object* %call29, %struct._object** %retval1, align 8, !dbg !2388, !tbaa !1019
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.end.27
  %37 = load %struct._object*, %struct._object** %checker.addr, align 8, !dbg !2389, !tbaa !1019
  %tobool31 = icmp ne %struct._object* %37, null, !dbg !2389
  br i1 %tobool31, label %lor.lhs.false, label %if.then.33, !dbg !2391

lor.lhs.false:                                    ; preds = %if.end.30
  %38 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !2392, !tbaa !1019
  %tobool32 = icmp ne %struct._object* %38, null, !dbg !2392
  br i1 %tobool32, label %if.end.34, label %if.then.33, !dbg !2394

if.then.33:                                       ; preds = %lor.lhs.false, %if.end.30
  %39 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !2395, !tbaa !1019
  store %struct._object* %39, %struct._object** %retval, !dbg !2396
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2396

if.end.34:                                        ; preds = %lor.lhs.false
  %40 = load %struct._object*, %struct._object** %checker.addr, align 8, !dbg !2397, !tbaa !1019
  %41 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !2398, !tbaa !1019
  %call35 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %40, %struct._object* %41, i8* null), !dbg !2399
  store %struct._object* %call35, %struct._object** %v, align 8, !dbg !2400, !tbaa !1019
  %42 = load %struct._object*, %struct._object** %v, align 8, !dbg !2401, !tbaa !1019
  %cmp36 = icmp eq %struct._object* %42, null, !dbg !2403
  br i1 %cmp36, label %if.then.38, label %if.end.39, !dbg !2404

if.then.38:                                       ; preds = %if.end.34
  call void @_ctypes_add_traceback(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), i32 920), !dbg !2405
  br label %if.end.39, !dbg !2405

if.end.39:                                        ; preds = %if.then.38, %if.end.34
  br label %do.body.40, !dbg !2406

do.body.40:                                       ; preds = %if.end.39
  %43 = bitcast %struct._object** %_py_decref_tmp41 to i8*, !dbg !2407
  call void @llvm.lifetime.start(i64 8, i8* %43) #2, !dbg !2407
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp41, metadata !794, metadata !1023), !dbg !2409
  %44 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !2410, !tbaa !1019
  store %struct._object* %44, %struct._object** %_py_decref_tmp41, align 8, !dbg !2409, !tbaa !1019
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !2411, !tbaa !1019
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0, !dbg !2413
  %46 = load i64, i64* %ob_refcnt42, align 8, !dbg !2414, !tbaa !1069
  %dec43 = add i64 %46, -1, !dbg !2414
  store i64 %dec43, i64* %ob_refcnt42, align 8, !dbg !2414, !tbaa !1069
  %cmp44 = icmp ne i64 %dec43, 0, !dbg !2415
  br i1 %cmp44, label %if.then.46, label %if.else.47, !dbg !2416

if.then.46:                                       ; preds = %do.body.40
  br label %if.end.50, !dbg !2417

if.else.47:                                       ; preds = %do.body.40
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !2419, !tbaa !1019
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !2421
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !2421, !tbaa !1113
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4, !dbg !2422
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !2422, !tbaa !1115
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !2423, !tbaa !1019
  call void %49(%struct._object* %50), !dbg !2424
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  %51 = bitcast %struct._object** %_py_decref_tmp41 to i8*, !dbg !2425
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !2425
  br label %do.cond.51, !dbg !2427

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52, !dbg !2428

do.end.52:                                        ; preds = %do.cond.51
  %52 = load %struct._object*, %struct._object** %v, align 8, !dbg !2430, !tbaa !1019
  store %struct._object* %52, %struct._object** %retval, !dbg !2431
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2431

cleanup:                                          ; preds = %do.end.52, %if.then.33, %if.then.9, %if.then.4, %if.then
  %53 = bitcast %struct._object** %v to i8*, !dbg !2432
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !2432
  %54 = bitcast %struct._object** %retval1 to i8*, !dbg !2432
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !2432
  %55 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !2432
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !2432
  %56 = load %struct._object*, %struct._object** %retval, !dbg !2432
  ret %struct._object* %56, !dbg !2432
}

; Function Attrs: uwtable
define internal %struct._object* @get_errno(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !798, metadata !1023), !dbg !2433
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !799, metadata !1023), !dbg !2434
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2435, !tbaa !1019
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2436, !tbaa !1019
  %call = call %struct._object* @get_error_internal(%struct._object* %0, %struct._object* %1, i32 0), !dbg !2437
  ret %struct._object* %call, !dbg !2438
}

; Function Attrs: uwtable
define internal %struct._object* @set_errno(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !812, metadata !1023), !dbg !2439
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !813, metadata !1023), !dbg !2440
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2441, !tbaa !1019
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2442, !tbaa !1019
  %call = call %struct._object* @set_error_internal(%struct._object* %0, %struct._object* %1, i32 0), !dbg !2443
  ret %struct._object* %call, !dbg !2444
}

; Function Attrs: uwtable
define internal %struct._object* @POINTER(%struct._object* %self, %struct._object* %cls) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %typ = alloca %struct._typeobject*, align 8
  %key = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %name = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !827, metadata !1023), !dbg !2445
  store %struct._object* %cls, %struct._object** %cls.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %cls.addr, metadata !828, metadata !1023), !dbg !2446
  %0 = bitcast %struct._object** %result to i8*, !dbg !2447
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2447
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !829, metadata !1023), !dbg !2448
  %1 = bitcast %struct._typeobject** %typ to i8*, !dbg !2449
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2449
  call void @llvm.dbg.declare(metadata %struct._typeobject** %typ, metadata !830, metadata !1023), !dbg !2450
  %2 = bitcast %struct._object** %key to i8*, !dbg !2451
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2451
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !831, metadata !1023), !dbg !2452
  %3 = bitcast i8** %buf to i8*, !dbg !2453
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2453
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !832, metadata !1023), !dbg !2454
  %4 = load %struct._object*, %struct._object** @_ctypes_ptrtype_cache, align 8, !dbg !2455, !tbaa !1019
  %5 = load %struct._object*, %struct._object** %cls.addr, align 8, !dbg !2456, !tbaa !1019
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %4, %struct._object* %5), !dbg !2457
  store %struct._object* %call, %struct._object** %result, align 8, !dbg !2458, !tbaa !1019
  %6 = load %struct._object*, %struct._object** %result, align 8, !dbg !2459, !tbaa !1019
  %tobool = icmp ne %struct._object* %6, null, !dbg !2459
  br i1 %tobool, label %if.then, label %if.end, !dbg !2461

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %result, align 8, !dbg !2462, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !2464
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !2465, !tbaa !1069
  %inc = add i64 %8, 1, !dbg !2465
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2465, !tbaa !1069
  %9 = load %struct._object*, %struct._object** %result, align 8, !dbg !2466, !tbaa !1019
  store %struct._object* %9, %struct._object** %retval, !dbg !2467
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62, !dbg !2467

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %cls.addr, align 8, !dbg !2468, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !2469
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2469, !tbaa !1113
  %cmp = icmp eq %struct._typeobject* %11, @PyUnicode_Type, !dbg !2470
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !2471

if.then.1:                                        ; preds = %if.end
  %12 = bitcast i8** %name to i8*, !dbg !2472
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !2472
  call void @llvm.dbg.declare(metadata i8** %name, metadata !833, metadata !1023), !dbg !2473
  %13 = load %struct._object*, %struct._object** %cls.addr, align 8, !dbg !2474, !tbaa !1019
  %call2 = call i8* @PyUnicode_AsUTF8(%struct._object* %13), !dbg !2475
  store i8* %call2, i8** %name, align 8, !dbg !2473, !tbaa !1019
  %14 = load i8*, i8** %name, align 8, !dbg !2476, !tbaa !1019
  %call3 = call i64 @strlen(i8* %14) #8, !dbg !2477
  %add = add i64 %call3, 3, !dbg !2478
  %add4 = add i64 %add, 1, !dbg !2479
  %15 = alloca i8, i64 %add4, !dbg !2480
  store i8* %15, i8** %buf, align 8, !dbg !2481, !tbaa !1019
  %16 = load i8*, i8** %buf, align 8, !dbg !2482, !tbaa !1019
  %17 = load i8*, i8** %name, align 8, !dbg !2483, !tbaa !1019
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* %17) #2, !dbg !2484
  %18 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCPointer_Type, i32 0, i32 0, i32 0, i32 1), align 8, !dbg !2485, !tbaa !1113
  %19 = bitcast %struct._typeobject* %18 to %struct._object*, !dbg !2486
  %20 = load i8*, i8** %buf, align 8, !dbg !2487, !tbaa !1019
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* %20, %struct._typeobject* @PyCPointer_Type), !dbg !2488
  store %struct._object* %call6, %struct._object** %result, align 8, !dbg !2489, !tbaa !1019
  %21 = load %struct._object*, %struct._object** %result, align 8, !dbg !2490, !tbaa !1019
  %cmp7 = icmp eq %struct._object* %21, null, !dbg !2492
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !2493

if.then.8:                                        ; preds = %if.then.1
  %22 = load %struct._object*, %struct._object** %result, align 8, !dbg !2494, !tbaa !1019
  store %struct._object* %22, %struct._object** %retval, !dbg !2495
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2495

if.end.9:                                         ; preds = %if.then.1
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !2496, !tbaa !1019
  %24 = bitcast %struct._object* %23 to i8*, !dbg !2496
  %call10 = call %struct._object* @PyLong_FromVoidPtr(i8* %24), !dbg !2497
  store %struct._object* %call10, %struct._object** %key, align 8, !dbg !2498, !tbaa !1019
  store i32 0, i32* %cleanup.dest.slot, !dbg !2499
  br label %cleanup, !dbg !2499

cleanup:                                          ; preds = %if.end.9, %if.then.8
  %25 = bitcast i8** %name to i8*, !dbg !2500
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !2500
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.27, !dbg !2502

if.else:                                          ; preds = %if.end
  %26 = load %struct._object*, %struct._object** %cls.addr, align 8, !dbg !2503, !tbaa !1019
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !2505
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !2505, !tbaa !1113
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 19, !dbg !2506
  %28 = load i64, i64* %tp_flags, align 8, !dbg !2506, !tbaa !1985
  %and = and i64 %28, 2147483648, !dbg !2507
  %cmp12 = icmp ne i64 %and, 0, !dbg !2508
  br i1 %cmp12, label %if.then.13, label %if.else.25, !dbg !2509

if.then.13:                                       ; preds = %if.else
  %29 = load %struct._object*, %struct._object** %cls.addr, align 8, !dbg !2510, !tbaa !1019
  %30 = bitcast %struct._object* %29 to %struct._typeobject*, !dbg !2512
  store %struct._typeobject* %30, %struct._typeobject** %typ, align 8, !dbg !2513, !tbaa !1019
  %31 = load %struct._typeobject*, %struct._typeobject** %typ, align 8, !dbg !2514, !tbaa !1019
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 1, !dbg !2515
  %32 = load i8*, i8** %tp_name, align 8, !dbg !2515, !tbaa !2516
  %call14 = call i64 @strlen(i8* %32) #8, !dbg !2517
  %add15 = add i64 %call14, 3, !dbg !2518
  %add16 = add i64 %add15, 1, !dbg !2519
  %33 = alloca i8, i64 %add16, !dbg !2520
  store i8* %33, i8** %buf, align 8, !dbg !2521, !tbaa !1019
  %34 = load i8*, i8** %buf, align 8, !dbg !2522, !tbaa !1019
  %35 = load %struct._typeobject*, %struct._typeobject** %typ, align 8, !dbg !2523, !tbaa !1019
  %tp_name17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 1, !dbg !2524
  %36 = load i8*, i8** %tp_name17, align 8, !dbg !2524, !tbaa !2516
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* %36) #2, !dbg !2525
  %37 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCPointer_Type, i32 0, i32 0, i32 0, i32 1), align 8, !dbg !2526, !tbaa !1113
  %38 = bitcast %struct._typeobject* %37 to %struct._object*, !dbg !2527
  %39 = load i8*, i8** %buf, align 8, !dbg !2528, !tbaa !1019
  %40 = load %struct._object*, %struct._object** %cls.addr, align 8, !dbg !2529, !tbaa !1019
  %call19 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8* %39, %struct._typeobject* @PyCPointer_Type, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), %struct._object* %40), !dbg !2530
  store %struct._object* %call19, %struct._object** %result, align 8, !dbg !2531, !tbaa !1019
  %41 = load %struct._object*, %struct._object** %result, align 8, !dbg !2532, !tbaa !1019
  %cmp20 = icmp eq %struct._object* %41, null, !dbg !2534
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !2535

if.then.21:                                       ; preds = %if.then.13
  %42 = load %struct._object*, %struct._object** %result, align 8, !dbg !2536, !tbaa !1019
  store %struct._object* %42, %struct._object** %retval, !dbg !2537
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62, !dbg !2537

if.end.22:                                        ; preds = %if.then.13
  %43 = load %struct._object*, %struct._object** %cls.addr, align 8, !dbg !2538, !tbaa !1019
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0, !dbg !2539
  %44 = load i64, i64* %ob_refcnt23, align 8, !dbg !2540, !tbaa !1069
  %inc24 = add i64 %44, 1, !dbg !2540
  store i64 %inc24, i64* %ob_refcnt23, align 8, !dbg !2540, !tbaa !1069
  %45 = load %struct._object*, %struct._object** %cls.addr, align 8, !dbg !2541, !tbaa !1019
  store %struct._object* %45, %struct._object** %key, align 8, !dbg !2542, !tbaa !1019
  br label %if.end.26, !dbg !2543

if.else.25:                                       ; preds = %if.else
  %46 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2544, !tbaa !1019
  call void @PyErr_SetString(%struct._object* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0)), !dbg !2546
  store %struct._object* null, %struct._object** %retval, !dbg !2547
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62, !dbg !2547

if.end.26:                                        ; preds = %if.end.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %cleanup.cont
  %47 = load %struct._object*, %struct._object** @_ctypes_ptrtype_cache, align 8, !dbg !2548, !tbaa !1019
  %48 = load %struct._object*, %struct._object** %key, align 8, !dbg !2549, !tbaa !1019
  %49 = load %struct._object*, %struct._object** %result, align 8, !dbg !2550, !tbaa !1019
  %call28 = call i32 @PyDict_SetItem(%struct._object* %47, %struct._object* %48, %struct._object* %49), !dbg !2551
  %cmp29 = icmp eq i32 -1, %call28, !dbg !2552
  br i1 %cmp29, label %if.then.30, label %if.end.49, !dbg !2553

if.then.30:                                       ; preds = %if.end.27
  br label %do.body, !dbg !2554

do.body:                                          ; preds = %if.then.30
  %50 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2555
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !2555
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !836, metadata !1023), !dbg !2557
  %51 = load %struct._object*, %struct._object** %result, align 8, !dbg !2558, !tbaa !1019
  store %struct._object* %51, %struct._object** %_py_decref_tmp, align 8, !dbg !2557, !tbaa !1019
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2559, !tbaa !1019
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0, !dbg !2561
  %53 = load i64, i64* %ob_refcnt31, align 8, !dbg !2562, !tbaa !1069
  %dec = add i64 %53, -1, !dbg !2562
  store i64 %dec, i64* %ob_refcnt31, align 8, !dbg !2562, !tbaa !1069
  %cmp32 = icmp ne i64 %dec, 0, !dbg !2563
  br i1 %cmp32, label %if.then.33, label %if.else.34, !dbg !2564

if.then.33:                                       ; preds = %do.body
  br label %if.end.36, !dbg !2565

if.else.34:                                       ; preds = %do.body
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2567, !tbaa !1019
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1, !dbg !2569
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !2569, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4, !dbg !2570
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2570, !tbaa !1115
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2571, !tbaa !1019
  call void %56(%struct._object* %57), !dbg !2572
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  %58 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2573
  call void @llvm.lifetime.end(i64 8, i8* %58) #2, !dbg !2573
  br label %do.cond, !dbg !2575

do.cond:                                          ; preds = %if.end.36
  br label %do.end, !dbg !2576

do.end:                                           ; preds = %do.cond
  br label %do.body.37, !dbg !2578

do.body.37:                                       ; preds = %do.end
  %59 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !2579
  call void @llvm.lifetime.start(i64 8, i8* %59) #2, !dbg !2579
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp38, metadata !840, metadata !1023), !dbg !2581
  %60 = load %struct._object*, %struct._object** %key, align 8, !dbg !2582, !tbaa !1019
  store %struct._object* %60, %struct._object** %_py_decref_tmp38, align 8, !dbg !2581, !tbaa !1019
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !2583, !tbaa !1019
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0, !dbg !2585
  %62 = load i64, i64* %ob_refcnt39, align 8, !dbg !2586, !tbaa !1069
  %dec40 = add i64 %62, -1, !dbg !2586
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !2586, !tbaa !1069
  %cmp41 = icmp ne i64 %dec40, 0, !dbg !2587
  br i1 %cmp41, label %if.then.42, label %if.else.43, !dbg !2588

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46, !dbg !2589

if.else.43:                                       ; preds = %do.body.37
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !2591, !tbaa !1019
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1, !dbg !2593
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !2593, !tbaa !1113
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4, !dbg !2594
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !2594, !tbaa !1115
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !2595, !tbaa !1019
  call void %65(%struct._object* %66), !dbg !2596
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  %67 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !2597
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !2597
  br label %do.cond.47, !dbg !2598

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !2599

do.end.48:                                        ; preds = %do.cond.47
  store %struct._object* null, %struct._object** %retval, !dbg !2601
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62, !dbg !2601

if.end.49:                                        ; preds = %if.end.27
  br label %do.body.50, !dbg !2602

do.body.50:                                       ; preds = %if.end.49
  %68 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !2603
  call void @llvm.lifetime.start(i64 8, i8* %68) #2, !dbg !2603
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp51, metadata !842, metadata !1023), !dbg !2605
  %69 = load %struct._object*, %struct._object** %key, align 8, !dbg !2606, !tbaa !1019
  store %struct._object* %69, %struct._object** %_py_decref_tmp51, align 8, !dbg !2605, !tbaa !1019
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !2607, !tbaa !1019
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0, !dbg !2609
  %71 = load i64, i64* %ob_refcnt52, align 8, !dbg !2610, !tbaa !1069
  %dec53 = add i64 %71, -1, !dbg !2610
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !2610, !tbaa !1069
  %cmp54 = icmp ne i64 %dec53, 0, !dbg !2611
  br i1 %cmp54, label %if.then.55, label %if.else.56, !dbg !2612

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59, !dbg !2613

if.else.56:                                       ; preds = %do.body.50
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !2615, !tbaa !1019
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1, !dbg !2617
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !2617, !tbaa !1113
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4, !dbg !2618
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !2618, !tbaa !1115
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !2619, !tbaa !1019
  call void %74(%struct._object* %75), !dbg !2620
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  %76 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !2621
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !2621
  br label %do.cond.60, !dbg !2623

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !2624

do.end.61:                                        ; preds = %do.cond.60
  %77 = load %struct._object*, %struct._object** %result, align 8, !dbg !2626, !tbaa !1019
  store %struct._object* %77, %struct._object** %retval, !dbg !2627
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62, !dbg !2627

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.62

cleanup.62:                                       ; preds = %NewDefault, %do.end.61, %do.end.48, %if.else.25, %if.then.21, %if.then
  %78 = bitcast i8** %buf to i8*, !dbg !2628
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !2628
  %79 = bitcast %struct._object** %key to i8*, !dbg !2628
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !2628
  %80 = bitcast %struct._typeobject** %typ to i8*, !dbg !2628
  call void @llvm.lifetime.end(i64 8, i8* %80) #2, !dbg !2628
  %81 = bitcast %struct._object** %result to i8*, !dbg !2628
  call void @llvm.lifetime.end(i64 8, i8* %81) #2, !dbg !2628
  %82 = load %struct._object*, %struct._object** %retval, !dbg !2628
  ret %struct._object* %82, !dbg !2628
}

; Function Attrs: uwtable
define internal %struct._object* @pointer(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %typ = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !846, metadata !1023), !dbg !2629
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !847, metadata !1023), !dbg !2630
  %0 = bitcast %struct._object** %result to i8*, !dbg !2631
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2631
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !848, metadata !1023), !dbg !2632
  %1 = bitcast %struct._object** %typ to i8*, !dbg !2633
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2633
  call void @llvm.dbg.declare(metadata %struct._object** %typ, metadata !849, metadata !1023), !dbg !2634
  %2 = load %struct._object*, %struct._object** @_ctypes_ptrtype_cache, align 8, !dbg !2635, !tbaa !1019
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2636, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !2637
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2637, !tbaa !1113
  %5 = bitcast %struct._typeobject* %4 to %struct._object*, !dbg !2638
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %2, %struct._object* %5), !dbg !2639
  store %struct._object* %call, %struct._object** %typ, align 8, !dbg !2640, !tbaa !1019
  %6 = load %struct._object*, %struct._object** %typ, align 8, !dbg !2641, !tbaa !1019
  %tobool = icmp ne %struct._object* %6, null, !dbg !2641
  br i1 %tobool, label %if.then, label %if.end, !dbg !2643

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %typ, align 8, !dbg !2644, !tbaa !1019
  %8 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2645, !tbaa !1019
  %call1 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %7, %struct._object* %8, i8* null), !dbg !2646
  store %struct._object* %call1, %struct._object** %retval, !dbg !2647
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2647

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2648, !tbaa !1019
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !2649
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !2649, !tbaa !1113
  %11 = bitcast %struct._typeobject* %10 to %struct._object*, !dbg !2650
  %call3 = call %struct._object* @POINTER(%struct._object* null, %struct._object* %11), !dbg !2651
  store %struct._object* %call3, %struct._object** %typ, align 8, !dbg !2652, !tbaa !1019
  %12 = load %struct._object*, %struct._object** %typ, align 8, !dbg !2653, !tbaa !1019
  %cmp = icmp eq %struct._object* %12, null, !dbg !2655
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !2656

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2657
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2657

if.end.5:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %typ, align 8, !dbg !2658, !tbaa !1019
  %14 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2659, !tbaa !1019
  %call6 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %13, %struct._object* %14, i8* null), !dbg !2660
  store %struct._object* %call6, %struct._object** %result, align 8, !dbg !2661, !tbaa !1019
  br label %do.body, !dbg !2662

do.body:                                          ; preds = %if.end.5
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2663
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !2663
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !850, metadata !1023), !dbg !2665
  %16 = load %struct._object*, %struct._object** %typ, align 8, !dbg !2666, !tbaa !1019
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !2665, !tbaa !1019
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2667, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !2669
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !2670, !tbaa !1069
  %dec = add i64 %18, -1, !dbg !2670
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2670, !tbaa !1069
  %cmp7 = icmp ne i64 %dec, 0, !dbg !2671
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !2672

if.then.8:                                        ; preds = %do.body
  br label %if.end.10, !dbg !2673

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2675, !tbaa !1019
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !2677
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !2677, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !2678
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2678, !tbaa !1115
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2679, !tbaa !1019
  call void %21(%struct._object* %22), !dbg !2680
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2681
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !2681
  br label %do.cond, !dbg !2683

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !2684

do.end:                                           ; preds = %do.cond
  %24 = load %struct._object*, %struct._object** %result, align 8, !dbg !2686, !tbaa !1019
  store %struct._object* %24, %struct._object** %retval, !dbg !2687
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2687

cleanup:                                          ; preds = %do.end, %if.then.4, %if.then
  %25 = bitcast %struct._object** %typ to i8*, !dbg !2688
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !2688
  %26 = bitcast %struct._object** %result to i8*, !dbg !2688
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !2688
  %27 = load %struct._object*, %struct._object** %retval, !dbg !2688
  ret %struct._object* %27, !dbg !2688
}

; Function Attrs: uwtable
define internal %struct._object* @unpickle(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %typ = alloca %struct._object*, align 8
  %state = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !854, metadata !1023), !dbg !2689
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !855, metadata !1023), !dbg !2690
  %0 = bitcast %struct._object** %typ to i8*, !dbg !2691
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2691
  call void @llvm.dbg.declare(metadata %struct._object** %typ, metadata !856, metadata !1023), !dbg !2692
  %1 = bitcast %struct._object** %state to i8*, !dbg !2693
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2693
  call void @llvm.dbg.declare(metadata %struct._object** %state, metadata !857, metadata !1023), !dbg !2694
  %2 = bitcast %struct._object** %result to i8*, !dbg !2695
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2695
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !858, metadata !1023), !dbg !2696
  %3 = bitcast %struct._object** %tmp to i8*, !dbg !2697
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2697
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !859, metadata !1023), !dbg !2698
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2699, !tbaa !1019
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), %struct._object** %typ, %struct._object** %state), !dbg !2701
  %tobool = icmp ne i32 %call, 0, !dbg !2701
  br i1 %tobool, label %if.end, label %if.then, !dbg !2702

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2703
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2703

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %typ, align 8, !dbg !2704, !tbaa !1019
  %6 = load %struct._object*, %struct._object** %typ, align 8, !dbg !2705, !tbaa !1019
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %5, %struct._Py_Identifier* @unpickle.PyId___new__, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), %struct._object* %6), !dbg !2706
  store %struct._object* %call1, %struct._object** %result, align 8, !dbg !2707, !tbaa !1019
  %7 = load %struct._object*, %struct._object** %result, align 8, !dbg !2708, !tbaa !1019
  %cmp = icmp eq %struct._object* %7, null, !dbg !2710
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2711

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2712
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2712

if.end.3:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %result, align 8, !dbg !2713, !tbaa !1019
  %9 = load %struct._object*, %struct._object** %state, align 8, !dbg !2714, !tbaa !1019
  %call4 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %8, %struct._Py_Identifier* @unpickle.PyId___setstate__, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), %struct._object* %9), !dbg !2715
  store %struct._object* %call4, %struct._object** %tmp, align 8, !dbg !2716, !tbaa !1019
  %10 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !2717, !tbaa !1019
  %cmp5 = icmp eq %struct._object* %10, null, !dbg !2718
  br i1 %cmp5, label %if.then.6, label %if.end.11, !dbg !2719

if.then.6:                                        ; preds = %if.end.3
  br label %do.body, !dbg !2720

do.body:                                          ; preds = %if.then.6
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2721
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !2721
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !860, metadata !1023), !dbg !2723
  %12 = load %struct._object*, %struct._object** %result, align 8, !dbg !2724, !tbaa !1019
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !2723, !tbaa !1019
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2725, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !2727
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !2728, !tbaa !1069
  %dec = add i64 %14, -1, !dbg !2728
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2728, !tbaa !1069
  %cmp8 = icmp ne i64 %dec, 0, !dbg !2729
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !2730

if.then.9:                                        ; preds = %do.body
  br label %if.end.10, !dbg !2731

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2733, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !2735
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2735, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !2736
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2736, !tbaa !1115
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2737, !tbaa !1019
  call void %17(%struct._object* %18), !dbg !2738
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2739
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !2739
  br label %do.cond, !dbg !2741

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !2742

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2744
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2744

if.end.11:                                        ; preds = %if.end.3
  br label %do.body.12, !dbg !2745

do.body.12:                                       ; preds = %if.end.11
  %20 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !2746
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !2746
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !864, metadata !1023), !dbg !2748
  %21 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !2749, !tbaa !1019
  store %struct._object* %21, %struct._object** %_py_decref_tmp14, align 8, !dbg !2748, !tbaa !1019
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2750, !tbaa !1019
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !2752
  %23 = load i64, i64* %ob_refcnt15, align 8, !dbg !2753, !tbaa !1069
  %dec16 = add i64 %23, -1, !dbg !2753
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !2753, !tbaa !1069
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !2754
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !2755

if.then.18:                                       ; preds = %do.body.12
  br label %if.end.22, !dbg !2756

if.else.19:                                       ; preds = %do.body.12
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2758, !tbaa !1019
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !2760
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !2760, !tbaa !1113
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !2761
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !2761, !tbaa !1115
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2762, !tbaa !1019
  call void %26(%struct._object* %27), !dbg !2763
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %28 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !2764
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !2764
  br label %do.cond.23, !dbg !2766

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !2767

do.end.24:                                        ; preds = %do.cond.23
  %29 = load %struct._object*, %struct._object** %result, align 8, !dbg !2769, !tbaa !1019
  store %struct._object* %29, %struct._object** %retval, !dbg !2770
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2770

cleanup:                                          ; preds = %do.end.24, %do.end, %if.then.2, %if.then
  %30 = bitcast %struct._object** %tmp to i8*, !dbg !2771
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !2771
  %31 = bitcast %struct._object** %result to i8*, !dbg !2771
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !2771
  %32 = bitcast %struct._object** %state to i8*, !dbg !2771
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !2771
  %33 = bitcast %struct._object** %typ to i8*, !dbg !2771
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !2771
  %34 = load %struct._object*, %struct._object** %retval, !dbg !2771
  ret %struct._object* %34, !dbg !2771
}

; Function Attrs: uwtable
define internal %struct._object* @buffer_info(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %shape = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !868, metadata !1023), !dbg !2772
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !869, metadata !1023), !dbg !2773
  %0 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !2774
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2774
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %dict, metadata !870, metadata !1023), !dbg !2775
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2776, !tbaa !1019
  %call = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %1), !dbg !2777
  store %struct.StgDictObject* %call, %struct.StgDictObject** %dict, align 8, !dbg !2775, !tbaa !1019
  %2 = bitcast %struct._object** %shape to i8*, !dbg !2778
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2778
  call void @llvm.dbg.declare(metadata %struct._object** %shape, metadata !871, metadata !1023), !dbg !2779
  %3 = bitcast i64* %i to i8*, !dbg !2780
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2780
  call void @llvm.dbg.declare(metadata i64* %i, metadata !872, metadata !1023), !dbg !2781
  %4 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2782, !tbaa !1019
  %cmp = icmp eq %struct.StgDictObject* %4, null, !dbg !2784
  br i1 %cmp, label %if.then, label %if.end, !dbg !2785

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2786, !tbaa !1019
  %call1 = call %struct.StgDictObject* @PyObject_stgdict(%struct._object* %5), !dbg !2787
  store %struct.StgDictObject* %call1, %struct.StgDictObject** %dict, align 8, !dbg !2788, !tbaa !1019
  br label %if.end, !dbg !2789

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2790, !tbaa !1019
  %cmp2 = icmp eq %struct.StgDictObject* %6, null, !dbg !2792
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2793

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2794, !tbaa !1019
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.58, i32 0, i32 0)), !dbg !2796
  store %struct._object* null, %struct._object** %retval, !dbg !2797
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2797

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2798, !tbaa !1019
  %ndim = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %8, i32 0, i32 15, !dbg !2799
  %9 = load i32, i32* %ndim, align 4, !dbg !2799, !tbaa !2800
  %conv = sext i32 %9 to i64, !dbg !2798
  %call5 = call %struct._object* @PyTuple_New(i64 %conv), !dbg !2801
  store %struct._object* %call5, %struct._object** %shape, align 8, !dbg !2802, !tbaa !1019
  %10 = load %struct._object*, %struct._object** %shape, align 8, !dbg !2803, !tbaa !1019
  %cmp6 = icmp eq %struct._object* %10, null, !dbg !2805
  br i1 %cmp6, label %if.then.8, label %if.end.9, !dbg !2806

if.then.8:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !2807
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2807

if.end.9:                                         ; preds = %if.end.4
  store i64 0, i64* %i, align 8, !dbg !2808, !tbaa !1264
  br label %for.cond, !dbg !2810

for.cond:                                         ; preds = %for.inc, %if.end.9
  %11 = load i64, i64* %i, align 8, !dbg !2811, !tbaa !1264
  %12 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2815, !tbaa !1019
  %ndim10 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %12, i32 0, i32 15, !dbg !2816
  %13 = load i32, i32* %ndim10, align 4, !dbg !2816, !tbaa !2800
  %conv11 = sext i32 %13 to i64, !dbg !2817
  %cmp12 = icmp slt i64 %11, %conv11, !dbg !2818
  br i1 %cmp12, label %for.body, label %for.end, !dbg !2819

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %i, align 8, !dbg !2820, !tbaa !1264
  %15 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2821, !tbaa !1019
  %shape14 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %15, i32 0, i32 16, !dbg !2822
  %16 = load i64*, i64** %shape14, align 8, !dbg !2822, !tbaa !2823
  %arrayidx = getelementptr i64, i64* %16, i64 %14, !dbg !2821
  %17 = load i64, i64* %arrayidx, align 8, !dbg !2821, !tbaa !1264
  %call15 = call %struct._object* @PyLong_FromSsize_t(i64 %17), !dbg !2824
  %18 = load i64, i64* %i, align 8, !dbg !2825, !tbaa !1264
  %19 = load %struct._object*, %struct._object** %shape, align 8, !dbg !2826, !tbaa !1019
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*, !dbg !2827
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1, !dbg !2828
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %18, !dbg !2829
  store %struct._object* %call15, %struct._object** %arrayidx16, align 8, !dbg !2830, !tbaa !1019
  br label %for.inc, !dbg !2831

for.inc:                                          ; preds = %for.body
  %21 = load i64, i64* %i, align 8, !dbg !2832, !tbaa !1264
  %inc = add i64 %21, 1, !dbg !2832
  store i64 %inc, i64* %i, align 8, !dbg !2832, !tbaa !1264
  br label %for.cond, !dbg !2833

for.end:                                          ; preds = %for.cond
  %call17 = call %struct._object* @PyErr_Occurred(), !dbg !2834
  %tobool = icmp ne %struct._object* %call17, null, !dbg !2834
  br i1 %tobool, label %if.then.18, label %if.end.23, !dbg !2835

if.then.18:                                       ; preds = %for.end
  br label %do.body, !dbg !2836

do.body:                                          ; preds = %if.then.18
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2837
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !2837
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !873, metadata !1023), !dbg !2839
  %23 = load %struct._object*, %struct._object** %shape, align 8, !dbg !2840, !tbaa !1019
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !2839, !tbaa !1019
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2841, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !2843
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !2844, !tbaa !1069
  %dec = add i64 %25, -1, !dbg !2844
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2844, !tbaa !1069
  %cmp19 = icmp ne i64 %dec, 0, !dbg !2845
  br i1 %cmp19, label %if.then.21, label %if.else, !dbg !2846

if.then.21:                                       ; preds = %do.body
  br label %if.end.22, !dbg !2847

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2849, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !2851
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2851, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !2852
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2852, !tbaa !1115
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2853, !tbaa !1019
  call void %28(%struct._object* %29), !dbg !2854
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2855
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !2855
  br label %do.cond, !dbg !2857

do.cond:                                          ; preds = %if.end.22
  br label %do.end, !dbg !2858

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2860
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2860

if.end.23:                                        ; preds = %for.end
  %31 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2861, !tbaa !1019
  %format = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %31, i32 0, i32 14, !dbg !2862
  %32 = load i8*, i8** %format, align 8, !dbg !2862, !tbaa !2863
  %33 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2864, !tbaa !1019
  %ndim24 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %33, i32 0, i32 15, !dbg !2865
  %34 = load i32, i32* %ndim24, align 4, !dbg !2865, !tbaa !2800
  %35 = load %struct._object*, %struct._object** %shape, align 8, !dbg !2866, !tbaa !1019
  %call25 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* %32, i32 %34, %struct._object* %35), !dbg !2867
  store %struct._object* %call25, %struct._object** %retval, !dbg !2868
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2868

cleanup:                                          ; preds = %if.end.23, %do.end, %if.then.8, %if.then.3
  %36 = bitcast i64* %i to i8*, !dbg !2869
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !2869
  %37 = bitcast %struct._object** %shape to i8*, !dbg !2869
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !2869
  %38 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !2869
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !2869
  %39 = load %struct._object*, %struct._object** %retval, !dbg !2869
  ret %struct._object* %39, !dbg !2869
}

; Function Attrs: uwtable
define internal %struct._object* @resize(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct.tagCDataObject*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %ptr = alloca i8*, align 8
  %ptr28 = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !879, metadata !1023), !dbg !2870
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !880, metadata !1023), !dbg !2871
  %0 = bitcast %struct.tagCDataObject** %obj to i8*, !dbg !2872
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2872
  call void @llvm.dbg.declare(metadata %struct.tagCDataObject** %obj, metadata !881, metadata !1023), !dbg !2873
  %1 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !2874
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2874
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %dict, metadata !882, metadata !1023), !dbg !2875
  %2 = bitcast i64* %size to i8*, !dbg !2876
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2876
  call void @llvm.dbg.declare(metadata i64* %size, metadata !883, metadata !1023), !dbg !2877
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2878, !tbaa !1019
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), %struct.tagCDataObject** %obj, i64* %size), !dbg !2880
  %tobool = icmp ne i32 %call, 0, !dbg !2880
  br i1 %tobool, label %if.end, label %if.then, !dbg !2881

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2882
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !2882

if.end:                                           ; preds = %entry
  %4 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2883, !tbaa !1019
  %5 = bitcast %struct.tagCDataObject* %4 to %struct._object*, !dbg !2884
  %call1 = call %struct.StgDictObject* @PyObject_stgdict(%struct._object* %5), !dbg !2885
  store %struct.StgDictObject* %call1, %struct.StgDictObject** %dict, align 8, !dbg !2886, !tbaa !1019
  %6 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2887, !tbaa !1019
  %cmp = icmp eq %struct.StgDictObject* %6, null, !dbg !2889
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2890

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2891, !tbaa !1019
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i32 0, i32 0)), !dbg !2893
  store %struct._object* null, %struct._object** %retval, !dbg !2894
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !2894

if.end.3:                                         ; preds = %if.end
  %8 = load i64, i64* %size, align 8, !dbg !2895, !tbaa !1264
  %9 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2897, !tbaa !1019
  %size4 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %9, i32 0, i32 1, !dbg !2898
  %10 = load i64, i64* %size4, align 8, !dbg !2898, !tbaa !2349
  %cmp5 = icmp slt i64 %8, %10, !dbg !2899
  br i1 %cmp5, label %if.then.6, label %if.end.9, !dbg !2900

if.then.6:                                        ; preds = %if.end.3
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2901, !tbaa !1019
  %12 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2903, !tbaa !1019
  %size7 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %12, i32 0, i32 1, !dbg !2904
  %13 = load i64, i64* %size7, align 8, !dbg !2904, !tbaa !2349
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0), i64 %13), !dbg !2905
  store %struct._object* null, %struct._object** %retval, !dbg !2906
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !2906

if.end.9:                                         ; preds = %if.end.3
  %14 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2907, !tbaa !1019
  %b_needsfree = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %14, i32 0, i32 2, !dbg !2909
  %15 = load i32, i32* %b_needsfree, align 4, !dbg !2909, !tbaa !2910
  %cmp10 = icmp eq i32 %15, 0, !dbg !2912
  br i1 %cmp10, label %if.then.11, label %if.end.13, !dbg !2913

if.then.11:                                       ; preds = %if.end.9
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2914, !tbaa !1019
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.63, i32 0, i32 0)), !dbg !2916
  store %struct._object* null, %struct._object** %retval, !dbg !2917
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !2917

if.end.13:                                        ; preds = %if.end.9
  %17 = load i64, i64* %size, align 8, !dbg !2918, !tbaa !1264
  %cmp14 = icmp ule i64 %17, 16, !dbg !2920
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !2921

if.then.15:                                       ; preds = %if.end.13
  %18 = load i64, i64* %size, align 8, !dbg !2922, !tbaa !1264
  %19 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2924, !tbaa !1019
  %b_size = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %19, i32 0, i32 4, !dbg !2925
  store i64 %18, i64* %b_size, align 8, !dbg !2926, !tbaa !2927
  br label %done, !dbg !2928

if.end.16:                                        ; preds = %if.end.13
  %20 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2929, !tbaa !1019
  %b_ptr = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %20, i32 0, i32 1, !dbg !2930
  %21 = load i8*, i8** %b_ptr, align 8, !dbg !2930, !tbaa !2931
  %22 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2932, !tbaa !1019
  %b_value = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %22, i32 0, i32 8, !dbg !2933
  %23 = bitcast %union.value* %b_value to i8*, !dbg !2934
  %cmp17 = icmp ne i8* %21, %23, !dbg !2935
  br i1 %cmp17, label %if.else, label %if.then.18, !dbg !2936

if.then.18:                                       ; preds = %if.end.16
  %24 = bitcast i8** %ptr to i8*, !dbg !2937
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !2937
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !884, metadata !1023), !dbg !2938
  %25 = load i64, i64* %size, align 8, !dbg !2939, !tbaa !1264
  %call19 = call i8* @PyMem_Malloc(i64 %25), !dbg !2940
  store i8* %call19, i8** %ptr, align 8, !dbg !2938, !tbaa !1019
  %26 = load i8*, i8** %ptr, align 8, !dbg !2941, !tbaa !1019
  %cmp20 = icmp eq i8* %26, null, !dbg !2943
  br i1 %cmp20, label %if.then.21, label %if.end.23, !dbg !2944

if.then.21:                                       ; preds = %if.then.18
  %call22 = call %struct._object* @PyErr_NoMemory(), !dbg !2945
  store %struct._object* %call22, %struct._object** %retval, !dbg !2946
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2946

if.end.23:                                        ; preds = %if.then.18
  %27 = load i8*, i8** %ptr, align 8, !dbg !2947, !tbaa !1019
  %28 = load i64, i64* %size, align 8, !dbg !2948, !tbaa !1264
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 %28, i32 1, i1 false), !dbg !2949
  %29 = load i8*, i8** %ptr, align 8, !dbg !2950, !tbaa !1019
  %30 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2951, !tbaa !1019
  %b_ptr24 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %30, i32 0, i32 1, !dbg !2952
  %31 = load i8*, i8** %b_ptr24, align 8, !dbg !2952, !tbaa !2931
  %32 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2953, !tbaa !1019
  %b_size25 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %32, i32 0, i32 4, !dbg !2954
  %33 = load i64, i64* %b_size25, align 8, !dbg !2954, !tbaa !2927
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %29, i8* %31, i64 %33, i32 1, i1 false), !dbg !2955
  %34 = load i8*, i8** %ptr, align 8, !dbg !2956, !tbaa !1019
  %35 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2957, !tbaa !1019
  %b_ptr26 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %35, i32 0, i32 1, !dbg !2958
  store i8* %34, i8** %b_ptr26, align 8, !dbg !2959, !tbaa !2931
  %36 = load i64, i64* %size, align 8, !dbg !2960, !tbaa !1264
  %37 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2961, !tbaa !1019
  %b_size27 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %37, i32 0, i32 4, !dbg !2962
  store i64 %36, i64* %b_size27, align 8, !dbg !2963, !tbaa !2927
  store i32 0, i32* %cleanup.dest.slot, !dbg !2964
  br label %cleanup, !dbg !2964

cleanup:                                          ; preds = %if.end.23, %if.then.21
  %38 = bitcast i8** %ptr to i8*, !dbg !2965
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !2965
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.40, !dbg !2967

if.else:                                          ; preds = %if.end.16
  %39 = bitcast i8** %ptr28 to i8*, !dbg !2968
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !2968
  call void @llvm.dbg.declare(metadata i8** %ptr28, metadata !887, metadata !1023), !dbg !2969
  %40 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2970, !tbaa !1019
  %b_ptr29 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %40, i32 0, i32 1, !dbg !2971
  %41 = load i8*, i8** %b_ptr29, align 8, !dbg !2971, !tbaa !2931
  %42 = load i64, i64* %size, align 8, !dbg !2972, !tbaa !1264
  %call30 = call i8* @PyMem_Realloc(i8* %41, i64 %42), !dbg !2973
  store i8* %call30, i8** %ptr28, align 8, !dbg !2969, !tbaa !1019
  %43 = load i8*, i8** %ptr28, align 8, !dbg !2974, !tbaa !1019
  %cmp31 = icmp eq i8* %43, null, !dbg !2976
  br i1 %cmp31, label %if.then.32, label %if.end.34, !dbg !2977

if.then.32:                                       ; preds = %if.else
  %call33 = call %struct._object* @PyErr_NoMemory(), !dbg !2978
  store %struct._object* %call33, %struct._object** %retval, !dbg !2979
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37, !dbg !2979

if.end.34:                                        ; preds = %if.else
  %44 = load i8*, i8** %ptr28, align 8, !dbg !2980, !tbaa !1019
  %45 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2981, !tbaa !1019
  %b_ptr35 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %45, i32 0, i32 1, !dbg !2982
  store i8* %44, i8** %b_ptr35, align 8, !dbg !2983, !tbaa !2931
  %46 = load i64, i64* %size, align 8, !dbg !2984, !tbaa !1264
  %47 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2985, !tbaa !1019
  %b_size36 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %47, i32 0, i32 4, !dbg !2986
  store i64 %46, i64* %b_size36, align 8, !dbg !2987, !tbaa !2927
  store i32 0, i32* %cleanup.dest.slot, !dbg !2988
  br label %cleanup.37, !dbg !2988

cleanup.37:                                       ; preds = %if.end.34, %if.then.32
  %48 = bitcast i8** %ptr28 to i8*, !dbg !2989
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !2989
  %cleanup.dest.38 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.37
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.38, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.39, label %NewDefault.1

cleanup.cont.39:                                  ; preds = %LeafBlock.2
  br label %if.end.40

if.end.40:                                        ; preds = %cleanup.cont.39, %cleanup.cont
  br label %done, !dbg !2990

done:                                             ; preds = %if.end.40, %if.then.15
  %49 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2991, !tbaa !1069
  %inc = add i64 %49, 1, !dbg !2991
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2991, !tbaa !1069
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2992
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !2992

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.41

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.41

cleanup.41:                                       ; preds = %NewDefault.1, %NewDefault, %done, %if.then.11, %if.then.6, %if.then.2, %if.then
  %50 = bitcast i64* %size to i8*, !dbg !2993
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !2993
  %51 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !2993
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !2993
  %52 = bitcast %struct.tagCDataObject** %obj to i8*, !dbg !2993
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !2993
  %53 = load %struct._object*, %struct._object** %retval, !dbg !2993
  ret %struct._object* %53, !dbg !2993
}

; Function Attrs: uwtable
define internal %struct._object* @py_dl_open(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %name2 = alloca %struct._object*, align 8
  %name_str = alloca i8*, align 8
  %handle = alloca i8*, align 8
  %mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %errmsg = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !891, metadata !1023), !dbg !2994
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !892, metadata !1023), !dbg !2995
  %0 = bitcast %struct._object** %name to i8*, !dbg !2996
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2996
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !893, metadata !1023), !dbg !2997
  %1 = bitcast %struct._object** %name2 to i8*, !dbg !2996
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2996
  call void @llvm.dbg.declare(metadata %struct._object** %name2, metadata !894, metadata !1023), !dbg !2998
  %2 = bitcast i8** %name_str to i8*, !dbg !2999
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2999
  call void @llvm.dbg.declare(metadata i8** %name_str, metadata !895, metadata !1023), !dbg !3000
  %3 = bitcast i8** %handle to i8*, !dbg !3001
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3001
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !896, metadata !1023), !dbg !3002
  %4 = bitcast i32* %mode to i8*, !dbg !3003
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !3003
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !897, metadata !1023), !dbg !3004
  store i32 2, i32* %mode, align 4, !dbg !3004, !tbaa !1255
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3005, !tbaa !1019
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), %struct._object** %name, i32* %mode), !dbg !3007
  %tobool = icmp ne i32 %call, 0, !dbg !3007
  br i1 %tobool, label %if.end, label %if.then, !dbg !3008

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3009
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3009

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %mode, align 4, !dbg !3010, !tbaa !1255
  %or = or i32 %6, 2, !dbg !3010
  store i32 %or, i32* %mode, align 4, !dbg !3010, !tbaa !1255
  %7 = load %struct._object*, %struct._object** %name, align 8, !dbg !3011, !tbaa !1019
  %cmp = icmp ne %struct._object* %7, @_Py_NoneStruct, !dbg !3013
  br i1 %cmp, label %if.then.1, label %if.else.10, !dbg !3014

if.then.1:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %name, align 8, !dbg !3015, !tbaa !1019
  %9 = bitcast %struct._object** %name2 to i8*, !dbg !3018
  %call2 = call i32 @PyUnicode_FSConverter(%struct._object* %8, i8* %9), !dbg !3019
  %cmp3 = icmp eq i32 %call2, 0, !dbg !3020
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !3021

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval, !dbg !3022
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3022

if.end.5:                                         ; preds = %if.then.1
  %10 = load %struct._object*, %struct._object** %name2, align 8, !dbg !3023, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !3025
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3025, !tbaa !1113
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19, !dbg !3026
  %12 = load i64, i64* %tp_flags, align 8, !dbg !3026, !tbaa !1985
  %and = and i64 %12, 134217728, !dbg !3027
  %cmp6 = icmp ne i64 %and, 0, !dbg !3028
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !3029

if.then.7:                                        ; preds = %if.end.5
  %13 = load %struct._object*, %struct._object** %name2, align 8, !dbg !3030, !tbaa !1019
  %14 = bitcast %struct._object* %13 to %struct.PyBytesObject*, !dbg !3031
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %14, i32 0, i32 2, !dbg !3032
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !3033
  store i8* %arraydecay, i8** %name_str, align 8, !dbg !3034, !tbaa !1019
  br label %if.end.9, !dbg !3035

if.else:                                          ; preds = %if.end.5
  %15 = load %struct._object*, %struct._object** %name2, align 8, !dbg !3036, !tbaa !1019
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*, !dbg !3037
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1, !dbg !3038
  %17 = load i64, i64* %ob_size, align 8, !dbg !3038, !tbaa !1594
  %tobool8 = icmp ne i64 %17, 0, !dbg !3039
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !3039

cond.true:                                        ; preds = %if.else
  %18 = load %struct._object*, %struct._object** %name2, align 8, !dbg !3040, !tbaa !1019
  %19 = bitcast %struct._object* %18 to %struct.PyByteArrayObject*, !dbg !3042
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %19, i32 0, i32 3, !dbg !3043
  %20 = load i8*, i8** %ob_start, align 8, !dbg !3043, !tbaa !3044
  br label %cond.end, !dbg !3039

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !3046

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %20, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ], !dbg !3039
  store i8* %cond, i8** %name_str, align 8, !dbg !3048, !tbaa !1019
  br label %if.end.9

if.end.9:                                         ; preds = %cond.end, %if.then.7
  br label %if.end.11, !dbg !3051

if.else.10:                                       ; preds = %if.end
  store i8* null, i8** %name_str, align 8, !dbg !3052, !tbaa !1019
  store %struct._object* null, %struct._object** %name2, align 8, !dbg !3054, !tbaa !1019
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.end.9
  %21 = load i8*, i8** %name_str, align 8, !dbg !3055, !tbaa !1019
  %22 = load i32, i32* %mode, align 4, !dbg !3056, !tbaa !1255
  %call12 = call i8* @dlopen(i8* %21, i32 %22) #2, !dbg !3057
  store i8* %call12, i8** %handle, align 8, !dbg !3058, !tbaa !1019
  br label %do.body, !dbg !3059

do.body:                                          ; preds = %if.end.11
  %23 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3060
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !3060
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !898, metadata !1023), !dbg !3062
  %24 = load %struct._object*, %struct._object** %name2, align 8, !dbg !3063, !tbaa !1019
  store %struct._object* %24, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3062, !tbaa !1019
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3064, !tbaa !1019
  %cmp13 = icmp ne %struct._object* %25, null, !dbg !3065
  br i1 %cmp13, label %if.then.14, label %if.end.21, !dbg !3066

if.then.14:                                       ; preds = %do.body
  br label %do.body.15, !dbg !3067

do.body.15:                                       ; preds = %if.then.14
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3069
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !3069
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !900, metadata !1023), !dbg !3071
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3072, !tbaa !1019
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8, !dbg !3071, !tbaa !1019
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3073, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !3075
  %29 = load i64, i64* %ob_refcnt, align 8, !dbg !3076, !tbaa !1069
  %dec = add i64 %29, -1, !dbg !3076
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3076, !tbaa !1069
  %cmp16 = icmp ne i64 %dec, 0, !dbg !3077
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !3078

if.then.17:                                       ; preds = %do.body.15
  br label %if.end.20, !dbg !3079

if.else.18:                                       ; preds = %do.body.15
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3081, !tbaa !1019
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !3083
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !3083, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !3084
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3084, !tbaa !1115
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3085, !tbaa !1019
  call void %32(%struct._object* %33), !dbg !3086
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.17
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3087
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !3087
  br label %do.cond, !dbg !3089

do.cond:                                          ; preds = %if.end.20
  br label %do.end, !dbg !3090

do.end:                                           ; preds = %do.cond
  br label %if.end.21, !dbg !3092

if.end.21:                                        ; preds = %do.end, %do.body
  %35 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3094
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !3094
  br label %do.cond.22, !dbg !3097

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !3098

do.end.23:                                        ; preds = %do.cond.22
  %36 = load i8*, i8** %handle, align 8, !dbg !3100, !tbaa !1019
  %tobool24 = icmp ne i8* %36, null, !dbg !3100
  br i1 %tobool24, label %if.end.30, label %if.then.25, !dbg !3101

if.then.25:                                       ; preds = %do.end.23
  %37 = bitcast i8** %errmsg to i8*, !dbg !3102
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !3102
  call void @llvm.dbg.declare(metadata i8** %errmsg, metadata !903, metadata !1023), !dbg !3103
  %call26 = call i8* @dlerror() #2, !dbg !3104
  store i8* %call26, i8** %errmsg, align 8, !dbg !3103, !tbaa !1019
  %38 = load i8*, i8** %errmsg, align 8, !dbg !3105, !tbaa !1019
  %tobool27 = icmp ne i8* %38, null, !dbg !3105
  br i1 %tobool27, label %if.end.29, label %if.then.28, !dbg !3107

if.then.28:                                       ; preds = %if.then.25
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0), i8** %errmsg, align 8, !dbg !3108, !tbaa !1019
  br label %if.end.29, !dbg !3109

if.end.29:                                        ; preds = %if.then.28, %if.then.25
  %39 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !3110, !tbaa !1019
  %40 = load i8*, i8** %errmsg, align 8, !dbg !3111, !tbaa !1019
  call void @PyErr_SetString(%struct._object* %39, i8* %40), !dbg !3112
  store %struct._object* null, %struct._object** %retval, !dbg !3113
  store i32 1, i32* %cleanup.dest.slot
  %41 = bitcast i8** %errmsg to i8*, !dbg !3114
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !3114
  br label %cleanup

if.end.30:                                        ; preds = %do.end.23
  %42 = load i8*, i8** %handle, align 8, !dbg !3115, !tbaa !1019
  %call31 = call %struct._object* @PyLong_FromVoidPtr(i8* %42), !dbg !3116
  store %struct._object* %call31, %struct._object** %retval, !dbg !3117
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3117

cleanup:                                          ; preds = %if.end.30, %if.end.29, %if.then.4, %if.then
  %43 = bitcast i32* %mode to i8*, !dbg !3118
  call void @llvm.lifetime.end(i64 4, i8* %43) #2, !dbg !3118
  %44 = bitcast i8** %handle to i8*, !dbg !3118
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !3118
  %45 = bitcast i8** %name_str to i8*, !dbg !3118
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !3118
  %46 = bitcast %struct._object** %name2 to i8*, !dbg !3118
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !3118
  %47 = bitcast %struct._object** %name to i8*, !dbg !3118
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !3118
  %48 = load %struct._object*, %struct._object** %retval, !dbg !3118
  ret %struct._object* %48, !dbg !3118
}

; Function Attrs: uwtable
define internal %struct._object* @py_dl_close(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %handle = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !908, metadata !1023), !dbg !3119
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !909, metadata !1023), !dbg !3120
  %0 = bitcast i8** %handle to i8*, !dbg !3121
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3121
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !910, metadata !1023), !dbg !3122
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3123, !tbaa !1019
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i32 (%struct._object*, i8**)* @_parse_voidp, i8** %handle), !dbg !3125
  %tobool = icmp ne i32 %call, 0, !dbg !3125
  br i1 %tobool, label %if.end, label %if.then, !dbg !3126

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3127
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3127

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %handle, align 8, !dbg !3128, !tbaa !1019
  %call1 = call i32 @dlclose(i8* %2) #2, !dbg !3130
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3130
  br i1 %tobool2, label %if.then.3, label %if.end.5, !dbg !3131

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !3132, !tbaa !1019
  %call4 = call i8* @dlerror() #2, !dbg !3134
  call void @PyErr_SetString(%struct._object* %3, i8* %call4), !dbg !3135
  store %struct._object* null, %struct._object** %retval, !dbg !3136
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3136

if.end.5:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3137, !tbaa !1069
  %inc = add i64 %4, 1, !dbg !3137
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3137, !tbaa !1069
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3138
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3138

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %5 = bitcast i8** %handle to i8*, !dbg !3139
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !3139
  %6 = load %struct._object*, %struct._object** %retval, !dbg !3139
  ret %struct._object* %6, !dbg !3139
}

; Function Attrs: uwtable
define internal %struct._object* @py_dl_sym(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %handle = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !919, metadata !1023), !dbg !3140
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !920, metadata !1023), !dbg !3141
  %0 = bitcast i8** %name to i8*, !dbg !3142
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3142
  call void @llvm.dbg.declare(metadata i8** %name, metadata !921, metadata !1023), !dbg !3143
  %1 = bitcast i8** %handle to i8*, !dbg !3144
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3144
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !922, metadata !1023), !dbg !3145
  %2 = bitcast i8** %ptr to i8*, !dbg !3146
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3146
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !923, metadata !1023), !dbg !3147
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3148, !tbaa !1019
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 (%struct._object*, i8**)* @_parse_voidp, i8** %handle, i8** %name), !dbg !3150
  %tobool = icmp ne i32 %call, 0, !dbg !3150
  br i1 %tobool, label %if.end, label %if.then, !dbg !3151

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3152
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3152

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %handle, align 8, !dbg !3153, !tbaa !1019
  %5 = load i8*, i8** %name, align 8, !dbg !3154, !tbaa !1019
  %call1 = call i8* @dlsym(i8* %4, i8* %5) #2, !dbg !3155
  store i8* %call1, i8** %ptr, align 8, !dbg !3156, !tbaa !1019
  %6 = load i8*, i8** %ptr, align 8, !dbg !3157, !tbaa !1019
  %tobool2 = icmp ne i8* %6, null, !dbg !3157
  br i1 %tobool2, label %if.end.5, label %if.then.3, !dbg !3159

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !3160, !tbaa !1019
  %call4 = call i8* @dlerror() #2, !dbg !3162
  call void @PyErr_SetString(%struct._object* %7, i8* %call4), !dbg !3163
  store %struct._object* null, %struct._object** %retval, !dbg !3164
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3164

if.end.5:                                         ; preds = %if.end
  %8 = load i8*, i8** %ptr, align 8, !dbg !3165, !tbaa !1019
  %call6 = call %struct._object* @PyLong_FromVoidPtr(i8* %8), !dbg !3166
  store %struct._object* %call6, %struct._object** %retval, !dbg !3167
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3167

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %9 = bitcast i8** %ptr to i8*, !dbg !3168
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !3168
  %10 = bitcast i8** %handle to i8*, !dbg !3168
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3168
  %11 = bitcast i8** %name to i8*, !dbg !3168
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !3168
  %12 = load %struct._object*, %struct._object** %retval, !dbg !3168
  ret %struct._object* %12, !dbg !3168
}

; Function Attrs: uwtable
define internal %struct._object* @align_func(%struct._object* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !926, metadata !1023), !dbg !3169
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !927, metadata !1023), !dbg !3170
  %0 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !3171
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3171
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %dict, metadata !928, metadata !1023), !dbg !3172
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3173, !tbaa !1019
  %call = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %1), !dbg !3174
  store %struct.StgDictObject* %call, %struct.StgDictObject** %dict, align 8, !dbg !3175, !tbaa !1019
  %2 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !3176, !tbaa !1019
  %tobool = icmp ne %struct.StgDictObject* %2, null, !dbg !3176
  br i1 %tobool, label %if.then, label %if.end, !dbg !3178

if.then:                                          ; preds = %entry
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !3179, !tbaa !1019
  %align = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %3, i32 0, i32 2, !dbg !3180
  %4 = load i64, i64* %align, align 8, !dbg !3180, !tbaa !3181
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %4), !dbg !3182
  store %struct._object* %call1, %struct._object** %retval, !dbg !3183
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3183

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3184, !tbaa !1019
  %call2 = call %struct.StgDictObject* @PyObject_stgdict(%struct._object* %5), !dbg !3185
  store %struct.StgDictObject* %call2, %struct.StgDictObject** %dict, align 8, !dbg !3186, !tbaa !1019
  %6 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !3187, !tbaa !1019
  %tobool3 = icmp ne %struct.StgDictObject* %6, null, !dbg !3187
  br i1 %tobool3, label %if.then.4, label %if.end.7, !dbg !3189

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !3190, !tbaa !1019
  %align5 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %7, i32 0, i32 2, !dbg !3191
  %8 = load i64, i64* %align5, align 8, !dbg !3191, !tbaa !3181
  %call6 = call %struct._object* @PyLong_FromSsize_t(i64 %8), !dbg !3192
  store %struct._object* %call6, %struct._object** %retval, !dbg !3193
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3193

if.end.7:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3194, !tbaa !1019
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0)), !dbg !3195
  store %struct._object* null, %struct._object** %retval, !dbg !3196
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3196

cleanup:                                          ; preds = %if.end.7, %if.then.4, %if.then
  %10 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !3197
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3197
  %11 = load %struct._object*, %struct._object** %retval, !dbg !3197
  ret %struct._object* %11, !dbg !3197
}

; Function Attrs: uwtable
define internal %struct._object* @sizeof_func(%struct._object* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !931, metadata !1023), !dbg !3198
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !932, metadata !1023), !dbg !3199
  %0 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !3200
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3200
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %dict, metadata !933, metadata !1023), !dbg !3201
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3202, !tbaa !1019
  %call = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %1), !dbg !3203
  store %struct.StgDictObject* %call, %struct.StgDictObject** %dict, align 8, !dbg !3204, !tbaa !1019
  %2 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !3205, !tbaa !1019
  %tobool = icmp ne %struct.StgDictObject* %2, null, !dbg !3205
  br i1 %tobool, label %if.then, label %if.end, !dbg !3207

if.then:                                          ; preds = %entry
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !3208, !tbaa !1019
  %size = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %3, i32 0, i32 1, !dbg !3209
  %4 = load i64, i64* %size, align 8, !dbg !3209, !tbaa !2349
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %4), !dbg !3210
  store %struct._object* %call1, %struct._object** %retval, !dbg !3211
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3211

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3212, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !3214
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3214, !tbaa !1113
  %cmp = icmp eq %struct._typeobject* %6, @PyCData_Type, !dbg !3215
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !3216

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3217, !tbaa !1019
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !3219
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !3219, !tbaa !1113
  %call3 = call i32 @PyType_IsSubtype(%struct._typeobject* %8, %struct._typeobject* @PyCData_Type), !dbg !3220
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3220
  br i1 %tobool4, label %if.then.5, label %if.end.7, !dbg !3221

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3222, !tbaa !1019
  %10 = bitcast %struct._object* %9 to %struct.tagCDataObject*, !dbg !3223
  %b_size = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %10, i32 0, i32 4, !dbg !3224
  %11 = load i64, i64* %b_size, align 8, !dbg !3224, !tbaa !2927
  %call6 = call %struct._object* @PyLong_FromSsize_t(i64 %11), !dbg !3225
  store %struct._object* %call6, %struct._object** %retval, !dbg !3226
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3226

if.end.7:                                         ; preds = %lor.lhs.false
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3227, !tbaa !1019
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i32 0, i32 0)), !dbg !3228
  store %struct._object* null, %struct._object** %retval, !dbg !3229
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3229

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then
  %13 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !3230
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !3230
  %14 = load %struct._object*, %struct._object** %retval, !dbg !3230
  ret %struct._object* %14, !dbg !3230
}

; Function Attrs: uwtable
define internal %struct._object* @byref(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %parg = alloca %struct.tagPyCArgObject*, align 8
  %obj = alloca %struct._object*, align 8
  %pyoffset = alloca %struct._object*, align 8
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !936, metadata !1023), !dbg !3231
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !937, metadata !1023), !dbg !3232
  %0 = bitcast %struct.tagPyCArgObject** %parg to i8*, !dbg !3233
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3233
  call void @llvm.dbg.declare(metadata %struct.tagPyCArgObject** %parg, metadata !938, metadata !1023), !dbg !3234
  %1 = bitcast %struct._object** %obj to i8*, !dbg !3235
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3235
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !939, metadata !1023), !dbg !3236
  %2 = bitcast %struct._object** %pyoffset to i8*, !dbg !3237
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3237
  call void @llvm.dbg.declare(metadata %struct._object** %pyoffset, metadata !940, metadata !1023), !dbg !3238
  store %struct._object* null, %struct._object** %pyoffset, align 8, !dbg !3238, !tbaa !1019
  %3 = bitcast i64* %offset to i8*, !dbg !3239
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3239
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !941, metadata !1023), !dbg !3240
  store i64 0, i64* %offset, align 8, !dbg !3240, !tbaa !1264
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3241, !tbaa !1019
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i64 1, i64 2, %struct._object** %obj, %struct._object** %pyoffset), !dbg !3243
  %tobool = icmp ne i32 %call, 0, !dbg !3243
  br i1 %tobool, label %if.end, label %if.then, !dbg !3244

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3245
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3245

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %pyoffset, align 8, !dbg !3246, !tbaa !1019
  %tobool1 = icmp ne %struct._object* %5, null, !dbg !3246
  br i1 %tobool1, label %if.then.2, label %if.end.8, !dbg !3248

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %pyoffset, align 8, !dbg !3249, !tbaa !1019
  %call3 = call i64 @PyNumber_AsSsize_t(%struct._object* %6, %struct._object* null), !dbg !3251
  store i64 %call3, i64* %offset, align 8, !dbg !3252, !tbaa !1264
  %7 = load i64, i64* %offset, align 8, !dbg !3253, !tbaa !1264
  %cmp = icmp eq i64 %7, -1, !dbg !3255
  br i1 %cmp, label %land.lhs.true, label %if.end.7, !dbg !3256

land.lhs.true:                                    ; preds = %if.then.2
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !3257
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !3257
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !3259

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !3260
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3260

if.end.7:                                         ; preds = %land.lhs.true, %if.then.2
  br label %if.end.8, !dbg !3261

if.end.8:                                         ; preds = %if.end.7, %if.end
  %8 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3262, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !3264
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3264, !tbaa !1113
  %cmp9 = icmp eq %struct._typeobject* %9, @PyCData_Type, !dbg !3265
  br i1 %cmp9, label %if.end.16, label %lor.lhs.false, !dbg !3266

lor.lhs.false:                                    ; preds = %if.end.8
  %10 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3267, !tbaa !1019
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !3269
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !3269, !tbaa !1113
  %call11 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyCData_Type), !dbg !3270
  %tobool12 = icmp ne i32 %call11, 0, !dbg !3270
  br i1 %tobool12, label %if.end.16, label %if.then.13, !dbg !3271

if.then.13:                                       ; preds = %lor.lhs.false
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3272, !tbaa !1019
  %13 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3274, !tbaa !1019
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3275
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !3275, !tbaa !1113
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 1, !dbg !3276
  %15 = load i8*, i8** %tp_name, align 8, !dbg !3276, !tbaa !2516
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i32 0, i32 0), i8* %15), !dbg !3277
  store %struct._object* null, %struct._object** %retval, !dbg !3278
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3278

if.end.16:                                        ; preds = %lor.lhs.false, %if.end.8
  %call17 = call %struct.tagPyCArgObject* @PyCArgObject_new(), !dbg !3279
  store %struct.tagPyCArgObject* %call17, %struct.tagPyCArgObject** %parg, align 8, !dbg !3280, !tbaa !1019
  %16 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %parg, align 8, !dbg !3281, !tbaa !1019
  %cmp18 = icmp eq %struct.tagPyCArgObject* %16, null, !dbg !3283
  br i1 %cmp18, label %if.then.19, label %if.end.20, !dbg !3284

if.then.19:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval, !dbg !3285
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3285

if.end.20:                                        ; preds = %if.end.16
  %17 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %parg, align 8, !dbg !3286, !tbaa !1019
  %tag = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %17, i32 0, i32 2, !dbg !3287
  store i8 80, i8* %tag, align 1, !dbg !3288, !tbaa !1169
  %18 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %parg, align 8, !dbg !3289, !tbaa !1019
  %pffi_type = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %18, i32 0, i32 1, !dbg !3290
  store %struct._ffi_type* @ffi_type_pointer, %struct._ffi_type** %pffi_type, align 8, !dbg !3291, !tbaa !1164
  %19 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3292, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !3293
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !3294, !tbaa !1069
  %inc = add i64 %20, 1, !dbg !3294
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3294, !tbaa !1069
  %21 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3295, !tbaa !1019
  %22 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %parg, align 8, !dbg !3296, !tbaa !1019
  %obj21 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %22, i32 0, i32 4, !dbg !3297
  store %struct._object* %21, %struct._object** %obj21, align 8, !dbg !3298, !tbaa !1173
  %23 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3299, !tbaa !1019
  %24 = bitcast %struct._object* %23 to %struct.tagCDataObject*, !dbg !3300
  %b_ptr = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %24, i32 0, i32 1, !dbg !3301
  %25 = load i8*, i8** %b_ptr, align 8, !dbg !3301, !tbaa !2931
  %26 = load i64, i64* %offset, align 8, !dbg !3302, !tbaa !1264
  %add.ptr = getelementptr i8, i8* %25, i64 %26, !dbg !3303
  %27 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %parg, align 8, !dbg !3304, !tbaa !1019
  %value = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %27, i32 0, i32 3, !dbg !3305
  %p = bitcast %union.anon* %value to i8**, !dbg !3306
  store i8* %add.ptr, i8** %p, align 8, !dbg !3307, !tbaa !1019
  %28 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %parg, align 8, !dbg !3308, !tbaa !1019
  %29 = bitcast %struct.tagPyCArgObject* %28 to %struct._object*, !dbg !3309
  store %struct._object* %29, %struct._object** %retval, !dbg !3310
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3310

cleanup:                                          ; preds = %if.end.20, %if.then.19, %if.then.13, %if.then.6, %if.then
  %30 = bitcast i64* %offset to i8*, !dbg !3311
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !3311
  %31 = bitcast %struct._object** %pyoffset to i8*, !dbg !3311
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !3311
  %32 = bitcast %struct._object** %obj to i8*, !dbg !3311
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !3311
  %33 = bitcast %struct.tagPyCArgObject** %parg to i8*, !dbg !3311
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !3311
  %34 = load %struct._object*, %struct._object** %retval, !dbg !3311
  ret %struct._object* %34, !dbg !3311
}

; Function Attrs: uwtable
define internal %struct._object* @addressof(%struct._object* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !944, metadata !1023), !dbg !3312
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !945, metadata !1023), !dbg !3313
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3314, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3316
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3316, !tbaa !1113
  %cmp = icmp eq %struct._typeobject* %1, @PyCData_Type, !dbg !3317
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3318

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3319, !tbaa !1019
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3321
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3321, !tbaa !1113
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyCData_Type), !dbg !3322
  %tobool = icmp ne i32 %call, 0, !dbg !3322
  br i1 %tobool, label %if.then, label %if.end, !dbg !3323

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3324, !tbaa !1019
  %5 = bitcast %struct._object* %4 to %struct.tagCDataObject*, !dbg !3325
  %b_ptr = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %5, i32 0, i32 1, !dbg !3326
  %6 = load i8*, i8** %b_ptr, align 8, !dbg !3326, !tbaa !2931
  %call2 = call %struct._object* @PyLong_FromVoidPtr(i8* %6), !dbg !3327
  store %struct._object* %call2, %struct._object** %retval, !dbg !3328
  br label %return, !dbg !3328

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3329, !tbaa !1019
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0)), !dbg !3330
  store %struct._object* null, %struct._object** %retval, !dbg !3331
  br label %return, !dbg !3331

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval, !dbg !3332
  ret %struct._object* %8, !dbg !3332
}

; Function Attrs: uwtable
define internal %struct._object* @call_function(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %func = alloca i8*, align 8
  %arguments = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !948, metadata !1023), !dbg !3333
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !949, metadata !1023), !dbg !3334
  %0 = bitcast i8** %func to i8*, !dbg !3335
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3335
  call void @llvm.dbg.declare(metadata i8** %func, metadata !950, metadata !1023), !dbg !3336
  %1 = bitcast %struct._object** %arguments to i8*, !dbg !3337
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3337
  call void @llvm.dbg.declare(metadata %struct._object** %arguments, metadata !951, metadata !1023), !dbg !3338
  %2 = bitcast %struct._object** %result to i8*, !dbg !3339
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3339
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !952, metadata !1023), !dbg !3340
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3341, !tbaa !1019
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 (%struct._object*, i8**)* @_parse_voidp, i8** %func, %struct._typeobject* @PyTuple_Type, %struct._object** %arguments), !dbg !3343
  %tobool = icmp ne i32 %call, 0, !dbg !3343
  br i1 %tobool, label %if.end, label %if.then, !dbg !3344

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3345
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3345

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %func, align 8, !dbg !3346, !tbaa !1019
  %5 = bitcast i8* %4 to i32 ()*, !dbg !3347
  %6 = load %struct._object*, %struct._object** %arguments, align 8, !dbg !3348, !tbaa !1019
  %call1 = call %struct._object* @_ctypes_callproc(i32 ()* %5, %struct._object* %6, i32 0, %struct._object* null, %struct._object* null, %struct._object* null), !dbg !3349
  store %struct._object* %call1, %struct._object** %result, align 8, !dbg !3350, !tbaa !1019
  %7 = load %struct._object*, %struct._object** %result, align 8, !dbg !3351, !tbaa !1019
  store %struct._object* %7, %struct._object** %retval, !dbg !3352
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3352

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct._object** %result to i8*, !dbg !3353
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !3353
  %9 = bitcast %struct._object** %arguments to i8*, !dbg !3353
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !3353
  %10 = bitcast i8** %func to i8*, !dbg !3353
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3353
  %11 = load %struct._object*, %struct._object** %retval, !dbg !3353
  ret %struct._object* %11, !dbg !3353
}

; Function Attrs: uwtable
define internal %struct._object* @call_cdeclfunction(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %func = alloca i8*, align 8
  %arguments = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !955, metadata !1023), !dbg !3354
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !956, metadata !1023), !dbg !3355
  %0 = bitcast i8** %func to i8*, !dbg !3356
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3356
  call void @llvm.dbg.declare(metadata i8** %func, metadata !957, metadata !1023), !dbg !3357
  %1 = bitcast %struct._object** %arguments to i8*, !dbg !3358
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3358
  call void @llvm.dbg.declare(metadata %struct._object** %arguments, metadata !958, metadata !1023), !dbg !3359
  %2 = bitcast %struct._object** %result to i8*, !dbg !3360
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3360
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !959, metadata !1023), !dbg !3361
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3362, !tbaa !1019
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 (%struct._object*, i8**)* @_parse_voidp, i8** %func, %struct._typeobject* @PyTuple_Type, %struct._object** %arguments), !dbg !3364
  %tobool = icmp ne i32 %call, 0, !dbg !3364
  br i1 %tobool, label %if.end, label %if.then, !dbg !3365

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3366
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3366

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %func, align 8, !dbg !3367, !tbaa !1019
  %5 = bitcast i8* %4 to i32 ()*, !dbg !3368
  %6 = load %struct._object*, %struct._object** %arguments, align 8, !dbg !3369, !tbaa !1019
  %call1 = call %struct._object* @_ctypes_callproc(i32 ()* %5, %struct._object* %6, i32 1, %struct._object* null, %struct._object* null, %struct._object* null), !dbg !3370
  store %struct._object* %call1, %struct._object** %result, align 8, !dbg !3371, !tbaa !1019
  %7 = load %struct._object*, %struct._object** %result, align 8, !dbg !3372, !tbaa !1019
  store %struct._object* %7, %struct._object** %retval, !dbg !3373
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3373

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct._object** %result to i8*, !dbg !3374
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !3374
  %9 = bitcast %struct._object** %arguments to i8*, !dbg !3374
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !3374
  %10 = bitcast i8** %func to i8*, !dbg !3374
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3374
  %11 = load %struct._object*, %struct._object** %retval, !dbg !3374
  ret %struct._object* %11, !dbg !3374
}

; Function Attrs: uwtable
define internal %struct._object* @My_PyObj_FromPtr(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ob = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !962, metadata !1023), !dbg !3375
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !963, metadata !1023), !dbg !3376
  %0 = bitcast %struct._object** %ob to i8*, !dbg !3377
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3377
  call void @llvm.dbg.declare(metadata %struct._object** %ob, metadata !964, metadata !1023), !dbg !3378
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3379, !tbaa !1019
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i32 (%struct._object*, i8**)* @converter, %struct._object** %ob), !dbg !3381
  %tobool = icmp ne i32 %call, 0, !dbg !3381
  br i1 %tobool, label %if.end, label %if.then, !dbg !3382

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3383
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3383

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %ob, align 8, !dbg !3384, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !3385
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !3386, !tbaa !1069
  %inc = add i64 %3, 1, !dbg !3386
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3386, !tbaa !1069
  %4 = load %struct._object*, %struct._object** %ob, align 8, !dbg !3387, !tbaa !1019
  store %struct._object* %4, %struct._object** %retval, !dbg !3388
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3388

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %ob to i8*, !dbg !3389
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !3389
  %6 = load %struct._object*, %struct._object** %retval, !dbg !3389
  ret %struct._object* %6, !dbg !3389
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @My_Py_INCREF(%struct._object* %self, %struct._object* %arg) #4 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !971, metadata !1023), !dbg !3390
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !972, metadata !1023), !dbg !3391
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3392, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 0, !dbg !3393
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !3394, !tbaa !1069
  %inc = add i64 %1, 1, !dbg !3394
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3394, !tbaa !1069
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3395, !tbaa !1019
  %ob_refcnt1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !3396
  %3 = load i64, i64* %ob_refcnt1, align 8, !dbg !3397, !tbaa !1069
  %inc2 = add i64 %3, 1, !dbg !3397
  store i64 %inc2, i64* %ob_refcnt1, align 8, !dbg !3397, !tbaa !1069
  %4 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3398, !tbaa !1019
  ret %struct._object* %4, !dbg !3399
}

; Function Attrs: uwtable
define internal %struct._object* @My_Py_DECREF(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !975, metadata !1023), !dbg !3400
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !976, metadata !1023), !dbg !3401
  br label %do.body, !dbg !3402

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3403
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3403
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !977, metadata !1023), !dbg !3405
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3406, !tbaa !1019
  store %struct._object* %1, %struct._object** %_py_decref_tmp, align 8, !dbg !3405, !tbaa !1019
  %2 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3407, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !3409
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !3410, !tbaa !1069
  %dec = add i64 %3, -1, !dbg !3410
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3410, !tbaa !1069
  %cmp = icmp ne i64 %dec, 0, !dbg !3411
  br i1 %cmp, label %if.then, label %if.else, !dbg !3412

if.then:                                          ; preds = %do.body
  br label %if.end, !dbg !3413

if.else:                                          ; preds = %do.body
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3415, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !3417
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3417, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 4, !dbg !3418
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3418, !tbaa !1115
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3419, !tbaa !1019
  call void %6(%struct._object* %7), !dbg !3420
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3421
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !3421
  br label %do.end, !dbg !3423

do.end:                                           ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3424, !tbaa !1019
  %ob_refcnt1 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !3425
  %10 = load i64, i64* %ob_refcnt1, align 8, !dbg !3426, !tbaa !1069
  %inc = add i64 %10, 1, !dbg !3426
  store i64 %inc, i64* %ob_refcnt1, align 8, !dbg !3426, !tbaa !1069
  %11 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3427, !tbaa !1019
  ret %struct._object* %11, !dbg !3428
}

declare void @PyMem_Free(i8*) #3

declare void @PyObject_Free(i8*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

declare %struct.StgDictObject* @PyObject_stgdict(%struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i64 @PyLong_AsLong(%struct._object*) #3

declare i8* @PyBytes_AsString(%struct._object*) #3

declare i32* @PyUnicode_AsWideCharString(%struct._object*, i64*) #3

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i32 @ffi_prep_cif(%struct.ffi_cif*, i32, i32, %struct._ffi_type*, %struct._ffi_type**) #3

declare %struct._ts* @PyEval_SaveThread() #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare void @ffi_call(%struct.ffi_cif*, void ()*, i8*, i8**) #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

declare i32 @_ctypes_simple_instance(%struct._object*) #3

declare %struct.fielddesc* @_ctypes_get_fielddesc(i8*) #3

declare %struct._object* @PyCData_FromBaseObj(%struct._object*, %struct._object*, i64, i8*) #3

declare void @_ctypes_add_traceback(i8*, i8*, i32) #3

; Function Attrs: uwtable
define internal %struct._object* @get_error_internal(%struct._object* %self, %struct._object* %args, i32 %index) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %index.addr = alloca i32, align 4
  %space = alloca i32*, align 8
  %errobj = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !802, metadata !1023), !dbg !3429
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !803, metadata !1023), !dbg !3430
  store i32 %index, i32* %index.addr, align 4, !tbaa !1255
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !804, metadata !1023), !dbg !3431
  %0 = bitcast i32** %space to i8*, !dbg !3432
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3432
  call void @llvm.dbg.declare(metadata i32** %space, metadata !805, metadata !1023), !dbg !3433
  %1 = bitcast %struct._object** %errobj to i8*, !dbg !3434
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3434
  call void @llvm.dbg.declare(metadata %struct._object** %errobj, metadata !806, metadata !1023), !dbg !3435
  %call = call %struct._object* @_ctypes_get_errobj(i32** %space), !dbg !3436
  store %struct._object* %call, %struct._object** %errobj, align 8, !dbg !3435, !tbaa !1019
  %2 = bitcast %struct._object** %result to i8*, !dbg !3437
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3437
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !807, metadata !1023), !dbg !3438
  %3 = load %struct._object*, %struct._object** %errobj, align 8, !dbg !3439, !tbaa !1019
  %cmp = icmp eq %struct._object* %3, null, !dbg !3441
  br i1 %cmp, label %if.then, label %if.end, !dbg !3442

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3443
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3443

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !dbg !3444, !tbaa !1255
  %idxprom = sext i32 %4 to i64, !dbg !3445
  %5 = load i32*, i32** %space, align 8, !dbg !3445, !tbaa !1019
  %arrayidx = getelementptr i32, i32* %5, i64 %idxprom, !dbg !3445
  %6 = load i32, i32* %arrayidx, align 4, !dbg !3445, !tbaa !1255
  %conv = sext i32 %6 to i64, !dbg !3445
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !3446
  store %struct._object* %call1, %struct._object** %result, align 8, !dbg !3447, !tbaa !1019
  br label %do.body, !dbg !3448

do.body:                                          ; preds = %if.end
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3449
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !3449
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !808, metadata !1023), !dbg !3451
  %8 = load %struct._object*, %struct._object** %errobj, align 8, !dbg !3452, !tbaa !1019
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !3451, !tbaa !1019
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3453, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !3455
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !3456, !tbaa !1069
  %dec = add i64 %10, -1, !dbg !3456
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3456, !tbaa !1069
  %cmp2 = icmp ne i64 %dec, 0, !dbg !3457
  br i1 %cmp2, label %if.then.4, label %if.else, !dbg !3458

if.then.4:                                        ; preds = %do.body
  br label %if.end.5, !dbg !3459

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3461, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !3463
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3463, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !3464
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3464, !tbaa !1115
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3465, !tbaa !1019
  call void %13(%struct._object* %14), !dbg !3466
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3467
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !3467
  br label %do.cond, !dbg !3469

do.cond:                                          ; preds = %if.end.5
  br label %do.end, !dbg !3470

do.end:                                           ; preds = %do.cond
  %16 = load %struct._object*, %struct._object** %result, align 8, !dbg !3472, !tbaa !1019
  store %struct._object* %16, %struct._object** %retval, !dbg !3473
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3473

cleanup:                                          ; preds = %do.end, %if.then
  %17 = bitcast %struct._object** %result to i8*, !dbg !3474
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !3474
  %18 = bitcast %struct._object** %errobj to i8*, !dbg !3474
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !3474
  %19 = bitcast i32** %space to i8*, !dbg !3474
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !3474
  %20 = load %struct._object*, %struct._object** %retval, !dbg !3474
  ret %struct._object* %20, !dbg !3474
}

; Function Attrs: uwtable
define internal %struct._object* @set_error_internal(%struct._object* %self, %struct._object* %args, i32 %index) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %index.addr = alloca i32, align 4
  %new_errno = alloca i32, align 4
  %old_errno = alloca i32, align 4
  %errobj = alloca %struct._object*, align 8
  %space = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !816, metadata !1023), !dbg !3475
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !817, metadata !1023), !dbg !3476
  store i32 %index, i32* %index.addr, align 4, !tbaa !1255
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !818, metadata !1023), !dbg !3477
  %0 = bitcast i32* %new_errno to i8*, !dbg !3478
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !3478
  call void @llvm.dbg.declare(metadata i32* %new_errno, metadata !819, metadata !1023), !dbg !3479
  %1 = bitcast i32* %old_errno to i8*, !dbg !3478
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3478
  call void @llvm.dbg.declare(metadata i32* %old_errno, metadata !820, metadata !1023), !dbg !3480
  %2 = bitcast %struct._object** %errobj to i8*, !dbg !3481
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3481
  call void @llvm.dbg.declare(metadata %struct._object** %errobj, metadata !821, metadata !1023), !dbg !3482
  %3 = bitcast i32** %space to i8*, !dbg !3483
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3483
  call void @llvm.dbg.declare(metadata i32** %space, metadata !822, metadata !1023), !dbg !3484
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3485, !tbaa !1019
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i32* %new_errno), !dbg !3487
  %tobool = icmp ne i32 %call, 0, !dbg !3487
  br i1 %tobool, label %if.end, label %if.then, !dbg !3488

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3489
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3489

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @_ctypes_get_errobj(i32** %space), !dbg !3490
  store %struct._object* %call1, %struct._object** %errobj, align 8, !dbg !3491, !tbaa !1019
  %5 = load %struct._object*, %struct._object** %errobj, align 8, !dbg !3492, !tbaa !1019
  %cmp = icmp eq %struct._object* %5, null, !dbg !3494
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !3495

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3496
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3496

if.end.3:                                         ; preds = %if.end
  %6 = load i32, i32* %index.addr, align 4, !dbg !3497, !tbaa !1255
  %idxprom = sext i32 %6 to i64, !dbg !3498
  %7 = load i32*, i32** %space, align 8, !dbg !3498, !tbaa !1019
  %arrayidx = getelementptr i32, i32* %7, i64 %idxprom, !dbg !3498
  %8 = load i32, i32* %arrayidx, align 4, !dbg !3498, !tbaa !1255
  store i32 %8, i32* %old_errno, align 4, !dbg !3499, !tbaa !1255
  %9 = load i32, i32* %new_errno, align 4, !dbg !3500, !tbaa !1255
  %10 = load i32, i32* %index.addr, align 4, !dbg !3501, !tbaa !1255
  %idxprom4 = sext i32 %10 to i64, !dbg !3502
  %11 = load i32*, i32** %space, align 8, !dbg !3502, !tbaa !1019
  %arrayidx5 = getelementptr i32, i32* %11, i64 %idxprom4, !dbg !3502
  store i32 %9, i32* %arrayidx5, align 4, !dbg !3503, !tbaa !1255
  br label %do.body, !dbg !3504

do.body:                                          ; preds = %if.end.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3505
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !3505
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !823, metadata !1023), !dbg !3507
  %13 = load %struct._object*, %struct._object** %errobj, align 8, !dbg !3508, !tbaa !1019
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !3507, !tbaa !1019
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3509, !tbaa !1019
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !3511
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !3512, !tbaa !1069
  %dec = add i64 %15, -1, !dbg !3512
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3512, !tbaa !1069
  %cmp6 = icmp ne i64 %dec, 0, !dbg !3513
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !3514

if.then.7:                                        ; preds = %do.body
  br label %if.end.8, !dbg !3515

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3517, !tbaa !1019
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !3519
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3519, !tbaa !1113
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !3520
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3520, !tbaa !1115
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3521, !tbaa !1019
  call void %18(%struct._object* %19), !dbg !3522
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3523
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !3523
  br label %do.cond, !dbg !3525

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !3526

do.end:                                           ; preds = %do.cond
  %21 = load i32, i32* %old_errno, align 4, !dbg !3528, !tbaa !1255
  %conv = sext i32 %21 to i64, !dbg !3528
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !3529
  store %struct._object* %call9, %struct._object** %retval, !dbg !3530
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3530

cleanup:                                          ; preds = %do.end, %if.then.2, %if.then
  %22 = bitcast i32** %space to i8*, !dbg !3531
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !3531
  %23 = bitcast %struct._object** %errobj to i8*, !dbg !3531
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !3531
  %24 = bitcast i32* %old_errno to i8*, !dbg !3531
  call void @llvm.lifetime.end(i64 4, i8* %24) #2, !dbg !3531
  %25 = bitcast i32* %new_errno to i8*, !dbg !3531
  call void @llvm.lifetime.end(i64 4, i8* %25) #2, !dbg !3531
  %26 = load %struct._object*, %struct._object** %retval, !dbg !3531
  ret %struct._object* %26, !dbg !3531
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

declare %struct._object* @PyLong_FromVoidPtr(i8*) #3

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i8* @PyMem_Realloc(i8*, i64) #3

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #3

; Function Attrs: nounwind
declare i8* @dlopen(i8*, i32) #5

; Function Attrs: nounwind
declare i8* @dlerror() #5

; Function Attrs: uwtable
define internal i32 @_parse_voidp(%struct._object* %obj, i8** %address) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %address.addr = alloca i8**, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !915, metadata !1023), !dbg !3532
  store i8** %address, i8*** %address.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata i8*** %address.addr, metadata !916, metadata !1023), !dbg !3533
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3534, !tbaa !1019
  %call = call i8* @PyLong_AsVoidPtr(%struct._object* %0), !dbg !3535
  %1 = load i8**, i8*** %address.addr, align 8, !dbg !3536, !tbaa !1019
  store i8* %call, i8** %1, align 8, !dbg !3537, !tbaa !1019
  %2 = load i8**, i8*** %address.addr, align 8, !dbg !3538, !tbaa !1019
  %3 = load i8*, i8** %2, align 8, !dbg !3540, !tbaa !1019
  %cmp = icmp eq i8* %3, null, !dbg !3541
  br i1 %cmp, label %if.then, label %if.end, !dbg !3542

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !3543
  br label %return, !dbg !3543

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, !dbg !3544
  br label %return, !dbg !3544

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, !dbg !3545
  ret i32 %4, !dbg !3545
}

; Function Attrs: nounwind
declare i32 @dlclose(i8*) #5

declare i8* @PyLong_AsVoidPtr(%struct._object*) #3

; Function Attrs: nounwind
declare i8* @dlsym(i8*, i8*) #5

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #3

; Function Attrs: uwtable
define internal i32 @converter(%struct._object* %obj, i8** %address) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %address.addr = alloca i8**, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !967, metadata !1023), !dbg !3546
  store i8** %address, i8*** %address.addr, align 8, !tbaa !1019
  call void @llvm.dbg.declare(metadata i8*** %address.addr, metadata !968, metadata !1023), !dbg !3547
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3548, !tbaa !1019
  %call = call i8* @PyLong_AsVoidPtr(%struct._object* %0), !dbg !3549
  %1 = load i8**, i8*** %address.addr, align 8, !dbg !3550, !tbaa !1019
  store i8* %call, i8** %1, align 8, !dbg !3551, !tbaa !1019
  %2 = load i8**, i8*** %address.addr, align 8, !dbg !3552, !tbaa !1019
  %3 = load i8*, i8** %2, align 8, !dbg !3553, !tbaa !1019
  %cmp = icmp ne i8* %3, null, !dbg !3554
  %conv = zext i1 %cmp to i32, !dbg !3554
  ret i32 %conv, !dbg !3555
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1015, !1016, !1017}
!llvm.ident = !{!1018}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !17, subprograms: !483, globals: !979)
!1 = !DIFile(filename: "callproc.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !11}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ffi_abi", file: !4, line: 75, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "build/temp.linux-x86_64-3.4/libffi/include/ffitarget.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "FFI_FIRST_ABI", value: 0)
!7 = !DIEnumerator(name: "FFI_SYSV", value: 1)
!8 = !DIEnumerator(name: "FFI_UNIX64", value: 2)
!9 = !DIEnumerator(name: "FFI_LAST_ABI", value: 3)
!10 = !DIEnumerator(name: "FFI_DEFAULT_ABI", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 204, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "build/temp.linux-x86_64-3.4/libffi/include/ffi.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "FFI_OK", value: 0)
!15 = !DIEnumerator(name: "FFI_BAD_TYPEDEF", value: 1)
!16 = !DIEnumerator(name: "FFI_BAD_ABI", value: 2)
!17 = !{!18, !19, !364, !365, !403, !404, !423, !431, !432, !58, !433, !31, !459, !66, !461, !469, !479}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !21, line: 109, baseType: !22)
!21 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !21, line: 105, size: 128, align: 64, elements: !23)
!23 = !{!24, !32}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !22, file: !21, line: 107, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !26, line: 177, baseType: !27)
!26 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 102, baseType: !29)
!28 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !30, line: 181, baseType: !31)
!30 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!31 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !22, file: !21, line: 108, baseType: !33, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !21, line: 334, size: 3200, align: 64, elements: !35)
!35 = !{!36, !42, !46, !47, !48, !53, !116, !121, !126, !127, !132, !184, !215, !227, !233, !234, !235, !237, !239, !270, !271, !272, !281, !282, !287, !288, !290, !292, !302, !312, !330, !331, !332, !334, !336, !337, !339, !344, !349, !354, !355, !356, !357, !358, !359, !360, !361, !363}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !34, file: !21, line: 335, baseType: !37, size: 192, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !21, line: 114, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 111, size: 192, align: 64, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !38, file: !21, line: 112, baseType: !20, size: 128, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !38, file: !21, line: 113, baseType: !25, size: 64, align: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !34, file: !21, line: 336, baseType: !43, size: 64, align: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !34, file: !21, line: 337, baseType: !25, size: 64, align: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !34, file: !21, line: 337, baseType: !25, size: 64, align: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !34, file: !21, line: 341, baseType: !49, size: 64, align: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !21, line: 308, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !19}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !34, file: !21, line: 342, baseType: !54, size: 64, align: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !21, line: 314, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !19, !59, !58}
!58 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !28, line: 48, baseType: !61)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 246, size: 1728, align: 64, elements: !63)
!62 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!63 = !{!64, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !85, !86, !87, !88, !90, !92, !94, !98, !101, !103, !104, !105, !106, !107, !111, !112}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !61, file: !62, line: 247, baseType: !58, size: 32, align: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !61, file: !62, line: 252, baseType: !66, size: 64, align: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !61, file: !62, line: 253, baseType: !66, size: 64, align: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !61, file: !62, line: 254, baseType: !66, size: 64, align: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !61, file: !62, line: 255, baseType: !66, size: 64, align: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !61, file: !62, line: 256, baseType: !66, size: 64, align: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !61, file: !62, line: 257, baseType: !66, size: 64, align: 64, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !61, file: !62, line: 258, baseType: !66, size: 64, align: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !61, file: !62, line: 259, baseType: !66, size: 64, align: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !61, file: !62, line: 261, baseType: !66, size: 64, align: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !61, file: !62, line: 262, baseType: !66, size: 64, align: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !61, file: !62, line: 263, baseType: !66, size: 64, align: 64, offset: 704)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !61, file: !62, line: 265, baseType: !78, size: 64, align: 64, offset: 768)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !62, line: 161, size: 192, align: 64, elements: !80)
!80 = !{!81, !82, !84}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !79, file: !62, line: 162, baseType: !78, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !79, file: !62, line: 163, baseType: !83, size: 64, align: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !79, file: !62, line: 167, baseType: !58, size: 32, align: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !61, file: !62, line: 267, baseType: !83, size: 64, align: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !61, file: !62, line: 269, baseType: !58, size: 32, align: 32, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !61, file: !62, line: 273, baseType: !58, size: 32, align: 32, offset: 928)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !61, file: !62, line: 275, baseType: !89, size: 64, align: 64, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !30, line: 140, baseType: !31)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !61, file: !62, line: 279, baseType: !91, size: 16, align: 16, offset: 1024)
!91 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !61, file: !62, line: 280, baseType: !93, size: 8, align: 8, offset: 1040)
!93 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !61, file: !62, line: 281, baseType: !95, size: 8, align: 8, offset: 1048)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, align: 8, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 1)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !61, file: !62, line: 285, baseType: !99, size: 64, align: 64, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !62, line: 155, baseType: null)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !61, file: !62, line: 294, baseType: !102, size: 64, align: 64, offset: 1152)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !30, line: 141, baseType: !31)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !61, file: !62, line: 303, baseType: !18, size: 64, align: 64, offset: 1216)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !61, file: !62, line: 304, baseType: !18, size: 64, align: 64, offset: 1280)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !61, file: !62, line: 305, baseType: !18, size: 64, align: 64, offset: 1344)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !61, file: !62, line: 306, baseType: !18, size: 64, align: 64, offset: 1408)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !61, file: !62, line: 307, baseType: !108, size: 64, align: 64, offset: 1472)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 62, baseType: !110)
!109 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!110 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !61, file: !62, line: 309, baseType: !58, size: 32, align: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !61, file: !62, line: 311, baseType: !113, size: 160, align: 8, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, align: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !34, file: !21, line: 343, baseType: !117, size: 64, align: 64, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !21, line: 316, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!19, !19, !66}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !34, file: !21, line: 344, baseType: !122, size: 64, align: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !21, line: 318, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!58, !19, !66, !19}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !34, file: !21, line: 345, baseType: !18, size: 64, align: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !34, file: !21, line: 346, baseType: !128, size: 64, align: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !21, line: 320, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!19, !19}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !34, file: !21, line: 350, baseType: !133, size: 64, align: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !21, line: 278, baseType: !135)
!135 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 236, size: 2176, align: 64, elements: !136)
!136 = !{!137, !142, !143, !144, !145, !146, !151, !153, !154, !155, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !135, file: !21, line: 241, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !21, line: 166, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!19, !19, !19}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !135, file: !21, line: 242, baseType: !138, size: 64, align: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !135, file: !21, line: 243, baseType: !138, size: 64, align: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !135, file: !21, line: 244, baseType: !138, size: 64, align: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !135, file: !21, line: 245, baseType: !138, size: 64, align: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !135, file: !21, line: 246, baseType: !147, size: 64, align: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !21, line: 167, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!19, !19, !19, !19}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !135, file: !21, line: 247, baseType: !152, size: 64, align: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !21, line: 165, baseType: !129)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !135, file: !21, line: 248, baseType: !152, size: 64, align: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !135, file: !21, line: 249, baseType: !152, size: 64, align: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !135, file: !21, line: 250, baseType: !156, size: 64, align: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !21, line: 168, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!58, !19}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !135, file: !21, line: 251, baseType: !152, size: 64, align: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !135, file: !21, line: 252, baseType: !138, size: 64, align: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !135, file: !21, line: 253, baseType: !138, size: 64, align: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !135, file: !21, line: 254, baseType: !138, size: 64, align: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !135, file: !21, line: 255, baseType: !138, size: 64, align: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !135, file: !21, line: 256, baseType: !138, size: 64, align: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !135, file: !21, line: 257, baseType: !152, size: 64, align: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !135, file: !21, line: 258, baseType: !18, size: 64, align: 64, offset: 1088)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !135, file: !21, line: 259, baseType: !152, size: 64, align: 64, offset: 1152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !135, file: !21, line: 261, baseType: !138, size: 64, align: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !135, file: !21, line: 262, baseType: !138, size: 64, align: 64, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !135, file: !21, line: 263, baseType: !138, size: 64, align: 64, offset: 1344)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !135, file: !21, line: 264, baseType: !138, size: 64, align: 64, offset: 1408)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !135, file: !21, line: 265, baseType: !147, size: 64, align: 64, offset: 1472)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !135, file: !21, line: 266, baseType: !138, size: 64, align: 64, offset: 1536)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !135, file: !21, line: 267, baseType: !138, size: 64, align: 64, offset: 1600)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !135, file: !21, line: 268, baseType: !138, size: 64, align: 64, offset: 1664)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !135, file: !21, line: 269, baseType: !138, size: 64, align: 64, offset: 1728)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !135, file: !21, line: 270, baseType: !138, size: 64, align: 64, offset: 1792)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !135, file: !21, line: 272, baseType: !138, size: 64, align: 64, offset: 1856)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !135, file: !21, line: 273, baseType: !138, size: 64, align: 64, offset: 1920)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !135, file: !21, line: 274, baseType: !138, size: 64, align: 64, offset: 1984)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !135, file: !21, line: 275, baseType: !138, size: 64, align: 64, offset: 2048)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !135, file: !21, line: 277, baseType: !152, size: 64, align: 64, offset: 2112)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !34, file: !21, line: 351, baseType: !185, size: 64, align: 64, offset: 832)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !21, line: 292, baseType: !187)
!187 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 280, size: 640, align: 64, elements: !188)
!188 = !{!189, !194, !195, !200, !201, !202, !207, !208, !213, !214}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !187, file: !21, line: 281, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !21, line: 169, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!25, !19}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !187, file: !21, line: 282, baseType: !138, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !187, file: !21, line: 283, baseType: !196, size: 64, align: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !21, line: 170, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!19, !19, !25}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !187, file: !21, line: 284, baseType: !196, size: 64, align: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !187, file: !21, line: 285, baseType: !18, size: 64, align: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !187, file: !21, line: 286, baseType: !203, size: 64, align: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !21, line: 172, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!58, !19, !25, !19}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !187, file: !21, line: 287, baseType: !18, size: 64, align: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !187, file: !21, line: 288, baseType: !209, size: 64, align: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !21, line: 231, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!58, !19, !19}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !187, file: !21, line: 290, baseType: !138, size: 64, align: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !187, file: !21, line: 291, baseType: !196, size: 64, align: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !34, file: !21, line: 352, baseType: !216, size: 64, align: 64, offset: 896)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !21, line: 298, baseType: !218)
!218 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 294, size: 192, align: 64, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !218, file: !21, line: 295, baseType: !190, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !218, file: !21, line: 296, baseType: !138, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !218, file: !21, line: 297, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !21, line: 174, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!58, !19, !19, !19}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !34, file: !21, line: 356, baseType: !228, size: 64, align: 64, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !21, line: 321, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !19}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !26, line: 186, baseType: !25)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !34, file: !21, line: 357, baseType: !147, size: 64, align: 64, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !34, file: !21, line: 358, baseType: !128, size: 64, align: 64, offset: 1088)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !34, file: !21, line: 359, baseType: !236, size: 64, align: 64, offset: 1152)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !21, line: 317, baseType: !139)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !34, file: !21, line: 360, baseType: !238, size: 64, align: 64, offset: 1216)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !21, line: 319, baseType: !224)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !34, file: !21, line: 363, baseType: !240, size: 64, align: 64, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !21, line: 304, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 301, size: 128, align: 64, elements: !243)
!243 = !{!244, !265}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !242, file: !21, line: 302, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !21, line: 193, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!58, !19, !249, !58}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !21, line: 191, baseType: !251)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !21, line: 178, size: 640, align: 64, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !262, !263, !264}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !251, file: !21, line: 179, baseType: !18, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !251, file: !21, line: 180, baseType: !19, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !251, file: !21, line: 181, baseType: !25, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !251, file: !21, line: 182, baseType: !25, size: 64, align: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !251, file: !21, line: 184, baseType: !58, size: 32, align: 32, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !251, file: !21, line: 185, baseType: !58, size: 32, align: 32, offset: 288)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !251, file: !21, line: 186, baseType: !66, size: 64, align: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !251, file: !21, line: 187, baseType: !261, size: 64, align: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !251, file: !21, line: 188, baseType: !261, size: 64, align: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !251, file: !21, line: 189, baseType: !261, size: 64, align: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !251, file: !21, line: 190, baseType: !18, size: 64, align: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !242, file: !21, line: 303, baseType: !266, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !21, line: 194, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !19, !249}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !34, file: !21, line: 366, baseType: !110, size: 64, align: 64, offset: 1344)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !34, file: !21, line: 368, baseType: !43, size: 64, align: 64, offset: 1408)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !34, file: !21, line: 372, baseType: !273, size: 64, align: 64, offset: 1472)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !21, line: 233, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!58, !19, !277, !18}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !21, line: 232, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!58, !19, !18}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !34, file: !21, line: 375, baseType: !156, size: 64, align: 64, offset: 1536)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !34, file: !21, line: 379, baseType: !283, size: 64, align: 64, offset: 1600)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !21, line: 322, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!19, !19, !19, !58}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !34, file: !21, line: 382, baseType: !25, size: 64, align: 64, offset: 1664)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !34, file: !21, line: 385, baseType: !289, size: 64, align: 64, offset: 1728)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !21, line: 323, baseType: !129)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !34, file: !21, line: 386, baseType: !291, size: 64, align: 64, offset: 1792)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !21, line: 324, baseType: !129)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !34, file: !21, line: 389, baseType: !293, size: 64, align: 64, offset: 1856)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !295, line: 40, size: 256, align: 64, elements: !296)
!295 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!296 = !{!297, !298, !300, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !294, file: !295, line: 41, baseType: !43, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !294, file: !295, line: 42, baseType: !299, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !295, line: 18, baseType: !139)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !294, file: !295, line: 43, baseType: !58, size: 32, align: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !294, file: !295, line: 45, baseType: !43, size: 64, align: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !34, file: !21, line: 390, baseType: !303, size: 64, align: 64, offset: 1920)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !305, line: 18, size: 320, align: 64, elements: !306)
!305 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!306 = !{!307, !308, !309, !310, !311}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 19, baseType: !66, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !305, line: 20, baseType: !58, size: 32, align: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !304, file: !305, line: 21, baseType: !25, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !305, line: 22, baseType: !58, size: 32, align: 32, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !304, file: !305, line: 23, baseType: !66, size: 64, align: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !34, file: !21, line: 391, baseType: !313, size: 64, align: 64, offset: 1984)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !315, line: 11, size: 320, align: 64, elements: !316)
!315 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!316 = !{!317, !318, !323, !328, !329}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !315, line: 12, baseType: !66, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !314, file: !315, line: 13, baseType: !319, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !315, line: 8, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!19, !19, !18}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !314, file: !315, line: 14, baseType: !324, size: 64, align: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !315, line: 9, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!58, !19, !19, !18}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !314, file: !315, line: 15, baseType: !66, size: 64, align: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !314, file: !315, line: 16, baseType: !18, size: 64, align: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !34, file: !21, line: 392, baseType: !33, size: 64, align: 64, offset: 2048)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !34, file: !21, line: 393, baseType: !19, size: 64, align: 64, offset: 2112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !34, file: !21, line: 394, baseType: !333, size: 64, align: 64, offset: 2176)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !21, line: 325, baseType: !148)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !34, file: !21, line: 395, baseType: !335, size: 64, align: 64, offset: 2240)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !21, line: 326, baseType: !224)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !34, file: !21, line: 396, baseType: !25, size: 64, align: 64, offset: 2304)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !34, file: !21, line: 397, baseType: !338, size: 64, align: 64, offset: 2368)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !21, line: 327, baseType: !224)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !34, file: !21, line: 398, baseType: !340, size: 64, align: 64, offset: 2432)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !21, line: 329, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!19, !33, !25}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !34, file: !21, line: 399, baseType: !345, size: 64, align: 64, offset: 2496)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !21, line: 328, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!19, !33, !19, !19}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !34, file: !21, line: 400, baseType: !350, size: 64, align: 64, offset: 2560)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !21, line: 307, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !18}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !34, file: !21, line: 401, baseType: !156, size: 64, align: 64, offset: 2624)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !34, file: !21, line: 402, baseType: !19, size: 64, align: 64, offset: 2688)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !34, file: !21, line: 403, baseType: !19, size: 64, align: 64, offset: 2752)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !34, file: !21, line: 404, baseType: !19, size: 64, align: 64, offset: 2816)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !34, file: !21, line: 405, baseType: !19, size: 64, align: 64, offset: 2880)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !34, file: !21, line: 406, baseType: !19, size: 64, align: 64, offset: 2944)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !34, file: !21, line: 407, baseType: !49, size: 64, align: 64, offset: 3008)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !34, file: !21, line: 410, baseType: !362, size: 32, align: 32, offset: 3072)
!362 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !34, file: !21, line: 412, baseType: !49, size: 64, align: 64, offset: 3136)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCArgObject", file: !367, line: 14, baseType: !368)
!367 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_ctypes/ctypes.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "tagPyCArgObject", file: !367, line: 296, size: 512, align: 128, elements: !369)
!369 = !{!370, !371, !382, !383, !401, !402}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !368, file: !367, line: 297, baseType: !20, size: 128, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pffi_type", scope: !368, file: !367, line: 298, baseType: !372, size: 64, align: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_type", file: !12, line: 118, baseType: !374)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ffi_type", file: !12, line: 112, size: 192, align: 64, elements: !375)
!375 = !{!376, !377, !378, !379}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !374, file: !12, line: 114, baseType: !108, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !374, file: !12, line: 115, baseType: !91, size: 16, align: 16, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !374, file: !12, line: 116, baseType: !91, size: 16, align: 16, offset: 80)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !374, file: !12, line: 117, baseType: !380, size: 64, align: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !368, file: !367, line: 299, baseType: !45, size: 8, align: 8, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !368, file: !367, line: 313, baseType: !384, size: 128, align: 128, offset: 256)
!384 = !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !367, line: 300, size: 128, align: 128, elements: !385)
!385 = !{!386, !387, !388, !390, !391, !392, !394, !396, !398, !400}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !384, file: !367, line: 301, baseType: !45, size: 8, align: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !384, file: !367, line: 302, baseType: !45, size: 8, align: 8)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !384, file: !367, line: 303, baseType: !389, size: 16, align: 16)
!389 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !384, file: !367, line: 304, baseType: !58, size: 32, align: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !384, file: !367, line: 305, baseType: !31, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !384, file: !367, line: 307, baseType: !393, size: 64, align: 64)
!393 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !384, file: !367, line: 309, baseType: !395, size: 128, align: 128)
!395 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !384, file: !367, line: 310, baseType: !397, size: 64, align: 64)
!397 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !384, file: !367, line: 311, baseType: !399, size: 32, align: 32)
!399 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !384, file: !367, line: 312, baseType: !18, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !368, file: !367, line: 314, baseType: !19, size: 64, align: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !368, file: !367, line: 315, baseType: !25, size: 64, align: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "argument", file: !406, line: 603, size: 256, align: 128, elements: !407)
!406 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_ctypes/callproc.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!407 = !{!408, !409, !410}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ffi_type", scope: !405, file: !406, line: 604, baseType: !372, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "keep", scope: !405, file: !406, line: 605, baseType: !19, size: 64, align: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !405, file: !406, line: 606, baseType: !411, size: 128, align: 128, offset: 128)
!411 = !DICompositeType(tag: DW_TAG_union_type, name: "result", file: !406, line: 588, size: 128, align: 128, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !411, file: !406, line: 589, baseType: !45, size: 8, align: 8)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !411, file: !406, line: 590, baseType: !45, size: 8, align: 8)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !411, file: !406, line: 591, baseType: !389, size: 16, align: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !411, file: !406, line: 592, baseType: !58, size: 32, align: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !411, file: !406, line: 593, baseType: !31, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !411, file: !406, line: 595, baseType: !393, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !411, file: !406, line: 597, baseType: !395, size: 128, align: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !411, file: !406, line: 598, baseType: !397, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !411, file: !406, line: 599, baseType: !399, size: 32, align: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !411, file: !406, line: 600, baseType: !18, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !425, line: 33, baseType: !426)
!425 = !DIFile(filename: "./Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!426 = !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 25, size: 256, align: 64, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !426, file: !425, line: 26, baseType: !37, size: 192, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !426, file: !425, line: 27, baseType: !430, size: 64, align: 64, offset: 192)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, align: 64, elements: !96)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "CDataObject", file: !367, line: 15, baseType: !435)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "tagCDataObject", file: !367, line: 46, size: 768, align: 128, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !445}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !435, file: !367, line: 47, baseType: !20, size: 128, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "b_ptr", scope: !435, file: !367, line: 48, baseType: !66, size: 64, align: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "b_needsfree", scope: !435, file: !367, line: 49, baseType: !58, size: 32, align: 32, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "b_base", scope: !435, file: !367, line: 50, baseType: !433, size: 64, align: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !435, file: !367, line: 51, baseType: !25, size: 64, align: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "b_length", scope: !435, file: !367, line: 52, baseType: !25, size: 64, align: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "b_index", scope: !435, file: !367, line: 53, baseType: !25, size: 64, align: 64, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "b_objects", scope: !435, file: !367, line: 55, baseType: !19, size: 64, align: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "b_value", scope: !435, file: !367, line: 56, baseType: !446, size: 128, align: 128, offset: 640)
!446 = !DICompositeType(tag: DW_TAG_union_type, name: "value", file: !367, line: 27, size: 128, align: 128, elements: !447)
!447 = !{!448, !452, !453, !454, !455, !456, !457, !458}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !446, file: !367, line: 28, baseType: !449, size: 128, align: 8)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, align: 8, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 16)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !446, file: !367, line: 29, baseType: !389, size: 16, align: 16)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !446, file: !367, line: 30, baseType: !58, size: 32, align: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !446, file: !367, line: 31, baseType: !31, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !446, file: !367, line: 32, baseType: !399, size: 32, align: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !446, file: !367, line: 33, baseType: !397, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ll", scope: !446, file: !367, line: 35, baseType: !393, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !446, file: !367, line: 37, baseType: !395, size: 128, align: 128)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !21, line: 422, baseType: !34)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !463, line: 41, baseType: !464)
!463 = !DIFile(filename: "./Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!464 = !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 31, size: 320, align: 64, elements: !465)
!465 = !{!466, !467, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !464, file: !463, line: 32, baseType: !37, size: 192, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !464, file: !463, line: 33, baseType: !232, size: 64, align: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !464, file: !463, line: 34, baseType: !95, size: 8, align: 8, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyByteArrayObject", file: !471, line: 30, baseType: !472)
!471 = !DIFile(filename: "./Include/bytearrayobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!472 = !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 23, size: 448, align: 64, elements: !473)
!473 = !{!474, !475, !476, !477, !478}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !472, file: !471, line: 24, baseType: !37, size: 192, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ob_alloc", scope: !472, file: !471, line: 25, baseType: !25, size: 64, align: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ob_bytes", scope: !472, file: !471, line: 26, baseType: !66, size: 64, align: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ob_start", scope: !472, file: !471, line: 27, baseType: !66, size: 64, align: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ob_exports", scope: !472, file: !471, line: 29, baseType: !58, size: 32, align: 32, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROC", file: !367, line: 270, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!58}
!483 = !{!484, !499, !504, !555, !600, !639, !643, !653, !662, !683, !778, !796, !800, !810, !814, !825, !844, !852, !866, !877, !889, !906, !911, !917, !924, !929, !934, !942, !946, !953, !960, !965, !969, !973}
!484 = !DISubprogram(name: "_ctypes_get_errobj", scope: !406, file: !406, line: 130, type: !485, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32**)* @_ctypes_get_errobj, variables: !488)
!485 = !DISubroutineType(types: !486)
!486 = !{!19, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!488 = !{!489, !490, !491, !492, !495}
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pspace", arg: 1, scope: !484, file: !406, line: 130, type: !487)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !484, file: !406, line: 132, type: !19)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errobj", scope: !484, file: !406, line: 133, type: !19)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "space", scope: !493, file: !406, line: 155, type: !18)
!493 = distinct !DILexicalBlock(scope: !494, file: !406, line: 154, column: 10)
!494 = distinct !DILexicalBlock(scope: !484, file: !406, line: 146, column: 9)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !496, file: !406, line: 164, type: !19)
!496 = distinct !DILexicalBlock(scope: !497, file: !406, line: 164, column: 16)
!497 = distinct !DILexicalBlock(scope: !498, file: !406, line: 163, column: 43)
!498 = distinct !DILexicalBlock(scope: !493, file: !406, line: 162, column: 13)
!499 = !DISubprogram(name: "PyCArgObject_new", scope: !406, file: !406, line: 429, type: !500, isLocal: false, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: true, function: %struct.tagPyCArgObject* ()* @PyCArgObject_new, variables: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!365}
!502 = !{!503}
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !499, file: !406, line: 431, type: !365)
!504 = !DISubprogram(name: "_ctypes_get_ffi_type", scope: !406, file: !406, line: 707, type: !505, isLocal: false, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: true, function: %struct._ffi_type* (%struct._object*)* @_ctypes_get_ffi_type, variables: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{!372, !19}
!507 = !{!508, !509}
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !504, file: !406, line: 707, type: !19)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !504, file: !406, line: 709, type: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "StgDictObject", file: !367, line: 220, baseType: !512)
!512 = !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 187, size: 1472, align: 64, elements: !513)
!513 = !{!514, !527, !528, !529, !530, !531, !532, !537, !542, !547, !548, !549, !550, !551, !552, !553, !554}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !512, file: !367, line: 188, baseType: !515, size: 320, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictObject", file: !516, line: 28, baseType: !517)
!516 = !DIFile(filename: "./Include/dictobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!517 = !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 23, size: 320, align: 64, elements: !518)
!518 = !{!519, !520, !521, !525}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !517, file: !516, line: 24, baseType: !20, size: 128, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ma_used", scope: !517, file: !516, line: 25, baseType: !25, size: 64, align: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ma_keys", scope: !517, file: !516, line: 26, baseType: !522, size: 64, align: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictKeysObject", file: !516, line: 18, baseType: !524)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "_dictkeysobject", file: !21, line: 461, flags: DIFlagFwdDecl)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ma_values", scope: !517, file: !516, line: 27, baseType: !526, size: 64, align: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !512, file: !367, line: 197, baseType: !25, size: 64, align: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !512, file: !367, line: 198, baseType: !25, size: 64, align: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !512, file: !367, line: 199, baseType: !25, size: 64, align: 64, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ffi_type_pointer", scope: !512, file: !367, line: 200, baseType: !373, size: 192, align: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !512, file: !367, line: 201, baseType: !19, size: 64, align: 64, offset: 704)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "setfunc", scope: !512, file: !367, line: 202, baseType: !533, size: 64, align: 64, offset: 768)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "SETFUNC", file: !367, line: 17, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!19, !18, !19, !25}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "getfunc", scope: !512, file: !367, line: 203, baseType: !538, size: 64, align: 64, offset: 832)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "GETFUNC", file: !367, line: 16, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!19, !18, !25}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "paramfunc", scope: !512, file: !367, line: 204, baseType: !543, size: 64, align: 64, offset: 896)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARAMFUNC", file: !367, line: 18, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!365, !433}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "argtypes", scope: !512, file: !367, line: 207, baseType: !19, size: 64, align: 64, offset: 960)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "converters", scope: !512, file: !367, line: 208, baseType: !19, size: 64, align: 64, offset: 1024)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "restype", scope: !512, file: !367, line: 209, baseType: !19, size: 64, align: 64, offset: 1088)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "checker", scope: !512, file: !367, line: 210, baseType: !19, size: 64, align: 64, offset: 1152)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !512, file: !367, line: 211, baseType: !58, size: 32, align: 32, offset: 1216)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !512, file: !367, line: 214, baseType: !66, size: 64, align: 64, offset: 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !512, file: !367, line: 215, baseType: !58, size: 32, align: 32, offset: 1344)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !512, file: !367, line: 216, baseType: !261, size: 64, align: 64, offset: 1408)
!555 = !DISubprogram(name: "_ctypes_extend_error", scope: !406, file: !406, line: 931, type: !556, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i8*, ...)* @_ctypes_extend_error, variables: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !19, !66, null}
!558 = !{!559, !560, !561, !574, !575, !576, !577, !578, !579, !580, !582, !585, !587, !590, !592, !595, !597}
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc_class", arg: 1, scope: !555, file: !406, line: 931, type: !19)
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 2, scope: !555, file: !406, line: 931, type: !66)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vargs", scope: !555, file: !406, line: 933, type: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !28, line: 79, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !564, line: 50, baseType: !565)
!564 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stdarg.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 933, baseType: !566)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 192, align: 64, elements: !96)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 933, baseType: !568)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 933, size: 192, align: 64, elements: !569)
!569 = !{!570, !571, !572, !573}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !568, file: !1, line: 933, baseType: !362, size: 32, align: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !568, file: !1, line: 933, baseType: !362, size: 32, align: 32, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !568, file: !1, line: 933, baseType: !18, size: 64, align: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !568, file: !1, line: 933, baseType: !18, size: 64, align: 64, offset: 128)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tp", scope: !555, file: !406, line: 934, type: !19)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !555, file: !406, line: 934, type: !19)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !555, file: !406, line: 934, type: !19)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !555, file: !406, line: 934, type: !19)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cls_str", scope: !555, file: !406, line: 934, type: !19)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg_str", scope: !555, file: !406, line: 934, type: !19)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !581, file: !406, line: 963, type: !19)
!581 = distinct !DILexicalBlock(scope: !555, file: !406, line: 963, column: 8)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !583, file: !406, line: 963, type: !19)
!583 = distinct !DILexicalBlock(scope: !584, file: !406, line: 963, column: 94)
!584 = distinct !DILexicalBlock(scope: !581, file: !406, line: 963, column: 60)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !586, file: !406, line: 964, type: !19)
!586 = distinct !DILexicalBlock(scope: !555, file: !406, line: 964, column: 8)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !588, file: !406, line: 964, type: !19)
!588 = distinct !DILexicalBlock(scope: !589, file: !406, line: 964, column: 93)
!589 = distinct !DILexicalBlock(scope: !586, file: !406, line: 964, column: 59)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !591, file: !406, line: 965, type: !19)
!591 = distinct !DILexicalBlock(scope: !555, file: !406, line: 965, column: 8)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !593, file: !406, line: 965, type: !19)
!593 = distinct !DILexicalBlock(scope: !594, file: !406, line: 965, column: 94)
!594 = distinct !DILexicalBlock(scope: !591, file: !406, line: 965, column: 60)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !596, file: !406, line: 966, type: !19)
!596 = distinct !DILexicalBlock(scope: !555, file: !406, line: 966, column: 8)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !598, file: !406, line: 966, type: !19)
!598 = distinct !DILexicalBlock(scope: !599, file: !406, line: 966, column: 93)
!599 = distinct !DILexicalBlock(scope: !596, file: !406, line: 966, column: 59)
!600 = !DISubprogram(name: "_ctypes_callproc", scope: !406, file: !406, line: 1052, type: !601, isLocal: false, isDefinition: true, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32 ()*, %struct._object*, i32, %struct._object*, %struct._object*, %struct._object*)* @_ctypes_callproc, variables: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{!19, !479, !19, !58, !19, !19, !19}
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !625, !626, !627, !630, !632, !636}
!604 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pProc", arg: 1, scope: !600, file: !406, line: 1052, type: !479)
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argtuple", arg: 2, scope: !600, file: !406, line: 1053, type: !19)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 3, scope: !600, file: !406, line: 1058, type: !58)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argtypes", arg: 4, scope: !600, file: !406, line: 1059, type: !19)
!608 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "restype", arg: 5, scope: !600, file: !406, line: 1062, type: !19)
!609 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "checker", arg: 6, scope: !600, file: !406, line: 1063, type: !19)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !600, file: !406, line: 1065, type: !25)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !600, file: !406, line: 1065, type: !25)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argcount", scope: !600, file: !406, line: 1065, type: !25)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argtype_count", scope: !600, file: !406, line: 1065, type: !25)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resbuf", scope: !600, file: !406, line: 1066, type: !18)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !600, file: !406, line: 1067, type: !404)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pa", scope: !600, file: !406, line: 1067, type: !404)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atypes", scope: !600, file: !406, line: 1068, type: !432)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rtype", scope: !600, file: !406, line: 1069, type: !372)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avalues", scope: !600, file: !406, line: 1070, type: !431)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !600, file: !406, line: 1071, type: !19)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "converter", scope: !622, file: !406, line: 1098, type: !19)
!622 = distinct !DILexicalBlock(scope: !623, file: !406, line: 1097, column: 35)
!623 = distinct !DILexicalBlock(scope: !624, file: !406, line: 1097, column: 5)
!624 = distinct !DILexicalBlock(scope: !600, file: !406, line: 1097, column: 5)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !622, file: !406, line: 1099, type: !19)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !622, file: !406, line: 1100, type: !58)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !628, file: !406, line: 1108, type: !19)
!628 = distinct !DILexicalBlock(scope: !629, file: !406, line: 1107, column: 44)
!629 = distinct !DILexicalBlock(scope: !622, file: !406, line: 1107, column: 13)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !631, file: !406, line: 1117, type: !19)
!631 = distinct !DILexicalBlock(scope: !628, file: !406, line: 1117, column: 16)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !633, file: !406, line: 1192, type: !19)
!633 = distinct !DILexicalBlock(scope: !634, file: !406, line: 1192, column: 12)
!634 = distinct !DILexicalBlock(scope: !635, file: !406, line: 1191, column: 5)
!635 = distinct !DILexicalBlock(scope: !600, file: !406, line: 1191, column: 5)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !637, file: !406, line: 1192, type: !19)
!637 = distinct !DILexicalBlock(scope: !638, file: !406, line: 1192, column: 108)
!638 = distinct !DILexicalBlock(scope: !633, file: !406, line: 1192, column: 74)
!639 = !DISubprogram(name: "pymem_destructor", scope: !406, file: !406, line: 87, type: !51, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @pymem_destructor, variables: !640)
!640 = !{!641, !642}
!641 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !639, file: !406, line: 87, type: !19)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !639, file: !406, line: 89, type: !18)
!643 = !DISubprogram(name: "PyCArg_dealloc", scope: !406, file: !406, line: 443, type: !644, isLocal: true, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.tagPyCArgObject*)* @PyCArg_dealloc, variables: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !365}
!646 = !{!647, !648, !650}
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !643, file: !406, line: 443, type: !365)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !649, file: !406, line: 445, type: !19)
!649 = distinct !DILexicalBlock(scope: !643, file: !406, line: 445, column: 8)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !651, file: !406, line: 445, type: !19)
!651 = distinct !DILexicalBlock(scope: !652, file: !406, line: 445, column: 101)
!652 = distinct !DILexicalBlock(scope: !649, file: !406, line: 445, column: 67)
!653 = !DISubprogram(name: "PyCArg_repr", scope: !406, file: !406, line: 450, type: !654, isLocal: true, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.tagPyCArgObject*)* @PyCArg_repr, variables: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{!19, !365}
!656 = !{!657, !658}
!657 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !653, file: !406, line: 450, type: !365)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !653, file: !406, line: 452, type: !659)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, align: 8, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 256)
!662 = !DISubprogram(name: "ConvParam", scope: !406, file: !406, line: 612, type: !663, isLocal: true, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64, %struct.argument*)* @ConvParam, variables: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{!58, !19, !25, !404}
!665 = !{!666, !667, !668, !669, !670, !673, !676, !678, !681}
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !662, file: !406, line: 612, type: !19)
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 2, scope: !662, file: !406, line: 612, type: !25)
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 3, scope: !662, file: !406, line: 612, type: !404)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !662, file: !406, line: 614, type: !510)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "carg", scope: !671, file: !406, line: 619, type: !365)
!671 = distinct !DILexicalBlock(scope: !672, file: !406, line: 618, column: 15)
!672 = distinct !DILexicalBlock(scope: !662, file: !406, line: 618, column: 9)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "carg", scope: !674, file: !406, line: 632, type: !365)
!674 = distinct !DILexicalBlock(scope: !675, file: !406, line: 631, column: 43)
!675 = distinct !DILexicalBlock(scope: !662, file: !406, line: 631, column: 9)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !677, file: !406, line: 686, type: !19)
!677 = distinct !DILexicalBlock(scope: !662, file: !406, line: 685, column: 5)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !679, file: !406, line: 694, type: !58)
!679 = distinct !DILexicalBlock(scope: !680, file: !406, line: 693, column: 18)
!680 = distinct !DILexicalBlock(scope: !677, file: !406, line: 693, column: 13)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !682, file: !406, line: 696, type: !19)
!682 = distinct !DILexicalBlock(scope: !679, file: !406, line: 696, column: 16)
!683 = !DISubprogram(name: "_call_function_pointer", scope: !406, file: !406, line: 742, type: !684, isLocal: true, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32 ()*, i8**, %struct._ffi_type**, %struct._ffi_type*, i8*, i32)* @_call_function_pointer, variables: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{!58, !58, !479, !431, !432, !372, !18, !58}
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !753, !754, !755, !766, !767, !770, !773, !775}
!687 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 1, scope: !683, file: !406, line: 742, type: !58)
!688 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pProc", arg: 2, scope: !683, file: !406, line: 743, type: !479)
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "avalues", arg: 3, scope: !683, file: !406, line: 744, type: !431)
!690 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atypes", arg: 4, scope: !683, file: !406, line: 745, type: !432)
!691 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "restype", arg: 5, scope: !683, file: !406, line: 746, type: !372)
!692 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resmem", arg: 6, scope: !683, file: !406, line: 747, type: !18)
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argcount", arg: 7, scope: !683, file: !406, line: 748, type: !58)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !683, file: !406, line: 751, type: !695)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !697, line: 139, baseType: !698)
!697 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !697, line: 69, size: 1536, align: 64, elements: !699)
!699 = !{!700, !702, !703, !723, !726, !727, !728, !729, !730, !731, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !698, file: !697, line: 72, baseType: !701, size: 64, align: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64, align: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !697, line: 73, baseType: !701, size: 64, align: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !698, file: !697, line: 74, baseType: !704, size: 64, align: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64, align: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !697, line: 44, baseType: !706)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !697, line: 19, size: 832, align: 64, elements: !707)
!707 = !{!708, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !697, line: 21, baseType: !709, size: 64, align: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64, align: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !706, file: !697, line: 22, baseType: !701, size: 64, align: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !706, file: !697, line: 24, baseType: !19, size: 64, align: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !706, file: !697, line: 25, baseType: !19, size: 64, align: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !706, file: !697, line: 26, baseType: !19, size: 64, align: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !706, file: !697, line: 27, baseType: !19, size: 64, align: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !706, file: !697, line: 28, baseType: !19, size: 64, align: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !706, file: !697, line: 30, baseType: !19, size: 64, align: 64, offset: 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !706, file: !697, line: 31, baseType: !19, size: 64, align: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !706, file: !697, line: 32, baseType: !19, size: 64, align: 64, offset: 576)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !706, file: !697, line: 33, baseType: !58, size: 32, align: 32, offset: 640)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !706, file: !697, line: 34, baseType: !58, size: 32, align: 32, offset: 672)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !706, file: !697, line: 37, baseType: !58, size: 32, align: 32, offset: 704)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !706, file: !697, line: 43, baseType: !19, size: 64, align: 64, offset: 768)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !698, file: !697, line: 76, baseType: !724, size: 64, align: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, align: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !697, line: 50, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !698, file: !697, line: 77, baseType: !58, size: 32, align: 32, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !698, file: !697, line: 78, baseType: !45, size: 8, align: 8, offset: 288)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !698, file: !697, line: 80, baseType: !45, size: 8, align: 8, offset: 296)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !698, file: !697, line: 85, baseType: !58, size: 32, align: 32, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !698, file: !697, line: 86, baseType: !58, size: 32, align: 32, offset: 352)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !698, file: !697, line: 88, baseType: !732, size: 64, align: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !697, line: 54, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64, align: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!58, !19, !724, !58, !19}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !698, file: !697, line: 89, baseType: !732, size: 64, align: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !698, file: !697, line: 90, baseType: !19, size: 64, align: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !698, file: !697, line: 91, baseType: !19, size: 64, align: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !698, file: !697, line: 93, baseType: !19, size: 64, align: 64, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !698, file: !697, line: 94, baseType: !19, size: 64, align: 64, offset: 704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !698, file: !697, line: 95, baseType: !19, size: 64, align: 64, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !698, file: !697, line: 97, baseType: !19, size: 64, align: 64, offset: 832)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !698, file: !697, line: 98, baseType: !19, size: 64, align: 64, offset: 896)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !698, file: !697, line: 99, baseType: !19, size: 64, align: 64, offset: 960)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !698, file: !697, line: 101, baseType: !19, size: 64, align: 64, offset: 1024)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !698, file: !697, line: 103, baseType: !58, size: 32, align: 32, offset: 1088)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !698, file: !697, line: 105, baseType: !19, size: 64, align: 64, offset: 1152)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !698, file: !697, line: 106, baseType: !31, size: 64, align: 64, offset: 1216)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !698, file: !697, line: 108, baseType: !58, size: 32, align: 32, offset: 1280)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !698, file: !697, line: 109, baseType: !19, size: 64, align: 64, offset: 1344)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !698, file: !697, line: 134, baseType: !351, size: 64, align: 64, offset: 1408)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !698, file: !697, line: 135, baseType: !18, size: 64, align: 64, offset: 1472)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_object", scope: !683, file: !406, line: 753, type: !19)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "space", scope: !683, file: !406, line: 754, type: !364)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cif", scope: !683, file: !406, line: 755, type: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_cif", file: !12, line: 222, baseType: !757)
!757 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 212, size: 256, align: 64, elements: !758)
!758 = !{!759, !761, !762, !763, !764, !765}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !757, file: !12, line: 213, baseType: !760, size: 32, align: 32)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_abi", file: !4, line: 108, baseType: !3)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !757, file: !12, line: 214, baseType: !362, size: 32, align: 32, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !757, file: !12, line: 215, baseType: !432, size: 64, align: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rtype", scope: !757, file: !12, line: 216, baseType: !372, size: 64, align: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !757, file: !12, line: 217, baseType: !362, size: 32, align: 32, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !12, line: 218, baseType: !362, size: 32, align: 32, offset: 224)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cc", scope: !683, file: !406, line: 756, type: !58)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !768, file: !406, line: 796, type: !58)
!768 = distinct !DILexicalBlock(scope: !769, file: !406, line: 795, column: 22)
!769 = distinct !DILexicalBlock(scope: !683, file: !406, line: 795, column: 9)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !771, file: !406, line: 827, type: !58)
!771 = distinct !DILexicalBlock(scope: !772, file: !406, line: 826, column: 22)
!772 = distinct !DILexicalBlock(scope: !683, file: !406, line: 826, column: 9)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !774, file: !406, line: 835, type: !19)
!774 = distinct !DILexicalBlock(scope: !683, file: !406, line: 835, column: 8)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !776, file: !406, line: 835, type: !19)
!776 = distinct !DILexicalBlock(scope: !777, file: !406, line: 835, column: 104)
!777 = distinct !DILexicalBlock(scope: !774, file: !406, line: 835, column: 70)
!778 = !DISubprogram(name: "GetResult", scope: !406, file: !406, line: 888, type: !779, isLocal: true, isDefinition: true, scopeLine: 889, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, %struct._object*)* @GetResult, variables: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{!19, !19, !18, !19}
!781 = !{!782, !783, !784, !785, !786, !787, !788, !794}
!782 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "restype", arg: 1, scope: !778, file: !406, line: 888, type: !19)
!783 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 2, scope: !778, file: !406, line: 888, type: !18)
!784 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "checker", arg: 3, scope: !778, file: !406, line: 888, type: !19)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !778, file: !406, line: 890, type: !510)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !778, file: !406, line: 891, type: !19)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !778, file: !406, line: 891, type: !19)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !789, file: !406, line: 912, type: !19)
!789 = distinct !DILexicalBlock(scope: !790, file: !406, line: 912, column: 16)
!790 = distinct !DILexicalBlock(scope: !791, file: !406, line: 911, column: 67)
!791 = distinct !DILexicalBlock(scope: !792, file: !406, line: 911, column: 13)
!792 = distinct !DILexicalBlock(scope: !793, file: !406, line: 905, column: 61)
!793 = distinct !DILexicalBlock(scope: !778, file: !406, line: 905, column: 9)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !795, file: !406, line: 923, type: !19)
!795 = distinct !DILexicalBlock(scope: !778, file: !406, line: 923, column: 8)
!796 = !DISubprogram(name: "get_errno", scope: !406, file: !406, line: 205, type: !140, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @get_errno, variables: !797)
!797 = !{!798, !799}
!798 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !796, file: !406, line: 205, type: !19)
!799 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !796, file: !406, line: 205, type: !19)
!800 = !DISubprogram(name: "get_error_internal", scope: !406, file: !406, line: 173, type: !285, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @get_error_internal, variables: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808}
!802 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !800, file: !406, line: 173, type: !19)
!803 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !800, file: !406, line: 173, type: !19)
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 3, scope: !800, file: !406, line: 173, type: !58)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "space", scope: !800, file: !406, line: 175, type: !364)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errobj", scope: !800, file: !406, line: 176, type: !19)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !800, file: !406, line: 177, type: !19)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !809, file: !406, line: 182, type: !19)
!809 = distinct !DILexicalBlock(scope: !800, file: !406, line: 182, column: 8)
!810 = !DISubprogram(name: "set_errno", scope: !406, file: !406, line: 211, type: !140, isLocal: true, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @set_errno, variables: !811)
!811 = !{!812, !813}
!812 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !810, file: !406, line: 211, type: !19)
!813 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !810, file: !406, line: 211, type: !19)
!814 = !DISubprogram(name: "set_error_internal", scope: !406, file: !406, line: 187, type: !285, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @set_error_internal, variables: !815)
!815 = !{!816, !817, !818, !819, !820, !821, !822, !823}
!816 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !814, file: !406, line: 187, type: !19)
!817 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !814, file: !406, line: 187, type: !19)
!818 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 3, scope: !814, file: !406, line: 187, type: !58)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_errno", scope: !814, file: !406, line: 189, type: !58)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_errno", scope: !814, file: !406, line: 189, type: !58)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errobj", scope: !814, file: !406, line: 190, type: !19)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "space", scope: !814, file: !406, line: 191, type: !364)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !824, file: !406, line: 200, type: !19)
!824 = distinct !DILexicalBlock(scope: !814, file: !406, line: 200, column: 8)
!825 = !DISubprogram(name: "POINTER", scope: !406, file: !406, line: 1661, type: !140, isLocal: true, isDefinition: true, scopeLine: 1662, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @POINTER, variables: !826)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !836, !840, !842}
!827 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !825, file: !406, line: 1661, type: !19)
!828 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cls", arg: 2, scope: !825, file: !406, line: 1661, type: !19)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !825, file: !406, line: 1663, type: !19)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typ", scope: !825, file: !406, line: 1664, type: !459)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !825, file: !406, line: 1665, type: !19)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !825, file: !406, line: 1666, type: !66)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !834, file: !406, line: 1674, type: !66)
!834 = distinct !DILexicalBlock(scope: !835, file: !406, line: 1673, column: 61)
!835 = distinct !DILexicalBlock(scope: !825, file: !406, line: 1673, column: 9)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !837, file: !406, line: 1702, type: !19)
!837 = distinct !DILexicalBlock(scope: !838, file: !406, line: 1702, column: 12)
!838 = distinct !DILexicalBlock(scope: !839, file: !406, line: 1701, column: 67)
!839 = distinct !DILexicalBlock(scope: !825, file: !406, line: 1701, column: 9)
!840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !841, file: !406, line: 1703, type: !19)
!841 = distinct !DILexicalBlock(scope: !838, file: !406, line: 1703, column: 12)
!842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !843, file: !406, line: 1706, type: !19)
!843 = distinct !DILexicalBlock(scope: !825, file: !406, line: 1706, column: 8)
!844 = !DISubprogram(name: "pointer", scope: !406, file: !406, line: 1711, type: !140, isLocal: true, isDefinition: true, scopeLine: 1712, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @pointer, variables: !845)
!845 = !{!846, !847, !848, !849, !850}
!846 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !844, file: !406, line: 1711, type: !19)
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !844, file: !406, line: 1711, type: !19)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !844, file: !406, line: 1713, type: !19)
!849 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typ", scope: !844, file: !406, line: 1714, type: !19)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !851, file: !406, line: 1723, type: !19)
!851 = distinct !DILexicalBlock(scope: !844, file: !406, line: 1723, column: 8)
!852 = !DISubprogram(name: "unpickle", scope: !406, file: !406, line: 1637, type: !140, isLocal: true, isDefinition: true, scopeLine: 1638, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @unpickle, variables: !853)
!853 = !{!854, !855, !856, !857, !858, !859, !860, !864}
!854 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !852, file: !406, line: 1637, type: !19)
!855 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !852, file: !406, line: 1637, type: !19)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typ", scope: !852, file: !406, line: 1639, type: !19)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !852, file: !406, line: 1640, type: !19)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !852, file: !406, line: 1641, type: !19)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !852, file: !406, line: 1642, type: !19)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !861, file: !406, line: 1653, type: !19)
!861 = distinct !DILexicalBlock(scope: !862, file: !406, line: 1653, column: 12)
!862 = distinct !DILexicalBlock(scope: !863, file: !406, line: 1652, column: 28)
!863 = distinct !DILexicalBlock(scope: !852, file: !406, line: 1652, column: 9)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !865, file: !406, line: 1656, type: !19)
!865 = distinct !DILexicalBlock(scope: !852, file: !406, line: 1656, column: 8)
!866 = !DISubprogram(name: "buffer_info", scope: !406, file: !406, line: 1728, type: !140, isLocal: true, isDefinition: true, scopeLine: 1729, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @buffer_info, variables: !867)
!867 = !{!868, !869, !870, !871, !872, !873}
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !866, file: !406, line: 1728, type: !19)
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !866, file: !406, line: 1728, type: !19)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !866, file: !406, line: 1730, type: !510)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shape", scope: !866, file: !406, line: 1731, type: !19)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !866, file: !406, line: 1732, type: !25)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !874, file: !406, line: 1748, type: !19)
!874 = distinct !DILexicalBlock(scope: !875, file: !406, line: 1748, column: 12)
!875 = distinct !DILexicalBlock(scope: !876, file: !406, line: 1747, column: 27)
!876 = distinct !DILexicalBlock(scope: !866, file: !406, line: 1747, column: 9)
!877 = !DISubprogram(name: "resize", scope: !406, file: !406, line: 1581, type: !140, isLocal: true, isDefinition: true, scopeLine: 1582, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @resize, variables: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !887}
!879 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !877, file: !406, line: 1581, type: !19)
!880 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !877, file: !406, line: 1581, type: !19)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !877, file: !406, line: 1583, type: !433)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !877, file: !406, line: 1584, type: !510)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !877, file: !406, line: 1585, type: !25)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !885, file: !406, line: 1617, type: !18)
!885 = distinct !DILexicalBlock(scope: !886, file: !406, line: 1614, column: 53)
!886 = distinct !DILexicalBlock(scope: !877, file: !406, line: 1614, column: 9)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !888, file: !406, line: 1625, type: !18)
!888 = distinct !DILexicalBlock(scope: !886, file: !406, line: 1624, column: 12)
!889 = !DISubprogram(name: "py_dl_open", scope: !406, file: !406, line: 1308, type: !140, isLocal: true, isDefinition: true, scopeLine: 1309, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_dl_open, variables: !890)
!890 = !{!891, !892, !893, !894, !895, !896, !897, !898, !900, !903}
!891 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !889, file: !406, line: 1308, type: !19)
!892 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !889, file: !406, line: 1308, type: !19)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !889, file: !406, line: 1310, type: !19)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name2", scope: !889, file: !406, line: 1310, type: !19)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_str", scope: !889, file: !406, line: 1311, type: !66)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !889, file: !406, line: 1312, type: !18)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !889, file: !406, line: 1314, type: !58)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !899, file: !406, line: 1334, type: !19)
!899 = distinct !DILexicalBlock(scope: !889, file: !406, line: 1334, column: 8)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !901, file: !406, line: 1334, type: !19)
!901 = distinct !DILexicalBlock(scope: !902, file: !406, line: 1334, column: 97)
!902 = distinct !DILexicalBlock(scope: !899, file: !406, line: 1334, column: 63)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errmsg", scope: !904, file: !406, line: 1336, type: !66)
!904 = distinct !DILexicalBlock(scope: !905, file: !406, line: 1335, column: 18)
!905 = distinct !DILexicalBlock(scope: !889, file: !406, line: 1335, column: 9)
!906 = !DISubprogram(name: "py_dl_close", scope: !406, file: !406, line: 1346, type: !140, isLocal: true, isDefinition: true, scopeLine: 1347, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_dl_close, variables: !907)
!907 = !{!908, !909, !910}
!908 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !906, file: !406, line: 1346, type: !19)
!909 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !906, file: !406, line: 1346, type: !19)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !906, file: !406, line: 1348, type: !18)
!911 = !DISubprogram(name: "_parse_voidp", scope: !406, file: !406, line: 1197, type: !912, isLocal: true, isDefinition: true, scopeLine: 1198, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8**)* @_parse_voidp, variables: !914)
!912 = !DISubroutineType(types: !913)
!913 = !{!58, !19, !431}
!914 = !{!915, !916}
!915 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !911, file: !406, line: 1197, type: !19)
!916 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 2, scope: !911, file: !406, line: 1197, type: !431)
!917 = !DISubprogram(name: "py_dl_sym", scope: !406, file: !406, line: 1361, type: !140, isLocal: true, isDefinition: true, scopeLine: 1362, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_dl_sym, variables: !918)
!918 = !{!919, !920, !921, !922, !923}
!919 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !917, file: !406, line: 1361, type: !19)
!920 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !917, file: !406, line: 1361, type: !19)
!921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !917, file: !406, line: 1363, type: !66)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !917, file: !406, line: 1364, type: !18)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !917, file: !406, line: 1365, type: !18)
!924 = !DISubprogram(name: "align_func", scope: !406, file: !406, line: 1472, type: !140, isLocal: true, isDefinition: true, scopeLine: 1473, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @align_func, variables: !925)
!925 = !{!926, !927, !928}
!926 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !924, file: !406, line: 1472, type: !19)
!927 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !924, file: !406, line: 1472, type: !19)
!928 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !924, file: !406, line: 1474, type: !510)
!929 = !DISubprogram(name: "sizeof_func", scope: !406, file: !406, line: 1451, type: !140, isLocal: true, isDefinition: true, scopeLine: 1452, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @sizeof_func, variables: !930)
!930 = !{!931, !932, !933}
!931 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !929, file: !406, line: 1451, type: !19)
!932 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !929, file: !406, line: 1451, type: !19)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !929, file: !406, line: 1453, type: !510)
!934 = !DISubprogram(name: "byref", scope: !406, file: !406, line: 1499, type: !140, isLocal: true, isDefinition: true, scopeLine: 1500, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @byref, variables: !935)
!935 = !{!936, !937, !938, !939, !940, !941}
!936 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !934, file: !406, line: 1499, type: !19)
!937 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !934, file: !406, line: 1499, type: !19)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parg", scope: !934, file: !406, line: 1501, type: !365)
!939 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !934, file: !406, line: 1502, type: !19)
!940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pyoffset", scope: !934, file: !406, line: 1503, type: !19)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !934, file: !406, line: 1504, type: !25)
!942 = !DISubprogram(name: "addressof", scope: !406, file: !406, line: 1538, type: !140, isLocal: true, isDefinition: true, scopeLine: 1539, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @addressof, variables: !943)
!943 = !{!944, !945}
!944 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !942, file: !406, line: 1538, type: !19)
!945 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !942, file: !406, line: 1538, type: !19)
!946 = !DISubprogram(name: "call_function", scope: !406, file: !406, line: 1386, type: !140, isLocal: true, isDefinition: true, scopeLine: 1387, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @call_function, variables: !947)
!947 = !{!948, !949, !950, !951, !952}
!948 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !946, file: !406, line: 1386, type: !19)
!949 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !946, file: !406, line: 1386, type: !19)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !946, file: !406, line: 1388, type: !18)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arguments", scope: !946, file: !406, line: 1389, type: !19)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !946, file: !406, line: 1390, type: !19)
!953 = !DISubprogram(name: "call_cdeclfunction", scope: !406, file: !406, line: 1417, type: !140, isLocal: true, isDefinition: true, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @call_cdeclfunction, variables: !954)
!954 = !{!955, !956, !957, !958, !959}
!955 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !953, file: !406, line: 1417, type: !19)
!956 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !953, file: !406, line: 1417, type: !19)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !953, file: !406, line: 1419, type: !18)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arguments", scope: !953, file: !406, line: 1420, type: !19)
!959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !953, file: !406, line: 1421, type: !19)
!960 = !DISubprogram(name: "My_PyObj_FromPtr", scope: !406, file: !406, line: 1555, type: !140, isLocal: true, isDefinition: true, scopeLine: 1556, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @My_PyObj_FromPtr, variables: !961)
!961 = !{!962, !963, !964}
!962 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !960, file: !406, line: 1555, type: !19)
!963 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !960, file: !406, line: 1555, type: !19)
!964 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ob", scope: !960, file: !406, line: 1557, type: !19)
!965 = !DISubprogram(name: "converter", scope: !406, file: !406, line: 1548, type: !912, isLocal: true, isDefinition: true, scopeLine: 1549, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8**)* @converter, variables: !966)
!966 = !{!967, !968}
!967 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !965, file: !406, line: 1548, type: !19)
!968 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 2, scope: !965, file: !406, line: 1548, type: !431)
!969 = !DISubprogram(name: "My_Py_INCREF", scope: !406, file: !406, line: 1565, type: !140, isLocal: true, isDefinition: true, scopeLine: 1566, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @My_Py_INCREF, variables: !970)
!970 = !{!971, !972}
!971 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !969, file: !406, line: 1565, type: !19)
!972 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !969, file: !406, line: 1565, type: !19)
!973 = !DISubprogram(name: "My_Py_DECREF", scope: !406, file: !406, line: 1573, type: !140, isLocal: true, isDefinition: true, scopeLine: 1574, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @My_Py_DECREF, variables: !974)
!974 = !{!975, !976, !977}
!975 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !973, file: !406, line: 1573, type: !19)
!976 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !973, file: !406, line: 1573, type: !19)
!977 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !978, file: !406, line: 1575, type: !19)
!978 = distinct !DILexicalBlock(scope: !973, file: !406, line: 1575, column: 8)
!979 = !{!980, !981, !982, !985, !990, !998, !999, !1003, !1007, !1011}
!980 = !DIGlobalVariable(name: "error_object_name", scope: !484, file: !406, line: 134, type: !19, isLocal: true, isDefinition: true, variable: %struct._object** @_ctypes_get_errobj.error_object_name)
!981 = !DIGlobalVariable(name: "PyCArg_Type", scope: !0, file: !406, line: 527, type: !460, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyCArg_Type)
!982 = !DIGlobalVariable(name: "_ctypes_module_methods", scope: !0, file: !406, line: 1754, type: !983, isLocal: false, isDefinition: true, variable: [20 x %struct.PyMethodDef]* @_ctypes_module_methods)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !984, size: 5120, align: 64, elements: !114)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !295, line: 47, baseType: !294)
!985 = !DIGlobalVariable(name: "PyCArgType_members", scope: !0, file: !406, line: 520, type: !986, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @PyCArgType_members)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 640, align: 64, elements: !988)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !305, line: 24, baseType: !304)
!988 = !{!989}
!989 = !DISubrange(count: 2)
!990 = !DIGlobalVariable(name: "PyId___new__", scope: !852, file: !406, line: 1643, type: !991, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @unpickle.PyId___new__)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !21, line: 144, baseType: !992)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !21, line: 140, size: 192, align: 64, elements: !993)
!993 = !{!994, !996, !997}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !992, file: !21, line: 141, baseType: !995, size: 64, align: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64, align: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !992, file: !21, line: 142, baseType: !43, size: 64, align: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !992, file: !21, line: 143, baseType: !19, size: 64, align: 64, offset: 128)
!998 = !DIGlobalVariable(name: "PyId___setstate__", scope: !852, file: !406, line: 1644, type: !991, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @unpickle.PyId___setstate__)
!999 = !DIGlobalVariable(name: "alignment_doc", scope: !0, file: !406, line: 1466, type: !1000, isLocal: true, isDefinition: true, variable: [112 x i8]* @alignment_doc)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 896, align: 8, elements: !1001)
!1001 = !{!1002}
!1002 = !DISubrange(count: 112)
!1003 = !DIGlobalVariable(name: "sizeof_doc", scope: !0, file: !406, line: 1445, type: !1004, isLocal: true, isDefinition: true, variable: [97 x i8]* @sizeof_doc)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 776, align: 8, elements: !1005)
!1005 = !{!1006}
!1006 = !DISubrange(count: 97)
!1007 = !DIGlobalVariable(name: "byref_doc", scope: !0, file: !406, line: 1489, type: !1008, isLocal: true, isDefinition: true, variable: [123 x i8]* @byref_doc)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 984, align: 8, elements: !1009)
!1009 = !{!1010}
!1010 = !DISubrange(count: 123)
!1011 = !DIGlobalVariable(name: "addressof_doc", scope: !0, file: !406, line: 1533, type: !1012, isLocal: true, isDefinition: true, variable: [86 x i8]* @addressof_doc)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 688, align: 8, elements: !1013)
!1013 = !{!1014}
!1014 = !DISubrange(count: 86)
!1015 = !{i32 2, !"Dwarf Version", i32 4}
!1016 = !{i32 2, !"Debug Info Version", i32 3}
!1017 = !{i32 1, !"PIC Level", i32 2}
!1018 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1019 = !{!1020, !1020, i64 0}
!1020 = !{!"any pointer", !1021, i64 0}
!1021 = !{!"omnipotent char", !1022, i64 0}
!1022 = !{!"Simple C/C++ TBAA"}
!1023 = !DIExpression()
!1024 = !DILocation(line: 130, column: 26, scope: !484)
!1025 = !DILocation(line: 132, column: 5, scope: !484)
!1026 = !DILocation(line: 132, column: 15, scope: !484)
!1027 = !DILocation(line: 132, column: 22, scope: !484)
!1028 = !DILocation(line: 133, column: 5, scope: !484)
!1029 = !DILocation(line: 133, column: 15, scope: !484)
!1030 = !DILocation(line: 135, column: 9, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !484, file: !406, line: 135, column: 9)
!1032 = !DILocation(line: 135, column: 14, scope: !1031)
!1033 = !DILocation(line: 135, column: 9, scope: !484)
!1034 = !DILocation(line: 136, column: 25, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1031, file: !406, line: 135, column: 20)
!1036 = !DILocation(line: 136, column: 9, scope: !1035)
!1037 = !DILocation(line: 138, column: 9, scope: !1035)
!1038 = !DILocation(line: 140, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !484, file: !406, line: 140, column: 9)
!1040 = !DILocation(line: 140, column: 27, scope: !1039)
!1041 = !DILocation(line: 140, column: 9, scope: !484)
!1042 = !DILocation(line: 141, column: 29, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !406, line: 140, column: 42)
!1044 = !DILocation(line: 141, column: 27, scope: !1043)
!1045 = !DILocation(line: 142, column: 13, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1043, file: !406, line: 142, column: 13)
!1047 = !DILocation(line: 142, column: 31, scope: !1046)
!1048 = !DILocation(line: 142, column: 13, scope: !1043)
!1049 = !DILocation(line: 143, column: 13, scope: !1046)
!1050 = !DILocation(line: 144, column: 5, scope: !1043)
!1051 = !DILocation(line: 145, column: 29, scope: !484)
!1052 = !DILocation(line: 145, column: 35, scope: !484)
!1053 = !DILocation(line: 145, column: 14, scope: !484)
!1054 = !DILocation(line: 145, column: 12, scope: !484)
!1055 = !DILocation(line: 146, column: 9, scope: !494)
!1056 = !DILocation(line: 146, column: 9, scope: !484)
!1057 = !DILocation(line: 147, column: 32, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !406, line: 147, column: 13)
!1059 = distinct !DILexicalBlock(scope: !494, file: !406, line: 146, column: 17)
!1060 = !DILocation(line: 147, column: 14, scope: !1058)
!1061 = !DILocation(line: 147, column: 13, scope: !1059)
!1062 = !DILocation(line: 148, column: 29, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !406, line: 147, column: 58)
!1064 = !DILocation(line: 148, column: 13, scope: !1063)
!1065 = !DILocation(line: 150, column: 13, scope: !1063)
!1066 = !DILocation(line: 152, column: 25, scope: !1059)
!1067 = !DILocation(line: 152, column: 35, scope: !1059)
!1068 = !DILocation(line: 152, column: 44, scope: !1059)
!1069 = !{!1070, !1071, i64 0}
!1070 = !{!"_object", !1071, i64 0, !1020, i64 8}
!1071 = !{!"long", !1021, i64 0}
!1072 = !DILocation(line: 153, column: 5, scope: !1059)
!1073 = !DILocation(line: 155, column: 9, scope: !493)
!1074 = !DILocation(line: 155, column: 15, scope: !493)
!1075 = !DILocation(line: 155, column: 23, scope: !493)
!1076 = !DILocation(line: 156, column: 13, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !493, file: !406, line: 156, column: 13)
!1078 = !DILocation(line: 156, column: 19, scope: !1077)
!1079 = !DILocation(line: 156, column: 13, scope: !493)
!1080 = !DILocation(line: 157, column: 13, scope: !1077)
!1081 = !DILocation(line: 158, column: 16, scope: !493)
!1082 = !DILocation(line: 158, column: 9, scope: !493)
!1083 = !DILocation(line: 159, column: 32, scope: !493)
!1084 = !DILocation(line: 159, column: 18, scope: !493)
!1085 = !DILocation(line: 159, column: 16, scope: !493)
!1086 = !DILocation(line: 160, column: 13, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !493, file: !406, line: 160, column: 13)
!1088 = !DILocation(line: 160, column: 20, scope: !1087)
!1089 = !DILocation(line: 160, column: 13, scope: !493)
!1090 = !DILocation(line: 161, column: 13, scope: !1087)
!1091 = !DILocation(line: 162, column: 34, scope: !498)
!1092 = !DILocation(line: 162, column: 40, scope: !498)
!1093 = !DILocation(line: 163, column: 34, scope: !498)
!1094 = !DILocation(line: 162, column: 19, scope: !498)
!1095 = !DILocation(line: 162, column: 16, scope: !498)
!1096 = !DILocation(line: 162, column: 13, scope: !493)
!1097 = !DILocation(line: 164, column: 13, scope: !497)
!1098 = !DILocation(line: 164, column: 18, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !496, file: !406, discriminator: 1)
!1100 = !DILocation(line: 164, column: 28, scope: !496)
!1101 = !DILocation(line: 164, column: 58, scope: !496)
!1102 = !DILocation(line: 164, column: 75, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !496, file: !406, line: 164, column: 72)
!1104 = !DILocation(line: 164, column: 92, scope: !1103)
!1105 = !DILocation(line: 164, column: 72, scope: !1103)
!1106 = !DILocation(line: 164, column: 102, scope: !1103)
!1107 = !DILocation(line: 164, column: 72, scope: !496)
!1108 = !DILocation(line: 164, column: 72, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !496, file: !406, discriminator: 2)
!1110 = !DILocation(line: 164, column: 133, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1103, file: !406, discriminator: 3)
!1112 = !DILocation(line: 164, column: 151, scope: !1103)
!1113 = !{!1070, !1020, i64 8}
!1114 = !DILocation(line: 164, column: 161, scope: !1103)
!1115 = !{!1116, !1020, i64 48}
!1116 = !{!"_typeobject", !1117, i64 0, !1020, i64 24, !1071, i64 32, !1071, i64 40, !1020, i64 48, !1020, i64 56, !1020, i64 64, !1020, i64 72, !1020, i64 80, !1020, i64 88, !1020, i64 96, !1020, i64 104, !1020, i64 112, !1020, i64 120, !1020, i64 128, !1020, i64 136, !1020, i64 144, !1020, i64 152, !1020, i64 160, !1071, i64 168, !1020, i64 176, !1020, i64 184, !1020, i64 192, !1020, i64 200, !1071, i64 208, !1020, i64 216, !1020, i64 224, !1020, i64 232, !1020, i64 240, !1020, i64 248, !1020, i64 256, !1020, i64 264, !1020, i64 272, !1020, i64 280, !1071, i64 288, !1020, i64 296, !1020, i64 304, !1020, i64 312, !1020, i64 320, !1020, i64 328, !1020, i64 336, !1020, i64 344, !1020, i64 352, !1020, i64 360, !1020, i64 368, !1020, i64 376, !1118, i64 384, !1020, i64 392}
!1117 = !{!"", !1070, i64 0, !1071, i64 16}
!1118 = !{!"int", !1021, i64 0}
!1119 = !DILocation(line: 164, column: 186, scope: !1103)
!1120 = !DILocation(line: 164, column: 117, scope: !1103)
!1121 = !DILocation(line: 164, column: 205, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !497, file: !406, discriminator: 4)
!1123 = !DILocation(line: 164, column: 205, scope: !496)
!1124 = !DILocation(line: 164, column: 205, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !496, file: !406, discriminator: 5)
!1126 = !DILocation(line: 165, column: 13, scope: !497)
!1127 = !DILocation(line: 167, column: 5, scope: !494)
!1128 = !DILocation(line: 167, column: 5, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !494, file: !406, discriminator: 1)
!1130 = !DILocation(line: 168, column: 43, scope: !484)
!1131 = !DILocation(line: 168, column: 22, scope: !484)
!1132 = !DILocation(line: 168, column: 15, scope: !484)
!1133 = !DILocation(line: 168, column: 6, scope: !484)
!1134 = !DILocation(line: 168, column: 13, scope: !484)
!1135 = !DILocation(line: 169, column: 12, scope: !484)
!1136 = !DILocation(line: 169, column: 5, scope: !484)
!1137 = !DILocation(line: 170, column: 1, scope: !484)
!1138 = !DILocation(line: 87, column: 40, scope: !639)
!1139 = !DILocation(line: 89, column: 5, scope: !639)
!1140 = !DILocation(line: 89, column: 11, scope: !639)
!1141 = !DILocation(line: 89, column: 36, scope: !639)
!1142 = !DILocation(line: 89, column: 15, scope: !639)
!1143 = !DILocation(line: 90, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !639, file: !406, line: 90, column: 9)
!1145 = !DILocation(line: 90, column: 9, scope: !639)
!1146 = !DILocation(line: 91, column: 20, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !406, line: 90, column: 12)
!1148 = !DILocation(line: 91, column: 9, scope: !1147)
!1149 = !DILocation(line: 92, column: 5, scope: !1147)
!1150 = !DILocation(line: 93, column: 1, scope: !639)
!1151 = !DILocation(line: 431, column: 5, scope: !499)
!1152 = !DILocation(line: 431, column: 19, scope: !499)
!1153 = !DILocation(line: 432, column: 28, scope: !499)
!1154 = !DILocation(line: 432, column: 11, scope: !499)
!1155 = !DILocation(line: 432, column: 7, scope: !499)
!1156 = !DILocation(line: 433, column: 9, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !499, file: !406, line: 433, column: 9)
!1158 = !DILocation(line: 433, column: 11, scope: !1157)
!1159 = !DILocation(line: 433, column: 9, scope: !499)
!1160 = !DILocation(line: 434, column: 9, scope: !1157)
!1161 = !DILocation(line: 435, column: 5, scope: !499)
!1162 = !DILocation(line: 435, column: 8, scope: !499)
!1163 = !DILocation(line: 435, column: 18, scope: !499)
!1164 = !{!1165, !1020, i64 16}
!1165 = !{!"tagPyCArgObject", !1070, i64 0, !1020, i64 16, !1021, i64 24, !1021, i64 32, !1020, i64 48, !1071, i64 56}
!1166 = !DILocation(line: 436, column: 5, scope: !499)
!1167 = !DILocation(line: 436, column: 8, scope: !499)
!1168 = !DILocation(line: 436, column: 12, scope: !499)
!1169 = !{!1165, !1021, i64 24}
!1170 = !DILocation(line: 437, column: 5, scope: !499)
!1171 = !DILocation(line: 437, column: 8, scope: !499)
!1172 = !DILocation(line: 437, column: 12, scope: !499)
!1173 = !{!1165, !1020, i64 48}
!1174 = !DILocation(line: 438, column: 13, scope: !499)
!1175 = !DILocation(line: 438, column: 16, scope: !499)
!1176 = !DILocation(line: 438, column: 5, scope: !499)
!1177 = !DILocation(line: 439, column: 12, scope: !499)
!1178 = !DILocation(line: 439, column: 5, scope: !499)
!1179 = !DILocation(line: 440, column: 1, scope: !499)
!1180 = !DILocation(line: 443, column: 30, scope: !643)
!1181 = !DILocation(line: 445, column: 5, scope: !643)
!1182 = !DILocation(line: 445, column: 10, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !649, file: !406, discriminator: 1)
!1184 = !DILocation(line: 445, column: 20, scope: !649)
!1185 = !DILocation(line: 445, column: 51, scope: !649)
!1186 = !DILocation(line: 445, column: 57, scope: !649)
!1187 = !DILocation(line: 445, column: 67, scope: !652)
!1188 = !DILocation(line: 445, column: 83, scope: !652)
!1189 = !DILocation(line: 445, column: 67, scope: !649)
!1190 = !DILocation(line: 445, column: 98, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !652, file: !406, discriminator: 2)
!1192 = !DILocation(line: 445, column: 103, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !651, file: !406, discriminator: 4)
!1194 = !DILocation(line: 445, column: 113, scope: !651)
!1195 = !DILocation(line: 445, column: 143, scope: !651)
!1196 = !DILocation(line: 445, column: 169, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !651, file: !406, line: 445, column: 166)
!1198 = !DILocation(line: 445, column: 186, scope: !1197)
!1199 = !DILocation(line: 445, column: 166, scope: !1197)
!1200 = !DILocation(line: 445, column: 196, scope: !1197)
!1201 = !DILocation(line: 445, column: 166, scope: !651)
!1202 = !DILocation(line: 445, column: 166, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !651, file: !406, discriminator: 5)
!1204 = !DILocation(line: 445, column: 227, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1197, file: !406, discriminator: 6)
!1206 = !DILocation(line: 445, column: 245, scope: !1197)
!1207 = !DILocation(line: 445, column: 255, scope: !1197)
!1208 = !DILocation(line: 445, column: 280, scope: !1197)
!1209 = !DILocation(line: 445, column: 211, scope: !1197)
!1210 = !DILocation(line: 445, column: 299, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !652, file: !406, discriminator: 7)
!1212 = !DILocation(line: 445, column: 299, scope: !651)
!1213 = !DILocation(line: 445, column: 299, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !651, file: !406, discriminator: 8)
!1215 = !DILocation(line: 445, column: 299, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !651, file: !406, discriminator: 9)
!1217 = !DILocation(line: 445, column: 312, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1219, file: !406, discriminator: 10)
!1219 = !DILexicalBlockFile(scope: !643, file: !406, discriminator: 3)
!1220 = !DILocation(line: 445, column: 312, scope: !649)
!1221 = !DILocation(line: 446, column: 19, scope: !643)
!1222 = !DILocation(line: 446, column: 5, scope: !643)
!1223 = !DILocation(line: 447, column: 1, scope: !643)
!1224 = !DILocation(line: 450, column: 27, scope: !653)
!1225 = !DILocation(line: 452, column: 5, scope: !653)
!1226 = !DILocation(line: 452, column: 10, scope: !653)
!1227 = !DILocation(line: 453, column: 12, scope: !653)
!1228 = !DILocation(line: 453, column: 18, scope: !653)
!1229 = !DILocation(line: 456, column: 17, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !653, file: !406, line: 453, column: 23)
!1231 = !DILocation(line: 457, column: 13, scope: !1230)
!1232 = !DILocation(line: 457, column: 19, scope: !1230)
!1233 = !DILocation(line: 457, column: 24, scope: !1230)
!1234 = !DILocation(line: 457, column: 30, scope: !1230)
!1235 = !DILocation(line: 457, column: 36, scope: !1230)
!1236 = !{!1021, !1021, i64 0}
!1237 = !DILocation(line: 456, column: 9, scope: !1230)
!1238 = !DILocation(line: 458, column: 9, scope: !1230)
!1239 = !DILocation(line: 461, column: 17, scope: !1230)
!1240 = !DILocation(line: 462, column: 13, scope: !1230)
!1241 = !DILocation(line: 462, column: 19, scope: !1230)
!1242 = !DILocation(line: 462, column: 24, scope: !1230)
!1243 = !DILocation(line: 462, column: 30, scope: !1230)
!1244 = !DILocation(line: 462, column: 36, scope: !1230)
!1245 = !{!1246, !1246, i64 0}
!1246 = !{!"short", !1021, i64 0}
!1247 = !DILocation(line: 461, column: 9, scope: !1230)
!1248 = !DILocation(line: 463, column: 9, scope: !1230)
!1249 = !DILocation(line: 466, column: 17, scope: !1230)
!1250 = !DILocation(line: 467, column: 13, scope: !1230)
!1251 = !DILocation(line: 467, column: 19, scope: !1230)
!1252 = !DILocation(line: 467, column: 24, scope: !1230)
!1253 = !DILocation(line: 467, column: 30, scope: !1230)
!1254 = !DILocation(line: 467, column: 36, scope: !1230)
!1255 = !{!1118, !1118, i64 0}
!1256 = !DILocation(line: 466, column: 9, scope: !1230)
!1257 = !DILocation(line: 468, column: 9, scope: !1230)
!1258 = !DILocation(line: 471, column: 17, scope: !1230)
!1259 = !DILocation(line: 472, column: 13, scope: !1230)
!1260 = !DILocation(line: 472, column: 19, scope: !1230)
!1261 = !DILocation(line: 472, column: 24, scope: !1230)
!1262 = !DILocation(line: 472, column: 30, scope: !1230)
!1263 = !DILocation(line: 472, column: 36, scope: !1230)
!1264 = !{!1071, !1071, i64 0}
!1265 = !DILocation(line: 471, column: 9, scope: !1230)
!1266 = !DILocation(line: 473, column: 9, scope: !1230)
!1267 = !DILocation(line: 478, column: 17, scope: !1230)
!1268 = !DILocation(line: 484, column: 13, scope: !1230)
!1269 = !DILocation(line: 484, column: 19, scope: !1230)
!1270 = !DILocation(line: 484, column: 24, scope: !1230)
!1271 = !DILocation(line: 484, column: 30, scope: !1230)
!1272 = !DILocation(line: 484, column: 36, scope: !1230)
!1273 = !{!1274, !1274, i64 0}
!1274 = !{!"long long", !1021, i64 0}
!1275 = !DILocation(line: 478, column: 9, scope: !1230)
!1276 = !DILocation(line: 485, column: 9, scope: !1230)
!1277 = !DILocation(line: 488, column: 17, scope: !1230)
!1278 = !DILocation(line: 489, column: 13, scope: !1230)
!1279 = !DILocation(line: 489, column: 19, scope: !1230)
!1280 = !DILocation(line: 489, column: 24, scope: !1230)
!1281 = !DILocation(line: 489, column: 30, scope: !1230)
!1282 = !DILocation(line: 489, column: 36, scope: !1230)
!1283 = !{!1284, !1284, i64 0}
!1284 = !{!"double", !1021, i64 0}
!1285 = !DILocation(line: 488, column: 9, scope: !1230)
!1286 = !DILocation(line: 490, column: 9, scope: !1230)
!1287 = !DILocation(line: 492, column: 17, scope: !1230)
!1288 = !DILocation(line: 493, column: 13, scope: !1230)
!1289 = !DILocation(line: 493, column: 19, scope: !1230)
!1290 = !DILocation(line: 493, column: 24, scope: !1230)
!1291 = !DILocation(line: 493, column: 30, scope: !1230)
!1292 = !DILocation(line: 493, column: 36, scope: !1230)
!1293 = !{!1294, !1294, i64 0}
!1294 = !{!"float", !1021, i64 0}
!1295 = !DILocation(line: 492, column: 9, scope: !1230)
!1296 = !DILocation(line: 494, column: 9, scope: !1230)
!1297 = !DILocation(line: 497, column: 17, scope: !1230)
!1298 = !DILocation(line: 498, column: 13, scope: !1230)
!1299 = !DILocation(line: 498, column: 19, scope: !1230)
!1300 = !DILocation(line: 498, column: 24, scope: !1230)
!1301 = !DILocation(line: 498, column: 30, scope: !1230)
!1302 = !DILocation(line: 498, column: 36, scope: !1230)
!1303 = !DILocation(line: 497, column: 9, scope: !1230)
!1304 = !DILocation(line: 499, column: 9, scope: !1230)
!1305 = !DILocation(line: 508, column: 17, scope: !1230)
!1306 = !DILocation(line: 509, column: 13, scope: !1230)
!1307 = !DILocation(line: 509, column: 19, scope: !1230)
!1308 = !DILocation(line: 509, column: 24, scope: !1230)
!1309 = !DILocation(line: 509, column: 30, scope: !1230)
!1310 = !DILocation(line: 509, column: 36, scope: !1230)
!1311 = !DILocation(line: 508, column: 9, scope: !1230)
!1312 = !DILocation(line: 510, column: 9, scope: !1230)
!1313 = !DILocation(line: 513, column: 17, scope: !1230)
!1314 = !DILocation(line: 514, column: 13, scope: !1230)
!1315 = !DILocation(line: 514, column: 19, scope: !1230)
!1316 = !DILocation(line: 514, column: 24, scope: !1230)
!1317 = !DILocation(line: 513, column: 9, scope: !1230)
!1318 = !DILocation(line: 515, column: 9, scope: !1230)
!1319 = !DILocation(line: 517, column: 33, scope: !653)
!1320 = !DILocation(line: 517, column: 12, scope: !653)
!1321 = !DILocation(line: 518, column: 1, scope: !653)
!1322 = !DILocation(line: 517, column: 5, scope: !653)
!1323 = !DILocation(line: 707, column: 42, scope: !504)
!1324 = !DILocation(line: 709, column: 5, scope: !504)
!1325 = !DILocation(line: 709, column: 20, scope: !504)
!1326 = !DILocation(line: 710, column: 9, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !504, file: !406, line: 710, column: 9)
!1328 = !DILocation(line: 710, column: 13, scope: !1327)
!1329 = !DILocation(line: 710, column: 9, scope: !504)
!1330 = !DILocation(line: 711, column: 9, scope: !1327)
!1331 = !DILocation(line: 712, column: 27, scope: !504)
!1332 = !DILocation(line: 712, column: 12, scope: !504)
!1333 = !DILocation(line: 712, column: 10, scope: !504)
!1334 = !DILocation(line: 713, column: 9, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !504, file: !406, line: 713, column: 9)
!1336 = !DILocation(line: 713, column: 14, scope: !1335)
!1337 = !DILocation(line: 713, column: 9, scope: !504)
!1338 = !DILocation(line: 714, column: 9, scope: !1335)
!1339 = !DILocation(line: 726, column: 13, scope: !504)
!1340 = !DILocation(line: 726, column: 19, scope: !504)
!1341 = !DILocation(line: 726, column: 5, scope: !504)
!1342 = !DILocation(line: 727, column: 1, scope: !504)
!1343 = !DILocation(line: 931, column: 37, scope: !555)
!1344 = !DILocation(line: 931, column: 54, scope: !555)
!1345 = !DILocation(line: 933, column: 5, scope: !555)
!1346 = !DILocation(line: 933, column: 13, scope: !555)
!1347 = !DILocation(line: 934, column: 5, scope: !555)
!1348 = !DILocation(line: 934, column: 15, scope: !555)
!1349 = !DILocation(line: 934, column: 20, scope: !555)
!1350 = !DILocation(line: 934, column: 24, scope: !555)
!1351 = !DILocation(line: 934, column: 29, scope: !555)
!1352 = !DILocation(line: 934, column: 33, scope: !555)
!1353 = !DILocation(line: 934, column: 43, scope: !555)
!1354 = !DILocation(line: 936, column: 24, scope: !555)
!1355 = !DILocation(line: 936, column: 5, scope: !555)
!1356 = !DILocation(line: 937, column: 31, scope: !555)
!1357 = !DILocation(line: 937, column: 36, scope: !555)
!1358 = !DILocation(line: 937, column: 9, scope: !555)
!1359 = !DILocation(line: 937, column: 7, scope: !555)
!1360 = !DILocation(line: 938, column: 22, scope: !555)
!1361 = !DILocation(line: 938, column: 5, scope: !555)
!1362 = !DILocation(line: 939, column: 10, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !555, file: !406, line: 939, column: 9)
!1364 = !DILocation(line: 939, column: 9, scope: !555)
!1365 = !DILocation(line: 940, column: 9, scope: !1363)
!1366 = !DILocation(line: 942, column: 5, scope: !555)
!1367 = !DILocation(line: 943, column: 5, scope: !555)
!1368 = !DILocation(line: 944, column: 28, scope: !555)
!1369 = !DILocation(line: 944, column: 15, scope: !555)
!1370 = !DILocation(line: 944, column: 13, scope: !555)
!1371 = !DILocation(line: 945, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !555, file: !406, line: 945, column: 9)
!1373 = !DILocation(line: 945, column: 9, scope: !555)
!1374 = !DILocation(line: 946, column: 36, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !406, line: 945, column: 18)
!1376 = !DILocation(line: 946, column: 9, scope: !1375)
!1377 = !DILocation(line: 947, column: 36, scope: !1375)
!1378 = !DILocation(line: 947, column: 9, scope: !1375)
!1379 = !DILocation(line: 948, column: 13, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1375, file: !406, line: 948, column: 13)
!1381 = !DILocation(line: 948, column: 15, scope: !1380)
!1382 = !DILocation(line: 948, column: 13, scope: !1375)
!1383 = !DILocation(line: 949, column: 13, scope: !1380)
!1384 = !DILocation(line: 950, column: 5, scope: !1375)
!1385 = !DILocation(line: 951, column: 9, scope: !1372)
!1386 = !DILocation(line: 952, column: 28, scope: !555)
!1387 = !DILocation(line: 952, column: 15, scope: !555)
!1388 = !DILocation(line: 952, column: 13, scope: !555)
!1389 = !DILocation(line: 953, column: 9, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !555, file: !406, line: 953, column: 9)
!1391 = !DILocation(line: 953, column: 9, scope: !555)
!1392 = !DILocation(line: 954, column: 36, scope: !1390)
!1393 = !DILocation(line: 954, column: 9, scope: !1390)
!1394 = !DILocation(line: 956, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !406, line: 955, column: 10)
!1396 = !DILocation(line: 957, column: 36, scope: !1395)
!1397 = !DILocation(line: 957, column: 9, scope: !1395)
!1398 = !DILocation(line: 959, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !555, file: !406, line: 959, column: 9)
!1400 = !DILocation(line: 959, column: 11, scope: !1399)
!1401 = !DILocation(line: 959, column: 9, scope: !555)
!1402 = !DILocation(line: 960, column: 9, scope: !1399)
!1403 = !DILocation(line: 961, column: 21, scope: !555)
!1404 = !DILocation(line: 961, column: 32, scope: !555)
!1405 = !DILocation(line: 961, column: 5, scope: !555)
!1406 = !DILocation(line: 963, column: 5, scope: !555)
!1407 = !DILocation(line: 963, column: 10, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !581, file: !406, discriminator: 1)
!1409 = !DILocation(line: 963, column: 20, scope: !581)
!1410 = !DILocation(line: 963, column: 51, scope: !581)
!1411 = !DILocation(line: 963, column: 60, scope: !584)
!1412 = !DILocation(line: 963, column: 76, scope: !584)
!1413 = !DILocation(line: 963, column: 60, scope: !581)
!1414 = !DILocation(line: 963, column: 91, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !584, file: !406, discriminator: 2)
!1416 = !DILocation(line: 963, column: 96, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !583, file: !406, discriminator: 4)
!1418 = !DILocation(line: 963, column: 106, scope: !583)
!1419 = !DILocation(line: 963, column: 136, scope: !583)
!1420 = !DILocation(line: 963, column: 162, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !583, file: !406, line: 963, column: 159)
!1422 = !DILocation(line: 963, column: 179, scope: !1421)
!1423 = !DILocation(line: 963, column: 159, scope: !1421)
!1424 = !DILocation(line: 963, column: 189, scope: !1421)
!1425 = !DILocation(line: 963, column: 159, scope: !583)
!1426 = !DILocation(line: 963, column: 159, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !583, file: !406, discriminator: 5)
!1428 = !DILocation(line: 963, column: 220, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1421, file: !406, discriminator: 6)
!1430 = !DILocation(line: 963, column: 238, scope: !1421)
!1431 = !DILocation(line: 963, column: 248, scope: !1421)
!1432 = !DILocation(line: 963, column: 273, scope: !1421)
!1433 = !DILocation(line: 963, column: 204, scope: !1421)
!1434 = !DILocation(line: 963, column: 292, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !584, file: !406, discriminator: 7)
!1436 = !DILocation(line: 963, column: 292, scope: !583)
!1437 = !DILocation(line: 963, column: 292, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !583, file: !406, discriminator: 8)
!1439 = !DILocation(line: 963, column: 292, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !583, file: !406, discriminator: 9)
!1441 = !DILocation(line: 963, column: 305, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1443, file: !406, discriminator: 10)
!1443 = !DILexicalBlockFile(scope: !555, file: !406, discriminator: 3)
!1444 = !DILocation(line: 963, column: 305, scope: !581)
!1445 = !DILocation(line: 963, column: 305, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !581, file: !406, discriminator: 11)
!1447 = !DILocation(line: 964, column: 5, scope: !555)
!1448 = !DILocation(line: 964, column: 10, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !586, file: !406, discriminator: 1)
!1450 = !DILocation(line: 964, column: 20, scope: !586)
!1451 = !DILocation(line: 964, column: 51, scope: !586)
!1452 = !DILocation(line: 964, column: 59, scope: !589)
!1453 = !DILocation(line: 964, column: 75, scope: !589)
!1454 = !DILocation(line: 964, column: 59, scope: !586)
!1455 = !DILocation(line: 964, column: 90, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !589, file: !406, discriminator: 2)
!1457 = !DILocation(line: 964, column: 95, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !588, file: !406, discriminator: 4)
!1459 = !DILocation(line: 964, column: 105, scope: !588)
!1460 = !DILocation(line: 964, column: 135, scope: !588)
!1461 = !DILocation(line: 964, column: 161, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !588, file: !406, line: 964, column: 158)
!1463 = !DILocation(line: 964, column: 178, scope: !1462)
!1464 = !DILocation(line: 964, column: 158, scope: !1462)
!1465 = !DILocation(line: 964, column: 188, scope: !1462)
!1466 = !DILocation(line: 964, column: 158, scope: !588)
!1467 = !DILocation(line: 964, column: 158, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !588, file: !406, discriminator: 5)
!1469 = !DILocation(line: 964, column: 219, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1462, file: !406, discriminator: 6)
!1471 = !DILocation(line: 964, column: 237, scope: !1462)
!1472 = !DILocation(line: 964, column: 247, scope: !1462)
!1473 = !DILocation(line: 964, column: 272, scope: !1462)
!1474 = !DILocation(line: 964, column: 203, scope: !1462)
!1475 = !DILocation(line: 964, column: 291, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !589, file: !406, discriminator: 7)
!1477 = !DILocation(line: 964, column: 291, scope: !588)
!1478 = !DILocation(line: 964, column: 291, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !588, file: !406, discriminator: 8)
!1480 = !DILocation(line: 964, column: 291, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !588, file: !406, discriminator: 9)
!1482 = !DILocation(line: 964, column: 304, scope: !1442)
!1483 = !DILocation(line: 964, column: 304, scope: !586)
!1484 = !DILocation(line: 964, column: 304, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !586, file: !406, discriminator: 11)
!1486 = !DILocation(line: 965, column: 5, scope: !555)
!1487 = !DILocation(line: 965, column: 10, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !591, file: !406, discriminator: 1)
!1489 = !DILocation(line: 965, column: 20, scope: !591)
!1490 = !DILocation(line: 965, column: 51, scope: !591)
!1491 = !DILocation(line: 965, column: 60, scope: !594)
!1492 = !DILocation(line: 965, column: 76, scope: !594)
!1493 = !DILocation(line: 965, column: 60, scope: !591)
!1494 = !DILocation(line: 965, column: 91, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !594, file: !406, discriminator: 2)
!1496 = !DILocation(line: 965, column: 96, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !593, file: !406, discriminator: 4)
!1498 = !DILocation(line: 965, column: 106, scope: !593)
!1499 = !DILocation(line: 965, column: 136, scope: !593)
!1500 = !DILocation(line: 965, column: 162, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !593, file: !406, line: 965, column: 159)
!1502 = !DILocation(line: 965, column: 179, scope: !1501)
!1503 = !DILocation(line: 965, column: 159, scope: !1501)
!1504 = !DILocation(line: 965, column: 189, scope: !1501)
!1505 = !DILocation(line: 965, column: 159, scope: !593)
!1506 = !DILocation(line: 965, column: 159, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !593, file: !406, discriminator: 5)
!1508 = !DILocation(line: 965, column: 220, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1501, file: !406, discriminator: 6)
!1510 = !DILocation(line: 965, column: 238, scope: !1501)
!1511 = !DILocation(line: 965, column: 248, scope: !1501)
!1512 = !DILocation(line: 965, column: 273, scope: !1501)
!1513 = !DILocation(line: 965, column: 204, scope: !1501)
!1514 = !DILocation(line: 965, column: 292, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !594, file: !406, discriminator: 7)
!1516 = !DILocation(line: 965, column: 292, scope: !593)
!1517 = !DILocation(line: 965, column: 292, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !593, file: !406, discriminator: 8)
!1519 = !DILocation(line: 965, column: 292, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !593, file: !406, discriminator: 9)
!1521 = !DILocation(line: 965, column: 305, scope: !1442)
!1522 = !DILocation(line: 965, column: 305, scope: !591)
!1523 = !DILocation(line: 965, column: 305, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !591, file: !406, discriminator: 11)
!1525 = !DILocation(line: 966, column: 5, scope: !555)
!1526 = !DILocation(line: 966, column: 10, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !596, file: !406, discriminator: 1)
!1528 = !DILocation(line: 966, column: 20, scope: !596)
!1529 = !DILocation(line: 966, column: 51, scope: !596)
!1530 = !DILocation(line: 966, column: 59, scope: !599)
!1531 = !DILocation(line: 966, column: 75, scope: !599)
!1532 = !DILocation(line: 966, column: 59, scope: !596)
!1533 = !DILocation(line: 966, column: 90, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !599, file: !406, discriminator: 2)
!1535 = !DILocation(line: 966, column: 95, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !598, file: !406, discriminator: 4)
!1537 = !DILocation(line: 966, column: 105, scope: !598)
!1538 = !DILocation(line: 966, column: 135, scope: !598)
!1539 = !DILocation(line: 966, column: 161, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !598, file: !406, line: 966, column: 158)
!1541 = !DILocation(line: 966, column: 178, scope: !1540)
!1542 = !DILocation(line: 966, column: 158, scope: !1540)
!1543 = !DILocation(line: 966, column: 188, scope: !1540)
!1544 = !DILocation(line: 966, column: 158, scope: !598)
!1545 = !DILocation(line: 966, column: 158, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !598, file: !406, discriminator: 5)
!1547 = !DILocation(line: 966, column: 219, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1540, file: !406, discriminator: 6)
!1549 = !DILocation(line: 966, column: 237, scope: !1540)
!1550 = !DILocation(line: 966, column: 247, scope: !1540)
!1551 = !DILocation(line: 966, column: 272, scope: !1540)
!1552 = !DILocation(line: 966, column: 203, scope: !1540)
!1553 = !DILocation(line: 966, column: 291, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !599, file: !406, discriminator: 7)
!1555 = !DILocation(line: 966, column: 291, scope: !598)
!1556 = !DILocation(line: 966, column: 291, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !598, file: !406, discriminator: 8)
!1558 = !DILocation(line: 966, column: 291, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !598, file: !406, discriminator: 9)
!1560 = !DILocation(line: 966, column: 304, scope: !1442)
!1561 = !DILocation(line: 966, column: 304, scope: !596)
!1562 = !DILocation(line: 966, column: 304, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !596, file: !406, discriminator: 11)
!1564 = !DILocation(line: 967, column: 1, scope: !555)
!1565 = !DILocation(line: 967, column: 1, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !555, file: !406, discriminator: 1)
!1567 = !DILocation(line: 1052, column: 34, scope: !600)
!1568 = !DILocation(line: 1053, column: 31, scope: !600)
!1569 = !DILocation(line: 1058, column: 25, scope: !600)
!1570 = !DILocation(line: 1059, column: 31, scope: !600)
!1571 = !DILocation(line: 1062, column: 23, scope: !600)
!1572 = !DILocation(line: 1063, column: 23, scope: !600)
!1573 = !DILocation(line: 1065, column: 5, scope: !600)
!1574 = !DILocation(line: 1065, column: 16, scope: !600)
!1575 = !DILocation(line: 1065, column: 19, scope: !600)
!1576 = !DILocation(line: 1065, column: 22, scope: !600)
!1577 = !DILocation(line: 1065, column: 32, scope: !600)
!1578 = !DILocation(line: 1066, column: 5, scope: !600)
!1579 = !DILocation(line: 1066, column: 11, scope: !600)
!1580 = !DILocation(line: 1067, column: 5, scope: !600)
!1581 = !DILocation(line: 1067, column: 22, scope: !600)
!1582 = !DILocation(line: 1067, column: 29, scope: !600)
!1583 = !DILocation(line: 1068, column: 5, scope: !600)
!1584 = !DILocation(line: 1068, column: 16, scope: !600)
!1585 = !DILocation(line: 1069, column: 5, scope: !600)
!1586 = !DILocation(line: 1069, column: 15, scope: !600)
!1587 = !DILocation(line: 1070, column: 5, scope: !600)
!1588 = !DILocation(line: 1070, column: 12, scope: !600)
!1589 = !DILocation(line: 1071, column: 5, scope: !600)
!1590 = !DILocation(line: 1071, column: 15, scope: !600)
!1591 = !DILocation(line: 1073, column: 37, scope: !600)
!1592 = !DILocation(line: 1073, column: 22, scope: !600)
!1593 = !DILocation(line: 1073, column: 49, scope: !600)
!1594 = !{!1117, !1071, i64 16}
!1595 = !DILocation(line: 1073, column: 18, scope: !600)
!1596 = !DILocation(line: 1073, column: 7, scope: !600)
!1597 = !DILocation(line: 1080, column: 75, scope: !600)
!1598 = !DILocation(line: 1080, column: 73, scope: !600)
!1599 = !DILocation(line: 1080, column: 31, scope: !600)
!1600 = !DILocation(line: 1080, column: 12, scope: !600)
!1601 = !DILocation(line: 1080, column: 10, scope: !600)
!1602 = !DILocation(line: 1081, column: 10, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !600, file: !406, line: 1081, column: 9)
!1604 = !DILocation(line: 1081, column: 9, scope: !600)
!1605 = !DILocation(line: 1082, column: 9, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !406, line: 1081, column: 16)
!1607 = !DILocation(line: 1083, column: 9, scope: !1606)
!1608 = !DILocation(line: 1085, column: 12, scope: !600)
!1609 = !DILocation(line: 1085, column: 5, scope: !600)
!1610 = !DILocation(line: 1085, column: 47, scope: !600)
!1611 = !DILocation(line: 1085, column: 45, scope: !600)
!1612 = !DILocation(line: 1086, column: 21, scope: !600)
!1613 = !DILocation(line: 1086, column: 49, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !600, file: !406, discriminator: 1)
!1615 = !DILocation(line: 1086, column: 34, scope: !600)
!1616 = !DILocation(line: 1086, column: 61, scope: !600)
!1617 = !DILocation(line: 1086, column: 21, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !600, file: !406, discriminator: 2)
!1619 = !DILocation(line: 1086, column: 19, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1621, file: !406, discriminator: 4)
!1621 = !DILexicalBlockFile(scope: !600, file: !406, discriminator: 3)
!1622 = !DILocation(line: 1094, column: 15, scope: !600)
!1623 = !DILocation(line: 1094, column: 12, scope: !600)
!1624 = !DILocation(line: 1097, column: 12, scope: !624)
!1625 = !DILocation(line: 1097, column: 10, scope: !624)
!1626 = !DILocation(line: 1097, column: 17, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1628, file: !406, discriminator: 2)
!1628 = !DILexicalBlockFile(scope: !623, file: !406, discriminator: 1)
!1629 = !DILocation(line: 1097, column: 21, scope: !623)
!1630 = !DILocation(line: 1097, column: 19, scope: !623)
!1631 = !DILocation(line: 1097, column: 5, scope: !624)
!1632 = !DILocation(line: 1098, column: 9, scope: !622)
!1633 = !DILocation(line: 1098, column: 19, scope: !622)
!1634 = !DILocation(line: 1099, column: 9, scope: !622)
!1635 = !DILocation(line: 1099, column: 19, scope: !622)
!1636 = !DILocation(line: 1100, column: 9, scope: !622)
!1637 = !DILocation(line: 1100, column: 13, scope: !622)
!1638 = !DILocation(line: 1102, column: 55, scope: !622)
!1639 = !DILocation(line: 1102, column: 35, scope: !622)
!1640 = !DILocation(line: 1102, column: 17, scope: !622)
!1641 = !DILocation(line: 1102, column: 47, scope: !622)
!1642 = !DILocation(line: 1102, column: 16, scope: !622)
!1643 = !DILocation(line: 1102, column: 13, scope: !622)
!1644 = !DILocation(line: 1107, column: 13, scope: !629)
!1645 = !DILocation(line: 1107, column: 22, scope: !629)
!1646 = !DILocation(line: 1107, column: 25, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !629, file: !406, discriminator: 1)
!1648 = !DILocation(line: 1107, column: 41, scope: !629)
!1649 = !DILocation(line: 1107, column: 39, scope: !629)
!1650 = !DILocation(line: 1107, column: 13, scope: !622)
!1651 = !DILocation(line: 1108, column: 13, scope: !628)
!1652 = !DILocation(line: 1108, column: 23, scope: !628)
!1653 = !DILocation(line: 1109, column: 65, scope: !628)
!1654 = !DILocation(line: 1109, column: 45, scope: !628)
!1655 = !DILocation(line: 1109, column: 27, scope: !628)
!1656 = !DILocation(line: 1109, column: 57, scope: !628)
!1657 = !DILocation(line: 1109, column: 26, scope: !628)
!1658 = !DILocation(line: 1109, column: 23, scope: !628)
!1659 = !DILocation(line: 1110, column: 46, scope: !628)
!1660 = !DILocation(line: 1110, column: 57, scope: !628)
!1661 = !DILocation(line: 1110, column: 17, scope: !628)
!1662 = !DILocation(line: 1110, column: 15, scope: !628)
!1663 = !DILocation(line: 1111, column: 17, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !628, file: !406, line: 1111, column: 17)
!1665 = !DILocation(line: 1111, column: 19, scope: !1664)
!1666 = !DILocation(line: 1111, column: 17, scope: !628)
!1667 = !DILocation(line: 1112, column: 38, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !406, line: 1111, column: 34)
!1669 = !DILocation(line: 1112, column: 71, scope: !1668)
!1670 = !DILocation(line: 1112, column: 72, scope: !1668)
!1671 = !DILocation(line: 1112, column: 17, scope: !1668)
!1672 = !DILocation(line: 1113, column: 17, scope: !1668)
!1673 = !DILocation(line: 1116, column: 29, scope: !628)
!1674 = !DILocation(line: 1116, column: 32, scope: !628)
!1675 = !DILocation(line: 1116, column: 33, scope: !628)
!1676 = !DILocation(line: 1116, column: 37, scope: !628)
!1677 = !DILocation(line: 1116, column: 19, scope: !628)
!1678 = !DILocation(line: 1116, column: 17, scope: !628)
!1679 = !DILocation(line: 1117, column: 13, scope: !628)
!1680 = !DILocation(line: 1117, column: 18, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !631, file: !406, discriminator: 1)
!1682 = !DILocation(line: 1117, column: 28, scope: !631)
!1683 = !DILocation(line: 1117, column: 58, scope: !631)
!1684 = !DILocation(line: 1117, column: 70, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !631, file: !406, line: 1117, column: 67)
!1686 = !DILocation(line: 1117, column: 87, scope: !1685)
!1687 = !DILocation(line: 1117, column: 67, scope: !1685)
!1688 = !DILocation(line: 1117, column: 97, scope: !1685)
!1689 = !DILocation(line: 1117, column: 67, scope: !631)
!1690 = !DILocation(line: 1117, column: 67, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !631, file: !406, discriminator: 2)
!1692 = !DILocation(line: 1117, column: 128, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1685, file: !406, discriminator: 3)
!1694 = !DILocation(line: 1117, column: 146, scope: !1685)
!1695 = !DILocation(line: 1117, column: 156, scope: !1685)
!1696 = !DILocation(line: 1117, column: 181, scope: !1685)
!1697 = !DILocation(line: 1117, column: 112, scope: !1685)
!1698 = !DILocation(line: 1117, column: 200, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !628, file: !406, discriminator: 4)
!1700 = !DILocation(line: 1117, column: 200, scope: !631)
!1701 = !DILocation(line: 1117, column: 200, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !631, file: !406, discriminator: 5)
!1703 = !DILocation(line: 1118, column: 23, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !628, file: !406, line: 1118, column: 17)
!1705 = !DILocation(line: 1118, column: 20, scope: !1704)
!1706 = !DILocation(line: 1118, column: 17, scope: !628)
!1707 = !DILocation(line: 1119, column: 38, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !406, line: 1118, column: 28)
!1709 = !DILocation(line: 1119, column: 71, scope: !1708)
!1710 = !DILocation(line: 1119, column: 72, scope: !1708)
!1711 = !DILocation(line: 1119, column: 17, scope: !1708)
!1712 = !DILocation(line: 1120, column: 17, scope: !1708)
!1713 = !DILocation(line: 1122, column: 9, scope: !629)
!1714 = !DILocation(line: 1122, column: 9, scope: !1647)
!1715 = !DILocation(line: 1122, column: 9, scope: !628)
!1716 = !DILocation(line: 1123, column: 29, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !629, file: !406, line: 1122, column: 16)
!1718 = !DILocation(line: 1123, column: 34, scope: !1717)
!1719 = !DILocation(line: 1123, column: 35, scope: !1717)
!1720 = !DILocation(line: 1123, column: 39, scope: !1717)
!1721 = !DILocation(line: 1123, column: 19, scope: !1717)
!1722 = !DILocation(line: 1123, column: 17, scope: !1717)
!1723 = !DILocation(line: 1124, column: 23, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1717, file: !406, line: 1124, column: 17)
!1725 = !DILocation(line: 1124, column: 20, scope: !1724)
!1726 = !DILocation(line: 1124, column: 17, scope: !1717)
!1727 = !DILocation(line: 1125, column: 38, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !406, line: 1124, column: 28)
!1729 = !DILocation(line: 1125, column: 71, scope: !1728)
!1730 = !DILocation(line: 1125, column: 72, scope: !1728)
!1731 = !DILocation(line: 1125, column: 17, scope: !1728)
!1732 = !DILocation(line: 1126, column: 17, scope: !1728)
!1733 = !DILocation(line: 1129, column: 5, scope: !623)
!1734 = !DILocation(line: 1129, column: 5, scope: !1628)
!1735 = !DILocation(line: 1129, column: 5, scope: !622)
!1736 = !DILocation(line: 1097, column: 24, scope: !623)
!1737 = !DILocation(line: 1097, column: 29, scope: !623)
!1738 = !DILocation(line: 1097, column: 5, scope: !623)
!1739 = !DILocation(line: 1131, column: 34, scope: !600)
!1740 = !DILocation(line: 1131, column: 13, scope: !600)
!1741 = !DILocation(line: 1131, column: 11, scope: !600)
!1742 = !DILocation(line: 1132, column: 34, scope: !600)
!1743 = !DILocation(line: 1132, column: 41, scope: !600)
!1744 = !{!1745, !1071, i64 0}
!1745 = !{!"_ffi_type", !1071, i64 0, !1246, i64 8, !1246, i64 10, !1020, i64 16}
!1746 = !DILocation(line: 1132, column: 47, scope: !600)
!1747 = !DILocation(line: 1132, column: 33, scope: !600)
!1748 = !DILocation(line: 1132, column: 70, scope: !1614)
!1749 = !DILocation(line: 1132, column: 77, scope: !600)
!1750 = !DILocation(line: 1132, column: 33, scope: !1618)
!1751 = !DILocation(line: 1132, column: 14, scope: !1620)
!1752 = !DILocation(line: 1132, column: 12, scope: !600)
!1753 = !DILocation(line: 1134, column: 59, scope: !600)
!1754 = !DILocation(line: 1134, column: 57, scope: !600)
!1755 = !DILocation(line: 1134, column: 24, scope: !600)
!1756 = !DILocation(line: 1134, column: 15, scope: !600)
!1757 = !DILocation(line: 1134, column: 13, scope: !600)
!1758 = !DILocation(line: 1135, column: 66, scope: !600)
!1759 = !DILocation(line: 1135, column: 64, scope: !600)
!1760 = !DILocation(line: 1135, column: 27, scope: !600)
!1761 = !DILocation(line: 1135, column: 14, scope: !600)
!1762 = !DILocation(line: 1135, column: 12, scope: !600)
!1763 = !DILocation(line: 1136, column: 10, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !600, file: !406, line: 1136, column: 9)
!1765 = !DILocation(line: 1136, column: 17, scope: !1764)
!1766 = !DILocation(line: 1136, column: 21, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1764, file: !406, discriminator: 1)
!1768 = !DILocation(line: 1136, column: 29, scope: !1764)
!1769 = !DILocation(line: 1136, column: 33, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1764, file: !406, discriminator: 2)
!1771 = !DILocation(line: 1136, column: 9, scope: !600)
!1772 = !DILocation(line: 1137, column: 9, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1764, file: !406, line: 1136, column: 41)
!1774 = !DILocation(line: 1138, column: 9, scope: !1773)
!1775 = !DILocation(line: 1140, column: 12, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !600, file: !406, line: 1140, column: 5)
!1777 = !DILocation(line: 1140, column: 10, scope: !1776)
!1778 = !DILocation(line: 1140, column: 17, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1780, file: !406, discriminator: 2)
!1780 = !DILexicalBlockFile(scope: !1781, file: !406, discriminator: 1)
!1781 = distinct !DILexicalBlock(scope: !1776, file: !406, line: 1140, column: 5)
!1782 = !DILocation(line: 1140, column: 21, scope: !1781)
!1783 = !DILocation(line: 1140, column: 19, scope: !1781)
!1784 = !DILocation(line: 1140, column: 5, scope: !1776)
!1785 = !DILocation(line: 1141, column: 26, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1781, file: !406, line: 1140, column: 36)
!1787 = !DILocation(line: 1141, column: 21, scope: !1786)
!1788 = !DILocation(line: 1141, column: 29, scope: !1786)
!1789 = !{!1790, !1020, i64 0}
!1790 = !{!"argument", !1020, i64 0, !1020, i64 8, !1021, i64 16}
!1791 = !DILocation(line: 1141, column: 16, scope: !1786)
!1792 = !DILocation(line: 1141, column: 9, scope: !1786)
!1793 = !DILocation(line: 1141, column: 19, scope: !1786)
!1794 = !DILocation(line: 1142, column: 20, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1786, file: !406, line: 1142, column: 13)
!1796 = !DILocation(line: 1142, column: 13, scope: !1795)
!1797 = !DILocation(line: 1142, column: 24, scope: !1795)
!1798 = !{!1745, !1246, i64 10}
!1799 = !DILocation(line: 1142, column: 29, scope: !1795)
!1800 = !DILocation(line: 1142, column: 13, scope: !1786)
!1801 = !DILocation(line: 1147, column: 39, scope: !1795)
!1802 = !DILocation(line: 1147, column: 34, scope: !1795)
!1803 = !DILocation(line: 1147, column: 42, scope: !1795)
!1804 = !DILocation(line: 1147, column: 48, scope: !1795)
!1805 = !DILocation(line: 1147, column: 21, scope: !1795)
!1806 = !DILocation(line: 1147, column: 13, scope: !1795)
!1807 = !DILocation(line: 1147, column: 24, scope: !1795)
!1808 = !DILocation(line: 1149, column: 40, scope: !1795)
!1809 = !DILocation(line: 1149, column: 35, scope: !1795)
!1810 = !DILocation(line: 1149, column: 43, scope: !1795)
!1811 = !DILocation(line: 1149, column: 26, scope: !1795)
!1812 = !DILocation(line: 1149, column: 21, scope: !1795)
!1813 = !DILocation(line: 1149, column: 13, scope: !1795)
!1814 = !DILocation(line: 1149, column: 24, scope: !1795)
!1815 = !DILocation(line: 1150, column: 5, scope: !1786)
!1816 = !DILocation(line: 1140, column: 31, scope: !1781)
!1817 = !DILocation(line: 1140, column: 5, scope: !1781)
!1818 = !DILocation(line: 1152, column: 38, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !600, file: !406, line: 1152, column: 9)
!1820 = !DILocation(line: 1152, column: 45, scope: !1819)
!1821 = !DILocation(line: 1152, column: 52, scope: !1819)
!1822 = !DILocation(line: 1152, column: 61, scope: !1819)
!1823 = !DILocation(line: 1153, column: 38, scope: !1819)
!1824 = !DILocation(line: 1153, column: 45, scope: !1819)
!1825 = !DILocation(line: 1154, column: 44, scope: !1819)
!1826 = !DILocation(line: 1154, column: 38, scope: !1819)
!1827 = !DILocation(line: 1152, column: 15, scope: !1819)
!1828 = !DILocation(line: 1152, column: 12, scope: !1819)
!1829 = !DILocation(line: 1152, column: 9, scope: !600)
!1830 = !DILocation(line: 1157, column: 9, scope: !1819)
!1831 = !DILocation(line: 1189, column: 28, scope: !600)
!1832 = !DILocation(line: 1189, column: 37, scope: !600)
!1833 = !DILocation(line: 1189, column: 45, scope: !600)
!1834 = !DILocation(line: 1189, column: 18, scope: !600)
!1835 = !DILocation(line: 1189, column: 16, scope: !600)
!1836 = !DILocation(line: 1189, column: 9, scope: !600)
!1837 = !DILocation(line: 1191, column: 12, scope: !635)
!1838 = !DILocation(line: 1191, column: 10, scope: !635)
!1839 = !DILocation(line: 1191, column: 17, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1841, file: !406, discriminator: 2)
!1841 = !DILexicalBlockFile(scope: !634, file: !406, discriminator: 1)
!1842 = !DILocation(line: 1191, column: 21, scope: !634)
!1843 = !DILocation(line: 1191, column: 19, scope: !634)
!1844 = !DILocation(line: 1191, column: 5, scope: !635)
!1845 = !DILocation(line: 1192, column: 9, scope: !634)
!1846 = !DILocation(line: 1192, column: 14, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !633, file: !406, discriminator: 1)
!1848 = !DILocation(line: 1192, column: 24, scope: !633)
!1849 = !DILocation(line: 1192, column: 60, scope: !633)
!1850 = !DILocation(line: 1192, column: 55, scope: !633)
!1851 = !DILocation(line: 1192, column: 63, scope: !633)
!1852 = !{!1790, !1020, i64 8}
!1853 = !DILocation(line: 1192, column: 74, scope: !638)
!1854 = !DILocation(line: 1192, column: 90, scope: !638)
!1855 = !DILocation(line: 1192, column: 74, scope: !633)
!1856 = !DILocation(line: 1192, column: 105, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !638, file: !406, discriminator: 2)
!1858 = !DILocation(line: 1192, column: 110, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !637, file: !406, discriminator: 4)
!1860 = !DILocation(line: 1192, column: 120, scope: !637)
!1861 = !DILocation(line: 1192, column: 150, scope: !637)
!1862 = !DILocation(line: 1192, column: 176, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !637, file: !406, line: 1192, column: 173)
!1864 = !DILocation(line: 1192, column: 193, scope: !1863)
!1865 = !DILocation(line: 1192, column: 173, scope: !1863)
!1866 = !DILocation(line: 1192, column: 203, scope: !1863)
!1867 = !DILocation(line: 1192, column: 173, scope: !637)
!1868 = !DILocation(line: 1192, column: 173, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !637, file: !406, discriminator: 5)
!1870 = !DILocation(line: 1192, column: 234, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1863, file: !406, discriminator: 6)
!1872 = !DILocation(line: 1192, column: 252, scope: !1863)
!1873 = !DILocation(line: 1192, column: 262, scope: !1863)
!1874 = !DILocation(line: 1192, column: 287, scope: !1863)
!1875 = !DILocation(line: 1192, column: 218, scope: !1863)
!1876 = !DILocation(line: 1192, column: 306, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !638, file: !406, discriminator: 7)
!1878 = !DILocation(line: 1192, column: 306, scope: !637)
!1879 = !DILocation(line: 1192, column: 306, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !637, file: !406, discriminator: 8)
!1881 = !DILocation(line: 1192, column: 306, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !637, file: !406, discriminator: 9)
!1883 = !DILocation(line: 1192, column: 319, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1885, file: !406, discriminator: 10)
!1885 = !DILexicalBlockFile(scope: !634, file: !406, discriminator: 3)
!1886 = !DILocation(line: 1192, column: 319, scope: !633)
!1887 = !DILocation(line: 1192, column: 319, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !633, file: !406, discriminator: 11)
!1889 = !DILocation(line: 1192, column: 319, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !633, file: !406, discriminator: 12)
!1891 = !DILocation(line: 1191, column: 31, scope: !634)
!1892 = !DILocation(line: 1191, column: 5, scope: !634)
!1893 = !DILocation(line: 1193, column: 12, scope: !600)
!1894 = !DILocation(line: 1193, column: 5, scope: !600)
!1895 = !DILocation(line: 1194, column: 1, scope: !600)
!1896 = !DILocation(line: 612, column: 32, scope: !662)
!1897 = !DILocation(line: 612, column: 48, scope: !662)
!1898 = !DILocation(line: 612, column: 72, scope: !662)
!1899 = !DILocation(line: 614, column: 5, scope: !662)
!1900 = !DILocation(line: 614, column: 20, scope: !662)
!1901 = !DILocation(line: 615, column: 5, scope: !662)
!1902 = !DILocation(line: 615, column: 9, scope: !662)
!1903 = !DILocation(line: 615, column: 14, scope: !662)
!1904 = !DILocation(line: 617, column: 29, scope: !662)
!1905 = !DILocation(line: 617, column: 12, scope: !662)
!1906 = !DILocation(line: 617, column: 10, scope: !662)
!1907 = !DILocation(line: 618, column: 9, scope: !672)
!1908 = !DILocation(line: 618, column: 9, scope: !662)
!1909 = !DILocation(line: 619, column: 9, scope: !671)
!1910 = !DILocation(line: 619, column: 23, scope: !671)
!1911 = !DILocation(line: 622, column: 16, scope: !671)
!1912 = !DILocation(line: 622, column: 22, scope: !671)
!1913 = !{!1914, !1020, i64 112}
!1914 = !{!"", !1915, i64 0, !1071, i64 40, !1071, i64 48, !1071, i64 56, !1745, i64 64, !1020, i64 88, !1020, i64 96, !1020, i64 104, !1020, i64 112, !1020, i64 120, !1020, i64 128, !1020, i64 136, !1020, i64 144, !1118, i64 152, !1020, i64 160, !1118, i64 168, !1020, i64 176}
!1915 = !{!"", !1070, i64 0, !1071, i64 16, !1020, i64 24, !1020, i64 32}
!1916 = !DILocation(line: 622, column: 47, scope: !671)
!1917 = !DILocation(line: 622, column: 32, scope: !671)
!1918 = !DILocation(line: 622, column: 14, scope: !671)
!1919 = !DILocation(line: 623, column: 13, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !671, file: !406, line: 623, column: 13)
!1921 = !DILocation(line: 623, column: 18, scope: !1920)
!1922 = !DILocation(line: 623, column: 13, scope: !671)
!1923 = !DILocation(line: 624, column: 13, scope: !1920)
!1924 = !DILocation(line: 625, column: 24, scope: !671)
!1925 = !DILocation(line: 625, column: 30, scope: !671)
!1926 = !DILocation(line: 625, column: 9, scope: !671)
!1927 = !DILocation(line: 625, column: 13, scope: !671)
!1928 = !DILocation(line: 625, column: 22, scope: !671)
!1929 = !DILocation(line: 626, column: 17, scope: !671)
!1930 = !DILocation(line: 626, column: 21, scope: !671)
!1931 = !DILocation(line: 626, column: 9, scope: !671)
!1932 = !DILocation(line: 626, column: 29, scope: !671)
!1933 = !DILocation(line: 626, column: 35, scope: !671)
!1934 = !DILocation(line: 627, column: 32, scope: !671)
!1935 = !DILocation(line: 627, column: 20, scope: !671)
!1936 = !DILocation(line: 627, column: 9, scope: !671)
!1937 = !DILocation(line: 627, column: 13, scope: !671)
!1938 = !DILocation(line: 627, column: 18, scope: !671)
!1939 = !DILocation(line: 628, column: 9, scope: !671)
!1940 = !DILocation(line: 629, column: 5, scope: !672)
!1941 = !DILocation(line: 631, column: 11, scope: !675)
!1942 = !DILocation(line: 631, column: 17, scope: !675)
!1943 = !DILocation(line: 631, column: 25, scope: !675)
!1944 = !DILocation(line: 631, column: 9, scope: !662)
!1945 = !DILocation(line: 632, column: 9, scope: !674)
!1946 = !DILocation(line: 632, column: 23, scope: !674)
!1947 = !DILocation(line: 632, column: 46, scope: !674)
!1948 = !DILocation(line: 632, column: 30, scope: !674)
!1949 = !DILocation(line: 633, column: 24, scope: !674)
!1950 = !DILocation(line: 633, column: 30, scope: !674)
!1951 = !DILocation(line: 633, column: 9, scope: !674)
!1952 = !DILocation(line: 633, column: 13, scope: !674)
!1953 = !DILocation(line: 633, column: 22, scope: !674)
!1954 = !DILocation(line: 634, column: 25, scope: !674)
!1955 = !DILocation(line: 634, column: 32, scope: !674)
!1956 = !DILocation(line: 634, column: 41, scope: !674)
!1957 = !DILocation(line: 635, column: 20, scope: !674)
!1958 = !DILocation(line: 635, column: 9, scope: !674)
!1959 = !DILocation(line: 635, column: 13, scope: !674)
!1960 = !DILocation(line: 635, column: 18, scope: !674)
!1961 = !DILocation(line: 636, column: 17, scope: !674)
!1962 = !DILocation(line: 636, column: 21, scope: !674)
!1963 = !DILocation(line: 636, column: 9, scope: !674)
!1964 = !DILocation(line: 636, column: 29, scope: !674)
!1965 = !DILocation(line: 636, column: 35, scope: !674)
!1966 = !DILocation(line: 637, column: 9, scope: !674)
!1967 = !DILocation(line: 638, column: 5, scope: !675)
!1968 = !DILocation(line: 641, column: 9, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !662, file: !406, line: 641, column: 9)
!1970 = !DILocation(line: 641, column: 13, scope: !1969)
!1971 = !DILocation(line: 641, column: 9, scope: !662)
!1972 = !DILocation(line: 642, column: 9, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !406, line: 641, column: 35)
!1974 = !DILocation(line: 642, column: 13, scope: !1973)
!1975 = !DILocation(line: 642, column: 22, scope: !1973)
!1976 = !DILocation(line: 643, column: 9, scope: !1973)
!1977 = !DILocation(line: 643, column: 13, scope: !1973)
!1978 = !DILocation(line: 643, column: 19, scope: !1973)
!1979 = !DILocation(line: 643, column: 21, scope: !1973)
!1980 = !DILocation(line: 644, column: 9, scope: !1973)
!1981 = !DILocation(line: 647, column: 26, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !662, file: !406, line: 647, column: 9)
!1983 = !DILocation(line: 647, column: 33, scope: !1982)
!1984 = !DILocation(line: 647, column: 44, scope: !1982)
!1985 = !{!1116, !1071, i64 168}
!1986 = !DILocation(line: 647, column: 53, scope: !1982)
!1987 = !DILocation(line: 647, column: 70, scope: !1982)
!1988 = !DILocation(line: 647, column: 9, scope: !662)
!1989 = !DILocation(line: 648, column: 9, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1982, file: !406, line: 647, column: 77)
!1991 = !DILocation(line: 648, column: 13, scope: !1990)
!1992 = !DILocation(line: 648, column: 22, scope: !1990)
!1993 = !DILocation(line: 649, column: 51, scope: !1990)
!1994 = !DILocation(line: 649, column: 29, scope: !1990)
!1995 = !DILocation(line: 649, column: 23, scope: !1990)
!1996 = !DILocation(line: 649, column: 9, scope: !1990)
!1997 = !DILocation(line: 649, column: 13, scope: !1990)
!1998 = !DILocation(line: 649, column: 19, scope: !1990)
!1999 = !DILocation(line: 649, column: 21, scope: !1990)
!2000 = !DILocation(line: 650, column: 13, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1990, file: !406, line: 650, column: 13)
!2002 = !DILocation(line: 650, column: 17, scope: !2001)
!2003 = !DILocation(line: 650, column: 23, scope: !2001)
!2004 = !DILocation(line: 650, column: 25, scope: !2001)
!2005 = !DILocation(line: 650, column: 31, scope: !2001)
!2006 = !DILocation(line: 650, column: 34, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2001, file: !406, discriminator: 1)
!2008 = !DILocation(line: 650, column: 13, scope: !1990)
!2009 = !DILocation(line: 651, column: 13, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2001, file: !406, line: 650, column: 52)
!2011 = !DILocation(line: 652, column: 41, scope: !2010)
!2012 = !DILocation(line: 652, column: 27, scope: !2010)
!2013 = !DILocation(line: 652, column: 13, scope: !2010)
!2014 = !DILocation(line: 652, column: 17, scope: !2010)
!2015 = !DILocation(line: 652, column: 23, scope: !2010)
!2016 = !DILocation(line: 652, column: 25, scope: !2010)
!2017 = !DILocation(line: 653, column: 17, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2010, file: !406, line: 653, column: 17)
!2019 = !DILocation(line: 653, column: 21, scope: !2018)
!2020 = !DILocation(line: 653, column: 27, scope: !2018)
!2021 = !DILocation(line: 653, column: 29, scope: !2018)
!2022 = !DILocation(line: 653, column: 35, scope: !2018)
!2023 = !DILocation(line: 653, column: 38, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2018, file: !406, discriminator: 1)
!2025 = !DILocation(line: 653, column: 17, scope: !2010)
!2026 = !DILocation(line: 654, column: 33, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2018, file: !406, line: 653, column: 56)
!2028 = !DILocation(line: 654, column: 17, scope: !2027)
!2029 = !DILocation(line: 656, column: 17, scope: !2027)
!2030 = !DILocation(line: 658, column: 9, scope: !2010)
!2031 = !DILocation(line: 659, column: 9, scope: !1990)
!2032 = !DILocation(line: 662, column: 26, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !662, file: !406, line: 662, column: 9)
!2034 = !DILocation(line: 662, column: 33, scope: !2033)
!2035 = !DILocation(line: 662, column: 44, scope: !2033)
!2036 = !DILocation(line: 662, column: 53, scope: !2033)
!2037 = !DILocation(line: 662, column: 70, scope: !2033)
!2038 = !DILocation(line: 662, column: 9, scope: !662)
!2039 = !DILocation(line: 663, column: 9, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2033, file: !406, line: 662, column: 77)
!2041 = !DILocation(line: 663, column: 13, scope: !2040)
!2042 = !DILocation(line: 663, column: 22, scope: !2040)
!2043 = !DILocation(line: 664, column: 40, scope: !2040)
!2044 = !DILocation(line: 664, column: 23, scope: !2040)
!2045 = !DILocation(line: 664, column: 9, scope: !2040)
!2046 = !DILocation(line: 664, column: 13, scope: !2040)
!2047 = !DILocation(line: 664, column: 19, scope: !2040)
!2048 = !DILocation(line: 664, column: 21, scope: !2040)
!2049 = !DILocation(line: 665, column: 25, scope: !2040)
!2050 = !DILocation(line: 665, column: 32, scope: !2040)
!2051 = !DILocation(line: 665, column: 41, scope: !2040)
!2052 = !DILocation(line: 666, column: 20, scope: !2040)
!2053 = !DILocation(line: 666, column: 9, scope: !2040)
!2054 = !DILocation(line: 666, column: 13, scope: !2040)
!2055 = !DILocation(line: 666, column: 18, scope: !2040)
!2056 = !DILocation(line: 667, column: 9, scope: !2040)
!2057 = !DILocation(line: 671, column: 26, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !662, file: !406, line: 671, column: 9)
!2059 = !DILocation(line: 671, column: 33, scope: !2058)
!2060 = !DILocation(line: 671, column: 44, scope: !2058)
!2061 = !DILocation(line: 671, column: 53, scope: !2058)
!2062 = !DILocation(line: 671, column: 70, scope: !2058)
!2063 = !DILocation(line: 671, column: 9, scope: !662)
!2064 = !DILocation(line: 672, column: 9, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2058, file: !406, line: 671, column: 77)
!2066 = !DILocation(line: 672, column: 13, scope: !2065)
!2067 = !DILocation(line: 672, column: 22, scope: !2065)
!2068 = !DILocation(line: 673, column: 50, scope: !2065)
!2069 = !DILocation(line: 673, column: 23, scope: !2065)
!2070 = !DILocation(line: 673, column: 9, scope: !2065)
!2071 = !DILocation(line: 673, column: 13, scope: !2065)
!2072 = !DILocation(line: 673, column: 19, scope: !2065)
!2073 = !DILocation(line: 673, column: 21, scope: !2065)
!2074 = !DILocation(line: 674, column: 13, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2065, file: !406, line: 674, column: 13)
!2076 = !DILocation(line: 674, column: 17, scope: !2075)
!2077 = !DILocation(line: 674, column: 23, scope: !2075)
!2078 = !DILocation(line: 674, column: 25, scope: !2075)
!2079 = !DILocation(line: 674, column: 13, scope: !2065)
!2080 = !DILocation(line: 675, column: 13, scope: !2075)
!2081 = !DILocation(line: 676, column: 34, scope: !2065)
!2082 = !DILocation(line: 676, column: 38, scope: !2065)
!2083 = !DILocation(line: 676, column: 44, scope: !2065)
!2084 = !DILocation(line: 676, column: 20, scope: !2065)
!2085 = !DILocation(line: 676, column: 9, scope: !2065)
!2086 = !DILocation(line: 676, column: 13, scope: !2065)
!2087 = !DILocation(line: 676, column: 18, scope: !2065)
!2088 = !DILocation(line: 677, column: 14, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2065, file: !406, line: 677, column: 13)
!2090 = !DILocation(line: 677, column: 18, scope: !2089)
!2091 = !DILocation(line: 677, column: 13, scope: !2065)
!2092 = !DILocation(line: 678, column: 24, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !406, line: 677, column: 24)
!2094 = !DILocation(line: 678, column: 28, scope: !2093)
!2095 = !DILocation(line: 678, column: 34, scope: !2093)
!2096 = !DILocation(line: 678, column: 13, scope: !2093)
!2097 = !DILocation(line: 679, column: 13, scope: !2093)
!2098 = !DILocation(line: 681, column: 9, scope: !2065)
!2099 = !DILocation(line: 686, column: 9, scope: !677)
!2100 = !DILocation(line: 686, column: 19, scope: !677)
!2101 = !DILocation(line: 687, column: 38, scope: !677)
!2102 = !DILocation(line: 687, column: 15, scope: !677)
!2103 = !DILocation(line: 687, column: 13, scope: !677)
!2104 = !DILocation(line: 693, column: 13, scope: !680)
!2105 = !DILocation(line: 693, column: 13, scope: !677)
!2106 = !DILocation(line: 694, column: 13, scope: !679)
!2107 = !DILocation(line: 694, column: 17, scope: !679)
!2108 = !DILocation(line: 695, column: 32, scope: !679)
!2109 = !DILocation(line: 695, column: 37, scope: !679)
!2110 = !DILocation(line: 695, column: 44, scope: !679)
!2111 = !DILocation(line: 695, column: 22, scope: !679)
!2112 = !DILocation(line: 695, column: 20, scope: !679)
!2113 = !DILocation(line: 696, column: 13, scope: !679)
!2114 = !DILocation(line: 696, column: 18, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !682, file: !406, discriminator: 1)
!2116 = !DILocation(line: 696, column: 28, scope: !682)
!2117 = !DILocation(line: 696, column: 58, scope: !682)
!2118 = !DILocation(line: 696, column: 72, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !682, file: !406, line: 696, column: 69)
!2120 = !DILocation(line: 696, column: 89, scope: !2119)
!2121 = !DILocation(line: 696, column: 69, scope: !2119)
!2122 = !DILocation(line: 696, column: 99, scope: !2119)
!2123 = !DILocation(line: 696, column: 69, scope: !682)
!2124 = !DILocation(line: 696, column: 69, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !682, file: !406, discriminator: 2)
!2126 = !DILocation(line: 696, column: 130, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2119, file: !406, discriminator: 3)
!2128 = !DILocation(line: 696, column: 148, scope: !2119)
!2129 = !DILocation(line: 696, column: 158, scope: !2119)
!2130 = !DILocation(line: 696, column: 183, scope: !2119)
!2131 = !DILocation(line: 696, column: 114, scope: !2119)
!2132 = !DILocation(line: 696, column: 202, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !679, file: !406, discriminator: 4)
!2134 = !DILocation(line: 696, column: 202, scope: !682)
!2135 = !DILocation(line: 696, column: 202, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !682, file: !406, discriminator: 5)
!2137 = !DILocation(line: 697, column: 20, scope: !679)
!2138 = !DILocation(line: 697, column: 13, scope: !679)
!2139 = !DILocation(line: 698, column: 9, scope: !680)
!2140 = !DILocation(line: 699, column: 22, scope: !677)
!2141 = !DILocation(line: 701, column: 28, scope: !677)
!2142 = !DILocation(line: 701, column: 22, scope: !677)
!2143 = !DILocation(line: 699, column: 9, scope: !677)
!2144 = !DILocation(line: 702, column: 9, scope: !677)
!2145 = !DILocation(line: 703, column: 5, scope: !662)
!2146 = !DILocation(line: 704, column: 1, scope: !662)
!2147 = !DILocation(line: 742, column: 39, scope: !683)
!2148 = !DILocation(line: 743, column: 41, scope: !683)
!2149 = !DILocation(line: 744, column: 42, scope: !683)
!2150 = !DILocation(line: 745, column: 46, scope: !683)
!2151 = !DILocation(line: 746, column: 45, scope: !683)
!2152 = !DILocation(line: 747, column: 41, scope: !683)
!2153 = !DILocation(line: 748, column: 39, scope: !683)
!2154 = !DILocation(line: 751, column: 5, scope: !683)
!2155 = !DILocation(line: 751, column: 20, scope: !683)
!2156 = !DILocation(line: 753, column: 5, scope: !683)
!2157 = !DILocation(line: 753, column: 15, scope: !683)
!2158 = !DILocation(line: 754, column: 5, scope: !683)
!2159 = !DILocation(line: 754, column: 10, scope: !683)
!2160 = !DILocation(line: 755, column: 5, scope: !683)
!2161 = !DILocation(line: 755, column: 13, scope: !683)
!2162 = !DILocation(line: 756, column: 5, scope: !683)
!2163 = !DILocation(line: 756, column: 9, scope: !683)
!2164 = !DILocation(line: 765, column: 9, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !683, file: !406, line: 765, column: 9)
!2166 = !DILocation(line: 765, column: 17, scope: !2165)
!2167 = !DILocation(line: 765, column: 9, scope: !683)
!2168 = !DILocation(line: 766, column: 25, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !406, line: 765, column: 32)
!2170 = !DILocation(line: 766, column: 9, scope: !2169)
!2171 = !DILocation(line: 768, column: 9, scope: !2169)
!2172 = !DILocation(line: 771, column: 8, scope: !683)
!2173 = !DILocation(line: 777, column: 32, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !683, file: !406, line: 776, column: 9)
!2175 = !DILocation(line: 778, column: 32, scope: !2174)
!2176 = !DILocation(line: 779, column: 32, scope: !2174)
!2177 = !DILocation(line: 780, column: 32, scope: !2174)
!2178 = !DILocation(line: 776, column: 19, scope: !2174)
!2179 = !DILocation(line: 776, column: 16, scope: !2174)
!2180 = !DILocation(line: 776, column: 9, scope: !683)
!2181 = !DILocation(line: 781, column: 25, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2174, file: !406, line: 780, column: 41)
!2183 = !DILocation(line: 781, column: 9, scope: !2182)
!2184 = !DILocation(line: 783, column: 9, scope: !2182)
!2185 = !DILocation(line: 786, column: 9, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !683, file: !406, line: 786, column: 9)
!2187 = !DILocation(line: 786, column: 15, scope: !2186)
!2188 = !DILocation(line: 786, column: 9, scope: !683)
!2189 = !DILocation(line: 787, column: 24, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !406, line: 786, column: 31)
!2191 = !DILocation(line: 787, column: 22, scope: !2190)
!2192 = !DILocation(line: 788, column: 13, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2190, file: !406, line: 788, column: 13)
!2194 = !DILocation(line: 788, column: 26, scope: !2193)
!2195 = !DILocation(line: 788, column: 13, scope: !2190)
!2196 = !DILocation(line: 789, column: 13, scope: !2193)
!2197 = !DILocation(line: 790, column: 5, scope: !2190)
!2198 = !DILocation(line: 792, column: 10, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !683, file: !406, line: 792, column: 9)
!2200 = !DILocation(line: 792, column: 16, scope: !2199)
!2201 = !DILocation(line: 792, column: 23, scope: !2199)
!2202 = !DILocation(line: 792, column: 9, scope: !683)
!2203 = !DILocation(line: 793, column: 17, scope: !2199)
!2204 = !DILocation(line: 793, column: 15, scope: !2199)
!2205 = !DILocation(line: 793, column: 9, scope: !2199)
!2206 = !DILocation(line: 795, column: 9, scope: !769)
!2207 = !DILocation(line: 795, column: 15, scope: !769)
!2208 = !DILocation(line: 795, column: 9, scope: !683)
!2209 = !DILocation(line: 796, column: 9, scope: !768)
!2210 = !DILocation(line: 796, column: 13, scope: !768)
!2211 = !DILocation(line: 796, column: 20, scope: !768)
!2212 = !DILocation(line: 797, column: 22, scope: !768)
!2213 = !DILocation(line: 797, column: 21, scope: !768)
!2214 = !DILocation(line: 797, column: 9, scope: !768)
!2215 = !DILocation(line: 797, column: 18, scope: !768)
!2216 = !DILocation(line: 798, column: 34, scope: !768)
!2217 = !DILocation(line: 798, column: 11, scope: !768)
!2218 = !DILocation(line: 798, column: 32, scope: !768)
!2219 = !DILocation(line: 799, column: 5, scope: !769)
!2220 = !DILocation(line: 799, column: 5, scope: !768)
!2221 = !DILocation(line: 811, column: 40, scope: !683)
!2222 = !DILocation(line: 811, column: 32, scope: !683)
!2223 = !DILocation(line: 811, column: 47, scope: !683)
!2224 = !DILocation(line: 811, column: 55, scope: !683)
!2225 = !DILocation(line: 811, column: 17, scope: !683)
!2226 = !DILocation(line: 826, column: 9, scope: !772)
!2227 = !DILocation(line: 826, column: 15, scope: !772)
!2228 = !DILocation(line: 826, column: 9, scope: !683)
!2229 = !DILocation(line: 827, column: 9, scope: !771)
!2230 = !DILocation(line: 827, column: 13, scope: !771)
!2231 = !DILocation(line: 827, column: 20, scope: !771)
!2232 = !DILocation(line: 828, column: 22, scope: !771)
!2233 = !DILocation(line: 828, column: 21, scope: !771)
!2234 = !DILocation(line: 828, column: 9, scope: !771)
!2235 = !DILocation(line: 828, column: 18, scope: !771)
!2236 = !DILocation(line: 829, column: 34, scope: !771)
!2237 = !DILocation(line: 829, column: 11, scope: !771)
!2238 = !DILocation(line: 829, column: 32, scope: !771)
!2239 = !DILocation(line: 830, column: 5, scope: !772)
!2240 = !DILocation(line: 830, column: 5, scope: !771)
!2241 = !DILocation(line: 832, column: 10, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !683, file: !406, line: 832, column: 9)
!2243 = !DILocation(line: 832, column: 16, scope: !2242)
!2244 = !DILocation(line: 832, column: 23, scope: !2242)
!2245 = !DILocation(line: 832, column: 9, scope: !683)
!2246 = !DILocation(line: 833, column: 30, scope: !2242)
!2247 = !DILocation(line: 833, column: 9, scope: !2242)
!2248 = !DILocation(line: 835, column: 5, scope: !683)
!2249 = !DILocation(line: 835, column: 10, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !774, file: !406, discriminator: 1)
!2251 = !DILocation(line: 835, column: 20, scope: !774)
!2252 = !DILocation(line: 835, column: 51, scope: !774)
!2253 = !DILocation(line: 835, column: 70, scope: !777)
!2254 = !DILocation(line: 835, column: 86, scope: !777)
!2255 = !DILocation(line: 835, column: 70, scope: !774)
!2256 = !DILocation(line: 835, column: 101, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !777, file: !406, discriminator: 2)
!2258 = !DILocation(line: 835, column: 106, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !776, file: !406, discriminator: 4)
!2260 = !DILocation(line: 835, column: 116, scope: !776)
!2261 = !DILocation(line: 835, column: 146, scope: !776)
!2262 = !DILocation(line: 835, column: 172, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !776, file: !406, line: 835, column: 169)
!2264 = !DILocation(line: 835, column: 189, scope: !2263)
!2265 = !DILocation(line: 835, column: 169, scope: !2263)
!2266 = !DILocation(line: 835, column: 199, scope: !2263)
!2267 = !DILocation(line: 835, column: 169, scope: !776)
!2268 = !DILocation(line: 835, column: 169, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !776, file: !406, discriminator: 5)
!2270 = !DILocation(line: 835, column: 230, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2263, file: !406, discriminator: 6)
!2272 = !DILocation(line: 835, column: 248, scope: !2263)
!2273 = !DILocation(line: 835, column: 258, scope: !2263)
!2274 = !DILocation(line: 835, column: 283, scope: !2263)
!2275 = !DILocation(line: 835, column: 214, scope: !2263)
!2276 = !DILocation(line: 835, column: 302, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !777, file: !406, discriminator: 7)
!2278 = !DILocation(line: 835, column: 302, scope: !776)
!2279 = !DILocation(line: 835, column: 302, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !776, file: !406, discriminator: 8)
!2281 = !DILocation(line: 835, column: 302, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !776, file: !406, discriminator: 9)
!2283 = !DILocation(line: 835, column: 315, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2285, file: !406, discriminator: 10)
!2285 = !DILexicalBlockFile(scope: !683, file: !406, discriminator: 3)
!2286 = !DILocation(line: 835, column: 315, scope: !774)
!2287 = !DILocation(line: 835, column: 315, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !774, file: !406, discriminator: 11)
!2289 = !DILocation(line: 873, column: 10, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !683, file: !406, line: 873, column: 9)
!2291 = !DILocation(line: 873, column: 16, scope: !2290)
!2292 = !DILocation(line: 873, column: 23, scope: !2290)
!2293 = !DILocation(line: 873, column: 26, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2290, file: !406, discriminator: 1)
!2295 = !DILocation(line: 873, column: 9, scope: !683)
!2296 = !DILocation(line: 874, column: 9, scope: !2290)
!2297 = !DILocation(line: 875, column: 5, scope: !683)
!2298 = !DILocation(line: 876, column: 1, scope: !683)
!2299 = !DILocation(line: 888, column: 38, scope: !778)
!2300 = !DILocation(line: 888, column: 53, scope: !778)
!2301 = !DILocation(line: 888, column: 71, scope: !778)
!2302 = !DILocation(line: 890, column: 5, scope: !778)
!2303 = !DILocation(line: 890, column: 20, scope: !778)
!2304 = !DILocation(line: 891, column: 5, scope: !778)
!2305 = !DILocation(line: 891, column: 15, scope: !778)
!2306 = !DILocation(line: 891, column: 24, scope: !778)
!2307 = !DILocation(line: 893, column: 9, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !778, file: !406, line: 893, column: 9)
!2309 = !DILocation(line: 893, column: 17, scope: !2308)
!2310 = !DILocation(line: 893, column: 9, scope: !778)
!2311 = !DILocation(line: 894, column: 40, scope: !2308)
!2312 = !DILocation(line: 894, column: 33, scope: !2308)
!2313 = !DILocation(line: 894, column: 32, scope: !2308)
!2314 = !DILocation(line: 894, column: 16, scope: !2308)
!2315 = !DILocation(line: 894, column: 9, scope: !2308)
!2316 = !DILocation(line: 896, column: 9, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !778, file: !406, line: 896, column: 9)
!2318 = !DILocation(line: 896, column: 17, scope: !2317)
!2319 = !DILocation(line: 896, column: 9, scope: !778)
!2320 = !DILocation(line: 897, column: 55, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !406, line: 896, column: 39)
!2322 = !DILocation(line: 898, column: 9, scope: !2321)
!2323 = !DILocation(line: 901, column: 27, scope: !778)
!2324 = !DILocation(line: 901, column: 12, scope: !778)
!2325 = !DILocation(line: 901, column: 10, scope: !778)
!2326 = !DILocation(line: 902, column: 9, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !778, file: !406, line: 902, column: 9)
!2328 = !DILocation(line: 902, column: 14, scope: !2327)
!2329 = !DILocation(line: 902, column: 9, scope: !778)
!2330 = !DILocation(line: 903, column: 38, scope: !2327)
!2331 = !DILocation(line: 903, column: 60, scope: !2327)
!2332 = !DILocation(line: 903, column: 53, scope: !2327)
!2333 = !DILocation(line: 903, column: 52, scope: !2327)
!2334 = !DILocation(line: 903, column: 16, scope: !2327)
!2335 = !DILocation(line: 903, column: 9, scope: !2327)
!2336 = !DILocation(line: 905, column: 9, scope: !793)
!2337 = !DILocation(line: 905, column: 15, scope: !793)
!2338 = !{!1914, !1020, i64 104}
!2339 = !DILocation(line: 905, column: 23, scope: !793)
!2340 = !DILocation(line: 905, column: 51, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !793, file: !406, discriminator: 1)
!2342 = !DILocation(line: 905, column: 27, scope: !793)
!2343 = !DILocation(line: 905, column: 9, scope: !778)
!2344 = !DILocation(line: 906, column: 18, scope: !792)
!2345 = !DILocation(line: 906, column: 24, scope: !792)
!2346 = !DILocation(line: 906, column: 32, scope: !792)
!2347 = !DILocation(line: 906, column: 40, scope: !792)
!2348 = !DILocation(line: 906, column: 46, scope: !792)
!2349 = !{!1914, !1071, i64 40}
!2350 = !DILocation(line: 906, column: 16, scope: !792)
!2351 = !DILocation(line: 911, column: 13, scope: !791)
!2352 = !DILocation(line: 911, column: 19, scope: !791)
!2353 = !DILocation(line: 911, column: 30, scope: !791)
!2354 = !DILocation(line: 911, column: 58, scope: !791)
!2355 = !{!2356, !1020, i64 16}
!2356 = !{!"fielddesc", !1021, i64 0, !1020, i64 8, !1020, i64 16, !1020, i64 24, !1020, i64 32, !1020, i64 40}
!2357 = !DILocation(line: 911, column: 27, scope: !791)
!2358 = !DILocation(line: 911, column: 13, scope: !792)
!2359 = !DILocation(line: 912, column: 13, scope: !790)
!2360 = !DILocation(line: 912, column: 18, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !789, file: !406, discriminator: 1)
!2362 = !DILocation(line: 912, column: 28, scope: !789)
!2363 = !DILocation(line: 912, column: 58, scope: !789)
!2364 = !DILocation(line: 912, column: 75, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !789, file: !406, line: 912, column: 72)
!2366 = !DILocation(line: 912, column: 92, scope: !2365)
!2367 = !DILocation(line: 912, column: 72, scope: !2365)
!2368 = !DILocation(line: 912, column: 102, scope: !2365)
!2369 = !DILocation(line: 912, column: 72, scope: !789)
!2370 = !DILocation(line: 912, column: 72, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !789, file: !406, discriminator: 2)
!2372 = !DILocation(line: 912, column: 133, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2365, file: !406, discriminator: 3)
!2374 = !DILocation(line: 912, column: 151, scope: !2365)
!2375 = !DILocation(line: 912, column: 161, scope: !2365)
!2376 = !DILocation(line: 912, column: 186, scope: !2365)
!2377 = !DILocation(line: 912, column: 117, scope: !2365)
!2378 = !DILocation(line: 912, column: 205, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !790, file: !406, discriminator: 4)
!2380 = !DILocation(line: 912, column: 205, scope: !789)
!2381 = !DILocation(line: 912, column: 205, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !789, file: !406, discriminator: 5)
!2383 = !DILocation(line: 913, column: 9, scope: !790)
!2384 = !DILocation(line: 914, column: 5, scope: !792)
!2385 = !DILocation(line: 915, column: 38, scope: !793)
!2386 = !DILocation(line: 915, column: 62, scope: !793)
!2387 = !DILocation(line: 915, column: 18, scope: !793)
!2388 = !DILocation(line: 915, column: 16, scope: !793)
!2389 = !DILocation(line: 917, column: 10, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !778, file: !406, line: 917, column: 9)
!2391 = !DILocation(line: 917, column: 18, scope: !2390)
!2392 = !DILocation(line: 917, column: 22, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2390, file: !406, discriminator: 1)
!2394 = !DILocation(line: 917, column: 9, scope: !778)
!2395 = !DILocation(line: 918, column: 16, scope: !2390)
!2396 = !DILocation(line: 918, column: 9, scope: !2390)
!2397 = !DILocation(line: 920, column: 38, scope: !778)
!2398 = !DILocation(line: 920, column: 47, scope: !778)
!2399 = !DILocation(line: 920, column: 9, scope: !778)
!2400 = !DILocation(line: 920, column: 7, scope: !778)
!2401 = !DILocation(line: 921, column: 9, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !778, file: !406, line: 921, column: 9)
!2403 = !DILocation(line: 921, column: 11, scope: !2402)
!2404 = !DILocation(line: 921, column: 9, scope: !778)
!2405 = !DILocation(line: 922, column: 9, scope: !2402)
!2406 = !DILocation(line: 923, column: 5, scope: !778)
!2407 = !DILocation(line: 923, column: 10, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !795, file: !406, discriminator: 1)
!2409 = !DILocation(line: 923, column: 20, scope: !795)
!2410 = !DILocation(line: 923, column: 50, scope: !795)
!2411 = !DILocation(line: 923, column: 67, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !795, file: !406, line: 923, column: 64)
!2413 = !DILocation(line: 923, column: 84, scope: !2412)
!2414 = !DILocation(line: 923, column: 64, scope: !2412)
!2415 = !DILocation(line: 923, column: 94, scope: !2412)
!2416 = !DILocation(line: 923, column: 64, scope: !795)
!2417 = !DILocation(line: 923, column: 64, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !795, file: !406, discriminator: 2)
!2419 = !DILocation(line: 923, column: 125, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2412, file: !406, discriminator: 3)
!2421 = !DILocation(line: 923, column: 143, scope: !2412)
!2422 = !DILocation(line: 923, column: 153, scope: !2412)
!2423 = !DILocation(line: 923, column: 178, scope: !2412)
!2424 = !DILocation(line: 923, column: 109, scope: !2412)
!2425 = !DILocation(line: 923, column: 197, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !778, file: !406, discriminator: 4)
!2427 = !DILocation(line: 923, column: 197, scope: !795)
!2428 = !DILocation(line: 923, column: 197, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !795, file: !406, discriminator: 5)
!2430 = !DILocation(line: 924, column: 12, scope: !778)
!2431 = !DILocation(line: 924, column: 5, scope: !778)
!2432 = !DILocation(line: 925, column: 1, scope: !778)
!2433 = !DILocation(line: 205, column: 21, scope: !796)
!2434 = !DILocation(line: 205, column: 37, scope: !796)
!2435 = !DILocation(line: 207, column: 31, scope: !796)
!2436 = !DILocation(line: 207, column: 37, scope: !796)
!2437 = !DILocation(line: 207, column: 12, scope: !796)
!2438 = !DILocation(line: 207, column: 5, scope: !796)
!2439 = !DILocation(line: 211, column: 21, scope: !810)
!2440 = !DILocation(line: 211, column: 37, scope: !810)
!2441 = !DILocation(line: 213, column: 31, scope: !810)
!2442 = !DILocation(line: 213, column: 37, scope: !810)
!2443 = !DILocation(line: 213, column: 12, scope: !810)
!2444 = !DILocation(line: 213, column: 5, scope: !810)
!2445 = !DILocation(line: 1661, column: 19, scope: !825)
!2446 = !DILocation(line: 1661, column: 35, scope: !825)
!2447 = !DILocation(line: 1663, column: 5, scope: !825)
!2448 = !DILocation(line: 1663, column: 15, scope: !825)
!2449 = !DILocation(line: 1664, column: 5, scope: !825)
!2450 = !DILocation(line: 1664, column: 19, scope: !825)
!2451 = !DILocation(line: 1665, column: 5, scope: !825)
!2452 = !DILocation(line: 1665, column: 15, scope: !825)
!2453 = !DILocation(line: 1666, column: 5, scope: !825)
!2454 = !DILocation(line: 1666, column: 11, scope: !825)
!2455 = !DILocation(line: 1668, column: 29, scope: !825)
!2456 = !DILocation(line: 1668, column: 52, scope: !825)
!2457 = !DILocation(line: 1668, column: 14, scope: !825)
!2458 = !DILocation(line: 1668, column: 12, scope: !825)
!2459 = !DILocation(line: 1669, column: 9, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !825, file: !406, line: 1669, column: 9)
!2461 = !DILocation(line: 1669, column: 9, scope: !825)
!2462 = !DILocation(line: 1670, column: 25, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2460, file: !406, line: 1669, column: 17)
!2464 = !DILocation(line: 1670, column: 35, scope: !2463)
!2465 = !DILocation(line: 1670, column: 44, scope: !2463)
!2466 = !DILocation(line: 1671, column: 16, scope: !2463)
!2467 = !DILocation(line: 1671, column: 9, scope: !2463)
!2468 = !DILocation(line: 1673, column: 24, scope: !835)
!2469 = !DILocation(line: 1673, column: 31, scope: !835)
!2470 = !DILocation(line: 1673, column: 40, scope: !835)
!2471 = !DILocation(line: 1673, column: 9, scope: !825)
!2472 = !DILocation(line: 1674, column: 9, scope: !834)
!2473 = !DILocation(line: 1674, column: 15, scope: !834)
!2474 = !DILocation(line: 1674, column: 39, scope: !834)
!2475 = !DILocation(line: 1674, column: 22, scope: !834)
!2476 = !DILocation(line: 1675, column: 40, scope: !834)
!2477 = !DILocation(line: 1675, column: 33, scope: !834)
!2478 = !DILocation(line: 1675, column: 46, scope: !834)
!2479 = !DILocation(line: 1675, column: 50, scope: !834)
!2480 = !DILocation(line: 1675, column: 15, scope: !834)
!2481 = !DILocation(line: 1675, column: 13, scope: !834)
!2482 = !DILocation(line: 1676, column: 17, scope: !834)
!2483 = !DILocation(line: 1676, column: 31, scope: !834)
!2484 = !DILocation(line: 1676, column: 9, scope: !834)
!2485 = !DILocation(line: 1677, column: 86, scope: !834)
!2486 = !DILocation(line: 1677, column: 40, scope: !834)
!2487 = !DILocation(line: 1679, column: 40, scope: !834)
!2488 = !DILocation(line: 1677, column: 18, scope: !834)
!2489 = !DILocation(line: 1677, column: 16, scope: !834)
!2490 = !DILocation(line: 1681, column: 13, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !834, file: !406, line: 1681, column: 13)
!2492 = !DILocation(line: 1681, column: 20, scope: !2491)
!2493 = !DILocation(line: 1681, column: 13, scope: !834)
!2494 = !DILocation(line: 1682, column: 20, scope: !2491)
!2495 = !DILocation(line: 1682, column: 13, scope: !2491)
!2496 = !DILocation(line: 1683, column: 34, scope: !834)
!2497 = !DILocation(line: 1683, column: 15, scope: !834)
!2498 = !DILocation(line: 1683, column: 13, scope: !834)
!2499 = !DILocation(line: 1684, column: 5, scope: !835)
!2500 = !DILocation(line: 1684, column: 5, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !835, file: !406, discriminator: 1)
!2502 = !DILocation(line: 1684, column: 5, scope: !834)
!2503 = !DILocation(line: 1684, column: 33, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !835, file: !406, line: 1684, column: 16)
!2505 = !DILocation(line: 1684, column: 40, scope: !2504)
!2506 = !DILocation(line: 1684, column: 51, scope: !2504)
!2507 = !DILocation(line: 1684, column: 60, scope: !2504)
!2508 = !DILocation(line: 1684, column: 77, scope: !2504)
!2509 = !DILocation(line: 1684, column: 16, scope: !835)
!2510 = !DILocation(line: 1685, column: 31, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2504, file: !406, line: 1684, column: 84)
!2512 = !DILocation(line: 1685, column: 15, scope: !2511)
!2513 = !DILocation(line: 1685, column: 13, scope: !2511)
!2514 = !DILocation(line: 1686, column: 40, scope: !2511)
!2515 = !DILocation(line: 1686, column: 45, scope: !2511)
!2516 = !{!1116, !1020, i64 24}
!2517 = !DILocation(line: 1686, column: 33, scope: !2511)
!2518 = !DILocation(line: 1686, column: 54, scope: !2511)
!2519 = !DILocation(line: 1686, column: 58, scope: !2511)
!2520 = !DILocation(line: 1686, column: 15, scope: !2511)
!2521 = !DILocation(line: 1686, column: 13, scope: !2511)
!2522 = !DILocation(line: 1687, column: 17, scope: !2511)
!2523 = !DILocation(line: 1687, column: 31, scope: !2511)
!2524 = !DILocation(line: 1687, column: 36, scope: !2511)
!2525 = !DILocation(line: 1687, column: 9, scope: !2511)
!2526 = !DILocation(line: 1688, column: 86, scope: !2511)
!2527 = !DILocation(line: 1688, column: 40, scope: !2511)
!2528 = !DILocation(line: 1690, column: 40, scope: !2511)
!2529 = !DILocation(line: 1692, column: 50, scope: !2511)
!2530 = !DILocation(line: 1688, column: 18, scope: !2511)
!2531 = !DILocation(line: 1688, column: 16, scope: !2511)
!2532 = !DILocation(line: 1693, column: 13, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2511, file: !406, line: 1693, column: 13)
!2534 = !DILocation(line: 1693, column: 20, scope: !2533)
!2535 = !DILocation(line: 1693, column: 13, scope: !2511)
!2536 = !DILocation(line: 1694, column: 20, scope: !2533)
!2537 = !DILocation(line: 1694, column: 13, scope: !2533)
!2538 = !DILocation(line: 1695, column: 25, scope: !2511)
!2539 = !DILocation(line: 1695, column: 32, scope: !2511)
!2540 = !DILocation(line: 1695, column: 41, scope: !2511)
!2541 = !DILocation(line: 1696, column: 15, scope: !2511)
!2542 = !DILocation(line: 1696, column: 13, scope: !2511)
!2543 = !DILocation(line: 1697, column: 5, scope: !2511)
!2544 = !DILocation(line: 1698, column: 25, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2504, file: !406, line: 1697, column: 12)
!2546 = !DILocation(line: 1698, column: 9, scope: !2545)
!2547 = !DILocation(line: 1699, column: 9, scope: !2545)
!2548 = !DILocation(line: 1701, column: 30, scope: !839)
!2549 = !DILocation(line: 1701, column: 53, scope: !839)
!2550 = !DILocation(line: 1701, column: 58, scope: !839)
!2551 = !DILocation(line: 1701, column: 15, scope: !839)
!2552 = !DILocation(line: 1701, column: 12, scope: !839)
!2553 = !DILocation(line: 1701, column: 9, scope: !825)
!2554 = !DILocation(line: 1702, column: 9, scope: !838)
!2555 = !DILocation(line: 1702, column: 14, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !837, file: !406, discriminator: 1)
!2557 = !DILocation(line: 1702, column: 24, scope: !837)
!2558 = !DILocation(line: 1702, column: 54, scope: !837)
!2559 = !DILocation(line: 1702, column: 71, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !837, file: !406, line: 1702, column: 68)
!2561 = !DILocation(line: 1702, column: 88, scope: !2560)
!2562 = !DILocation(line: 1702, column: 68, scope: !2560)
!2563 = !DILocation(line: 1702, column: 98, scope: !2560)
!2564 = !DILocation(line: 1702, column: 68, scope: !837)
!2565 = !DILocation(line: 1702, column: 68, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !837, file: !406, discriminator: 2)
!2567 = !DILocation(line: 1702, column: 129, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2560, file: !406, discriminator: 3)
!2569 = !DILocation(line: 1702, column: 147, scope: !2560)
!2570 = !DILocation(line: 1702, column: 157, scope: !2560)
!2571 = !DILocation(line: 1702, column: 182, scope: !2560)
!2572 = !DILocation(line: 1702, column: 113, scope: !2560)
!2573 = !DILocation(line: 1702, column: 201, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !838, file: !406, discriminator: 4)
!2575 = !DILocation(line: 1702, column: 201, scope: !837)
!2576 = !DILocation(line: 1702, column: 201, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !837, file: !406, discriminator: 5)
!2578 = !DILocation(line: 1703, column: 9, scope: !838)
!2579 = !DILocation(line: 1703, column: 14, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !841, file: !406, discriminator: 1)
!2581 = !DILocation(line: 1703, column: 24, scope: !841)
!2582 = !DILocation(line: 1703, column: 54, scope: !841)
!2583 = !DILocation(line: 1703, column: 68, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !841, file: !406, line: 1703, column: 65)
!2585 = !DILocation(line: 1703, column: 85, scope: !2584)
!2586 = !DILocation(line: 1703, column: 65, scope: !2584)
!2587 = !DILocation(line: 1703, column: 95, scope: !2584)
!2588 = !DILocation(line: 1703, column: 65, scope: !841)
!2589 = !DILocation(line: 1703, column: 65, scope: !2590)
!2590 = !DILexicalBlockFile(scope: !841, file: !406, discriminator: 2)
!2591 = !DILocation(line: 1703, column: 126, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2584, file: !406, discriminator: 3)
!2593 = !DILocation(line: 1703, column: 144, scope: !2584)
!2594 = !DILocation(line: 1703, column: 154, scope: !2584)
!2595 = !DILocation(line: 1703, column: 179, scope: !2584)
!2596 = !DILocation(line: 1703, column: 110, scope: !2584)
!2597 = !DILocation(line: 1703, column: 198, scope: !2574)
!2598 = !DILocation(line: 1703, column: 198, scope: !841)
!2599 = !DILocation(line: 1703, column: 198, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !841, file: !406, discriminator: 5)
!2601 = !DILocation(line: 1704, column: 9, scope: !838)
!2602 = !DILocation(line: 1706, column: 5, scope: !825)
!2603 = !DILocation(line: 1706, column: 10, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !843, file: !406, discriminator: 1)
!2605 = !DILocation(line: 1706, column: 20, scope: !843)
!2606 = !DILocation(line: 1706, column: 50, scope: !843)
!2607 = !DILocation(line: 1706, column: 64, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !843, file: !406, line: 1706, column: 61)
!2609 = !DILocation(line: 1706, column: 81, scope: !2608)
!2610 = !DILocation(line: 1706, column: 61, scope: !2608)
!2611 = !DILocation(line: 1706, column: 91, scope: !2608)
!2612 = !DILocation(line: 1706, column: 61, scope: !843)
!2613 = !DILocation(line: 1706, column: 61, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !843, file: !406, discriminator: 2)
!2615 = !DILocation(line: 1706, column: 122, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2608, file: !406, discriminator: 3)
!2617 = !DILocation(line: 1706, column: 140, scope: !2608)
!2618 = !DILocation(line: 1706, column: 150, scope: !2608)
!2619 = !DILocation(line: 1706, column: 175, scope: !2608)
!2620 = !DILocation(line: 1706, column: 106, scope: !2608)
!2621 = !DILocation(line: 1706, column: 194, scope: !2622)
!2622 = !DILexicalBlockFile(scope: !825, file: !406, discriminator: 4)
!2623 = !DILocation(line: 1706, column: 194, scope: !843)
!2624 = !DILocation(line: 1706, column: 194, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !843, file: !406, discriminator: 5)
!2626 = !DILocation(line: 1707, column: 12, scope: !825)
!2627 = !DILocation(line: 1707, column: 5, scope: !825)
!2628 = !DILocation(line: 1708, column: 1, scope: !825)
!2629 = !DILocation(line: 1711, column: 19, scope: !844)
!2630 = !DILocation(line: 1711, column: 35, scope: !844)
!2631 = !DILocation(line: 1713, column: 5, scope: !844)
!2632 = !DILocation(line: 1713, column: 15, scope: !844)
!2633 = !DILocation(line: 1714, column: 5, scope: !844)
!2634 = !DILocation(line: 1714, column: 15, scope: !844)
!2635 = !DILocation(line: 1716, column: 26, scope: !844)
!2636 = !DILocation(line: 1716, column: 75, scope: !844)
!2637 = !DILocation(line: 1716, column: 82, scope: !844)
!2638 = !DILocation(line: 1716, column: 49, scope: !844)
!2639 = !DILocation(line: 1716, column: 11, scope: !844)
!2640 = !DILocation(line: 1716, column: 9, scope: !844)
!2641 = !DILocation(line: 1717, column: 9, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !844, file: !406, line: 1717, column: 9)
!2643 = !DILocation(line: 1717, column: 9, scope: !844)
!2644 = !DILocation(line: 1718, column: 45, scope: !2642)
!2645 = !DILocation(line: 1718, column: 50, scope: !2642)
!2646 = !DILocation(line: 1718, column: 16, scope: !2642)
!2647 = !DILocation(line: 1718, column: 9, scope: !2642)
!2648 = !DILocation(line: 1719, column: 57, scope: !844)
!2649 = !DILocation(line: 1719, column: 64, scope: !844)
!2650 = !DILocation(line: 1719, column: 31, scope: !844)
!2651 = !DILocation(line: 1719, column: 11, scope: !844)
!2652 = !DILocation(line: 1719, column: 9, scope: !844)
!2653 = !DILocation(line: 1720, column: 9, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !844, file: !406, line: 1720, column: 9)
!2655 = !DILocation(line: 1720, column: 13, scope: !2654)
!2656 = !DILocation(line: 1720, column: 9, scope: !844)
!2657 = !DILocation(line: 1721, column: 21, scope: !2654)
!2658 = !DILocation(line: 1722, column: 43, scope: !844)
!2659 = !DILocation(line: 1722, column: 48, scope: !844)
!2660 = !DILocation(line: 1722, column: 14, scope: !844)
!2661 = !DILocation(line: 1722, column: 12, scope: !844)
!2662 = !DILocation(line: 1723, column: 5, scope: !844)
!2663 = !DILocation(line: 1723, column: 10, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !851, file: !406, discriminator: 1)
!2665 = !DILocation(line: 1723, column: 20, scope: !851)
!2666 = !DILocation(line: 1723, column: 50, scope: !851)
!2667 = !DILocation(line: 1723, column: 64, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !851, file: !406, line: 1723, column: 61)
!2669 = !DILocation(line: 1723, column: 81, scope: !2668)
!2670 = !DILocation(line: 1723, column: 61, scope: !2668)
!2671 = !DILocation(line: 1723, column: 91, scope: !2668)
!2672 = !DILocation(line: 1723, column: 61, scope: !851)
!2673 = !DILocation(line: 1723, column: 61, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !851, file: !406, discriminator: 2)
!2675 = !DILocation(line: 1723, column: 122, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !2668, file: !406, discriminator: 3)
!2677 = !DILocation(line: 1723, column: 140, scope: !2668)
!2678 = !DILocation(line: 1723, column: 150, scope: !2668)
!2679 = !DILocation(line: 1723, column: 175, scope: !2668)
!2680 = !DILocation(line: 1723, column: 106, scope: !2668)
!2681 = !DILocation(line: 1723, column: 194, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !844, file: !406, discriminator: 4)
!2683 = !DILocation(line: 1723, column: 194, scope: !851)
!2684 = !DILocation(line: 1723, column: 194, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !851, file: !406, discriminator: 5)
!2686 = !DILocation(line: 1724, column: 12, scope: !844)
!2687 = !DILocation(line: 1724, column: 5, scope: !844)
!2688 = !DILocation(line: 1725, column: 1, scope: !844)
!2689 = !DILocation(line: 1637, column: 20, scope: !852)
!2690 = !DILocation(line: 1637, column: 36, scope: !852)
!2691 = !DILocation(line: 1639, column: 5, scope: !852)
!2692 = !DILocation(line: 1639, column: 15, scope: !852)
!2693 = !DILocation(line: 1640, column: 5, scope: !852)
!2694 = !DILocation(line: 1640, column: 15, scope: !852)
!2695 = !DILocation(line: 1641, column: 5, scope: !852)
!2696 = !DILocation(line: 1641, column: 15, scope: !852)
!2697 = !DILocation(line: 1642, column: 5, scope: !852)
!2698 = !DILocation(line: 1642, column: 15, scope: !852)
!2699 = !DILocation(line: 1646, column: 27, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !852, file: !406, line: 1646, column: 9)
!2701 = !DILocation(line: 1646, column: 10, scope: !2700)
!2702 = !DILocation(line: 1646, column: 9, scope: !852)
!2703 = !DILocation(line: 1647, column: 9, scope: !2700)
!2704 = !DILocation(line: 1648, column: 37, scope: !852)
!2705 = !DILocation(line: 1648, column: 62, scope: !852)
!2706 = !DILocation(line: 1648, column: 14, scope: !852)
!2707 = !DILocation(line: 1648, column: 12, scope: !852)
!2708 = !DILocation(line: 1649, column: 9, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !852, file: !406, line: 1649, column: 9)
!2710 = !DILocation(line: 1649, column: 16, scope: !2709)
!2711 = !DILocation(line: 1649, column: 9, scope: !852)
!2712 = !DILocation(line: 1650, column: 9, scope: !2709)
!2713 = !DILocation(line: 1651, column: 34, scope: !852)
!2714 = !DILocation(line: 1651, column: 67, scope: !852)
!2715 = !DILocation(line: 1651, column: 11, scope: !852)
!2716 = !DILocation(line: 1651, column: 9, scope: !852)
!2717 = !DILocation(line: 1652, column: 9, scope: !863)
!2718 = !DILocation(line: 1652, column: 13, scope: !863)
!2719 = !DILocation(line: 1652, column: 9, scope: !852)
!2720 = !DILocation(line: 1653, column: 9, scope: !862)
!2721 = !DILocation(line: 1653, column: 14, scope: !2722)
!2722 = !DILexicalBlockFile(scope: !861, file: !406, discriminator: 1)
!2723 = !DILocation(line: 1653, column: 24, scope: !861)
!2724 = !DILocation(line: 1653, column: 54, scope: !861)
!2725 = !DILocation(line: 1653, column: 71, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !861, file: !406, line: 1653, column: 68)
!2727 = !DILocation(line: 1653, column: 88, scope: !2726)
!2728 = !DILocation(line: 1653, column: 68, scope: !2726)
!2729 = !DILocation(line: 1653, column: 98, scope: !2726)
!2730 = !DILocation(line: 1653, column: 68, scope: !861)
!2731 = !DILocation(line: 1653, column: 68, scope: !2732)
!2732 = !DILexicalBlockFile(scope: !861, file: !406, discriminator: 2)
!2733 = !DILocation(line: 1653, column: 129, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !2726, file: !406, discriminator: 3)
!2735 = !DILocation(line: 1653, column: 147, scope: !2726)
!2736 = !DILocation(line: 1653, column: 157, scope: !2726)
!2737 = !DILocation(line: 1653, column: 182, scope: !2726)
!2738 = !DILocation(line: 1653, column: 113, scope: !2726)
!2739 = !DILocation(line: 1653, column: 201, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !862, file: !406, discriminator: 4)
!2741 = !DILocation(line: 1653, column: 201, scope: !861)
!2742 = !DILocation(line: 1653, column: 201, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !861, file: !406, discriminator: 5)
!2744 = !DILocation(line: 1654, column: 9, scope: !862)
!2745 = !DILocation(line: 1656, column: 5, scope: !852)
!2746 = !DILocation(line: 1656, column: 10, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !865, file: !406, discriminator: 1)
!2748 = !DILocation(line: 1656, column: 20, scope: !865)
!2749 = !DILocation(line: 1656, column: 50, scope: !865)
!2750 = !DILocation(line: 1656, column: 64, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !865, file: !406, line: 1656, column: 61)
!2752 = !DILocation(line: 1656, column: 81, scope: !2751)
!2753 = !DILocation(line: 1656, column: 61, scope: !2751)
!2754 = !DILocation(line: 1656, column: 91, scope: !2751)
!2755 = !DILocation(line: 1656, column: 61, scope: !865)
!2756 = !DILocation(line: 1656, column: 61, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !865, file: !406, discriminator: 2)
!2758 = !DILocation(line: 1656, column: 122, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2751, file: !406, discriminator: 3)
!2760 = !DILocation(line: 1656, column: 140, scope: !2751)
!2761 = !DILocation(line: 1656, column: 150, scope: !2751)
!2762 = !DILocation(line: 1656, column: 175, scope: !2751)
!2763 = !DILocation(line: 1656, column: 106, scope: !2751)
!2764 = !DILocation(line: 1656, column: 194, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !852, file: !406, discriminator: 4)
!2766 = !DILocation(line: 1656, column: 194, scope: !865)
!2767 = !DILocation(line: 1656, column: 194, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !865, file: !406, discriminator: 5)
!2769 = !DILocation(line: 1657, column: 12, scope: !852)
!2770 = !DILocation(line: 1657, column: 5, scope: !852)
!2771 = !DILocation(line: 1658, column: 1, scope: !852)
!2772 = !DILocation(line: 1728, column: 23, scope: !866)
!2773 = !DILocation(line: 1728, column: 39, scope: !866)
!2774 = !DILocation(line: 1730, column: 5, scope: !866)
!2775 = !DILocation(line: 1730, column: 20, scope: !866)
!2776 = !DILocation(line: 1730, column: 42, scope: !866)
!2777 = !DILocation(line: 1730, column: 27, scope: !866)
!2778 = !DILocation(line: 1731, column: 5, scope: !866)
!2779 = !DILocation(line: 1731, column: 15, scope: !866)
!2780 = !DILocation(line: 1732, column: 5, scope: !866)
!2781 = !DILocation(line: 1732, column: 16, scope: !866)
!2782 = !DILocation(line: 1734, column: 9, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !866, file: !406, line: 1734, column: 9)
!2784 = !DILocation(line: 1734, column: 14, scope: !2783)
!2785 = !DILocation(line: 1734, column: 9, scope: !866)
!2786 = !DILocation(line: 1735, column: 33, scope: !2783)
!2787 = !DILocation(line: 1735, column: 16, scope: !2783)
!2788 = !DILocation(line: 1735, column: 14, scope: !2783)
!2789 = !DILocation(line: 1735, column: 9, scope: !2783)
!2790 = !DILocation(line: 1736, column: 9, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !866, file: !406, line: 1736, column: 9)
!2792 = !DILocation(line: 1736, column: 14, scope: !2791)
!2793 = !DILocation(line: 1736, column: 9, scope: !866)
!2794 = !DILocation(line: 1737, column: 25, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !406, line: 1736, column: 29)
!2796 = !DILocation(line: 1737, column: 9, scope: !2795)
!2797 = !DILocation(line: 1739, column: 9, scope: !2795)
!2798 = !DILocation(line: 1741, column: 25, scope: !866)
!2799 = !DILocation(line: 1741, column: 31, scope: !866)
!2800 = !{!1914, !1118, i64 168}
!2801 = !DILocation(line: 1741, column: 13, scope: !866)
!2802 = !DILocation(line: 1741, column: 11, scope: !866)
!2803 = !DILocation(line: 1742, column: 9, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !866, file: !406, line: 1742, column: 9)
!2805 = !DILocation(line: 1742, column: 15, scope: !2804)
!2806 = !DILocation(line: 1742, column: 9, scope: !866)
!2807 = !DILocation(line: 1743, column: 9, scope: !2804)
!2808 = !DILocation(line: 1744, column: 12, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !866, file: !406, line: 1744, column: 5)
!2810 = !DILocation(line: 1744, column: 10, scope: !2809)
!2811 = !DILocation(line: 1744, column: 17, scope: !2812)
!2812 = !DILexicalBlockFile(scope: !2813, file: !406, discriminator: 2)
!2813 = !DILexicalBlockFile(scope: !2814, file: !406, discriminator: 1)
!2814 = distinct !DILexicalBlock(scope: !2809, file: !406, line: 1744, column: 5)
!2815 = !DILocation(line: 1744, column: 26, scope: !2814)
!2816 = !DILocation(line: 1744, column: 32, scope: !2814)
!2817 = !DILocation(line: 1744, column: 21, scope: !2814)
!2818 = !DILocation(line: 1744, column: 19, scope: !2814)
!2819 = !DILocation(line: 1744, column: 5, scope: !2809)
!2820 = !DILocation(line: 1745, column: 82, scope: !2814)
!2821 = !DILocation(line: 1745, column: 70, scope: !2814)
!2822 = !DILocation(line: 1745, column: 76, scope: !2814)
!2823 = !{!1914, !1020, i64 176}
!2824 = !DILocation(line: 1745, column: 51, scope: !2814)
!2825 = !DILocation(line: 1745, column: 46, scope: !2814)
!2826 = !DILocation(line: 1745, column: 29, scope: !2814)
!2827 = !DILocation(line: 1745, column: 11, scope: !2814)
!2828 = !DILocation(line: 1745, column: 38, scope: !2814)
!2829 = !DILocation(line: 1745, column: 10, scope: !2814)
!2830 = !DILocation(line: 1745, column: 49, scope: !2814)
!2831 = !DILocation(line: 1745, column: 9, scope: !2814)
!2832 = !DILocation(line: 1744, column: 38, scope: !2814)
!2833 = !DILocation(line: 1744, column: 5, scope: !2814)
!2834 = !DILocation(line: 1747, column: 9, scope: !876)
!2835 = !DILocation(line: 1747, column: 9, scope: !866)
!2836 = !DILocation(line: 1748, column: 9, scope: !875)
!2837 = !DILocation(line: 1748, column: 14, scope: !2838)
!2838 = !DILexicalBlockFile(scope: !874, file: !406, discriminator: 1)
!2839 = !DILocation(line: 1748, column: 24, scope: !874)
!2840 = !DILocation(line: 1748, column: 54, scope: !874)
!2841 = !DILocation(line: 1748, column: 70, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !874, file: !406, line: 1748, column: 67)
!2843 = !DILocation(line: 1748, column: 87, scope: !2842)
!2844 = !DILocation(line: 1748, column: 67, scope: !2842)
!2845 = !DILocation(line: 1748, column: 97, scope: !2842)
!2846 = !DILocation(line: 1748, column: 67, scope: !874)
!2847 = !DILocation(line: 1748, column: 67, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !874, file: !406, discriminator: 2)
!2849 = !DILocation(line: 1748, column: 128, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2842, file: !406, discriminator: 3)
!2851 = !DILocation(line: 1748, column: 146, scope: !2842)
!2852 = !DILocation(line: 1748, column: 156, scope: !2842)
!2853 = !DILocation(line: 1748, column: 181, scope: !2842)
!2854 = !DILocation(line: 1748, column: 112, scope: !2842)
!2855 = !DILocation(line: 1748, column: 200, scope: !2856)
!2856 = !DILexicalBlockFile(scope: !875, file: !406, discriminator: 4)
!2857 = !DILocation(line: 1748, column: 200, scope: !874)
!2858 = !DILocation(line: 1748, column: 200, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !874, file: !406, discriminator: 5)
!2860 = !DILocation(line: 1749, column: 9, scope: !875)
!2861 = !DILocation(line: 1751, column: 33, scope: !866)
!2862 = !DILocation(line: 1751, column: 39, scope: !866)
!2863 = !{!1914, !1020, i64 160}
!2864 = !DILocation(line: 1751, column: 47, scope: !866)
!2865 = !DILocation(line: 1751, column: 53, scope: !866)
!2866 = !DILocation(line: 1751, column: 59, scope: !866)
!2867 = !DILocation(line: 1751, column: 12, scope: !866)
!2868 = !DILocation(line: 1751, column: 5, scope: !866)
!2869 = !DILocation(line: 1752, column: 1, scope: !866)
!2870 = !DILocation(line: 1581, column: 18, scope: !877)
!2871 = !DILocation(line: 1581, column: 34, scope: !877)
!2872 = !DILocation(line: 1583, column: 5, scope: !877)
!2873 = !DILocation(line: 1583, column: 18, scope: !877)
!2874 = !DILocation(line: 1584, column: 5, scope: !877)
!2875 = !DILocation(line: 1584, column: 20, scope: !877)
!2876 = !DILocation(line: 1585, column: 5, scope: !877)
!2877 = !DILocation(line: 1585, column: 16, scope: !877)
!2878 = !DILocation(line: 1587, column: 27, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !877, file: !406, line: 1587, column: 9)
!2880 = !DILocation(line: 1587, column: 10, scope: !2879)
!2881 = !DILocation(line: 1587, column: 9, scope: !877)
!2882 = !DILocation(line: 1590, column: 9, scope: !2879)
!2883 = !DILocation(line: 1592, column: 41, scope: !877)
!2884 = !DILocation(line: 1592, column: 29, scope: !877)
!2885 = !DILocation(line: 1592, column: 12, scope: !877)
!2886 = !DILocation(line: 1592, column: 10, scope: !877)
!2887 = !DILocation(line: 1593, column: 9, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !877, file: !406, line: 1593, column: 9)
!2889 = !DILocation(line: 1593, column: 14, scope: !2888)
!2890 = !DILocation(line: 1593, column: 9, scope: !877)
!2891 = !DILocation(line: 1594, column: 25, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2888, file: !406, line: 1593, column: 29)
!2893 = !DILocation(line: 1594, column: 9, scope: !2892)
!2894 = !DILocation(line: 1596, column: 9, scope: !2892)
!2895 = !DILocation(line: 1598, column: 9, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !877, file: !406, line: 1598, column: 9)
!2897 = !DILocation(line: 1598, column: 16, scope: !2896)
!2898 = !DILocation(line: 1598, column: 22, scope: !2896)
!2899 = !DILocation(line: 1598, column: 14, scope: !2896)
!2900 = !DILocation(line: 1598, column: 9, scope: !877)
!2901 = !DILocation(line: 1599, column: 22, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2896, file: !406, line: 1598, column: 28)
!2903 = !DILocation(line: 1601, column: 22, scope: !2902)
!2904 = !DILocation(line: 1601, column: 28, scope: !2902)
!2905 = !DILocation(line: 1599, column: 9, scope: !2902)
!2906 = !DILocation(line: 1602, column: 9, scope: !2902)
!2907 = !DILocation(line: 1604, column: 9, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !877, file: !406, line: 1604, column: 9)
!2909 = !DILocation(line: 1604, column: 14, scope: !2908)
!2910 = !{!2911, !1118, i64 24}
!2911 = !{!"tagCDataObject", !1070, i64 0, !1020, i64 16, !1118, i64 24, !1020, i64 32, !1071, i64 40, !1071, i64 48, !1071, i64 56, !1020, i64 64, !1021, i64 80}
!2912 = !DILocation(line: 1604, column: 26, scope: !2908)
!2913 = !DILocation(line: 1604, column: 9, scope: !877)
!2914 = !DILocation(line: 1605, column: 22, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2908, file: !406, line: 1604, column: 32)
!2916 = !DILocation(line: 1605, column: 9, scope: !2915)
!2917 = !DILocation(line: 1607, column: 9, scope: !2915)
!2918 = !DILocation(line: 1609, column: 9, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !877, file: !406, line: 1609, column: 9)
!2920 = !DILocation(line: 1609, column: 14, scope: !2919)
!2921 = !DILocation(line: 1609, column: 9, scope: !877)
!2922 = !DILocation(line: 1611, column: 23, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2919, file: !406, line: 1609, column: 39)
!2924 = !DILocation(line: 1611, column: 9, scope: !2923)
!2925 = !DILocation(line: 1611, column: 14, scope: !2923)
!2926 = !DILocation(line: 1611, column: 21, scope: !2923)
!2927 = !{!2911, !1071, i64 40}
!2928 = !DILocation(line: 1612, column: 9, scope: !2923)
!2929 = !DILocation(line: 1614, column: 12, scope: !886)
!2930 = !DILocation(line: 1614, column: 18, scope: !886)
!2931 = !{!2911, !1020, i64 16}
!2932 = !DILocation(line: 1614, column: 37, scope: !886)
!2933 = !DILocation(line: 1614, column: 43, scope: !886)
!2934 = !DILocation(line: 1614, column: 27, scope: !886)
!2935 = !DILocation(line: 1614, column: 24, scope: !886)
!2936 = !DILocation(line: 1614, column: 9, scope: !877)
!2937 = !DILocation(line: 1617, column: 9, scope: !885)
!2938 = !DILocation(line: 1617, column: 15, scope: !885)
!2939 = !DILocation(line: 1617, column: 34, scope: !885)
!2940 = !DILocation(line: 1617, column: 21, scope: !885)
!2941 = !DILocation(line: 1618, column: 13, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !885, file: !406, line: 1618, column: 13)
!2943 = !DILocation(line: 1618, column: 17, scope: !2942)
!2944 = !DILocation(line: 1618, column: 13, scope: !885)
!2945 = !DILocation(line: 1619, column: 20, scope: !2942)
!2946 = !DILocation(line: 1619, column: 13, scope: !2942)
!2947 = !DILocation(line: 1620, column: 16, scope: !885)
!2948 = !DILocation(line: 1620, column: 24, scope: !885)
!2949 = !DILocation(line: 1620, column: 9, scope: !885)
!2950 = !DILocation(line: 1621, column: 17, scope: !885)
!2951 = !DILocation(line: 1621, column: 22, scope: !885)
!2952 = !DILocation(line: 1621, column: 27, scope: !885)
!2953 = !DILocation(line: 1621, column: 34, scope: !885)
!2954 = !DILocation(line: 1621, column: 39, scope: !885)
!2955 = !DILocation(line: 1621, column: 9, scope: !885)
!2956 = !DILocation(line: 1622, column: 22, scope: !885)
!2957 = !DILocation(line: 1622, column: 9, scope: !885)
!2958 = !DILocation(line: 1622, column: 14, scope: !885)
!2959 = !DILocation(line: 1622, column: 20, scope: !885)
!2960 = !DILocation(line: 1623, column: 23, scope: !885)
!2961 = !DILocation(line: 1623, column: 9, scope: !885)
!2962 = !DILocation(line: 1623, column: 14, scope: !885)
!2963 = !DILocation(line: 1623, column: 21, scope: !885)
!2964 = !DILocation(line: 1624, column: 5, scope: !886)
!2965 = !DILocation(line: 1624, column: 5, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !886, file: !406, discriminator: 1)
!2967 = !DILocation(line: 1624, column: 5, scope: !885)
!2968 = !DILocation(line: 1625, column: 9, scope: !888)
!2969 = !DILocation(line: 1625, column: 16, scope: !888)
!2970 = !DILocation(line: 1625, column: 36, scope: !888)
!2971 = !DILocation(line: 1625, column: 41, scope: !888)
!2972 = !DILocation(line: 1625, column: 48, scope: !888)
!2973 = !DILocation(line: 1625, column: 22, scope: !888)
!2974 = !DILocation(line: 1626, column: 13, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !888, file: !406, line: 1626, column: 13)
!2976 = !DILocation(line: 1626, column: 17, scope: !2975)
!2977 = !DILocation(line: 1626, column: 13, scope: !888)
!2978 = !DILocation(line: 1627, column: 20, scope: !2975)
!2979 = !DILocation(line: 1627, column: 13, scope: !2975)
!2980 = !DILocation(line: 1628, column: 22, scope: !888)
!2981 = !DILocation(line: 1628, column: 9, scope: !888)
!2982 = !DILocation(line: 1628, column: 14, scope: !888)
!2983 = !DILocation(line: 1628, column: 20, scope: !888)
!2984 = !DILocation(line: 1629, column: 23, scope: !888)
!2985 = !DILocation(line: 1629, column: 9, scope: !888)
!2986 = !DILocation(line: 1629, column: 14, scope: !888)
!2987 = !DILocation(line: 1629, column: 21, scope: !888)
!2988 = !DILocation(line: 1630, column: 5, scope: !886)
!2989 = !DILocation(line: 1630, column: 5, scope: !2966)
!2990 = !DILocation(line: 1614, column: 50, scope: !886)
!2991 = !DILocation(line: 1632, column: 51, scope: !877)
!2992 = !DILocation(line: 1633, column: 5, scope: !877)
!2993 = !DILocation(line: 1634, column: 1, scope: !877)
!2994 = !DILocation(line: 1308, column: 39, scope: !889)
!2995 = !DILocation(line: 1308, column: 55, scope: !889)
!2996 = !DILocation(line: 1310, column: 5, scope: !889)
!2997 = !DILocation(line: 1310, column: 15, scope: !889)
!2998 = !DILocation(line: 1310, column: 22, scope: !889)
!2999 = !DILocation(line: 1311, column: 5, scope: !889)
!3000 = !DILocation(line: 1311, column: 11, scope: !889)
!3001 = !DILocation(line: 1312, column: 5, scope: !889)
!3002 = !DILocation(line: 1312, column: 12, scope: !889)
!3003 = !DILocation(line: 1314, column: 5, scope: !889)
!3004 = !DILocation(line: 1314, column: 9, scope: !889)
!3005 = !DILocation(line: 1319, column: 27, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !889, file: !406, line: 1319, column: 9)
!3007 = !DILocation(line: 1319, column: 10, scope: !3006)
!3008 = !DILocation(line: 1319, column: 9, scope: !889)
!3009 = !DILocation(line: 1320, column: 9, scope: !3006)
!3010 = !DILocation(line: 1321, column: 10, scope: !889)
!3011 = !DILocation(line: 1322, column: 9, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !889, file: !406, line: 1322, column: 9)
!3013 = !DILocation(line: 1322, column: 14, scope: !3012)
!3014 = !DILocation(line: 1322, column: 9, scope: !889)
!3015 = !DILocation(line: 1323, column: 35, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !406, line: 1323, column: 13)
!3017 = distinct !DILexicalBlock(scope: !3012, file: !406, line: 1322, column: 36)
!3018 = !DILocation(line: 1323, column: 41, scope: !3016)
!3019 = !DILocation(line: 1323, column: 13, scope: !3016)
!3020 = !DILocation(line: 1323, column: 49, scope: !3016)
!3021 = !DILocation(line: 1323, column: 13, scope: !3017)
!3022 = !DILocation(line: 1324, column: 13, scope: !3016)
!3023 = !DILocation(line: 1325, column: 30, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3017, file: !406, line: 1325, column: 13)
!3025 = !DILocation(line: 1325, column: 39, scope: !3024)
!3026 = !DILocation(line: 1325, column: 50, scope: !3024)
!3027 = !DILocation(line: 1325, column: 59, scope: !3024)
!3028 = !DILocation(line: 1325, column: 76, scope: !3024)
!3029 = !DILocation(line: 1325, column: 13, scope: !3017)
!3030 = !DILocation(line: 1326, column: 59, scope: !3024)
!3031 = !DILocation(line: 1326, column: 41, scope: !3024)
!3032 = !DILocation(line: 1326, column: 68, scope: !3024)
!3033 = !DILocation(line: 1326, column: 39, scope: !3024)
!3034 = !DILocation(line: 1326, column: 22, scope: !3024)
!3035 = !DILocation(line: 1326, column: 13, scope: !3024)
!3036 = !DILocation(line: 1328, column: 56, scope: !3024)
!3037 = !DILocation(line: 1328, column: 41, scope: !3024)
!3038 = !DILocation(line: 1328, column: 65, scope: !3024)
!3039 = !DILocation(line: 1328, column: 39, scope: !3024)
!3040 = !DILocation(line: 1328, column: 99, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !3024, file: !406, discriminator: 1)
!3042 = !DILocation(line: 1328, column: 77, scope: !3024)
!3043 = !DILocation(line: 1328, column: 108, scope: !3024)
!3044 = !{!3045, !1020, i64 40}
!3045 = !{!"", !1117, i64 0, !1071, i64 24, !1020, i64 32, !1020, i64 40, !1118, i64 48}
!3046 = !DILocation(line: 1328, column: 39, scope: !3047)
!3047 = !DILexicalBlockFile(scope: !3024, file: !406, discriminator: 2)
!3048 = !DILocation(line: 1328, column: 22, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3050, file: !406, discriminator: 4)
!3050 = !DILexicalBlockFile(scope: !3024, file: !406, discriminator: 3)
!3051 = !DILocation(line: 1329, column: 5, scope: !3017)
!3052 = !DILocation(line: 1330, column: 18, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3012, file: !406, line: 1329, column: 12)
!3054 = !DILocation(line: 1331, column: 15, scope: !3053)
!3055 = !DILocation(line: 1333, column: 21, scope: !889)
!3056 = !DILocation(line: 1333, column: 31, scope: !889)
!3057 = !DILocation(line: 1333, column: 14, scope: !889)
!3058 = !DILocation(line: 1333, column: 12, scope: !889)
!3059 = !DILocation(line: 1334, column: 5, scope: !889)
!3060 = !DILocation(line: 1334, column: 10, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !899, file: !406, discriminator: 1)
!3062 = !DILocation(line: 1334, column: 20, scope: !899)
!3063 = !DILocation(line: 1334, column: 51, scope: !899)
!3064 = !DILocation(line: 1334, column: 63, scope: !902)
!3065 = !DILocation(line: 1334, column: 79, scope: !902)
!3066 = !DILocation(line: 1334, column: 63, scope: !899)
!3067 = !DILocation(line: 1334, column: 94, scope: !3068)
!3068 = !DILexicalBlockFile(scope: !902, file: !406, discriminator: 2)
!3069 = !DILocation(line: 1334, column: 99, scope: !3070)
!3070 = !DILexicalBlockFile(scope: !901, file: !406, discriminator: 4)
!3071 = !DILocation(line: 1334, column: 109, scope: !901)
!3072 = !DILocation(line: 1334, column: 139, scope: !901)
!3073 = !DILocation(line: 1334, column: 165, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !901, file: !406, line: 1334, column: 162)
!3075 = !DILocation(line: 1334, column: 182, scope: !3074)
!3076 = !DILocation(line: 1334, column: 162, scope: !3074)
!3077 = !DILocation(line: 1334, column: 192, scope: !3074)
!3078 = !DILocation(line: 1334, column: 162, scope: !901)
!3079 = !DILocation(line: 1334, column: 162, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !901, file: !406, discriminator: 5)
!3081 = !DILocation(line: 1334, column: 223, scope: !3082)
!3082 = !DILexicalBlockFile(scope: !3074, file: !406, discriminator: 6)
!3083 = !DILocation(line: 1334, column: 241, scope: !3074)
!3084 = !DILocation(line: 1334, column: 251, scope: !3074)
!3085 = !DILocation(line: 1334, column: 276, scope: !3074)
!3086 = !DILocation(line: 1334, column: 207, scope: !3074)
!3087 = !DILocation(line: 1334, column: 295, scope: !3088)
!3088 = !DILexicalBlockFile(scope: !902, file: !406, discriminator: 7)
!3089 = !DILocation(line: 1334, column: 295, scope: !901)
!3090 = !DILocation(line: 1334, column: 295, scope: !3091)
!3091 = !DILexicalBlockFile(scope: !901, file: !406, discriminator: 8)
!3092 = !DILocation(line: 1334, column: 295, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !901, file: !406, discriminator: 9)
!3094 = !DILocation(line: 1334, column: 308, scope: !3095)
!3095 = !DILexicalBlockFile(scope: !3096, file: !406, discriminator: 10)
!3096 = !DILexicalBlockFile(scope: !889, file: !406, discriminator: 3)
!3097 = !DILocation(line: 1334, column: 308, scope: !899)
!3098 = !DILocation(line: 1334, column: 308, scope: !3099)
!3099 = !DILexicalBlockFile(scope: !899, file: !406, discriminator: 11)
!3100 = !DILocation(line: 1335, column: 10, scope: !905)
!3101 = !DILocation(line: 1335, column: 9, scope: !889)
!3102 = !DILocation(line: 1336, column: 9, scope: !904)
!3103 = !DILocation(line: 1336, column: 15, scope: !904)
!3104 = !DILocation(line: 1336, column: 24, scope: !904)
!3105 = !DILocation(line: 1337, column: 14, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !904, file: !406, line: 1337, column: 13)
!3107 = !DILocation(line: 1337, column: 13, scope: !904)
!3108 = !DILocation(line: 1338, column: 20, scope: !3106)
!3109 = !DILocation(line: 1338, column: 13, scope: !3106)
!3110 = !DILocation(line: 1339, column: 25, scope: !904)
!3111 = !DILocation(line: 1340, column: 32, scope: !904)
!3112 = !DILocation(line: 1339, column: 9, scope: !904)
!3113 = !DILocation(line: 1341, column: 9, scope: !904)
!3114 = !DILocation(line: 1342, column: 5, scope: !905)
!3115 = !DILocation(line: 1343, column: 31, scope: !889)
!3116 = !DILocation(line: 1343, column: 12, scope: !889)
!3117 = !DILocation(line: 1343, column: 5, scope: !889)
!3118 = !DILocation(line: 1344, column: 1, scope: !889)
!3119 = !DILocation(line: 1346, column: 40, scope: !906)
!3120 = !DILocation(line: 1346, column: 56, scope: !906)
!3121 = !DILocation(line: 1348, column: 5, scope: !906)
!3122 = !DILocation(line: 1348, column: 11, scope: !906)
!3123 = !DILocation(line: 1350, column: 27, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !906, file: !406, line: 1350, column: 9)
!3125 = !DILocation(line: 1350, column: 10, scope: !3124)
!3126 = !DILocation(line: 1350, column: 9, scope: !906)
!3127 = !DILocation(line: 1351, column: 9, scope: !3124)
!3128 = !DILocation(line: 1352, column: 17, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !906, file: !406, line: 1352, column: 9)
!3130 = !DILocation(line: 1352, column: 9, scope: !3129)
!3131 = !DILocation(line: 1352, column: 9, scope: !906)
!3132 = !DILocation(line: 1353, column: 25, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3129, file: !406, line: 1352, column: 26)
!3134 = !DILocation(line: 1354, column: 32, scope: !3133)
!3135 = !DILocation(line: 1353, column: 9, scope: !3133)
!3136 = !DILocation(line: 1355, column: 9, scope: !3133)
!3137 = !DILocation(line: 1357, column: 51, scope: !906)
!3138 = !DILocation(line: 1358, column: 5, scope: !906)
!3139 = !DILocation(line: 1359, column: 1, scope: !906)
!3140 = !DILocation(line: 1361, column: 38, scope: !917)
!3141 = !DILocation(line: 1361, column: 54, scope: !917)
!3142 = !DILocation(line: 1363, column: 5, scope: !917)
!3143 = !DILocation(line: 1363, column: 11, scope: !917)
!3144 = !DILocation(line: 1364, column: 5, scope: !917)
!3145 = !DILocation(line: 1364, column: 11, scope: !917)
!3146 = !DILocation(line: 1365, column: 5, scope: !917)
!3147 = !DILocation(line: 1365, column: 11, scope: !917)
!3148 = !DILocation(line: 1367, column: 27, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !917, file: !406, line: 1367, column: 9)
!3150 = !DILocation(line: 1367, column: 10, scope: !3149)
!3151 = !DILocation(line: 1367, column: 9, scope: !917)
!3152 = !DILocation(line: 1369, column: 9, scope: !3149)
!3153 = !DILocation(line: 1370, column: 24, scope: !917)
!3154 = !DILocation(line: 1370, column: 32, scope: !917)
!3155 = !DILocation(line: 1370, column: 11, scope: !917)
!3156 = !DILocation(line: 1370, column: 9, scope: !917)
!3157 = !DILocation(line: 1371, column: 10, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !917, file: !406, line: 1371, column: 9)
!3159 = !DILocation(line: 1371, column: 9, scope: !917)
!3160 = !DILocation(line: 1372, column: 25, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3158, file: !406, line: 1371, column: 15)
!3162 = !DILocation(line: 1373, column: 32, scope: !3161)
!3163 = !DILocation(line: 1372, column: 9, scope: !3161)
!3164 = !DILocation(line: 1374, column: 9, scope: !3161)
!3165 = !DILocation(line: 1376, column: 31, scope: !917)
!3166 = !DILocation(line: 1376, column: 12, scope: !917)
!3167 = !DILocation(line: 1376, column: 5, scope: !917)
!3168 = !DILocation(line: 1377, column: 1, scope: !917)
!3169 = !DILocation(line: 1472, column: 22, scope: !924)
!3170 = !DILocation(line: 1472, column: 38, scope: !924)
!3171 = !DILocation(line: 1474, column: 5, scope: !924)
!3172 = !DILocation(line: 1474, column: 20, scope: !924)
!3173 = !DILocation(line: 1476, column: 27, scope: !924)
!3174 = !DILocation(line: 1476, column: 12, scope: !924)
!3175 = !DILocation(line: 1476, column: 10, scope: !924)
!3176 = !DILocation(line: 1477, column: 9, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !924, file: !406, line: 1477, column: 9)
!3178 = !DILocation(line: 1477, column: 9, scope: !924)
!3179 = !DILocation(line: 1478, column: 35, scope: !3177)
!3180 = !DILocation(line: 1478, column: 41, scope: !3177)
!3181 = !{!1914, !1071, i64 48}
!3182 = !DILocation(line: 1478, column: 16, scope: !3177)
!3183 = !DILocation(line: 1478, column: 9, scope: !3177)
!3184 = !DILocation(line: 1480, column: 29, scope: !924)
!3185 = !DILocation(line: 1480, column: 12, scope: !924)
!3186 = !DILocation(line: 1480, column: 10, scope: !924)
!3187 = !DILocation(line: 1481, column: 9, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !924, file: !406, line: 1481, column: 9)
!3189 = !DILocation(line: 1481, column: 9, scope: !924)
!3190 = !DILocation(line: 1482, column: 35, scope: !3188)
!3191 = !DILocation(line: 1482, column: 41, scope: !3188)
!3192 = !DILocation(line: 1482, column: 16, scope: !3188)
!3193 = !DILocation(line: 1482, column: 9, scope: !3188)
!3194 = !DILocation(line: 1484, column: 21, scope: !924)
!3195 = !DILocation(line: 1484, column: 5, scope: !924)
!3196 = !DILocation(line: 1486, column: 5, scope: !924)
!3197 = !DILocation(line: 1487, column: 1, scope: !924)
!3198 = !DILocation(line: 1451, column: 23, scope: !929)
!3199 = !DILocation(line: 1451, column: 39, scope: !929)
!3200 = !DILocation(line: 1453, column: 5, scope: !929)
!3201 = !DILocation(line: 1453, column: 20, scope: !929)
!3202 = !DILocation(line: 1455, column: 27, scope: !929)
!3203 = !DILocation(line: 1455, column: 12, scope: !929)
!3204 = !DILocation(line: 1455, column: 10, scope: !929)
!3205 = !DILocation(line: 1456, column: 9, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !929, file: !406, line: 1456, column: 9)
!3207 = !DILocation(line: 1456, column: 9, scope: !929)
!3208 = !DILocation(line: 1457, column: 35, scope: !3206)
!3209 = !DILocation(line: 1457, column: 41, scope: !3206)
!3210 = !DILocation(line: 1457, column: 16, scope: !3206)
!3211 = !DILocation(line: 1457, column: 9, scope: !3206)
!3212 = !DILocation(line: 1459, column: 24, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !929, file: !406, line: 1459, column: 9)
!3214 = !DILocation(line: 1459, column: 31, scope: !3213)
!3215 = !DILocation(line: 1459, column: 40, scope: !3213)
!3216 = !DILocation(line: 1459, column: 59, scope: !3213)
!3217 = !DILocation(line: 1459, column: 93, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !3213, file: !406, discriminator: 1)
!3219 = !DILocation(line: 1459, column: 100, scope: !3213)
!3220 = !DILocation(line: 1459, column: 62, scope: !3213)
!3221 = !DILocation(line: 1459, column: 9, scope: !929)
!3222 = !DILocation(line: 1460, column: 51, scope: !3213)
!3223 = !DILocation(line: 1460, column: 36, scope: !3213)
!3224 = !DILocation(line: 1460, column: 57, scope: !3213)
!3225 = !DILocation(line: 1460, column: 16, scope: !3213)
!3226 = !DILocation(line: 1460, column: 9, scope: !3213)
!3227 = !DILocation(line: 1461, column: 21, scope: !929)
!3228 = !DILocation(line: 1461, column: 5, scope: !929)
!3229 = !DILocation(line: 1463, column: 5, scope: !929)
!3230 = !DILocation(line: 1464, column: 1, scope: !929)
!3231 = !DILocation(line: 1499, column: 17, scope: !934)
!3232 = !DILocation(line: 1499, column: 33, scope: !934)
!3233 = !DILocation(line: 1501, column: 5, scope: !934)
!3234 = !DILocation(line: 1501, column: 19, scope: !934)
!3235 = !DILocation(line: 1502, column: 5, scope: !934)
!3236 = !DILocation(line: 1502, column: 15, scope: !934)
!3237 = !DILocation(line: 1503, column: 5, scope: !934)
!3238 = !DILocation(line: 1503, column: 15, scope: !934)
!3239 = !DILocation(line: 1504, column: 5, scope: !934)
!3240 = !DILocation(line: 1504, column: 16, scope: !934)
!3241 = !DILocation(line: 1506, column: 28, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !934, file: !406, line: 1506, column: 9)
!3243 = !DILocation(line: 1506, column: 10, scope: !3242)
!3244 = !DILocation(line: 1506, column: 9, scope: !934)
!3245 = !DILocation(line: 1508, column: 9, scope: !3242)
!3246 = !DILocation(line: 1509, column: 9, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !934, file: !406, line: 1509, column: 9)
!3248 = !DILocation(line: 1509, column: 9, scope: !934)
!3249 = !DILocation(line: 1510, column: 37, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3247, file: !406, line: 1509, column: 19)
!3251 = !DILocation(line: 1510, column: 18, scope: !3250)
!3252 = !DILocation(line: 1510, column: 16, scope: !3250)
!3253 = !DILocation(line: 1511, column: 13, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3250, file: !406, line: 1511, column: 13)
!3255 = !DILocation(line: 1511, column: 20, scope: !3254)
!3256 = !DILocation(line: 1511, column: 26, scope: !3254)
!3257 = !DILocation(line: 1511, column: 29, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !3254, file: !406, discriminator: 1)
!3259 = !DILocation(line: 1511, column: 13, scope: !3250)
!3260 = !DILocation(line: 1512, column: 13, scope: !3254)
!3261 = !DILocation(line: 1513, column: 5, scope: !3250)
!3262 = !DILocation(line: 1514, column: 25, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !934, file: !406, line: 1514, column: 9)
!3264 = !DILocation(line: 1514, column: 32, scope: !3263)
!3265 = !DILocation(line: 1514, column: 41, scope: !3263)
!3266 = !DILocation(line: 1514, column: 60, scope: !3263)
!3267 = !DILocation(line: 1514, column: 94, scope: !3268)
!3268 = !DILexicalBlockFile(scope: !3263, file: !406, discriminator: 1)
!3269 = !DILocation(line: 1514, column: 101, scope: !3263)
!3270 = !DILocation(line: 1514, column: 63, scope: !3263)
!3271 = !DILocation(line: 1514, column: 9, scope: !934)
!3272 = !DILocation(line: 1515, column: 22, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3263, file: !406, line: 1514, column: 130)
!3274 = !DILocation(line: 1517, column: 36, scope: !3273)
!3275 = !DILocation(line: 1517, column: 43, scope: !3273)
!3276 = !DILocation(line: 1517, column: 53, scope: !3273)
!3277 = !DILocation(line: 1515, column: 9, scope: !3273)
!3278 = !DILocation(line: 1518, column: 9, scope: !3273)
!3279 = !DILocation(line: 1521, column: 12, scope: !934)
!3280 = !DILocation(line: 1521, column: 10, scope: !934)
!3281 = !DILocation(line: 1522, column: 9, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !934, file: !406, line: 1522, column: 9)
!3283 = !DILocation(line: 1522, column: 14, scope: !3282)
!3284 = !DILocation(line: 1522, column: 9, scope: !934)
!3285 = !DILocation(line: 1523, column: 9, scope: !3282)
!3286 = !DILocation(line: 1525, column: 5, scope: !934)
!3287 = !DILocation(line: 1525, column: 11, scope: !934)
!3288 = !DILocation(line: 1525, column: 15, scope: !934)
!3289 = !DILocation(line: 1526, column: 5, scope: !934)
!3290 = !DILocation(line: 1526, column: 11, scope: !934)
!3291 = !DILocation(line: 1526, column: 21, scope: !934)
!3292 = !DILocation(line: 1527, column: 21, scope: !934)
!3293 = !DILocation(line: 1527, column: 28, scope: !934)
!3294 = !DILocation(line: 1527, column: 37, scope: !934)
!3295 = !DILocation(line: 1528, column: 17, scope: !934)
!3296 = !DILocation(line: 1528, column: 5, scope: !934)
!3297 = !DILocation(line: 1528, column: 11, scope: !934)
!3298 = !DILocation(line: 1528, column: 15, scope: !934)
!3299 = !DILocation(line: 1529, column: 45, scope: !934)
!3300 = !DILocation(line: 1529, column: 30, scope: !934)
!3301 = !DILocation(line: 1529, column: 51, scope: !934)
!3302 = !DILocation(line: 1529, column: 59, scope: !934)
!3303 = !DILocation(line: 1529, column: 57, scope: !934)
!3304 = !DILocation(line: 1529, column: 5, scope: !934)
!3305 = !DILocation(line: 1529, column: 11, scope: !934)
!3306 = !DILocation(line: 1529, column: 17, scope: !934)
!3307 = !DILocation(line: 1529, column: 19, scope: !934)
!3308 = !DILocation(line: 1530, column: 24, scope: !934)
!3309 = !DILocation(line: 1530, column: 12, scope: !934)
!3310 = !DILocation(line: 1530, column: 5, scope: !934)
!3311 = !DILocation(line: 1531, column: 1, scope: !934)
!3312 = !DILocation(line: 1538, column: 21, scope: !942)
!3313 = !DILocation(line: 1538, column: 37, scope: !942)
!3314 = !DILocation(line: 1540, column: 24, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !942, file: !406, line: 1540, column: 9)
!3316 = !DILocation(line: 1540, column: 31, scope: !3315)
!3317 = !DILocation(line: 1540, column: 40, scope: !3315)
!3318 = !DILocation(line: 1540, column: 59, scope: !3315)
!3319 = !DILocation(line: 1540, column: 93, scope: !3320)
!3320 = !DILexicalBlockFile(scope: !3315, file: !406, discriminator: 1)
!3321 = !DILocation(line: 1540, column: 100, scope: !3315)
!3322 = !DILocation(line: 1540, column: 62, scope: !3315)
!3323 = !DILocation(line: 1540, column: 9, scope: !942)
!3324 = !DILocation(line: 1541, column: 51, scope: !3315)
!3325 = !DILocation(line: 1541, column: 36, scope: !3315)
!3326 = !DILocation(line: 1541, column: 57, scope: !3315)
!3327 = !DILocation(line: 1541, column: 16, scope: !3315)
!3328 = !DILocation(line: 1541, column: 9, scope: !3315)
!3329 = !DILocation(line: 1542, column: 21, scope: !942)
!3330 = !DILocation(line: 1542, column: 5, scope: !942)
!3331 = !DILocation(line: 1544, column: 5, scope: !942)
!3332 = !DILocation(line: 1545, column: 1, scope: !942)
!3333 = !DILocation(line: 1386, column: 25, scope: !946)
!3334 = !DILocation(line: 1386, column: 41, scope: !946)
!3335 = !DILocation(line: 1388, column: 5, scope: !946)
!3336 = !DILocation(line: 1388, column: 11, scope: !946)
!3337 = !DILocation(line: 1389, column: 5, scope: !946)
!3338 = !DILocation(line: 1389, column: 15, scope: !946)
!3339 = !DILocation(line: 1390, column: 5, scope: !946)
!3340 = !DILocation(line: 1390, column: 15, scope: !946)
!3341 = !DILocation(line: 1392, column: 27, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !946, file: !406, line: 1392, column: 9)
!3343 = !DILocation(line: 1392, column: 10, scope: !3342)
!3344 = !DILocation(line: 1392, column: 9, scope: !946)
!3345 = !DILocation(line: 1396, column: 9, scope: !3342)
!3346 = !DILocation(line: 1398, column: 38, scope: !946)
!3347 = !DILocation(line: 1398, column: 31, scope: !946)
!3348 = !DILocation(line: 1399, column: 25, scope: !946)
!3349 = !DILocation(line: 1398, column: 14, scope: !946)
!3350 = !DILocation(line: 1398, column: 12, scope: !946)
!3351 = !DILocation(line: 1408, column: 12, scope: !946)
!3352 = !DILocation(line: 1408, column: 5, scope: !946)
!3353 = !DILocation(line: 1409, column: 1, scope: !946)
!3354 = !DILocation(line: 1417, column: 30, scope: !953)
!3355 = !DILocation(line: 1417, column: 46, scope: !953)
!3356 = !DILocation(line: 1419, column: 5, scope: !953)
!3357 = !DILocation(line: 1419, column: 11, scope: !953)
!3358 = !DILocation(line: 1420, column: 5, scope: !953)
!3359 = !DILocation(line: 1420, column: 15, scope: !953)
!3360 = !DILocation(line: 1421, column: 5, scope: !953)
!3361 = !DILocation(line: 1421, column: 15, scope: !953)
!3362 = !DILocation(line: 1423, column: 27, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !953, file: !406, line: 1423, column: 9)
!3364 = !DILocation(line: 1423, column: 10, scope: !3363)
!3365 = !DILocation(line: 1423, column: 9, scope: !953)
!3366 = !DILocation(line: 1427, column: 9, scope: !3363)
!3367 = !DILocation(line: 1429, column: 38, scope: !953)
!3368 = !DILocation(line: 1429, column: 31, scope: !953)
!3369 = !DILocation(line: 1430, column: 25, scope: !953)
!3370 = !DILocation(line: 1429, column: 14, scope: !953)
!3371 = !DILocation(line: 1429, column: 12, scope: !953)
!3372 = !DILocation(line: 1439, column: 12, scope: !953)
!3373 = !DILocation(line: 1439, column: 5, scope: !953)
!3374 = !DILocation(line: 1440, column: 1, scope: !953)
!3375 = !DILocation(line: 1555, column: 28, scope: !960)
!3376 = !DILocation(line: 1555, column: 44, scope: !960)
!3377 = !DILocation(line: 1557, column: 5, scope: !960)
!3378 = !DILocation(line: 1557, column: 15, scope: !960)
!3379 = !DILocation(line: 1558, column: 27, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !960, file: !406, line: 1558, column: 9)
!3381 = !DILocation(line: 1558, column: 10, scope: !3380)
!3382 = !DILocation(line: 1558, column: 9, scope: !960)
!3383 = !DILocation(line: 1559, column: 9, scope: !3380)
!3384 = !DILocation(line: 1560, column: 21, scope: !960)
!3385 = !DILocation(line: 1560, column: 27, scope: !960)
!3386 = !DILocation(line: 1560, column: 36, scope: !960)
!3387 = !DILocation(line: 1561, column: 12, scope: !960)
!3388 = !DILocation(line: 1561, column: 5, scope: !960)
!3389 = !DILocation(line: 1562, column: 1, scope: !960)
!3390 = !DILocation(line: 1565, column: 24, scope: !969)
!3391 = !DILocation(line: 1565, column: 40, scope: !969)
!3392 = !DILocation(line: 1567, column: 21, scope: !969)
!3393 = !DILocation(line: 1567, column: 28, scope: !969)
!3394 = !DILocation(line: 1567, column: 37, scope: !969)
!3395 = !DILocation(line: 1568, column: 21, scope: !969)
!3396 = !DILocation(line: 1568, column: 28, scope: !969)
!3397 = !DILocation(line: 1568, column: 37, scope: !969)
!3398 = !DILocation(line: 1569, column: 12, scope: !969)
!3399 = !DILocation(line: 1569, column: 5, scope: !969)
!3400 = !DILocation(line: 1573, column: 24, scope: !973)
!3401 = !DILocation(line: 1573, column: 40, scope: !973)
!3402 = !DILocation(line: 1575, column: 5, scope: !973)
!3403 = !DILocation(line: 1575, column: 10, scope: !3404)
!3404 = !DILexicalBlockFile(scope: !978, file: !406, discriminator: 1)
!3405 = !DILocation(line: 1575, column: 20, scope: !978)
!3406 = !DILocation(line: 1575, column: 50, scope: !978)
!3407 = !DILocation(line: 1575, column: 64, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !978, file: !406, line: 1575, column: 61)
!3409 = !DILocation(line: 1575, column: 81, scope: !3408)
!3410 = !DILocation(line: 1575, column: 61, scope: !3408)
!3411 = !DILocation(line: 1575, column: 91, scope: !3408)
!3412 = !DILocation(line: 1575, column: 61, scope: !978)
!3413 = !DILocation(line: 1575, column: 61, scope: !3414)
!3414 = !DILexicalBlockFile(scope: !978, file: !406, discriminator: 2)
!3415 = !DILocation(line: 1575, column: 122, scope: !3416)
!3416 = !DILexicalBlockFile(scope: !3408, file: !406, discriminator: 3)
!3417 = !DILocation(line: 1575, column: 140, scope: !3408)
!3418 = !DILocation(line: 1575, column: 150, scope: !3408)
!3419 = !DILocation(line: 1575, column: 175, scope: !3408)
!3420 = !DILocation(line: 1575, column: 106, scope: !3408)
!3421 = !DILocation(line: 1575, column: 194, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !973, file: !406, discriminator: 4)
!3423 = !DILocation(line: 1575, column: 194, scope: !978)
!3424 = !DILocation(line: 1576, column: 21, scope: !973)
!3425 = !DILocation(line: 1576, column: 28, scope: !973)
!3426 = !DILocation(line: 1576, column: 37, scope: !973)
!3427 = !DILocation(line: 1577, column: 12, scope: !973)
!3428 = !DILocation(line: 1577, column: 5, scope: !973)
!3429 = !DILocation(line: 173, column: 30, scope: !800)
!3430 = !DILocation(line: 173, column: 46, scope: !800)
!3431 = !DILocation(line: 173, column: 56, scope: !800)
!3432 = !DILocation(line: 175, column: 5, scope: !800)
!3433 = !DILocation(line: 175, column: 10, scope: !800)
!3434 = !DILocation(line: 176, column: 5, scope: !800)
!3435 = !DILocation(line: 176, column: 15, scope: !800)
!3436 = !DILocation(line: 176, column: 24, scope: !800)
!3437 = !DILocation(line: 177, column: 5, scope: !800)
!3438 = !DILocation(line: 177, column: 15, scope: !800)
!3439 = !DILocation(line: 179, column: 9, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !800, file: !406, line: 179, column: 9)
!3441 = !DILocation(line: 179, column: 16, scope: !3440)
!3442 = !DILocation(line: 179, column: 9, scope: !800)
!3443 = !DILocation(line: 180, column: 9, scope: !3440)
!3444 = !DILocation(line: 181, column: 36, scope: !800)
!3445 = !DILocation(line: 181, column: 30, scope: !800)
!3446 = !DILocation(line: 181, column: 14, scope: !800)
!3447 = !DILocation(line: 181, column: 12, scope: !800)
!3448 = !DILocation(line: 182, column: 5, scope: !800)
!3449 = !DILocation(line: 182, column: 10, scope: !3450)
!3450 = !DILexicalBlockFile(scope: !809, file: !406, discriminator: 1)
!3451 = !DILocation(line: 182, column: 20, scope: !809)
!3452 = !DILocation(line: 182, column: 50, scope: !809)
!3453 = !DILocation(line: 182, column: 67, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !809, file: !406, line: 182, column: 64)
!3455 = !DILocation(line: 182, column: 84, scope: !3454)
!3456 = !DILocation(line: 182, column: 64, scope: !3454)
!3457 = !DILocation(line: 182, column: 94, scope: !3454)
!3458 = !DILocation(line: 182, column: 64, scope: !809)
!3459 = !DILocation(line: 182, column: 64, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !809, file: !406, discriminator: 2)
!3461 = !DILocation(line: 182, column: 125, scope: !3462)
!3462 = !DILexicalBlockFile(scope: !3454, file: !406, discriminator: 3)
!3463 = !DILocation(line: 182, column: 143, scope: !3454)
!3464 = !DILocation(line: 182, column: 153, scope: !3454)
!3465 = !DILocation(line: 182, column: 178, scope: !3454)
!3466 = !DILocation(line: 182, column: 109, scope: !3454)
!3467 = !DILocation(line: 182, column: 197, scope: !3468)
!3468 = !DILexicalBlockFile(scope: !800, file: !406, discriminator: 4)
!3469 = !DILocation(line: 182, column: 197, scope: !809)
!3470 = !DILocation(line: 182, column: 197, scope: !3471)
!3471 = !DILexicalBlockFile(scope: !809, file: !406, discriminator: 5)
!3472 = !DILocation(line: 183, column: 12, scope: !800)
!3473 = !DILocation(line: 183, column: 5, scope: !800)
!3474 = !DILocation(line: 184, column: 1, scope: !800)
!3475 = !DILocation(line: 187, column: 30, scope: !814)
!3476 = !DILocation(line: 187, column: 46, scope: !814)
!3477 = !DILocation(line: 187, column: 56, scope: !814)
!3478 = !DILocation(line: 189, column: 5, scope: !814)
!3479 = !DILocation(line: 189, column: 9, scope: !814)
!3480 = !DILocation(line: 189, column: 20, scope: !814)
!3481 = !DILocation(line: 190, column: 5, scope: !814)
!3482 = !DILocation(line: 190, column: 15, scope: !814)
!3483 = !DILocation(line: 191, column: 5, scope: !814)
!3484 = !DILocation(line: 191, column: 10, scope: !814)
!3485 = !DILocation(line: 193, column: 27, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !814, file: !406, line: 193, column: 9)
!3487 = !DILocation(line: 193, column: 10, scope: !3486)
!3488 = !DILocation(line: 193, column: 9, scope: !814)
!3489 = !DILocation(line: 194, column: 9, scope: !3486)
!3490 = !DILocation(line: 195, column: 14, scope: !814)
!3491 = !DILocation(line: 195, column: 12, scope: !814)
!3492 = !DILocation(line: 196, column: 9, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !814, file: !406, line: 196, column: 9)
!3494 = !DILocation(line: 196, column: 16, scope: !3493)
!3495 = !DILocation(line: 196, column: 9, scope: !814)
!3496 = !DILocation(line: 197, column: 9, scope: !3493)
!3497 = !DILocation(line: 198, column: 23, scope: !814)
!3498 = !DILocation(line: 198, column: 17, scope: !814)
!3499 = !DILocation(line: 198, column: 15, scope: !814)
!3500 = !DILocation(line: 199, column: 20, scope: !814)
!3501 = !DILocation(line: 199, column: 11, scope: !814)
!3502 = !DILocation(line: 199, column: 5, scope: !814)
!3503 = !DILocation(line: 199, column: 18, scope: !814)
!3504 = !DILocation(line: 200, column: 5, scope: !814)
!3505 = !DILocation(line: 200, column: 10, scope: !3506)
!3506 = !DILexicalBlockFile(scope: !824, file: !406, discriminator: 1)
!3507 = !DILocation(line: 200, column: 20, scope: !824)
!3508 = !DILocation(line: 200, column: 50, scope: !824)
!3509 = !DILocation(line: 200, column: 67, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !824, file: !406, line: 200, column: 64)
!3511 = !DILocation(line: 200, column: 84, scope: !3510)
!3512 = !DILocation(line: 200, column: 64, scope: !3510)
!3513 = !DILocation(line: 200, column: 94, scope: !3510)
!3514 = !DILocation(line: 200, column: 64, scope: !824)
!3515 = !DILocation(line: 200, column: 64, scope: !3516)
!3516 = !DILexicalBlockFile(scope: !824, file: !406, discriminator: 2)
!3517 = !DILocation(line: 200, column: 125, scope: !3518)
!3518 = !DILexicalBlockFile(scope: !3510, file: !406, discriminator: 3)
!3519 = !DILocation(line: 200, column: 143, scope: !3510)
!3520 = !DILocation(line: 200, column: 153, scope: !3510)
!3521 = !DILocation(line: 200, column: 178, scope: !3510)
!3522 = !DILocation(line: 200, column: 109, scope: !3510)
!3523 = !DILocation(line: 200, column: 197, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !814, file: !406, discriminator: 4)
!3525 = !DILocation(line: 200, column: 197, scope: !824)
!3526 = !DILocation(line: 200, column: 197, scope: !3527)
!3527 = !DILexicalBlockFile(scope: !824, file: !406, discriminator: 5)
!3528 = !DILocation(line: 201, column: 28, scope: !814)
!3529 = !DILocation(line: 201, column: 12, scope: !814)
!3530 = !DILocation(line: 201, column: 5, scope: !814)
!3531 = !DILocation(line: 202, column: 1, scope: !814)
!3532 = !DILocation(line: 1197, column: 24, scope: !911)
!3533 = !DILocation(line: 1197, column: 36, scope: !911)
!3534 = !DILocation(line: 1199, column: 33, scope: !911)
!3535 = !DILocation(line: 1199, column: 16, scope: !911)
!3536 = !DILocation(line: 1199, column: 6, scope: !911)
!3537 = !DILocation(line: 1199, column: 14, scope: !911)
!3538 = !DILocation(line: 1200, column: 10, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !911, file: !406, line: 1200, column: 9)
!3540 = !DILocation(line: 1200, column: 9, scope: !3539)
!3541 = !DILocation(line: 1200, column: 18, scope: !3539)
!3542 = !DILocation(line: 1200, column: 9, scope: !911)
!3543 = !DILocation(line: 1201, column: 9, scope: !3539)
!3544 = !DILocation(line: 1202, column: 5, scope: !911)
!3545 = !DILocation(line: 1203, column: 1, scope: !911)
!3546 = !DILocation(line: 1548, column: 21, scope: !965)
!3547 = !DILocation(line: 1548, column: 33, scope: !965)
!3548 = !DILocation(line: 1550, column: 33, scope: !965)
!3549 = !DILocation(line: 1550, column: 16, scope: !965)
!3550 = !DILocation(line: 1550, column: 6, scope: !965)
!3551 = !DILocation(line: 1550, column: 14, scope: !965)
!3552 = !DILocation(line: 1551, column: 13, scope: !965)
!3553 = !DILocation(line: 1551, column: 12, scope: !965)
!3554 = !DILocation(line: 1551, column: 21, scope: !965)
!3555 = !DILocation(line: 1551, column: 5, scope: !965)
