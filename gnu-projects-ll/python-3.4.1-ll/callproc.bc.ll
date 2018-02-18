; ModuleID = './callproc.bc'
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
  %space = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32** %pspace, i32*** %pspace.addr, align 8
  %call = call %struct._object* @PyThreadState_GetDict()
  store %struct._object* %call, %struct._object** %dict, align 8
  %0 = load %struct._object*, %struct._object** %dict, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @_ctypes_get_errobj.error_object_name, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** @_ctypes_get_errobj.error_object_name, align 8
  %3 = load %struct._object*, %struct._object** @_ctypes_get_errobj.error_object_name, align 8
  %cmp4 = icmp eq %struct._object* %3, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %4 = load %struct._object*, %struct._object** %dict, align 8
  %5 = load %struct._object*, %struct._object** @_ctypes_get_errobj.error_object_name, align 8
  %call8 = call %struct._object* @PyDict_GetItem(%struct._object* %4, %struct._object* %5)
  store %struct._object* %call8, %struct._object** %errobj, align 8
  %6 = load %struct._object*, %struct._object** %errobj, align 8
  %tobool = icmp ne %struct._object* %6, null
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  %7 = load %struct._object*, %struct._object** %errobj, align 8
  %call10 = call i32 @PyCapsule_IsValid(%struct._object* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.9
  %8 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.9
  %9 = load %struct._object*, %struct._object** %errobj, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.31

if.else:                                          ; preds = %if.end.7
  %call14 = call i8* @PyMem_Malloc(i64 8)
  store i8* %call14, i8** %space, align 8
  %11 = load i8*, i8** %space, align 8
  %cmp15 = icmp eq i8* %11, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.else
  %12 = load i8*, i8** %space, align 8
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 8, i32 1, i1 false)
  %13 = load i8*, i8** %space, align 8
  %call18 = call %struct._object* @PyCapsule_New(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (%struct._object*)* @pymem_destructor)
  store %struct._object* %call18, %struct._object** %errobj, align 8
  %14 = load %struct._object*, %struct._object** %errobj, align 8
  %cmp19 = icmp eq %struct._object* %14, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %15 = load %struct._object*, %struct._object** %dict, align 8
  %16 = load %struct._object*, %struct._object** @_ctypes_get_errobj.error_object_name, align 8
  %17 = load %struct._object*, %struct._object** %errobj, align 8
  %call22 = call i32 @PyDict_SetItem(%struct._object* %15, %struct._object* %16, %struct._object* %17)
  %cmp23 = icmp eq i32 -1, %call22
  br i1 %cmp23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.end.21
  br label %do.body

do.body:                                          ; preds = %if.then.24
  %18 = load %struct._object*, %struct._object** %errobj, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt25, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt25, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body
  br label %if.end.29

if.else.28:                                       ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.21
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.13
  %25 = load %struct._object*, %struct._object** %errobj, align 8
  %call32 = call i8* @PyCapsule_GetPointer(%struct._object* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %26 = bitcast i8* %call32 to i32*
  %27 = load i32**, i32*** %pspace.addr, align 8
  store i32* %26, i32** %27, align 8
  %28 = load %struct._object*, %struct._object** %errobj, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.31, %do.end, %if.then.20, %if.then.16, %if.then.12, %if.then.5, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

declare %struct._object* @PyThreadState_GetDict() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare i32 @PyCapsule_IsValid(%struct._object*, i8*) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct._object* @PyCapsule_New(i8*, i8*, void (%struct._object*)*) #1

; Function Attrs: uwtable
define internal void @pymem_destructor(%struct._object* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  store %struct._object* %ptr, %struct._object** %ptr.addr, align 8
  %0 = load %struct._object*, %struct._object** %ptr.addr, align 8
  %call = call i8* @PyCapsule_GetPointer(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
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

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare i8* @PyCapsule_GetPointer(%struct._object*, i8*) #1

; Function Attrs: uwtable
define %struct.tagPyCArgObject* @PyCArgObject_new() #0 {
entry:
  %retval = alloca %struct.tagPyCArgObject*, align 8
  %p = alloca %struct.tagPyCArgObject*, align 8
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @PyCArg_Type)
  %0 = bitcast %struct._object* %call to %struct.tagPyCArgObject*
  store %struct.tagPyCArgObject* %0, %struct.tagPyCArgObject** %p, align 8
  %1 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %p, align 8
  %cmp = icmp eq %struct.tagPyCArgObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.tagPyCArgObject* null, %struct.tagPyCArgObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %p, align 8
  %pffi_type = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %2, i32 0, i32 1
  store %struct._ffi_type* null, %struct._ffi_type** %pffi_type, align 8
  %3 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %p, align 8
  %tag = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %3, i32 0, i32 2
  store i8 0, i8* %tag, align 1
  %4 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %p, align 8
  %obj = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %4, i32 0, i32 4
  store %struct._object* null, %struct._object** %obj, align 8
  %5 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %p, align 8
  %value = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %5, i32 0, i32 3
  %6 = bitcast %union.anon* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 16, i1 false)
  %7 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %p, align 8
  store %struct.tagPyCArgObject* %7, %struct.tagPyCArgObject** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %retval
  ret %struct.tagPyCArgObject* %8
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

; Function Attrs: uwtable
define internal void @PyCArg_dealloc(%struct.tagPyCArgObject* %self) #0 {
entry:
  %self.addr = alloca %struct.tagPyCArgObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.tagPyCArgObject* %self, %struct.tagPyCArgObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %obj = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %1, %struct._object** %_py_xdecref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %10 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %11 = bitcast %struct.tagPyCArgObject* %10 to i8*
  call void @PyObject_Free(i8* %11)
  ret void
}

; Function Attrs: uwtable
define internal %struct._object* @PyCArg_repr(%struct.tagPyCArgObject* %self) #0 {
entry:
  %self.addr = alloca %struct.tagPyCArgObject*, align 8
  %buffer = alloca [256 x i8], align 16
  store %struct.tagPyCArgObject* %self, %struct.tagPyCArgObject** %self.addr, align 8
  %0 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %tag = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %0, i32 0, i32 2
  %1 = load i8, i8* %tag, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 98, label %sw.bb
    i32 66, label %sw.bb
    i32 104, label %sw.bb.4
    i32 72, label %sw.bb.4
    i32 105, label %sw.bb.11
    i32 73, label %sw.bb.11
    i32 108, label %sw.bb.17
    i32 76, label %sw.bb.17
    i32 113, label %sw.bb.23
    i32 81, label %sw.bb.23
    i32 100, label %sw.bb.29
    i32 102, label %sw.bb.35
    i32 99, label %sw.bb.42
    i32 122, label %sw.bb.49
    i32 90, label %sw.bb.49
    i32 80, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %entry, %entry
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %2 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %tag1 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %2, i32 0, i32 2
  %3 = load i8, i8* %tag1, align 1
  %conv2 = sext i8 %3 to i32
  %4 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %value = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %4, i32 0, i32 3
  %b = bitcast %union.anon* %value to i8*
  %5 = load i8, i8* %b, align 1
  %conv3 = sext i8 %5 to i32
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i32 %conv2, i32 %conv3) #2
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry, %entry
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %6 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %tag6 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %6, i32 0, i32 2
  %7 = load i8, i8* %tag6, align 1
  %conv7 = sext i8 %7 to i32
  %8 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %value8 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %8, i32 0, i32 3
  %h = bitcast %union.anon* %value8 to i16*
  %9 = load i16, i16* %h, align 2
  %conv9 = sext i16 %9 to i32
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i32 %conv7, i32 %conv9) #2
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry, %entry
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %10 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %tag13 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %10, i32 0, i32 2
  %11 = load i8, i8* %tag13, align 1
  %conv14 = sext i8 %11 to i32
  %12 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %value15 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %12, i32 0, i32 3
  %i = bitcast %union.anon* %value15 to i32*
  %13 = load i32, i32* %i, align 4
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i32 %conv14, i32 %13) #2
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry, %entry
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %14 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %tag19 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %14, i32 0, i32 2
  %15 = load i8, i8* %tag19, align 1
  %conv20 = sext i8 %15 to i32
  %16 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %value21 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %16, i32 0, i32 3
  %l = bitcast %union.anon* %value21 to i64*
  %17 = load i64, i64* %l, align 8
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i32 %conv20, i64 %17) #2
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry, %entry
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %18 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %tag25 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %18, i32 0, i32 2
  %19 = load i8, i8* %tag25, align 1
  %conv26 = sext i8 %19 to i32
  %20 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %value27 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %20, i32 0, i32 3
  %q = bitcast %union.anon* %value27 to i64*
  %21 = load i64, i64* %q, align 8
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i32 %conv26, i64 %21) #2
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %22 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %tag31 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %22, i32 0, i32 2
  %23 = load i8, i8* %tag31, align 1
  %conv32 = sext i8 %23 to i32
  %24 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %value33 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %24, i32 0, i32 3
  %d = bitcast %union.anon* %value33 to double*
  %25 = load double, double* %d, align 8
  %call34 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i32 %conv32, double %25) #2
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %arraydecay36 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %26 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %tag37 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %26, i32 0, i32 2
  %27 = load i8, i8* %tag37, align 1
  %conv38 = sext i8 %27 to i32
  %28 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %value39 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %28, i32 0, i32 3
  %f = bitcast %union.anon* %value39 to float*
  %29 = load float, float* %f, align 4
  %conv40 = fpext float %29 to double
  %call41 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i32 %conv38, double %conv40) #2
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  %arraydecay43 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %30 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %tag44 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %30, i32 0, i32 2
  %31 = load i8, i8* %tag44, align 1
  %conv45 = sext i8 %31 to i32
  %32 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %value46 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %32, i32 0, i32 3
  %c = bitcast %union.anon* %value46 to i8*
  %33 = load i8, i8* %c, align 1
  %conv47 = sext i8 %33 to i32
  %call48 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0), i32 %conv45, i32 %conv47) #2
  br label %sw.epilog

sw.bb.49:                                         ; preds = %entry, %entry, %entry
  %arraydecay50 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %34 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %tag51 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %34, i32 0, i32 2
  %35 = load i8, i8* %tag51, align 1
  %conv52 = sext i8 %35 to i32
  %36 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %value53 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %36, i32 0, i32 3
  %p = bitcast %union.anon* %value53 to i8**
  %37 = load i8*, i8** %p, align 8
  %call54 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i32 %conv52, i8* %37) #2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %arraydecay55 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %38 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %tag56 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %38, i32 0, i32 2
  %39 = load i8, i8* %tag56, align 1
  %conv57 = sext i8 %39 to i32
  %40 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %self.addr, align 8
  %call58 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i32 %conv57, %struct.tagPyCArgObject* %40) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.49, %sw.bb.42, %sw.bb.35, %sw.bb.29, %sw.bb.23, %sw.bb.17, %sw.bb.11, %sw.bb.4, %sw.bb
  %arraydecay59 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %call60 = call %struct._object* @PyUnicode_FromString(i8* %arraydecay59)
  ret %struct._object* %call60
}

; Function Attrs: uwtable
define %struct._ffi_type* @_ctypes_get_ffi_type(%struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._ffi_type*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._ffi_type* @ffi_type_sint32, %struct._ffi_type** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %1)
  store %struct.StgDictObject* %call, %struct.StgDictObject** %dict, align 8
  %2 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %cmp1 = icmp eq %struct.StgDictObject* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._ffi_type* @ffi_type_sint32, %struct._ffi_type** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %ffi_type_pointer = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %3, i32 0, i32 4
  store %struct._ffi_type* %ffi_type_pointer, %struct._ffi_type** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load %struct._ffi_type*, %struct._ffi_type** %retval
  ret %struct._ffi_type* %4
}

declare %struct.StgDictObject* @PyType_stgdict(%struct._object*) #1

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
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_xdecref_tmp48 = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  %_py_xdecref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  store %struct._object* %exc_class, %struct._object** %exc_class.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %call = call %struct._object* @PyUnicode_FromFormatV(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store %struct._object* %call, %struct._object** %s, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load %struct._object*, %struct._object** %s, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.end.80

if.end:                                           ; preds = %entry
  call void @PyErr_Fetch(%struct._object** %tp, %struct._object** %v, %struct._object** %tb)
  call void @PyErr_NormalizeException(%struct._object** %tp, %struct._object** %v, %struct._object** %tb)
  %2 = load %struct._object*, %struct._object** %tp, align 8
  %call5 = call %struct._object* @PyObject_Str(%struct._object* %2)
  store %struct._object* %call5, %struct._object** %cls_str, align 8
  %3 = load %struct._object*, %struct._object** %cls_str, align 8
  %tobool6 = icmp ne %struct._object* %3, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %cls_str, align 8
  call void @PyUnicode_AppendAndDel(%struct._object** %s, %struct._object* %4)
  %call8 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  call void @PyUnicode_AppendAndDel(%struct._object** %s, %struct._object* %call8)
  %5 = load %struct._object*, %struct._object** %s, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.7
  br label %error

if.end.10:                                        ; preds = %if.then.7
  br label %if.end.11

if.else:                                          ; preds = %if.end
  call void @PyErr_Clear()
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end.10
  %6 = load %struct._object*, %struct._object** %v, align 8
  %call12 = call %struct._object* @PyObject_Str(%struct._object* %6)
  store %struct._object* %call12, %struct._object** %msg_str, align 8
  %7 = load %struct._object*, %struct._object** %msg_str, align 8
  %tobool13 = icmp ne %struct._object* %7, null
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end.11
  %8 = load %struct._object*, %struct._object** %msg_str, align 8
  call void @PyUnicode_AppendAndDel(%struct._object** %s, %struct._object* %8)
  br label %if.end.17

if.else.15:                                       ; preds = %if.end.11
  call void @PyErr_Clear()
  %call16 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  call void @PyUnicode_AppendAndDel(%struct._object** %s, %struct._object* %call16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  %9 = load %struct._object*, %struct._object** %s, align 8
  %cmp18 = icmp eq %struct._object* %9, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  br label %error

if.end.20:                                        ; preds = %if.end.17
  %10 = load %struct._object*, %struct._object** %exc_class.addr, align 8
  %11 = load %struct._object*, %struct._object** %s, align 8
  call void @PyErr_SetObject(%struct._object* %10, %struct._object* %11)
  br label %error

error:                                            ; preds = %if.end.20, %if.then.19, %if.then.9
  br label %do.body

do.body:                                          ; preds = %error
  %12 = load %struct._object*, %struct._object** %tp, align 8
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp21 = icmp ne %struct._object* %13, null
  br i1 %cmp21, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %do.body
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.27
  br label %if.end.28

if.end.28:                                        ; preds = %do.end, %do.body
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  %21 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp31, align 8
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp31, align 8
  %cmp32 = icmp ne %struct._object* %22, null
  br i1 %cmp32, label %if.then.33, label %if.end.45

if.then.33:                                       ; preds = %do.body.30
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp31, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp35, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %25, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %28(%struct._object* %29)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %do.body.30
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %30 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp48, align 8
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp48, align 8
  %cmp49 = icmp ne %struct._object* %31, null
  br i1 %cmp49, label %if.then.50, label %if.end.62

if.then.50:                                       ; preds = %do.body.47
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.50
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp48, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp52, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt53, align 8
  %dec54 = add i64 %34, -1
  store i64 %dec54, i64* %ob_refcnt53, align 8
  %cmp55 = icmp ne i64 %dec54, 0
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.51
  br label %if.end.60

if.else.57:                                       ; preds = %do.body.51
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  call void %37(%struct._object* %38)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  br label %if.end.62

if.end.62:                                        ; preds = %do.end.61, %do.body.47
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %39 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %39, %struct._object** %_py_xdecref_tmp65, align 8
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp65, align 8
  %cmp66 = icmp ne %struct._object* %40, null
  br i1 %cmp66, label %if.then.67, label %if.end.79

if.then.67:                                       ; preds = %do.body.64
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.67
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp65, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp69, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %43, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.68
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  call void %46(%struct._object* %47)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.78, %do.body.64
  br label %do.end.80

do.end.80:                                        ; preds = %if.then, %if.end.79
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare %struct._object* @PyUnicode_FromFormatV(i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare void @PyErr_NormalizeException(%struct._object**, %struct._object**, %struct._object**) #1

declare %struct._object* @PyObject_Str(%struct._object*) #1

declare void @PyUnicode_AppendAndDel(%struct._object**, %struct._object*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare void @PyErr_Clear() #1

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

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
  %converter = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  store i32 ()* %pProc, i32 ()** %pProc.addr, align 8
  store %struct._object* %argtuple, %struct._object** %argtuple.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store %struct._object* %argtypes, %struct._object** %argtypes.addr, align 8
  store %struct._object* %restype, %struct._object** %restype.addr, align 8
  store %struct._object* %checker, %struct._object** %checker.addr, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load %struct._object*, %struct._object** %argtuple.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %argcount, align 8
  store i64 %2, i64* %n, align 8
  %3 = load i64, i64* %argcount, align 8
  %mul = mul i64 32, %3
  %4 = alloca i8, i64 %mul
  %5 = bitcast i8* %4 to %struct.argument*
  store %struct.argument* %5, %struct.argument** %args, align 8
  %6 = load %struct.argument*, %struct.argument** %args, align 8
  %tobool = icmp ne %struct.argument* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.argument*, %struct.argument** %args, align 8
  %8 = bitcast %struct.argument* %7 to i8*
  %9 = load i64, i64* %argcount, align 8
  %mul2 = mul i64 32, %9
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 %mul2, i32 16, i1 false)
  %10 = load %struct._object*, %struct._object** %argtypes.addr, align 8
  %tobool3 = icmp ne %struct._object* %10, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %argtypes.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %argtype_count, align 8
  %14 = load %struct.argument*, %struct.argument** %args, align 8
  %arrayidx = getelementptr %struct.argument, %struct.argument* %14, i64 0
  store %struct.argument* %arrayidx, %struct.argument** %pa, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i64, i64* %i, align 8
  %18 = load %struct._object*, %struct._object** %argtuple.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1
  %arrayidx5 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %17
  %20 = load %struct._object*, %struct._object** %arrayidx5, align 8
  store %struct._object* %20, %struct._object** %arg, align 8
  %21 = load %struct._object*, %struct._object** %argtypes.addr, align 8
  %tobool6 = icmp ne %struct._object* %21, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %for.body
  %22 = load i64, i64* %argtype_count, align 8
  %23 = load i64, i64* %i, align 8
  %cmp7 = icmp sgt i64 %22, %23
  br i1 %cmp7, label %if.then.8, label %if.else.24

if.then.8:                                        ; preds = %land.lhs.true
  %24 = load i64, i64* %i, align 8
  %25 = load %struct._object*, %struct._object** %argtypes.addr, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyTupleObject*
  %ob_item9 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %26, i32 0, i32 1
  %arrayidx10 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item9, i32 0, i64 %24
  %27 = load %struct._object*, %struct._object** %arrayidx10, align 8
  store %struct._object* %27, %struct._object** %converter, align 8
  %28 = load %struct._object*, %struct._object** %converter, align 8
  %29 = load %struct._object*, %struct._object** %arg, align 8
  %call11 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %28, %struct._object* %29, i8* null)
  store %struct._object* %call11, %struct._object** %v, align 8
  %30 = load %struct._object*, %struct._object** %v, align 8
  %cmp12 = icmp eq %struct._object* %30, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.8
  %31 = load %struct._object*, %struct._object** @PyExc_ArgError, align 8
  %32 = load i64, i64* %i, align 8
  %add = add i64 %32, 1
  call void (%struct._object*, i8*, ...) @_ctypes_extend_error(%struct._object* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 %add)
  br label %cleanup

if.end.14:                                        ; preds = %if.then.8
  %33 = load %struct._object*, %struct._object** %v, align 8
  %34 = load i64, i64* %i, align 8
  %add15 = add i64 %34, 1
  %35 = load %struct.argument*, %struct.argument** %pa, align 8
  %call16 = call i32 @ConvParam(%struct._object* %33, i64 %add15, %struct.argument* %35)
  store i32 %call16, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %36 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.19

if.else:                                          ; preds = %do.body
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %43 = load i32, i32* %err, align 4
  %cmp20 = icmp eq i32 -1, %43
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %do.end
  %44 = load %struct._object*, %struct._object** @PyExc_ArgError, align 8
  %45 = load i64, i64* %i, align 8
  %add22 = add i64 %45, 1
  call void (%struct._object*, i8*, ...) @_ctypes_extend_error(%struct._object* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 %add22)
  br label %cleanup

if.end.23:                                        ; preds = %do.end
  br label %if.end.31

if.else.24:                                       ; preds = %land.lhs.true, %for.body
  %46 = load %struct._object*, %struct._object** %arg, align 8
  %47 = load i64, i64* %i, align 8
  %add25 = add i64 %47, 1
  %48 = load %struct.argument*, %struct.argument** %pa, align 8
  %call26 = call i32 @ConvParam(%struct._object* %46, i64 %add25, %struct.argument* %48)
  store i32 %call26, i32* %err, align 4
  %49 = load i32, i32* %err, align 4
  %cmp27 = icmp eq i32 -1, %49
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.else.24
  %50 = load %struct._object*, %struct._object** @PyExc_ArgError, align 8
  %51 = load i64, i64* %i, align 8
  %add29 = add i64 %51, 1
  call void (%struct._object*, i8*, ...) @_ctypes_extend_error(%struct._object* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 %add29)
  br label %cleanup

if.end.30:                                        ; preds = %if.else.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %52 = load i64, i64* %i, align 8
  %inc = add i64 %52, 1
  store i64 %inc, i64* %i, align 8
  %53 = load %struct.argument*, %struct.argument** %pa, align 8
  %incdec.ptr = getelementptr %struct.argument, %struct.argument* %53, i32 1
  store %struct.argument* %incdec.ptr, %struct.argument** %pa, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load %struct._object*, %struct._object** %restype.addr, align 8
  %call32 = call %struct._ffi_type* @_ctypes_get_ffi_type(%struct._object* %54)
  store %struct._ffi_type* %call32, %struct._ffi_type** %rtype, align 8
  %55 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %55, i32 0, i32 0
  %56 = load i64, i64* %size, align 8
  %cmp33 = icmp ugt i64 %56, 8
  br i1 %cmp33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %for.end
  %57 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8
  %size35 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %57, i32 0, i32 0
  %58 = load i64, i64* %size35, align 8
  br label %cond.end.37

cond.false.36:                                    ; preds = %for.end
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.34
  %cond38 = phi i64 [ %58, %cond.true.34 ], [ 8, %cond.false.36 ]
  %59 = alloca i8, i64 %cond38
  store i8* %59, i8** %resbuf, align 8
  %60 = load i64, i64* %argcount, align 8
  %mul39 = mul i64 8, %60
  %61 = alloca i8, i64 %mul39
  %62 = bitcast i8* %61 to i8**
  store i8** %62, i8*** %avalues, align 8
  %63 = load i64, i64* %argcount, align 8
  %mul40 = mul i64 8, %63
  %64 = alloca i8, i64 %mul40
  %65 = bitcast i8* %64 to %struct._ffi_type**
  store %struct._ffi_type** %65, %struct._ffi_type*** %atypes, align 8
  %66 = load i8*, i8** %resbuf, align 8
  %tobool41 = icmp ne i8* %66, null
  br i1 %tobool41, label %lor.lhs.false, label %if.then.45

lor.lhs.false:                                    ; preds = %cond.end.37
  %67 = load i8**, i8*** %avalues, align 8
  %tobool42 = icmp ne i8** %67, null
  br i1 %tobool42, label %lor.lhs.false.43, label %if.then.45

lor.lhs.false.43:                                 ; preds = %lor.lhs.false
  %68 = load %struct._ffi_type**, %struct._ffi_type*** %atypes, align 8
  %tobool44 = icmp ne %struct._ffi_type** %68, null
  br i1 %tobool44, label %if.end.47, label %if.then.45

if.then.45:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false, %cond.end.37
  %call46 = call %struct._object* @PyErr_NoMemory()
  br label %cleanup

if.end.47:                                        ; preds = %lor.lhs.false.43
  store i64 0, i64* %i, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.64, %if.end.47
  %69 = load i64, i64* %i, align 8
  %70 = load i64, i64* %argcount, align 8
  %cmp49 = icmp slt i64 %69, %70
  br i1 %cmp49, label %for.body.50, label %for.end.66

for.body.50:                                      ; preds = %for.cond.48
  %71 = load i64, i64* %i, align 8
  %72 = load %struct.argument*, %struct.argument** %args, align 8
  %arrayidx51 = getelementptr %struct.argument, %struct.argument* %72, i64 %71
  %ffi_type = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx51, i32 0, i32 0
  %73 = load %struct._ffi_type*, %struct._ffi_type** %ffi_type, align 8
  %74 = load i64, i64* %i, align 8
  %75 = load %struct._ffi_type**, %struct._ffi_type*** %atypes, align 8
  %arrayidx52 = getelementptr %struct._ffi_type*, %struct._ffi_type** %75, i64 %74
  store %struct._ffi_type* %73, %struct._ffi_type** %arrayidx52, align 8
  %76 = load i64, i64* %i, align 8
  %77 = load %struct._ffi_type**, %struct._ffi_type*** %atypes, align 8
  %arrayidx53 = getelementptr %struct._ffi_type*, %struct._ffi_type** %77, i64 %76
  %78 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx53, align 8
  %type = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %78, i32 0, i32 2
  %79 = load i16, i16* %type, align 2
  %conv = zext i16 %79 to i32
  %cmp54 = icmp eq i32 %conv, 13
  br i1 %cmp54, label %if.then.56, label %if.else.59

if.then.56:                                       ; preds = %for.body.50
  %80 = load i64, i64* %i, align 8
  %81 = load %struct.argument*, %struct.argument** %args, align 8
  %arrayidx57 = getelementptr %struct.argument, %struct.argument* %81, i64 %80
  %value = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx57, i32 0, i32 2
  %p = bitcast %union.result* %value to i8**
  %82 = load i8*, i8** %p, align 8
  %83 = load i64, i64* %i, align 8
  %84 = load i8**, i8*** %avalues, align 8
  %arrayidx58 = getelementptr i8*, i8** %84, i64 %83
  store i8* %82, i8** %arrayidx58, align 8
  br label %if.end.63

if.else.59:                                       ; preds = %for.body.50
  %85 = load i64, i64* %i, align 8
  %86 = load %struct.argument*, %struct.argument** %args, align 8
  %arrayidx60 = getelementptr %struct.argument, %struct.argument* %86, i64 %85
  %value61 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx60, i32 0, i32 2
  %87 = bitcast %union.result* %value61 to i8*
  %88 = load i64, i64* %i, align 8
  %89 = load i8**, i8*** %avalues, align 8
  %arrayidx62 = getelementptr i8*, i8** %89, i64 %88
  store i8* %87, i8** %arrayidx62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.59, %if.then.56
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %90 = load i64, i64* %i, align 8
  %inc65 = add i64 %90, 1
  store i64 %inc65, i64* %i, align 8
  br label %for.cond.48

for.end.66:                                       ; preds = %for.cond.48
  %91 = load i32, i32* %flags.addr, align 4
  %92 = load i32 ()*, i32 ()** %pProc.addr, align 8
  %93 = load i8**, i8*** %avalues, align 8
  %94 = load %struct._ffi_type**, %struct._ffi_type*** %atypes, align 8
  %95 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8
  %96 = load i8*, i8** %resbuf, align 8
  %97 = load i64, i64* %argcount, align 8
  %conv67 = trunc i64 %97 to i32
  %call68 = call i32 @_call_function_pointer(i32 %91, i32 ()* %92, i8** %93, %struct._ffi_type** %94, %struct._ffi_type* %95, i8* %96, i32 %conv67)
  %cmp69 = icmp eq i32 -1, %call68
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.end.66
  br label %cleanup

if.end.72:                                        ; preds = %for.end.66
  %98 = load %struct._object*, %struct._object** %restype.addr, align 8
  %99 = load i8*, i8** %resbuf, align 8
  %100 = load %struct._object*, %struct._object** %checker.addr, align 8
  %call73 = call %struct._object* @GetResult(%struct._object* %98, i8* %99, %struct._object* %100)
  store %struct._object* %call73, %struct._object** %retval1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.72, %if.then.71, %if.then.45, %if.then.28, %if.then.21, %if.then.13
  store i64 0, i64* %i, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.97, %cleanup
  %101 = load i64, i64* %i, align 8
  %102 = load i64, i64* %argcount, align 8
  %cmp75 = icmp slt i64 %101, %102
  br i1 %cmp75, label %for.body.77, label %for.end.99

for.body.77:                                      ; preds = %for.cond.74
  br label %do.body.78

do.body.78:                                       ; preds = %for.body.77
  %103 = load i64, i64* %i, align 8
  %104 = load %struct.argument*, %struct.argument** %args, align 8
  %arrayidx79 = getelementptr %struct.argument, %struct.argument* %104, i64 %103
  %keep = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx79, i32 0, i32 1
  %105 = load %struct._object*, %struct._object** %keep, align 8
  store %struct._object* %105, %struct._object** %_py_xdecref_tmp, align 8
  %106 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp80 = icmp ne %struct._object* %106, null
  br i1 %cmp80, label %if.then.82, label %if.end.95

if.then.82:                                       ; preds = %do.body.78
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.82
  %107 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %107, %struct._object** %_py_decref_tmp84, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 0
  %109 = load i64, i64* %ob_refcnt85, align 8
  %dec86 = add i64 %109, -1
  store i64 %dec86, i64* %ob_refcnt85, align 8
  %cmp87 = icmp ne i64 %dec86, 0
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.83
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.83
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 4
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  call void %112(%struct._object* %113)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %do.body.78
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  br label %for.inc.97

for.inc.97:                                       ; preds = %do.end.96
  %114 = load i64, i64* %i, align 8
  %inc98 = add i64 %114, 1
  store i64 %inc98, i64* %i, align 8
  br label %for.cond.74

for.end.99:                                       ; preds = %for.cond.74
  %115 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %115, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.99, %if.then
  %116 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %116
}

declare %struct._object* @PyErr_NoMemory() #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

; Function Attrs: uwtable
define internal i32 @ConvParam(%struct._object* %obj, i64 %index, %struct.argument* %pa) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %index.addr = alloca i64, align 8
  %pa.addr = alloca %struct.argument*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %carg = alloca %struct.tagPyCArgObject*, align 8
  %carg8 = alloca %struct.tagPyCArgObject*, align 8
  %arg = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  store %struct.argument* %pa, %struct.argument** %pa.addr, align 8
  %0 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %keep = getelementptr inbounds %struct.argument, %struct.argument* %0, i32 0, i32 1
  store %struct._object* null, %struct._object** %keep, align 8
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct.StgDictObject* @PyObject_stgdict(%struct._object* %1)
  store %struct.StgDictObject* %call, %struct.StgDictObject** %dict, align 8
  %2 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %tobool = icmp ne %struct.StgDictObject* %2, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %paramfunc = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %3, i32 0, i32 8
  %4 = load %struct.tagPyCArgObject* (%struct.tagCDataObject*)*, %struct.tagPyCArgObject* (%struct.tagCDataObject*)** %paramfunc, align 8
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.tagCDataObject*
  %call1 = call %struct.tagPyCArgObject* %4(%struct.tagCDataObject* %6)
  store %struct.tagPyCArgObject* %call1, %struct.tagPyCArgObject** %carg, align 8
  %7 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %carg, align 8
  %cmp = icmp eq %struct.tagPyCArgObject* %7, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %carg, align 8
  %pffi_type = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %8, i32 0, i32 1
  %9 = load %struct._ffi_type*, %struct._ffi_type** %pffi_type, align 8
  %10 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %ffi_type = getelementptr inbounds %struct.argument, %struct.argument* %10, i32 0, i32 0
  store %struct._ffi_type* %9, %struct._ffi_type** %ffi_type, align 8
  %11 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %value = getelementptr inbounds %struct.argument, %struct.argument* %11, i32 0, i32 2
  %12 = bitcast %union.result* %value to i8*
  %13 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %carg, align 8
  %value3 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %13, i32 0, i32 3
  %14 = bitcast %union.anon* %value3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %14, i64 16, i32 16, i1 false)
  %15 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %carg, align 8
  %16 = bitcast %struct.tagPyCArgObject* %15 to %struct._object*
  %17 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %keep4 = getelementptr inbounds %struct.argument, %struct.argument* %17, i32 0, i32 1
  store %struct._object* %16, %struct._object** %keep4, align 8
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %entry
  %18 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp6 = icmp eq %struct._typeobject* %19, @PyCArg_Type
  br i1 %cmp6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end.5
  %20 = load %struct._object*, %struct._object** %obj.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.tagPyCArgObject*
  store %struct.tagPyCArgObject* %21, %struct.tagPyCArgObject** %carg8, align 8
  %22 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %carg8, align 8
  %pffi_type9 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %22, i32 0, i32 1
  %23 = load %struct._ffi_type*, %struct._ffi_type** %pffi_type9, align 8
  %24 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %ffi_type10 = getelementptr inbounds %struct.argument, %struct.argument* %24, i32 0, i32 0
  store %struct._ffi_type* %23, %struct._ffi_type** %ffi_type10, align 8
  %25 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %27 = load %struct._object*, %struct._object** %obj.addr, align 8
  %28 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %keep11 = getelementptr inbounds %struct.argument, %struct.argument* %28, i32 0, i32 1
  store %struct._object* %27, %struct._object** %keep11, align 8
  %29 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %value12 = getelementptr inbounds %struct.argument, %struct.argument* %29, i32 0, i32 2
  %30 = bitcast %union.result* %value12 to i8*
  %31 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %carg8, align 8
  %value13 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %31, i32 0, i32 3
  %32 = bitcast %union.anon* %value13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %32, i64 16, i32 16, i1 false)
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.5
  %33 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp15 = icmp eq %struct._object* %33, @_Py_NoneStruct
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.14
  %34 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %ffi_type17 = getelementptr inbounds %struct.argument, %struct.argument* %34, i32 0, i32 0
  store %struct._ffi_type* @ffi_type_pointer, %struct._ffi_type** %ffi_type17, align 8
  %35 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %value18 = getelementptr inbounds %struct.argument, %struct.argument* %35, i32 0, i32 2
  %p = bitcast %union.result* %value18 to i8**
  store i8* null, i8** %p, align 8
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.14
  %36 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 19
  %38 = load i64, i64* %tp_flags, align 8
  %and = and i64 %38, 16777216
  %cmp21 = icmp ne i64 %and, 0
  br i1 %cmp21, label %if.then.22, label %if.end.47

if.then.22:                                       ; preds = %if.end.19
  %39 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %ffi_type23 = getelementptr inbounds %struct.argument, %struct.argument* %39, i32 0, i32 0
  store %struct._ffi_type* @ffi_type_sint32, %struct._ffi_type** %ffi_type23, align 8
  %40 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call24 = call i64 @PyLong_AsUnsignedLong(%struct._object* %40)
  %conv = trunc i64 %call24 to i32
  %41 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %value25 = getelementptr inbounds %struct.argument, %struct.argument* %41, i32 0, i32 2
  %i = bitcast %union.result* %value25 to i32*
  store i32 %conv, i32* %i, align 4
  %42 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %value26 = getelementptr inbounds %struct.argument, %struct.argument* %42, i32 0, i32 2
  %i27 = bitcast %union.result* %value26 to i32*
  %43 = load i32, i32* %i27, align 4
  %cmp28 = icmp eq i32 %43, -1
  br i1 %cmp28, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %if.then.22
  %call30 = call %struct._object* @PyErr_Occurred()
  %tobool31 = icmp ne %struct._object* %call30, null
  br i1 %tobool31, label %if.then.32, label %if.end.46

if.then.32:                                       ; preds = %land.lhs.true
  call void @PyErr_Clear()
  %44 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call33 = call i64 @PyLong_AsLong(%struct._object* %44)
  %conv34 = trunc i64 %call33 to i32
  %45 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %value35 = getelementptr inbounds %struct.argument, %struct.argument* %45, i32 0, i32 2
  %i36 = bitcast %union.result* %value35 to i32*
  store i32 %conv34, i32* %i36, align 4
  %46 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %value37 = getelementptr inbounds %struct.argument, %struct.argument* %46, i32 0, i32 2
  %i38 = bitcast %union.result* %value37 to i32*
  %47 = load i32, i32* %i38, align 4
  %cmp39 = icmp eq i32 %47, -1
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.45

land.lhs.true.41:                                 ; preds = %if.then.32
  %call42 = call %struct._object* @PyErr_Occurred()
  %tobool43 = icmp ne %struct._object* %call42, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.41
  %48 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %land.lhs.true.41, %if.then.32
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true, %if.then.22
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.19
  %49 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_flags49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 19
  %51 = load i64, i64* %tp_flags49, align 8
  %and50 = and i64 %51, 134217728
  %cmp51 = icmp ne i64 %and50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.61

if.then.53:                                       ; preds = %if.end.47
  %52 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %ffi_type54 = getelementptr inbounds %struct.argument, %struct.argument* %52, i32 0, i32 0
  store %struct._ffi_type* @ffi_type_pointer, %struct._ffi_type** %ffi_type54, align 8
  %53 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call55 = call i8* @PyBytes_AsString(%struct._object* %53)
  %54 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %value56 = getelementptr inbounds %struct.argument, %struct.argument* %54, i32 0, i32 2
  %p57 = bitcast %union.result* %value56 to i8**
  store i8* %call55, i8** %p57, align 8
  %55 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt58, align 8
  %inc59 = add i64 %56, 1
  store i64 %inc59, i64* %ob_refcnt58, align 8
  %57 = load %struct._object*, %struct._object** %obj.addr, align 8
  %58 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %keep60 = getelementptr inbounds %struct.argument, %struct.argument* %58, i32 0, i32 1
  store %struct._object* %57, %struct._object** %keep60, align 8
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.47
  %59 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_flags63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 19
  %61 = load i64, i64* %tp_flags63, align 8
  %and64 = and i64 %61, 268435456
  %cmp65 = icmp ne i64 %and64, 0
  br i1 %cmp65, label %if.then.67, label %if.end.88

if.then.67:                                       ; preds = %if.end.61
  %62 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %ffi_type68 = getelementptr inbounds %struct.argument, %struct.argument* %62, i32 0, i32 0
  store %struct._ffi_type* @ffi_type_pointer, %struct._ffi_type** %ffi_type68, align 8
  %63 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call69 = call i32* @PyUnicode_AsWideCharString(%struct._object* %63, i64* null)
  %64 = bitcast i32* %call69 to i8*
  %65 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %value70 = getelementptr inbounds %struct.argument, %struct.argument* %65, i32 0, i32 2
  %p71 = bitcast %union.result* %value70 to i8**
  store i8* %64, i8** %p71, align 8
  %66 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %value72 = getelementptr inbounds %struct.argument, %struct.argument* %66, i32 0, i32 2
  %p73 = bitcast %union.result* %value72 to i8**
  %67 = load i8*, i8** %p73, align 8
  %cmp74 = icmp eq i8* %67, null
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.67
  store i32 -1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.then.67
  %68 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %value78 = getelementptr inbounds %struct.argument, %struct.argument* %68, i32 0, i32 2
  %p79 = bitcast %union.result* %value78 to i8**
  %69 = load i8*, i8** %p79, align 8
  %call80 = call %struct._object* @PyCapsule_New(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (%struct._object*)* @pymem_destructor)
  %70 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %keep81 = getelementptr inbounds %struct.argument, %struct.argument* %70, i32 0, i32 1
  store %struct._object* %call80, %struct._object** %keep81, align 8
  %71 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %keep82 = getelementptr inbounds %struct.argument, %struct.argument* %71, i32 0, i32 1
  %72 = load %struct._object*, %struct._object** %keep82, align 8
  %tobool83 = icmp ne %struct._object* %72, null
  br i1 %tobool83, label %if.end.87, label %if.then.84

if.then.84:                                       ; preds = %if.end.77
  %73 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %value85 = getelementptr inbounds %struct.argument, %struct.argument* %73, i32 0, i32 2
  %p86 = bitcast %union.result* %value85 to i8**
  %74 = load i8*, i8** %p86, align 8
  call void @PyMem_Free(i8* %74)
  store i32 -1, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.end.77
  store i32 0, i32* %retval
  br label %return

if.end.88:                                        ; preds = %if.end.61
  %75 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call89 = call %struct._object* @PyObject_GetAttrString(%struct._object* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0))
  store %struct._object* %call89, %struct._object** %arg, align 8
  %76 = load %struct._object*, %struct._object** %arg, align 8
  %tobool90 = icmp ne %struct._object* %76, null
  br i1 %tobool90, label %if.then.91, label %if.end.99

if.then.91:                                       ; preds = %if.end.88
  %77 = load %struct._object*, %struct._object** %arg, align 8
  %78 = load i64, i64* %index.addr, align 8
  %79 = load %struct.argument*, %struct.argument** %pa.addr, align 8
  %call92 = call i32 @ConvParam(%struct._object* %77, i64 %78, %struct.argument* %79)
  store i32 %call92, i32* %result, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.91
  %80 = load %struct._object*, %struct._object** %arg, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt93, align 8
  %dec = add i64 %82, -1
  store i64 %dec, i64* %ob_refcnt93, align 8
  %cmp94 = icmp ne i64 %dec, 0
  br i1 %cmp94, label %if.then.96, label %if.else

if.then.96:                                       ; preds = %do.body
  br label %if.end.98

if.else:                                          ; preds = %do.body
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %85(%struct._object* %86)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else, %if.then.96
  br label %do.end

do.end:                                           ; preds = %if.end.98
  %87 = load i32, i32* %result, align 4
  store i32 %87, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.end.88
  %88 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %89 = load i64, i64* %index.addr, align 8
  %conv100 = trunc i64 %89 to i32
  %call101 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0), i32 %conv100)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.99, %do.end, %if.end.87, %if.then.84, %if.then.76, %if.then.53, %if.end.46, %if.then.44, %if.then.16, %if.then.7, %if.end, %if.then.2
  %90 = load i32, i32* %retval
  ret i32 %90
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
  %temp = alloca i32, align 4
  %temp25 = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 ()* %pProc, i32 ()** %pProc.addr, align 8
  store i8** %avalues, i8*** %avalues.addr, align 8
  store %struct._ffi_type** %atypes, %struct._ffi_type*** %atypes.addr, align 8
  store %struct._ffi_type* %restype, %struct._ffi_type** %restype.addr, align 8
  store i8* %resmem, i8** %resmem.addr, align 8
  store i32 %argcount, i32* %argcount.addr, align 4
  store %struct._ts* null, %struct._ts** %_save, align 8
  store %struct._object* null, %struct._object** %error_object, align 8
  %0 = load %struct._ffi_type*, %struct._ffi_type** %restype.addr, align 8
  %cmp = icmp eq %struct._ffi_type* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 2, i32* %cc, align 4
  %2 = load i32, i32* %cc, align 4
  %3 = load i32, i32* %argcount.addr, align 4
  %4 = load %struct._ffi_type*, %struct._ffi_type** %restype.addr, align 8
  %5 = load %struct._ffi_type**, %struct._ffi_type*** %atypes.addr, align 8
  %call = call i32 @ffi_prep_cif(%struct.ffi_cif* %cif, i32 %2, i32 %3, %struct._ffi_type* %4, %struct._ffi_type** %5)
  %cmp1 = icmp ne i32 0, %call
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load i32, i32* %flags.addr, align 4
  %and = and i32 %7, 24
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end.3
  %call5 = call %struct._object* @_ctypes_get_errobj(i32** %space)
  store %struct._object* %call5, %struct._object** %error_object, align 8
  %8 = load %struct._object*, %struct._object** %error_object, align 8
  %cmp6 = icmp eq %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end.3
  %9 = load i32, i32* %flags.addr, align 4
  %and10 = and i32 %9, 4
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %call13 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call13, %struct._ts** %_save, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %10 = load i32, i32* %flags.addr, align 4
  %and15 = and i32 %10, 8
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.14
  %11 = load i32*, i32** %space, align 8
  %arrayidx = getelementptr i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx, align 4
  store i32 %12, i32* %temp, align 4
  %call18 = call i32* @__errno_location() #7
  %13 = load i32, i32* %call18, align 4
  %14 = load i32*, i32** %space, align 8
  %arrayidx19 = getelementptr i32, i32* %14, i64 0
  store i32 %13, i32* %arrayidx19, align 4
  %15 = load i32, i32* %temp, align 4
  %call20 = call i32* @__errno_location() #7
  store i32 %15, i32* %call20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end.14
  %16 = load i32 ()*, i32 ()** %pProc.addr, align 8
  %17 = bitcast i32 ()* %16 to i8*
  %18 = bitcast i8* %17 to void ()*
  %19 = load i8*, i8** %resmem.addr, align 8
  %20 = load i8**, i8*** %avalues.addr, align 8
  call void @ffi_call(%struct.ffi_cif* %cif, void ()* %18, i8* %19, i8** %20)
  %21 = load i32, i32* %flags.addr, align 4
  %and22 = and i32 %21, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.end.21
  %22 = load i32*, i32** %space, align 8
  %arrayidx26 = getelementptr i32, i32* %22, i64 0
  %23 = load i32, i32* %arrayidx26, align 4
  store i32 %23, i32* %temp25, align 4
  %call27 = call i32* @__errno_location() #7
  %24 = load i32, i32* %call27, align 4
  %25 = load i32*, i32** %space, align 8
  %arrayidx28 = getelementptr i32, i32* %25, i64 0
  store i32 %24, i32* %arrayidx28, align 4
  %26 = load i32, i32* %temp25, align 4
  %call29 = call i32* @__errno_location() #7
  store i32 %26, i32* %call29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.24, %if.end.21
  %27 = load i32, i32* %flags.addr, align 4
  %and31 = and i32 %27, 4
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  %28 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %28)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  br label %do.body

do.body:                                          ; preds = %if.end.34
  %29 = load %struct._object*, %struct._object** %error_object, align 8
  store %struct._object* %29, %struct._object** %_py_xdecref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp35 = icmp ne %struct._object* %30, null
  br i1 %cmp35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %do.body
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %33, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp38 = icmp ne i64 %dec, 0
  br i1 %cmp38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %do.body.37
  br label %if.end.40

if.else:                                          ; preds = %do.body.37
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %36(%struct._object* %37)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.then.39
  br label %do.end

do.end:                                           ; preds = %if.end.40
  br label %if.end.41

if.end.41:                                        ; preds = %do.end, %do.body
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %38 = load i32, i32* %flags.addr, align 4
  %and43 = and i32 %38, 4
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %do.end.42
  %call45 = call %struct._object* @PyErr_Occurred()
  %tobool46 = icmp ne %struct._object* %call45, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %land.lhs.true, %do.end.42
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.47, %if.then.7, %if.then.2, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  store %struct._object* %restype, %struct._object** %restype.addr, align 8
  store i8* %result, i8** %result.addr, align 8
  store %struct._object* %checker, %struct._object** %checker.addr, align 8
  %0 = load %struct._object*, %struct._object** %restype.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %result.addr, align 8
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  %conv = sext i32 %3 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %restype.addr, align 8
  %cmp2 = icmp eq %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %restype.addr, align 8
  %call6 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %6)
  store %struct.StgDictObject* %call6, %struct.StgDictObject** %dict, align 8
  %7 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %cmp7 = icmp eq %struct.StgDictObject* %7, null
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.5
  %8 = load %struct._object*, %struct._object** %restype.addr, align 8
  %9 = load i8*, i8** %result.addr, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %call10 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i32 %11)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.5
  %12 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %getfunc = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %12, i32 0, i32 7
  %13 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc, align 8
  %tobool = icmp ne %struct._object* (i8*, i64)* %13, null
  br i1 %tobool, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %restype.addr, align 8
  %call12 = call i32 @_ctypes_simple_instance(%struct._object* %14)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else.28, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  %15 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %getfunc15 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %15, i32 0, i32 7
  %16 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc15, align 8
  %17 = load i8*, i8** %result.addr, align 8
  %18 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %18, i32 0, i32 1
  %19 = load i64, i64* %size, align 8
  %call16 = call %struct._object* %16(i8* %17, i64 %19)
  store %struct._object* %call16, %struct._object** %retval1, align 8
  %20 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %getfunc17 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %20, i32 0, i32 7
  %21 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc17, align 8
  %call18 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0))
  %getfunc19 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call18, i32 0, i32 2
  %22 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc19, align 8
  %cmp20 = icmp eq %struct._object* (i8*, i64)* %21, %22
  br i1 %cmp20, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.then.14
  br label %do.body

do.body:                                          ; preds = %if.then.22
  %23 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %do.body
  br label %if.end.26

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.26
  br label %if.end.27

if.end.27:                                        ; preds = %do.end, %if.then.14
  br label %if.end.30

if.else.28:                                       ; preds = %land.lhs.true, %if.end.11
  %30 = load %struct._object*, %struct._object** %restype.addr, align 8
  %31 = load i8*, i8** %result.addr, align 8
  %call29 = call %struct._object* @PyCData_FromBaseObj(%struct._object* %30, %struct._object* null, i64 0, i8* %31)
  store %struct._object* %call29, %struct._object** %retval1, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.end.27
  %32 = load %struct._object*, %struct._object** %checker.addr, align 8
  %tobool31 = icmp ne %struct._object* %32, null
  br i1 %tobool31, label %lor.lhs.false, label %if.then.33

lor.lhs.false:                                    ; preds = %if.end.30
  %33 = load %struct._object*, %struct._object** %retval1, align 8
  %tobool32 = icmp ne %struct._object* %33, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %lor.lhs.false, %if.end.30
  %34 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %34, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false
  %35 = load %struct._object*, %struct._object** %checker.addr, align 8
  %36 = load %struct._object*, %struct._object** %retval1, align 8
  %call35 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %35, %struct._object* %36, i8* null)
  store %struct._object* %call35, %struct._object** %v, align 8
  %37 = load %struct._object*, %struct._object** %v, align 8
  %cmp36 = icmp eq %struct._object* %37, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.34
  call void @_ctypes_add_traceback(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), i32 920)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.34
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.39
  %38 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp41, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %40, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.40
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.40
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %43(%struct._object* %44)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %45 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %45, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.51, %if.then.33, %if.then.9, %if.then.4, %if.then
  %46 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %46
}

; Function Attrs: uwtable
define internal %struct._object* @get_errno(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @get_error_internal(%struct._object* %0, %struct._object* %1, i32 0)
  ret %struct._object* %call
}

; Function Attrs: uwtable
define internal %struct._object* @set_errno(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @set_error_internal(%struct._object* %0, %struct._object* %1, i32 0)
  ret %struct._object* %call
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
  %name = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  %0 = load %struct._object*, %struct._object** @_ctypes_ptrtype_cache, align 8
  %1 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %result, align 8
  %2 = load %struct._object*, %struct._object** %result, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %cls.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %7, @PyUnicode_Type
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call2 = call i8* @PyUnicode_AsUTF8(%struct._object* %8)
  store i8* %call2, i8** %name, align 8
  %9 = load i8*, i8** %name, align 8
  %call3 = call i64 @strlen(i8* %9) #8
  %add = add i64 %call3, 3
  %add4 = add i64 %add, 1
  %10 = alloca i8, i64 %add4
  store i8* %10, i8** %buf, align 8
  %11 = load i8*, i8** %buf, align 8
  %12 = load i8*, i8** %name, align 8
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* %12) #2
  %13 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCPointer_Type, i32 0, i32 0, i32 0, i32 1), align 8
  %14 = bitcast %struct._typeobject* %13 to %struct._object*
  %15 = load i8*, i8** %buf, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* %15, %struct._typeobject* @PyCPointer_Type)
  store %struct._object* %call6, %struct._object** %result, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  %cmp7 = icmp eq %struct._object* %16, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.1
  %17 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.1
  %18 = load %struct._object*, %struct._object** %result, align 8
  %19 = bitcast %struct._object* %18 to i8*
  %call10 = call %struct._object* @PyLong_FromVoidPtr(i8* %19)
  store %struct._object* %call10, %struct._object** %key, align 8
  br label %if.end.27

if.else:                                          ; preds = %if.end
  %20 = load %struct._object*, %struct._object** %cls.addr, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19
  %22 = load i64, i64* %tp_flags, align 8
  %and = and i64 %22, 2147483648
  %cmp12 = icmp ne i64 %and, 0
  br i1 %cmp12, label %if.then.13, label %if.else.25

if.then.13:                                       ; preds = %if.else
  %23 = load %struct._object*, %struct._object** %cls.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._typeobject*
  store %struct._typeobject* %24, %struct._typeobject** %typ, align 8
  %25 = load %struct._typeobject*, %struct._typeobject** %typ, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 1
  %26 = load i8*, i8** %tp_name, align 8
  %call14 = call i64 @strlen(i8* %26) #8
  %add15 = add i64 %call14, 3
  %add16 = add i64 %add15, 1
  %27 = alloca i8, i64 %add16
  store i8* %27, i8** %buf, align 8
  %28 = load i8*, i8** %buf, align 8
  %29 = load %struct._typeobject*, %struct._typeobject** %typ, align 8
  %tp_name17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 1
  %30 = load i8*, i8** %tp_name17, align 8
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* %30) #2
  %31 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCPointer_Type, i32 0, i32 0, i32 0, i32 1), align 8
  %32 = bitcast %struct._typeobject* %31 to %struct._object*
  %33 = load i8*, i8** %buf, align 8
  %34 = load %struct._object*, %struct._object** %cls.addr, align 8
  %call19 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8* %33, %struct._typeobject* @PyCPointer_Type, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), %struct._object* %34)
  store %struct._object* %call19, %struct._object** %result, align 8
  %35 = load %struct._object*, %struct._object** %result, align 8
  %cmp20 = icmp eq %struct._object* %35, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.13
  %36 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %36, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.13
  %37 = load %struct._object*, %struct._object** %cls.addr, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt23, align 8
  %inc24 = add i64 %38, 1
  store i64 %inc24, i64* %ob_refcnt23, align 8
  %39 = load %struct._object*, %struct._object** %cls.addr, align 8
  store %struct._object* %39, %struct._object** %key, align 8
  br label %if.end.26

if.else.25:                                       ; preds = %if.else
  %40 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.9
  %41 = load %struct._object*, %struct._object** @_ctypes_ptrtype_cache, align 8
  %42 = load %struct._object*, %struct._object** %key, align 8
  %43 = load %struct._object*, %struct._object** %result, align 8
  %call28 = call i32 @PyDict_SetItem(%struct._object* %41, %struct._object* %42, %struct._object* %43)
  %cmp29 = icmp eq i32 -1, %call28
  br i1 %cmp29, label %if.then.30, label %if.end.48

if.then.30:                                       ; preds = %if.end.27
  br label %do.body

do.body:                                          ; preds = %if.then.30
  %44 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt31, align 8
  %dec = add i64 %46, -1
  store i64 %dec, i64* %ob_refcnt31, align 8
  %cmp32 = icmp ne i64 %dec, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body
  br label %if.end.36

if.else.34:                                       ; preds = %do.body
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %49(%struct._object* %50)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end

do.end:                                           ; preds = %if.end.36
  br label %do.body.37

do.body.37:                                       ; preds = %do.end
  %51 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp38, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %53, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %56(%struct._object* %57)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.48:                                        ; preds = %if.end.27
  br label %do.body.49

do.body.49:                                       ; preds = %if.end.48
  %58 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp50, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %60, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.49
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %63(%struct._object* %64)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %65 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %65, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.59, %do.end.47, %if.else.25, %if.then.21, %if.then.8, %if.then
  %66 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %66
}

; Function Attrs: uwtable
define internal %struct._object* @pointer(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %typ = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** @_ctypes_ptrtype_cache, align 8
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = bitcast %struct._typeobject* %2 to %struct._object*
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %0, %struct._object* %3)
  store %struct._object* %call, %struct._object** %typ, align 8
  %4 = load %struct._object*, %struct._object** %typ, align 8
  %tobool = icmp ne %struct._object* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %typ, align 8
  %6 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call1 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %5, %struct._object* %6, i8* null)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %9 = bitcast %struct._typeobject* %8 to %struct._object*
  %call3 = call %struct._object* @POINTER(%struct._object* null, %struct._object* %9)
  store %struct._object* %call3, %struct._object** %typ, align 8
  %10 = load %struct._object*, %struct._object** %typ, align 8
  %cmp = icmp eq %struct._object* %10, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %typ, align 8
  %12 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call6 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %11, %struct._object* %12, i8* null)
  store %struct._object* %call6, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %13 = load %struct._object*, %struct._object** %typ, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %20 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), %struct._object** %typ, %struct._object** %state)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %typ, align 8
  %2 = load %struct._object*, %struct._object** %typ, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @unpickle.PyId___new__, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), %struct._object* %2)
  store %struct._object* %call1, %struct._object** %result, align 8
  %3 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %result, align 8
  %5 = load %struct._object*, %struct._object** %state, align 8
  %call4 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %4, %struct._Py_Identifier* @unpickle.PyId___setstate__, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), %struct._object* %5)
  store %struct._object* %call4, %struct._object** %tmp, align 8
  %6 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp5 = icmp eq %struct._object* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %7 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.3
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp14, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %16, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.12
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.12
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %19(%struct._object* %20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %21 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.23, %do.end, %if.then.2, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %0)
  store %struct.StgDictObject* %call, %struct.StgDictObject** %dict, align 8
  %1 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %cmp = icmp eq %struct.StgDictObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call1 = call %struct.StgDictObject* @PyObject_stgdict(%struct._object* %2)
  store %struct.StgDictObject* %call1, %struct.StgDictObject** %dict, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %cmp2 = icmp eq %struct.StgDictObject* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.58, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %ndim = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %5, i32 0, i32 15
  %6 = load i32, i32* %ndim, align 4
  %conv = sext i32 %6 to i64
  %call5 = call %struct._object* @PyTuple_New(i64 %conv)
  store %struct._object* %call5, %struct._object** %shape, align 8
  %7 = load %struct._object*, %struct._object** %shape, align 8
  %cmp6 = icmp eq %struct._object* %7, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %ndim10 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %9, i32 0, i32 15
  %10 = load i32, i32* %ndim10, align 4
  %conv11 = sext i32 %10 to i64
  %cmp12 = icmp slt i64 %8, %conv11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %shape14 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %12, i32 0, i32 16
  %13 = load i64*, i64** %shape14, align 8
  %arrayidx = getelementptr i64, i64* %13, i64 %11
  %14 = load i64, i64* %arrayidx, align 8
  %call15 = call %struct._object* @PyLong_FromSsize_t(i64 %14)
  %15 = load i64, i64* %i, align 8
  %16 = load %struct._object*, %struct._object** %shape, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %15
  store %struct._object* %call15, %struct._object** %arrayidx16, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call17 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call17, null
  br i1 %tobool, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %19 = load %struct._object*, %struct._object** %shape, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body
  br label %if.end.22

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %for.end
  %26 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %format = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %26, i32 0, i32 14
  %27 = load i8*, i8** %format, align 8
  %28 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %ndim24 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %28, i32 0, i32 15
  %29 = load i32, i32* %ndim24, align 4
  %30 = load %struct._object*, %struct._object** %shape, align 8
  %call25 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* %27, i32 %29, %struct._object* %30)
  store %struct._object* %call25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %do.end, %if.then.8, %if.then.3
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
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
  %ptr = alloca i8*, align 8
  %ptr28 = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), %struct.tagCDataObject** %obj, i64* %size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %2 = bitcast %struct.tagCDataObject* %1 to %struct._object*
  %call1 = call %struct.StgDictObject* @PyObject_stgdict(%struct._object* %2)
  store %struct.StgDictObject* %call1, %struct.StgDictObject** %dict, align 8
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %cmp = icmp eq %struct.StgDictObject* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i64, i64* %size, align 8
  %6 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size4 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %6, i32 0, i32 1
  %7 = load i64, i64* %size4, align 8
  %cmp5 = icmp slt i64 %5, %7
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %9 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size7 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %9, i32 0, i32 1
  %10 = load i64, i64* %size7, align 8
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0), i64 %10)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.3
  %11 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %b_needsfree = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %11, i32 0, i32 2
  %12 = load i32, i32* %b_needsfree, align 4
  %cmp10 = icmp eq i32 %12, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.63, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %14 = load i64, i64* %size, align 8
  %cmp14 = icmp ule i64 %14, 16
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %15 = load i64, i64* %size, align 8
  %16 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %b_size = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %16, i32 0, i32 4
  store i64 %15, i64* %b_size, align 8
  br label %done

if.end.16:                                        ; preds = %if.end.13
  %17 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %b_ptr = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %17, i32 0, i32 1
  %18 = load i8*, i8** %b_ptr, align 8
  %19 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %b_value = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %19, i32 0, i32 8
  %20 = bitcast %union.value* %b_value to i8*
  %cmp17 = icmp ne i8* %18, %20
  br i1 %cmp17, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  %21 = load i64, i64* %size, align 8
  %call19 = call i8* @PyMem_Malloc(i64 %21)
  store i8* %call19, i8** %ptr, align 8
  %22 = load i8*, i8** %ptr, align 8
  %cmp20 = icmp eq i8* %22, null
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.18
  %call22 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call22, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.18
  %23 = load i8*, i8** %ptr, align 8
  %24 = load i64, i64* %size, align 8
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 %24, i32 1, i1 false)
  %25 = load i8*, i8** %ptr, align 8
  %26 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %b_ptr24 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %26, i32 0, i32 1
  %27 = load i8*, i8** %b_ptr24, align 8
  %28 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %b_size25 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %28, i32 0, i32 4
  %29 = load i64, i64* %b_size25, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %25, i8* %27, i64 %29, i32 1, i1 false)
  %30 = load i8*, i8** %ptr, align 8
  %31 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %b_ptr26 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %31, i32 0, i32 1
  store i8* %30, i8** %b_ptr26, align 8
  %32 = load i64, i64* %size, align 8
  %33 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %b_size27 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %33, i32 0, i32 4
  store i64 %32, i64* %b_size27, align 8
  br label %if.end.37

if.else:                                          ; preds = %if.end.16
  %34 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %b_ptr29 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %34, i32 0, i32 1
  %35 = load i8*, i8** %b_ptr29, align 8
  %36 = load i64, i64* %size, align 8
  %call30 = call i8* @PyMem_Realloc(i8* %35, i64 %36)
  store i8* %call30, i8** %ptr28, align 8
  %37 = load i8*, i8** %ptr28, align 8
  %cmp31 = icmp eq i8* %37, null
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.else
  %call33 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call33, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %if.else
  %38 = load i8*, i8** %ptr28, align 8
  %39 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %b_ptr35 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %39, i32 0, i32 1
  store i8* %38, i8** %b_ptr35, align 8
  %40 = load i64, i64* %size, align 8
  %41 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %b_size36 = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %41, i32 0, i32 4
  store i64 %40, i64* %b_size36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.34, %if.end.23
  br label %done

done:                                             ; preds = %if.end.37, %if.then.15
  %42 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %42, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %done, %if.then.32, %if.then.21, %if.then.11, %if.then.6, %if.then.2, %if.then
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
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
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %errmsg = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 2, i32* %mode, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), %struct._object** %name, i32* %mode)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mode, align 4
  %or = or i32 %1, 2
  store i32 %or, i32* %mode, align 4
  %2 = load %struct._object*, %struct._object** %name, align 8
  %cmp = icmp ne %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.else.10

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %name, align 8
  %4 = bitcast %struct._object** %name2 to i8*
  %call2 = call i32 @PyUnicode_FSConverter(%struct._object* %3, i8* %4)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  %5 = load %struct._object*, %struct._object** %name2, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 134217728
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %8 = load %struct._object*, %struct._object** %name2, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %9, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %name_str, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %name2, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size, align 8
  %tobool8 = icmp ne i64 %12, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %13 = load %struct._object*, %struct._object** %name2, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %14, i32 0, i32 3
  %15 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %15, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %name_str, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %cond.end, %if.then.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end
  store i8* null, i8** %name_str, align 8
  store %struct._object* null, %struct._object** %name2, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.end.9
  %16 = load i8*, i8** %name_str, align 8
  %17 = load i32, i32* %mode, align 4
  %call12 = call i8* @dlopen(i8* %16, i32 %17) #2
  store i8* %call12, i8** %handle, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %18 = load %struct._object*, %struct._object** %name2, align 8
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp13 = icmp ne %struct._object* %19, null
  br i1 %cmp13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %do.body
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.15
  br label %if.end.20

if.else.18:                                       ; preds = %do.body.15
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %if.end.21

if.end.21:                                        ; preds = %do.end, %do.body
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %27 = load i8*, i8** %handle, align 8
  %tobool23 = icmp ne i8* %27, null
  br i1 %tobool23, label %if.end.29, label %if.then.24

if.then.24:                                       ; preds = %do.end.22
  %call25 = call i8* @dlerror() #2
  store i8* %call25, i8** %errmsg, align 8
  %28 = load i8*, i8** %errmsg, align 8
  %tobool26 = icmp ne i8* %28, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.24
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0), i8** %errmsg, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.24
  %29 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %30 = load i8*, i8** %errmsg, align 8
  call void @PyErr_SetString(%struct._object* %29, i8* %30)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %do.end.22
  %31 = load i8*, i8** %handle, align 8
  %call30 = call %struct._object* @PyLong_FromVoidPtr(i8* %31)
  store %struct._object* %call30, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.end.28, %if.then.4, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

; Function Attrs: uwtable
define internal %struct._object* @py_dl_close(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %handle = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i32 (%struct._object*, i8**)* @_parse_voidp, i8** %handle)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %handle, align 8
  %call1 = call i32 @dlclose(i8* %1) #2
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call4 = call i8* @dlerror() #2
  call void @PyErr_SetString(%struct._object* %2, i8* %call4)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
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
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 (%struct._object*, i8**)* @_parse_voidp, i8** %handle, i8** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %handle, align 8
  %2 = load i8*, i8** %name, align 8
  %call1 = call i8* @dlsym(i8* %1, i8* %2) #2
  store i8* %call1, i8** %ptr, align 8
  %3 = load i8*, i8** %ptr, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call4 = call i8* @dlerror() #2
  call void @PyErr_SetString(%struct._object* %4, i8* %call4)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load i8*, i8** %ptr, align 8
  %call6 = call %struct._object* @PyLong_FromVoidPtr(i8* %5)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: uwtable
define internal %struct._object* @align_func(%struct._object* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %0)
  store %struct.StgDictObject* %call, %struct.StgDictObject** %dict, align 8
  %1 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %tobool = icmp ne %struct.StgDictObject* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %align = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %2, i32 0, i32 2
  %3 = load i64, i64* %align, align 8
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call2 = call %struct.StgDictObject* @PyObject_stgdict(%struct._object* %4)
  store %struct.StgDictObject* %call2, %struct.StgDictObject** %dict, align 8
  %5 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %tobool3 = icmp ne %struct.StgDictObject* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %align5 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %6, i32 0, i32 2
  %7 = load i64, i64* %align5, align 8
  %call6 = call %struct._object* @PyLong_FromSsize_t(i64 %7)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: uwtable
define internal %struct._object* @sizeof_func(%struct._object* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %0)
  store %struct.StgDictObject* %call, %struct.StgDictObject** %dict, align 8
  %1 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %tobool = icmp ne %struct.StgDictObject* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %2, i32 0, i32 1
  %3 = load i64, i64* %size, align 8
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %5, @PyCData_Type
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %call3 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyCData_Type)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.tagCDataObject*
  %b_size = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %9, i32 0, i32 4
  %10 = load i64, i64* %b_size, align 8
  %call6 = call %struct._object* @PyLong_FromSsize_t(i64 %10)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
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
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %pyoffset, align 8
  store i64 0, i64* %offset, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i64 1, i64 2, %struct._object** %obj, %struct._object** %pyoffset)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %pyoffset, align 8
  %tobool1 = icmp ne %struct._object* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %pyoffset, align 8
  %call3 = call i64 @PyNumber_AsSsize_t(%struct._object* %2, %struct._object* null)
  store i64 %call3, i64* %offset, align 8
  %3 = load i64, i64* %offset, align 8
  %cmp = icmp eq i64 %3, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.then.2
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp9 = icmp eq %struct._typeobject* %5, @PyCData_Type
  br i1 %cmp9, label %if.end.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %6 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %call11 = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyCData_Type)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1
  %11 = load i8*, i8** %tp_name, align 8
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i32 0, i32 0), i8* %11)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false, %if.end.8
  %call17 = call %struct.tagPyCArgObject* @PyCArgObject_new()
  store %struct.tagPyCArgObject* %call17, %struct.tagPyCArgObject** %parg, align 8
  %12 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %parg, align 8
  %cmp18 = icmp eq %struct.tagPyCArgObject* %12, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %13 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %parg, align 8
  %tag = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %13, i32 0, i32 2
  store i8 80, i8* %tag, align 1
  %14 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %parg, align 8
  %pffi_type = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %14, i32 0, i32 1
  store %struct._ffi_type* @ffi_type_pointer, %struct._ffi_type** %pffi_type, align 8
  %15 = load %struct._object*, %struct._object** %obj, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %17 = load %struct._object*, %struct._object** %obj, align 8
  %18 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %parg, align 8
  %obj21 = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %18, i32 0, i32 4
  store %struct._object* %17, %struct._object** %obj21, align 8
  %19 = load %struct._object*, %struct._object** %obj, align 8
  %20 = bitcast %struct._object* %19 to %struct.tagCDataObject*
  %b_ptr = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %20, i32 0, i32 1
  %21 = load i8*, i8** %b_ptr, align 8
  %22 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %21, i64 %22
  %23 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %parg, align 8
  %value = getelementptr inbounds %struct.tagPyCArgObject, %struct.tagPyCArgObject* %23, i32 0, i32 3
  %p = bitcast %union.anon* %value to i8**
  store i8* %add.ptr, i8** %p, align 8
  %24 = load %struct.tagPyCArgObject*, %struct.tagPyCArgObject** %parg, align 8
  %25 = bitcast %struct.tagPyCArgObject* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.13, %if.then.6, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: uwtable
define internal %struct._object* @addressof(%struct._object* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyCData_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyCData_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.tagCDataObject*
  %b_ptr = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %5, i32 0, i32 1
  %6 = load i8*, i8** %b_ptr, align 8
  %call2 = call %struct._object* @PyLong_FromVoidPtr(i8* %6)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
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
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 (%struct._object*, i8**)* @_parse_voidp, i8** %func, %struct._typeobject* @PyTuple_Type, %struct._object** %arguments)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %func, align 8
  %2 = bitcast i8* %1 to i32 ()*
  %3 = load %struct._object*, %struct._object** %arguments, align 8
  %call1 = call %struct._object* @_ctypes_callproc(i32 ()* %2, %struct._object* %3, i32 0, %struct._object* null, %struct._object* null, %struct._object* null)
  store %struct._object* %call1, %struct._object** %result, align 8
  %4 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
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
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 (%struct._object*, i8**)* @_parse_voidp, i8** %func, %struct._typeobject* @PyTuple_Type, %struct._object** %arguments)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %func, align 8
  %2 = bitcast i8* %1 to i32 ()*
  %3 = load %struct._object*, %struct._object** %arguments, align 8
  %call1 = call %struct._object* @_ctypes_callproc(i32 ()* %2, %struct._object* %3, i32 1, %struct._object* null, %struct._object* null, %struct._object* null)
  store %struct._object* %call1, %struct._object** %result, align 8
  %4 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: uwtable
define internal %struct._object* @My_PyObj_FromPtr(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ob = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i32 (%struct._object*, i8**)* @converter, %struct._object** %ob)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %ob, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct._object*, %struct._object** %ob, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @My_Py_INCREF(%struct._object* %self, %struct._object* %arg) #3 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 0
  %1 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_refcnt1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt1, align 8
  %inc2 = add i64 %3, 1
  store i64 %inc2, i64* %ob_refcnt1, align 8
  %4 = load %struct._object*, %struct._object** %arg.addr, align 8
  ret %struct._object* %4
}

; Function Attrs: uwtable
define internal %struct._object* @My_Py_DECREF(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  store %struct._object* %0, %struct._object** %_py_decref_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %2, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 4
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %5(%struct._object* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_refcnt1 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt1, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt1, align 8
  %9 = load %struct._object*, %struct._object** %arg.addr, align 8
  ret %struct._object* %9
}

declare void @PyMem_Free(i8*) #1

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare %struct.StgDictObject* @PyObject_stgdict(%struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

declare i32* @PyUnicode_AsWideCharString(%struct._object*, i64*) #1

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @ffi_prep_cif(%struct.ffi_cif*, i32, i32, %struct._ffi_type*, %struct._ffi_type**) #1

declare %struct._ts* @PyEval_SaveThread() #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare void @ffi_call(%struct.ffi_cif*, void ()*, i8*, i8**) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

declare i32 @_ctypes_simple_instance(%struct._object*) #1

declare %struct.fielddesc* @_ctypes_get_fielddesc(i8*) #1

declare %struct._object* @PyCData_FromBaseObj(%struct._object*, %struct._object*, i64, i8*) #1

declare void @_ctypes_add_traceback(i8*, i8*, i32) #1

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %call = call %struct._object* @_ctypes_get_errobj(i32** %space)
  store %struct._object* %call, %struct._object** %errobj, align 8
  %0 = load %struct._object*, %struct._object** %errobj, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %space, align 8
  %arrayidx = getelementptr i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %conv = sext i32 %3 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %errobj, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i32* %new_errno)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @_ctypes_get_errobj(i32** %space)
  store %struct._object* %call1, %struct._object** %errobj, align 8
  %1 = load %struct._object*, %struct._object** %errobj, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %space, align 8
  %arrayidx = getelementptr i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %old_errno, align 4
  %5 = load i32, i32* %new_errno, align 4
  %6 = load i32, i32* %index.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i32*, i32** %space, align 8
  %arrayidx5 = getelementptr i32, i32* %7, i64 %idxprom4
  store i32 %5, i32* %arrayidx5, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %errobj, align 8
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
  %15 = load i32, i32* %old_errno, align 4
  %conv = sext i32 %15 to i64
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare %struct._object* @PyLong_FromVoidPtr(i8*) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i8* @PyMem_Realloc(i8*, i64) #1

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #1

; Function Attrs: nounwind
declare i8* @dlopen(i8*, i32) #4

; Function Attrs: nounwind
declare i8* @dlerror() #4

; Function Attrs: uwtable
define internal i32 @_parse_voidp(%struct._object* %obj, i8** %address) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %address.addr = alloca i8**, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8** %address, i8*** %address.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i8* @PyLong_AsVoidPtr(%struct._object* %0)
  %1 = load i8**, i8*** %address.addr, align 8
  store i8* %call, i8** %1, align 8
  %2 = load i8**, i8*** %address.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind
declare i32 @dlclose(i8*) #4

declare i8* @PyLong_AsVoidPtr(%struct._object*) #1

; Function Attrs: nounwind
declare i8* @dlsym(i8*, i8*) #4

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

; Function Attrs: uwtable
define internal i32 @converter(%struct._object* %obj, i8** %address) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %address.addr = alloca i8**, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8** %address, i8*** %address.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i8* @PyLong_AsVoidPtr(%struct._object* %0)
  %1 = load i8**, i8*** %address.addr, align 8
  store i8* %call, i8** %1, align 8
  %2 = load i8**, i8*** %address.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %cmp = icmp ne i8* %3, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
